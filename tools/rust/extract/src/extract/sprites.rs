use crate::config::{SpriteBank, SpriteBankInfo};
use crate::extract::{ExtractContext, ToExtract};
use anyhow::{anyhow, Error, bail};
use libgfx::{BitDepth, ImageFormat};
use libsprite::{BankConfig, Entry, Header}; //EntryConfig
use std::borrow::Cow;
use std::convert::TryInto;
use std::iter;
use std::path::{Path, PathBuf};
use std::fs;

pub(super) fn todo<'a>(
    bank_info: &'a SpriteBankInfo,
    ctx: ExtractContext<'a>,
) -> Option<impl Iterator<Item = ToExtract<'a>>> {
    bank_info.banks[ctx.version].as_ref().map(move |banks| {
        banks
            .iter()
            .map(move |b| read_bank(b, &bank_info.output_dir, ctx))
            .flatten()
    })
}

pub(super) fn extract(task: &ToExtract<'_>) -> Result<(), Error> {
    use ToExtract::SpriteBank;

    match task {
        SpriteBank{out, ..} => {
            let config = gen_bank_config(task)?;
            let toml = toml::to_string_pretty(&config)?;

            fs::write(out, toml)?;
        },
        _ => bail!("Not a sprite extraction {:?}", task),
    };

    Ok(())
}

/// Parse the components (image store + information/animations) of sprite bank
/// into a list of actionable extractions
fn read_bank<'a>(
    bank: &'a SpriteBank,
    base: &Path,
    ctx: ExtractContext<'a>,
) -> impl Iterator<Item = ToExtract<'a>> + 'a {
    let bank_base_dir = base.join(&bank.name);
    let bank_toml = {
        let mut b = bank_base_dir.join(&bank.name);
        b.set_extension("toml");
        b
    };

    let img_s = bank.imgbank.start as usize;
    let img_e = bank.imgbank.end as usize;
    let imgs_raw = &ctx.rom[img_s..img_e];
    let header = Header::from(imgs_raw);

    let bank_config = store_bank_config(bank.entries.as_deref(), &header, imgs_raw, bank_toml);
    let info = Some(read_sprite_info(&bank, &bank_base_dir, ctx.rom));
    let entries = header
        .offsets
        .into_iter()
        .enumerate()
        .filter_map(move |(i, offset)| {
            Entry::from_bank(offset as usize, imgs_raw)
                .map(|e| (i, e))
                .ok()
        })
        .flat_map(move |(i, entry)| read_entry(i, entry, bank, imgs_raw, bank_base_dir.clone()));

    iter::once(bank_config).chain(entries).chain(info)
}

// TODO: actually parse the sprite info binary
// maybe => put header/entries into bank config
// => create a single file with parsed info? translate into C with macros?
fn read_sprite_info<'a>(bank: &SpriteBank, base: &Path, rom: &'a [u8]) -> ToExtract<'a> {
    let start = bank.info.start as usize;
    let end = bank.info.end as usize;
    let data = &rom[start..end];
    let name = format!("{}-info.bin", &bank.name);
    let out = base.join(name);

    ToExtract::SpriteInfo { out, data }
}

/// Store the information necessary to create a `BankConfig` file
fn store_bank_config<'a>(
    entry_names: Option<&'a [String]>,
    hdr: &Header,
    bank_data: &'a [u8],
    out: PathBuf,
) -> ToExtract<'a> {
    let entries = hdr.offsets.clone();

    ToExtract::SpriteBank {
        out,
        entry_names,
        entries,
        bank_data,
    }
}

/// Create a `BankConfig` structure with the stored info from `store_bank_config`
fn gen_bank_config<'a>(info: &ToExtract<'a>) -> Result<BankConfig, Error> {
    if let ToExtract::SpriteBank {
        entry_names,
        entries,
        bank_data,
        ..
    } = info
    {
        // num entries + count field (all u32)
        let hdr_end = (entries.len() + 1) * 4;
        // check after the last word to see if there is a garbage word (bank 5 in US version)
        // this word is an offset to the end of the bank (where another entry would be located)
        let extra_entry = bank_data
            .get(hdr_end..hdr_end + 4)
            .map(|bytes| u32::from_be_bytes(bytes.try_into().unwrap()))
            .map_or(false, |w| w as usize == bank_data.len());

        let names = entries
            .iter()
            .enumerate()
            .map(|(i, &o)| {
                entry_names
                    .and_then(|user_names| user_names.get(i))
                    .map(String::clone)
                    .unwrap_or_else(|| generic_entry_name(o))
            })
            .collect::<Vec<_>>();

        let mut config = BankConfig::from(names);
        config.include_end = extra_entry;

        Ok(config)
    } else {
        Err(anyhow!(
            "Created a BankConfig from the wrong ToExtract variant"
        ))
    }
}

/// Parse an individual image store entry into a list of image data offsets,
/// and if necessary, an entry toml file that describes the format of the images
fn read_entry<'a>(
    i: usize,
    entry: Entry,
    bank: &'a SpriteBank,
    bank_raw: &'a [u8],
    out_dir: PathBuf,
) -> impl Iterator<Item = ToExtract<'a>> + 'a {
    let entry_name = bank
        .entries
        .as_ref()
        .and_then(|names| names.get(i))
        .map(Cow::from)
        .unwrap_or_else(|| Cow::from(generic_entry_name(entry.entry_offset)));
    let (entry_dir, entry_toml) = {
        let d = out_dir.join(&*entry_name);
        let mut t = d.join(&*entry_name);
        t.set_extension("toml");
        (d, t)
    };

    let len = entry.bytesize() as usize;
    let Entry {
        format: format_raw,
        bitdepth: bitdepth_raw,
        width,
        height,
        image_offsets,
        palette_offsets,
        ..
    } = entry;
    let format: ImageFormat = format_raw.into();
    let bitdepth: BitDepth = bitdepth_raw.into();

    let entry_config = image_entry_config(
        entry_toml,
        entry_name.clone(),
        width,
        height,
        format,
        bitdepth,
        image_offsets.clone(),
    );

    let images_iter = image_offsets
        .into_iter()
        .map(|o| o as usize)
        .enumerate()
        .map(move |(i, o)| {
            let p = palette_offsets
                .as_ref()
                .and_then(|pals| pals.get(i).copied());
            (i, o, p)
        })
        .map(move |(i, o, p)| {
            let out = gen_frame_filename(&entry_dir, o, i, &entry_name, format, bitdepth);
            let palette = p.map(|p| {
                let p = p as usize;
                let plen = (1 << bitdepth as usize) * 2;
                &bank_raw[p..p + plen]
            });
            let data = &bank_raw[o..o + len];

            ToExtract::SpriteImg {
                out,
                format,
                bitdepth,
                width,
                height,
                data,
                palette,
            }
        });

    iter::once(entry_config).chain(images_iter)
}

fn image_entry_config<'a>(
    out: PathBuf,
    name: Cow<'a, str>,
    width: u32,
    height: u32,
    format: ImageFormat,
    bitdepth: BitDepth,
    frame_offsets: Vec<u32>,
) -> ToExtract<'a> {
    ToExtract::SpriteImgEntry {
        out,
        name,
        width,
        height,
        format,
        bitdepth,
        frame_offsets,
    }
}

fn generic_entry_name(offset: u32) -> String {
    format!("{:06X}", offset)
}

/// name the frames in an image entry based if a user provided a name
/// user supplied name if the `Cow` is borrowed
fn gen_frame_name<'a>(
    frame_offset: usize,
    frame_num: usize,
    prefix: &Cow<'a, str>,
    format: ImageFormat,
    bitdepth: BitDepth,
) -> String {
    if let Cow::Borrowed(name) = prefix {
        // name sequentially if user provided name
        format!("{}_{}.{}{}.png", name, frame_num, format, bitdepth as u8)
    } else {
        // name by offset if no name provided
        format!("{:06X}.{}{}.png", frame_offset, format, bitdepth as u8)
    }
}

/// output path for a frame in an image entry
fn gen_frame_filename<'a>(
    entry_dir: &Path,
    frame_offset: usize,
    frame_num: usize,
    prefix: &Cow<'a, str>,
    format: ImageFormat,
    bitdepth: BitDepth,
) -> PathBuf {
    let name = gen_frame_name(frame_offset, frame_num, prefix, format, bitdepth);

    entry_dir.join(name)
}
