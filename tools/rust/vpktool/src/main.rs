use failure::{Error, ResultExt};
use libvpk::{self, LzssSettings};
use std::{
    fs::{self, File},
    io::{self, BufReader, BufWriter, Write},
    path::PathBuf,
};
use structopt::StructOpt;

/// A tool to compress, decompress, and examine vpk0 encoded files.
#[derive(Debug, StructOpt)]
enum Opts {
    /// Compress a binary file into the vpk0 format
    #[structopt(name = "compress")]
    Encode {
        /// input binary file path
        input: PathBuf,
    },
    /// Decode a compressed vpk0 file into an uncompressed binary file
    #[structopt(name = "decompress")]
    Decomp {
        /// input compressed file path
        input: PathBuf,
        /// output binary file path
        output: PathBuf,
    },
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
        Opts::Encode { input } => compress_vpk(input),
        Opts::Decomp { input, output } => decompress_vpk(input, output),
        Opts::Info { input, output } => print_vpk_info(input, output),
    }
}

fn compress_vpk(input: PathBuf) -> Result<(), Error> {
    let rdr =
        BufReader::new(File::open(&input).context("reading input binary file for compression")?);
    let settings = LzssSettings::new(16, 16, 2);
    libvpk::encode(rdr, settings).context("compressing binary")?;

    Ok(())
}

fn decompress_vpk(input: PathBuf, output: PathBuf) -> Result<(), Error> {
    let rdr =
        BufReader::new(File::open(&input).context("reading input vpk file for decompression")?);
    let decompressed = libvpk::decode(rdr).context("decompressing vpk file")?;
    fs::write(&output, &decompressed).context("writing decompressed file")?;

    Ok(())
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
