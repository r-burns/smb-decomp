use failure::Error;
use libvpk;
use std::{
    fs::File,
    io::{self, BufReader, BufWriter, Write},
    path::PathBuf,
};
use structopt::StructOpt;

/// A tool to compress, decompress, and examine vpk0 encoded files.
#[derive(Debug, StructOpt)]
enum Opts {
    /// Print information about a compressed vpk0 file
    #[structopt(name = "info")]
    Info {
        /// file to examine
        #[structopt(parse(from_os_str))]
        input: PathBuf,
        /// file to write output to, or stdout if not present
        #[structopt(parse(from_os_str))]
        output: Option<PathBuf>,
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
        Opts::Info { input, output } => print_vpk_info(input, output),
    }
}

fn print_vpk_info(input: PathBuf, output: Option<PathBuf>) -> Result<(), Error> {
    let rdr = BufReader::new(File::open(&input)?);
    let wtr = BufWriter::new(
        output
            .as_ref()
            .map(File::create)
            .transpose()?
            .map(|f| Box::new(f) as Box<dyn Write>)
            .unwrap_or_else(|| Box::new(io::stdout()) as Box<dyn Write>),
    );

    libvpk::info(rdr, wtr)?;

    Ok(())
}
