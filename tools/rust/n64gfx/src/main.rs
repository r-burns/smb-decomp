use failure::{format_err, Error};
use libgfx::{BitDepth, ImageFormat};
use std::path::PathBuf;
use structopt::StructOpt;

mod drivers;

/// A tool to convert PNGs to N64 image formats, and from raw N64 binary
/// data into PNGs
#[derive(Debug, StructOpt)]
pub struct Opts {
    #[structopt(subcommand)]
    mode: Mode,
    /// Input binary or PNG
    #[structopt(short, long, parse(from_os_str))]
    input: PathBuf,
    /// Output file
    #[structopt(short, long, parse(from_os_str))]
    output: PathBuf,
    /// RGBA, CI, I, or IA
    #[structopt(short, long, parse(try_from_str = "arg_format"))]
    format: ImageFormat,
    /// 4, 8, 16, or 32
    #[structopt(short = "d", long, parse(try_from_str = "arg_bitdepth"))]
    bitdepth: BitDepth,
}

#[derive(Debug, StructOpt)]
enum Mode {
    /// Convert a PNG into an N64 binary
    #[structopt(name = "encode")]
    Encode {
        /// A custom output for a CI image palette binary
        #[structopt(long = "palette", short, parse(from_os_str))]
        palette_output: Option<PathBuf>,
    },
    /// Convert N64 binary data into a PNG
    #[structopt(name = "decode")]
    Decode {
        /// Location of image data in input binary, if not at the start
        #[structopt(long, parse(try_from_str = "possible_hex"))]
        offset: Option<u64>,
        /// Convert a CI palette into RGBA PNG (default is paletted PNG)
        #[structopt(long = "convert-palette")]
        convert_palette: bool,
        /// Location of palette data (RBGA16 array) for CI image
        #[structopt(short, long, parse(try_from_str = "possible_hex"))]
        palette: Option<u64>,
        #[structopt(short, long)]
        height: u32,
        #[structopt(short, long)]
        width: u32,
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
    println!("{:?}", opts);

    match opts.mode {
        Mode::Encode { .. } => drivers::encode_binary(opts),
        Mode::Decode { .. } => drivers::decode_binary(opts),
    }
}

fn arg_format(s: &str) -> Result<ImageFormat, Error> {
    use ImageFormat::*;

    match s {
        "rgba" | "RGBA" => Ok(RGBA),
        "ci" | "CI" => Ok(CI),
        "i" | "I" => Ok(I),
        "ia" | "IA" => Ok(IA),
        _ => Err(format_err!("unknown image format {}", s)),
    }
}

fn arg_bitdepth(s: &str) -> Result<BitDepth, Error> {
    use BitDepth::*;

    match s {
        "4" => Ok(Bit4),
        "8" => Ok(Bit8),
        "16" => Ok(Bit16),
        "32" => Ok(Bit32),
        _ => Err(format_err!("unknown bitdepth {}", s)),
    }
}

fn possible_hex(num: &str) -> Result<u64, ::std::num::ParseIntError> {
    let radix = &num[0..2];

    if radix == "0x" || radix == "0X" {
        u64::from_str_radix(&num[2..], 16)
    } else {
        u64::from_str_radix(num, 10)
    }
}
