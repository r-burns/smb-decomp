use crate::config::{SpriteBank, SpriteBankInfo};
use crate::extract::{ExtractContext, ToExtract};
use libgfx::{BitDepth, ImageFormat};
use libsprite::{BankConfig, Entry, EntryConfig, Header};
use std::convert::TryInto;
use std::path::{Path, PathBuf};

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

    let bank_config = gen_bank_config(
        bank.entries.as_deref(),
        &header,
        imgs_raw,
        ctx.force,
        bank_toml,
    );
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
        .flat_map(move |(i, entry)| {
            read_entry(i, entry, bank, imgs_raw, ctx, bank_base_dir.clone())
        });

    bank_config.into_iter().chain(entries).chain(info)
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

/// Create the `BankConfig` structure that has information on the entries for this bank
fn gen_bank_config<'a>(
    names: Option<&[String]>,
    hdr: &Header,
    raw: &[u8],
    force: bool,
    out: PathBuf,
) -> Option<ToExtract<'a>> {
    if force || !out.is_file() {
        // num entries + count field (all u32)
        let hdr_end = (hdr.count as usize + 1) * 4;
        // check after the last word to see if there is a garbage word (bank 5 in US version)
        // this word is an offset to the end of the bank (where another entry would be located)
        let extra_entry = raw
            .get(hdr_end..hdr_end + 4)
            .map(|bytes| u32::from_be_bytes(bytes.try_into().unwrap()))
            .map_or(false, |w| w as usize == raw.len());

        let entry_names = hdr
            .offsets
            .iter()
            .enumerate()
            .map(|(i, &o)| {
                names
                    .and_then(|names| names.get(i))
                    .map(String::clone)
                    .unwrap_or_else(|| generic_entry_name(o))
            })
            .collect::<Vec<_>>();

        let mut config = BankConfig::from(entry_names);
        config.include_end = extra_entry;

        Some(ToExtract::SpriteBank { out, config })
    } else {
        None
    }
}

/// Parse an individual image store entry into a list of image data offsets,
/// and if necessary, an entry toml file that describes the format of the images
fn read_entry<'a>(
    i: usize,
    entry: Entry,
    bank: &'a SpriteBank,
    bank_raw: &'a [u8],
    ctx: ExtractContext<'a>,
    out_dir: PathBuf,
) -> impl Iterator<Item = ToExtract<'a>> + 'a {
    let entry_name = bank.entries.as_ref().and_then(|names| names.get(i));
    let (entry_dir, entry_toml) = {
        let buf;
        let name = if let Some(n) = entry_name {
            n
        } else {
            buf = generic_entry_name(entry.entry_offset);
            &buf
        };

        let d = out_dir.join(name);
        let mut t = d.join(name);
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

    let gen_img_name = move |img_offset, i| {
        if let Some(name) = entry_name {
            format!("{}_{}.{}{}.png", name, i, format, bitdepth as u8)
        } else {
            format!("{:06X}.{}{}.png", img_offset, format, bitdepth as u8)
        }
    };
    let gen_img_out = move |offset, i| {
        let name = gen_img_name(offset, i);

        entry_dir.join(name)
    };

    let entry_config = if ctx.force || !entry_toml.is_file() {
        let images = image_offsets
            .iter()
            .map(|&o| o as usize)
            .enumerate()
            .map(|(i, o)| gen_img_name(o, i))
            .collect();

        let config = EntryConfig {
            format: format_raw,
            bitdepth: bitdepth_raw,
            width,
            height,
            images: Some(images),
        };

        Some(ToExtract::SpriteImgEntry {
            out: entry_toml,
            entry: config,
        })
    } else {
        None
    };

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
            let out = gen_img_out(o, i);
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

    entry_config.into_iter().chain(images_iter)
}

fn generic_entry_name(offset: u32) -> String {
    format!("{:06X}", offset)
}
