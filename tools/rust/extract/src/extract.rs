use crate::config::{Assets, SimpleBin, Version};
use anyhow::{Context, Error};
use libgfx::{BitDepth, ImageFormat};
use libsprite::{BankConfig as SprBankConfig, EntryConfig as SprImgEntry};
use std::fmt;
use std::fs;
use std::io::{self, Write};
use std::path::{Path, PathBuf};

mod resources;
mod sprites;

/// Common variables passed to extraction functions
#[derive(Debug, Copy, Clone)]
struct ExtractContext<'a> {
    version: Version,
    force: bool,
    rom: &'a [u8],
}

pub(crate) fn extract_assets(info: crate::Extract) -> Result<(), Error> {
    let assets = fs::read_to_string(&info.assets).context("Reading assets toml file")?;
    let assets = Assets::from_toml_str(&assets).context("parsing assets toml file")?;
    let rom = fs::read(&info.rom).context("reading rom file")?;
    let ctx = ExtractContext {
        version: info.version,
        force: info.force,
        rom: &rom,
    };

    // already_extracted: HashSet<Path>,
    // println!("{:#?}", assets);
    //extract_binaries(&rom, &assets.simple_bins, info.version)?;

    let mut todo = todo_binaries(&assets.simple_bins, ctx)
        .chain(
            sprites::todo(&assets.sprite_banks, ctx)
                .into_iter()
                .flatten(),
        )
        .chain(
            resources::todo(&assets.resources, ctx)
                .into_iter()
                .flatten(),
        );

    if info.dry_run {
        let mut stdout = io::stdout();
        return todo
            .try_for_each(|t| writeln!(stdout, "{}", t))
            .context("Writing dry-run todo list");
    }

    //for test in todo {
    //    println!("work to do: {:?}", test);
    //}

    Ok(())
}

#[derive(Debug)]
/// Information on what to extract
enum ToExtract<'a> {
    Binary {
        out: &'a Path,
        start: usize,
        end: usize,
    },
    SpriteBank {
        out: PathBuf,
        config: SprBankConfig,
    },
    SpriteImgEntry {
        out: PathBuf,
        entry: SprImgEntry,
    },
    SpriteImg {
        out: PathBuf,
        width: u32,
        height: u32,
        format: ImageFormat,
        bitdepth: BitDepth,
        data: &'a [u8],
        palette: Option<&'a [u8]>,
    },
    // right now, don't parse the data...
    SpriteInfo {
        out: PathBuf,
        data: &'a [u8],
    },
    // parse later
    ResourceTable {
        out: PathBuf,
        data: &'a [u8],
    },
    // parse later...? Probably need different variants
    Resource {
        out: PathBuf,
        data: &'a [u8],
    },
    // parse later..? should be part of the compiling of the resource file
    ResourceReq {
        out: PathBuf,
        data: &'a [u8],
    },
}

impl<'a> fmt::Display for ToExtract<'a> {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self {
            Self::Binary { out, start, end } => {
                write!(f, "Binary: {} [{:06X}..{:06X}]", out.display(), start, end)
            }
            Self::SpriteBank { out, .. } => write!(f, "Sprite Image Bank: {}", out.display()),
            Self::SpriteImgEntry { out, .. } => write!(f, "Sprite Image Entry: {}", out.display()),
            Self::SpriteImg {
                out,
                width,
                height,
                format,
                bitdepth,
                ..
            } => write!(
                f,
                "Sprite Image: {} [{}x{} {}{}]",
                out.display(),
                width,
                height,
                format,
                *bitdepth as u8
            ),
            Self::SpriteInfo { out, .. } => write!(f, "Sprite Info: {}", out.display()),
            Self::ResourceTable { out, .. } => write!(f, "Resource Table: {}", out.display()),
            Self::Resource { out, .. } => write!(f, "Resource: {}", out.display()),
            Self::ResourceReq { out, .. } => write!(f, "Resource Req: {}", out.display()),
        }
    }
}

impl<'a> ToExtract<'a> {
    fn from_bin(s: &'a SimpleBin, ver: Version) -> Option<Self> {
        s.offset[ver].as_ref().map(|offset| ToExtract::Binary {
            out: &s.path,
            start: offset.start as usize,
            end: offset.end as usize,
        })
    }
}

fn todo_binaries<'a>(
    bins: &'a [SimpleBin],
    ctx: ExtractContext<'a>,
) -> impl Iterator<Item = ToExtract<'a>> {
    bins.iter()
        .filter_map(move |b| ToExtract::from_bin(b, ctx.version))
}

/*
fn extract_binaries(rom: &[u8], bins: &[SimpleBin], ver: Version) -> Result<(), Error> {
    for bin_info in bins {
        if let Some(offset) = &bin_info.offset[ver] {
            let bin = &rom[offset.clone()];
            if let Some(parent) = bin_info.path.parent() {
                fs::create_dir_all(parent)?;
            }
            fs::write(&bin_info.path, bin).context("writing extracted binary")?;
        }
    }

    Ok(())
}
*/
