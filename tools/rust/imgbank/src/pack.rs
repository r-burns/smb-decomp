use crate::format::{BankFormat, EntryConfig};
use anyhow::{anyhow, Context, Error};
use std::ffi::OsStr;
use std::fmt::Write;
use std::fs;
use std::path::{Path, PathBuf};
use toml;

// Comment character, for easy change later
const COMMENT: char = '#';

/// Read the `config` TOML file and transform that information into a GNU .s file
/// `output` that will assemble into the original entry binary
pub fn pack_entry(
    input: PathBuf,
    output: Option<PathBuf>,
    imgext: Option<String>,
    palext: Option<String>,
) -> Result<(), Error> {
    let raw = fs::read(&input).context("reading input config")?;
    let config: EntryConfig = toml::from_slice(&raw).context("parsing config")?;
    let imgext =
        imgext.unwrap_or_else(|| format!("{}{}", config.format.as_str(), config.bitdepth.depth()));
    let palext = palext.unwrap_or_else(|| "pal.bin".into());

    let asm_file = generate_entry_s(&config, &imgext, &palext).context("generating .s file")?;
    let output = output.unwrap_or_else(|| input.with_extension("s"));

    fs::write(&output, &asm_file).context("writing output .s file")?;

    Ok(())
}

// Header formatting string for .s file
macro_rules! asm_header_fmt {
    () => {
        r#"{com} Autogenerated Image Bank Entry File
.section .rodata
.balign(4)
{com}{com} Entry Header
.4byte {imgnum:<8} {com} number of images
.4byte {format:<8} {com} {format_str}
.4byte {depth:<8} {com} {depth_str}-bit
.4byte {width:<8} {com} width
.4byte {height:<8} {com} height
.4byte {pal:<8} {com} if 0, palette offsets follow image offsets (and with data)

"#
    };
}

fn generate_entry_s(config: &EntryConfig, imgext: &str, palext: &str) -> Result<String, Error> {
    let EntryConfig {
        format,
        bitdepth,
        width,
        height,
        images,
    } = config;

    let images = images
        .as_ref()
        .expect("have to implement fs reading of images first");
    let imgnum = images.len();
    // some sort of bug made CI entries with only 1 image report as having no palettes
    // even though they do...
    let no_pals = *format != BankFormat::CI || imgnum == 1;

    let mut file = format!(
        asm_header_fmt![],
        com = COMMENT,
        imgnum = imgnum,
        format = *format as u32,
        format_str = format.as_str(),
        depth = *bitdepth as u32,
        depth_str = bitdepth.depth(),
        width = width,
        height = height,
        pal = no_pals as u32
    );

    let mut write_section =
        |s, d| writeln!(&mut file, "{c}{c} {s}\n{d}", c = COMMENT, s = s, d = d);

    let (img_off, img_bins) = create_offset_incbin_str(&images, "i", &imgext)?;
    write_section("Image Offsets", &img_off)?;

    if *format == BankFormat::CI {
        let (pal_off, pal_bins) = create_offset_incbin_str(&images, "p", &palext)?;
        write_section("Palette Offsets", &pal_off)?;
        write_section("Image Files", &img_bins)?;
        write_section("Palette Files", &pal_bins)?;
    } else {
        write_section("Image Files", &img_bins)?;
    }

    Ok(file)
}

fn create_offset_incbin_str(
    files: &[String],
    kind: &str,
    ext: &str,
) -> Result<(String, String), Error> {
    let initial: (String, String) = ("".into(), "".into());
    // this kinda assumes "name.format.png" as the filename...
    files
        .iter()
        .map(Path::new)
        .try_fold(initial, |mut set, file| {
            // chop off the .png of the image file
            let mut filename = file
                .file_stem()
                .map(OsStr::to_string_lossy)
                .ok_or_else(|| anyhow!("{} was not a file", file.display()))?;

            if !filename.ends_with(ext) {
                filename.to_mut().push('.');
                filename.to_mut().push_str(ext);
            }
            // generate label following GNU syntax (starts with "._[A-z]")
            let l_path = Path::new(&*filename);
            let label = l_path
                .file_stem()
                .unwrap_or(l_path.as_os_str())
                .to_string_lossy()
                .replace('.', "_");

            // insert label into offset table
            writeln!(&mut set.0, ".4byte {}_{}", kind, label)?;
            // insert incbin of actual file
            writeln!(
                &mut set.1,
                ".balign(8)\n{}_{}:\n    .incbin \"{}\"",
                kind, label, filename
            )?;

            Ok(set)
        })
}
