use crate::config::{Assets, SimpleBin, Version};
use anyhow::{Context, Error};
use libgfx::{BitDepth, ImageFormat};
use std::borrow::Cow;
use std::fmt::{self};
use std::fs;
use std::io::{self, Write};
use std::ops::Range;
use std::path::{Path, PathBuf};
use crate::local::LocalAssets;

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
    let local_assets = LocalAssets::from_path(&info.local).context("reading local assets")?;
    println!("{:#?}", local_assets);

    let bins = todo_binaries(&assets.simple_bins, ctx);
    let sprites = sprites::todo(&assets.sprite_banks, ctx)
        .into_iter()
        .flatten();
    let resources = resources::todo(&assets.resources, ctx)
        .into_iter()
        .flatten();

    let mut todo = bins
        .chain(sprites)
        .chain(resources)
        .filter(|task| {
            if ctx.force { return true; }

            if task.is_preserved() { return !task.output_file().is_file(); }
        
            local_assets.as_ref().map_or(true, |la| !la.list.contains(task.output_file()))
        });

    if info.dry_run {
        let mut stdout = io::stdout();
        return todo
            .try_for_each(|t| writeln!(stdout, "{}", t))
            .context("Writing dry-run todo list");
    }

    let mut fresh = Vec::new();
    for task in todo {
        // check local assets here
        let new_file = task.output_file().display();
        ensure_parent_dir(task.output_file())
            .with_context(|| format!("creating directory structure for {}", &new_file))?;
        match task {
            ToExtract::Binary { out, data } => {
                binaries_extract(&out, data).map(|_| {fresh.push(out.to_path_buf().into_boxed_path());})
            }
            ToExtract::SpriteBank{..} => {
                sprites::extract(&task).map(|_| {fresh.push(task.output_file().to_path_buf().into_boxed_path());})
            }
            _ => Ok(()), //println!("not ready => {}", task),
        }.with_context(|| format!("extracting file {}", &new_file))?;
    }

    let fresh_assets = match local_assets {
        Some(la) => la.update_version(fresh),
        None => fresh.into()
    };
    
    fresh_assets.write_to_path(&info.local).context("writing new local assets file")?;

    Ok(())
}

#[derive(Debug)]
/// Information on what to extract
enum ToExtract<'a> {
    Binary {
        out: &'a Path,
        data: &'a [u8],
    },
    SpriteBank {
        out: PathBuf,
        entry_names: Option<&'a [String]>,
        entries: Vec<u32>,
        bank_data: &'a [u8],
    },
    SpriteImgEntry {
        out: PathBuf,
        name: Cow<'a, str>,
        width: u32,
        height: u32,
        format: ImageFormat,
        bitdepth: BitDepth,
        frame_offsets: Vec<u32>,
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
            Self::Binary { out, data } => {
                write!(f, "Binary: {} [{} bytes]", out.display(), data.len())
            }
            Self::SpriteBank { out, .. } => write!(f, "Sprite Image Bank: {}", out.display()),
            Self::SpriteImgEntry {
                out, frame_offsets, ..
            } => write!(
                f,
                "Sprite Image Entry: {} [{} frame{}]",
                out.display(),
                frame_offsets.len(),
                if frame_offsets.len() != 1 { "s" } else { "" }
            ),
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
    /// certain configuration files are saved in git, so they should not be replaced
    /// if a file already exists
    fn is_preserved(&self) -> bool {
        match self {
            Self::SpriteBank { .. } => true,
            Self::SpriteImgEntry { .. } => true,
            Self::Binary { .. } => false,
            Self::SpriteImg { .. } => false,
            Self::SpriteInfo { .. } => false,
            Self::ResourceTable { .. } => false,
            Self::Resource { .. } => false,
            Self::ResourceReq { .. } => false,
        }
    }

    fn output_file(&self) -> &Path {
        match self {
            Self::SpriteBank { out, .. } => &out,
            Self::Binary { out, .. } => &out,
            Self::SpriteImgEntry { out, .. } => &out,
            Self::SpriteImg { out, .. } => &out,
            Self::SpriteInfo { out, .. } => &out,
            Self::ResourceTable { out, .. } => &out,
            Self::Resource { out, .. } => &out,
            Self::ResourceReq { out, .. } => &out,
        }
    }
}

fn usize_range(r: &Range<u32>) -> Range<usize> {
    r.start as usize..r.end as usize
}

fn ensure_parent_dir(p: &Path) -> io::Result<()> {
    p.parent()
        .map_or(Ok(()), |parent| fs::create_dir_all(parent))
}

fn todo_binaries<'a>(
    bins: &'a [SimpleBin],
    ctx: ExtractContext<'a>,
) -> impl Iterator<Item = ToExtract<'a>> {
    bins.iter().filter_map(move |bin| {
        bin.offset[ctx.version]
            .as_ref()
            .map(|offset| ToExtract::Binary {
                out: &bin.path,
                data: &ctx.rom[usize_range(offset)],
            })
    })
}

fn binaries_extract(out: &Path, data: &[u8]) -> Result<(), Error> {
    fs::write(out, data).map_err(Into::into)
}
