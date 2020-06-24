use anyhow::Error;
use std::path::PathBuf;
use structopt::StructOpt;

mod config;
mod extract;

/// Extract neccessary resources from SSB64 rom image
#[derive(Debug, StructOpt)]
enum Opts {
    /// extract files into repo
    Extract(Extract),
    /// Generate new or add to exisit .gitignore the extracted files
    GitIgnore,
}

#[derive(Debug, StructOpt)]
struct Extract {
    /// version of SSB64 to extract from [us]
    #[structopt(short, long, parse(try_from_str))]
    version: config::Version,
    /// path to rom
    #[structopt(short, long, parse(from_os_str))]
    rom: PathBuf,
    /// path to assets.toml
    #[structopt(short, long, parse(from_os_str))]
    assets: PathBuf,
    /// replace any existing .toml files (default is to keep)
    #[structopt(short, long)]
    force: bool,
    /// show files to be extracted, but do not extract
    #[structopt(short, long)]
    dry_run: bool,
}

fn main() {
    let opts = Opts::from_args();

    if let Err(e) = run(opts) {
        eprintln!("Error: {:?}", e);
        ::std::process::exit(1);
    }
}

fn run(opts: Opts) -> Result<(), Error> {
    match opts {
        Opts::Extract(info) => extract::extract_assets(info),
        Opts::GitIgnore => Ok(()),
    }
}
