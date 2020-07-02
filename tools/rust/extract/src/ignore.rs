use crate::config::{Assets, Version};
use crate::extract::{self, ExtractContext, ToExtract};
use crate::GitIgnore;
use anyhow::{anyhow, Context, Error};
use std::collections::BTreeSet;
use std::fs;
use std::io::{BufWriter, Write};
use std::path::Path;

pub(crate) fn modify_gitignore(info: GitIgnore) -> Result<(), Error> {
    // todo: handle different version baseroms
    let rom = fs::read(&info.rom).context("reading rom file")?;
    let assets = Assets::from_path(&info.assets).context("parsing assets toml")?;
    let files = Version::iter()
        .map(|version| ExtractContext {
            version,
            rom: &rom,
            force: true,
        })
        .flat_map(|ctx| extract::generate_todos(&assets, ctx))
        .filter(|task| !task.is_preserved())
        .map(ToExtract::into_filename)
        .collect::<BTreeSet<_>>();

    update_gitignore_files(&files, &info).context("updating .gitignore file")
}

const HEADER: &str = "##### Autogenerated List of Extracted Assets #####";
const FOOTER: &str = "##### End List of Extracted Assets ###############";

fn update_gitignore_files(files: &BTreeSet<Box<Path>>, info: &GitIgnore) -> Result<(), Error> {
    let write_managed_files = |wtr: &mut BufWriter<_>| {
        writeln!(wtr, "{}", HEADER)?;
        for f in files {
            writeln!(wtr, "{}", f.display())?;
        }
        writeln!(wtr, "{}", FOOTER)
    };

    let current = fs::read_to_string(&info.ignore).context("reading .gitignore")?;
    let f = fs::OpenOptions::new()
        .create(true)
        .truncate(true)
        .write(true)
        .open(&info.ignore)
        .context("opening .gitignore for writing")?;
    let mut wtr = BufWriter::new(f);

    if let Some(start_idx) = current.find(HEADER) {
        let end_idx = current[start_idx..]
            .find(FOOTER)
            .map(|offset| offset + start_idx + FOOTER.len())
            .ok_or_else(|| anyhow!("no autogenerated gitignore footer"))?;
        let beginning = &current[..start_idx].trim();
        let end = &current[end_idx..].trim();
        // todo: check for empty end, don't write 

        writeln!(&mut wtr, "{}", beginning)
            .and_then(|_| writeln!(&mut wtr))
            .and_then(|_| write_managed_files(&mut wtr))
            .and_then(|_| writeln!(&mut wtr))
            .and_then(|_| writeln!(&mut wtr, "{}", end))
    } else {
        writeln!(&mut wtr, "{}", current).and_then(|_| write_managed_files(&mut wtr))
    }
    .context("writing managed files to gitignore")
}
