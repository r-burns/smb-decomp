use failure::Error;
use std::path::PathBuf;
use structopt::StructOpt;

#[macro_use]
mod format;
mod unpack;

/// A utility to pack and unpack the image banks in SSB64.
#[derive(Debug, StructOpt)]
enum Opts {
    #[structopt(name = "unpack")]
    Unpack {
        #[structopt(parse(from_os_str))]
        bank: PathBuf,
        /// Output directory for unpacked image files
        #[structopt(short, long, parse(from_os_str))]
        output: PathBuf,
    },
}

fn main() {
    let opts = Opts::from_args();
    if let Err(e) = run(opts) {
        eprintln!("Error: {}", e);
        for c in e.iter_causes() {
            eprintln!("caused by: {}", c);
        }

        ::std::process::exit(1);
    }
}

fn run(opts: Opts) -> Result<(), Error> {
    match opts {
        Opts::Unpack { bank, output } => unpack::unpack_bank(bank, output),
    }
}
