use crate::config::{Assets, Version};
use crate::local::LocalAssets;
use anyhow::{Context, Error};
use libgfx::{BitDepth, ImageFormat};
use libsprite::{BankDepth, BankFormat};
use std::borrow::Cow;
use std::fmt::{self};
use std::fs;
use std::io::{self, Write};
use std::ops::Range;
use std::path::Path;

mod binaries;
mod resources;
mod sprites;

/// Common variables passed to extraction functions
#[derive(Debug, Copy, Clone)]
pub(crate) struct ExtractContext<'a> {
    pub version: Version,
    pub force: bool,
    pub rom: &'a [u8],
}

pub(crate) fn extract_assets(info: crate::Extract) -> Result<(), Error> {
    use ExtractTask::*;

    let assets = Assets::from_path(&info.assets).context("parsing assets toml file")?;
    let rom = fs::read(&info.rom).context("reading rom file")?;
    let ctx = ExtractContext {
        version: info.version,
        force: info.force,
        rom: &rom,
    };
    let local_assets = LocalAssets::from_path(&info.local).context("reading local assets")?;

    let mut todo = generate_todos(&assets, ctx)
        .filter(|task| ctx.force || check_for_work(task, local_assets.as_ref()));

    if info.dry_run {
        let mut stdout = io::stdout();
        return todo
            .try_for_each(|t| writeln!(stdout, "{}", t))
            .context("Writing dry-run todo list");
    }

    let mut fresh_assets = Vec::new();
    for task in todo {
        let perserved = task.is_preserved();
        let ToExtract { out, info } = task;
        let new_file = out.display();
        ensure_parent_dir(&out)
            .with_context(|| format!("creating directory structure for {}", &new_file))?;

        match info {
            Binary(data) => binaries::extract(&out, data),
            SpriteBank { .. } | SpriteImgEntry(..) | SpriteImg(..) | SpriteInfo(..) => {
                sprites::extract(&out, &info)
            }
            ResourceTable(..) | Resource(..) | ResourceReq(..) => resources::extract(&out, &info),
        }
        .with_context(|| format!("extracting file {}", &new_file))?;

        // if file is not managed by this program (since the user might make changes)
        // don't add the file to the extracted assets list
        if !perserved {
            fresh_assets.push(out.into_owned().into_boxed_path());
        }
    }

    // Output updated list of extracted assets
    match local_assets {
        Some(la) => la.update_version(fresh_assets),
        None => fresh_assets.into(),
    }
    .write_to_path(&info.local)
    .context("writing new local assets file")?;

    Ok(())
}

/// Iterator over all of the possible assets to extract, given `ctx` (mainly `Version`)
pub(crate) fn generate_todos<'a>(
    assets: &'a Assets,
    ctx: ExtractContext<'a>,
) -> impl Iterator<Item = ToExtract<'a>> {
    let bins = binaries::todo(&assets.simple_bins, ctx);
    let sprites = sprites::todo(&assets.sprite_banks, ctx)
        .into_iter()
        .flatten();
    let resources = resources::todo(&assets.resources, ctx)
        .into_iter()
        .flatten();

    bins.chain(sprites).chain(resources)
}

fn check_for_work(task: &ToExtract, already_extracted: Option<&LocalAssets>) -> bool {
    if task.is_preserved() {
        return !task.out.is_file();
    }
    // check for discrepancies (file in local assets, but no file on fs)
    already_extracted
        .map(|la| {
            let done = la.list.contains(&*task.out);
            let exists = task.out.is_file();
            if done && !exists {
                eprintln!(
                    "Asset '{}' was recorded as extracted, but not found",
                    task.out.display()
                );
            }

            if !done && exists {
                eprintln!(
                    "Asset '{}' was not recorded as extracted, but it was found",
                    task.out.display()
                );
            }

            !exists || !done
        })
        .unwrap_or(true)
}

#[derive(Debug)]
pub(crate) struct ToExtract<'a> {
    pub out: Cow<'a, Path>,
    info: ExtractTask<'a>,
}

#[derive(Debug)]
/// Information on what to extract
enum ExtractTask<'a> {
    Binary(&'a [u8]),
    SpriteBank {
        entry_names: Option<&'a [String]>,
        entries: Vec<u32>,
        bank_data: &'a [u8],
    },
    SpriteImgEntry(SpriteImgEntry<'a>),
    SpriteImg(SpriteImg<'a>),
    // right now, don't parse the data...
    SpriteInfo(&'a [u8]),
    // parse later
    ResourceTable(&'a [u8]),
    // parse later...? Probably need different variants
    Resource(&'a [u8]),
    // parse later..? should be part of the compiling of the resource file
    ResourceReq(&'a [u8]),
}

#[derive(Debug)]
struct SpriteImgEntry<'a> {
    name: Cow<'a, str>,
    width: u32,
    height: u32,
    format: BankFormat,
    bitdepth: BankDepth,
    frame_offsets: Vec<u32>,
}

#[derive(Debug, Copy, Clone)]
struct SpriteImg<'a> {
    width: u32,
    height: u32,
    format: ImageFormat,
    bitdepth: BitDepth,
    data: &'a [u8],
    palette: Option<&'a [u8]>,
}

impl<'a> fmt::Display for ToExtract<'a> {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        use ExtractTask::*;

        let Self { out, info } = self;

        match info {
            Binary(data) => write!(f, "Binary: {} [{} bytes]", out.display(), data.len()),
            SpriteBank { .. } => write!(f, "Sprite Image Bank: {}", out.display()),
            SpriteImgEntry(entry) => write!(
                f,
                "Sprite Image Entry: {} [{} frame{}]",
                out.display(),
                entry.frame_offsets.len(),
                if entry.frame_offsets.len() != 1 {
                    "s"
                } else {
                    ""
                }
            ),
            SpriteImg(img) => write!(
                f,
                "Sprite Image: {} [{}x{} {}{}]",
                out.display(),
                img.width,
                img.height,
                img.format,
                img.bitdepth as u8
            ),
            SpriteInfo { .. } => write!(f, "Sprite Info: {}", out.display()),
            ResourceTable(..) => write!(f, "Resource Table: {}", out.display()),
            Resource { .. } => write!(f, "Resource: {}", out.display()),
            ResourceReq { .. } => write!(f, "Resource Req: {}", out.display()),
        }
    }
}

impl<'a> ToExtract<'a> {
    /// certain configuration files are saved in git, so they should not be replaced
    /// if a file already exists
    pub(crate) fn is_preserved(&self) -> bool {
        match self.info {
            ExtractTask::SpriteBank { .. } => true,
            ExtractTask::SpriteImgEntry { .. } => true,
            ExtractTask::Binary(..) => false,
            ExtractTask::SpriteImg { .. } => false,
            ExtractTask::SpriteInfo { .. } => false,
            ExtractTask::ResourceTable(..) => false,
            ExtractTask::Resource { .. } => false,
            ExtractTask::ResourceReq { .. } => false,
        }
    }
    /// get solely the filename for this task
    pub(crate) fn into_filename(self) -> Box<Path> {
        self.out.into_owned().into_boxed_path()
    }
}

fn usize_range(r: &Range<u32>) -> Range<usize> {
    r.start as usize..r.end as usize
}

fn ensure_parent_dir(p: &Path) -> io::Result<()> {
    p.parent().map_or(Ok(()), fs::create_dir_all)
}
