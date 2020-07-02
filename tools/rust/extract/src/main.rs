use anyhow::Error;
use std::path::PathBuf;
use structopt::StructOpt;

mod clean;
mod config;
mod extract;
mod ignore;
mod local;

/// Extract neccessary resources from SSB64 rom image
#[derive(Debug, StructOpt)]
enum Opts {
    /// extract files into repo
    Extract(Extract),
    /// Generate new or add to existing .gitignore the extracted files
    Ignore(GitIgnore),
    Clean {
        /// path to local assets file
        #[structopt(parse(from_os_str))]
        local: PathBuf,
    },
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
    /// path to local assets file (info on version and already extracted assets)
    #[structopt(short, long, parse(from_os_str))]
    local: PathBuf,
    /// replace any already extracted files (default is to do nothing)
    #[structopt(short, long)]
    force: bool,
    /// show files to be extracted, but do not extract
    #[structopt(short, long)]
    dry_run: bool,
}

#[derive(Debug, StructOpt)]
struct GitIgnore {
    /// path to rom
    #[structopt(short, long, parse(from_os_str))]
    rom: PathBuf,
    /// path to assets.toml
    #[structopt(short, long, parse(from_os_str))]
    assets: PathBuf,
    /// path to .gitignore, or path for new .gitignore
    #[structopt(short, long, parse(from_os_str))]
    ignore: PathBuf,
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
        Opts::Ignore(info) => ignore::modify_gitignore(info),
        Opts::Clean { local } => clean::clean_assets(&local),
    }
}
