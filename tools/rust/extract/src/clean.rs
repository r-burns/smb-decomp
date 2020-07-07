use crate::local::LocalAssets;
use anyhow::{Context, Error};
use std::fs;
use std::io;
use std::path::Path;

/// Remove assets from file `extracted`. If that file does not exist, do nothing.
pub(crate) fn clean_assets(extracted: &Path) -> Result<(), Error> {
    LocalAssets::from_path(extracted)
        .context("reading extracted assets file")?
        .map_or(Ok(()), |assets| {
            assets
                .list
                .into_iter()
                .try_for_each(|f| {
                    fs::remove_file(&f)
                        .or_else(ignore_missing_file)
                        .with_context(|| format!("removing {}", f.display()))
                })
                .and_then(|_| fs::remove_file(extracted).context("deleting extracted assets file"))
        })
}

fn ignore_missing_file(err: io::Error) -> io::Result<()> {
    match err.kind() {
        io::ErrorKind::NotFound => Ok(()),
        _ => Err(err),
    }
}
