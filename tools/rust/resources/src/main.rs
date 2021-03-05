use std::{ffi::OsStr, fs, path::PathBuf};

use anyhow::{Context, Result};

type ArgResult<T> = std::result::Result<T, pico_args::Error>;

mod table;

fn print_usage() {
    indoc::printdoc!(
        r#"
        {name} {version}
        Tool for packaging SSB64 resource files

        Usage:
          -h, --help      print this message
          -v, --version   print version info
          table           create the packaging linkerscipt for resource files

        {name} table [--input] [--output]
          -i, --input     input JSON file
          -o, --output    output linkerscipt file
        
        "#,
        name = env!("CARGO_BIN_NAME"),
        version = env!("CARGO_PKG_VERSION")
    )
}

fn print_version() {
    println!(
        "{} version {}",
        env!("CARGO_BIN_NAME"),
        env!("CARGO_PKG_VERSION")
    );
}

enum Args {
    Table(PathBuf, PathBuf),
    Help,
    Version,
}

impl Args {
    fn from_env() -> ArgResult<Self> {
        let mut args = pico_args::Arguments::from_env();

        if args.contains(["-h", "--help"]) {
            return Ok(Self::Help);
        }

        if args.contains(["-V", "--version"]) {
            return Ok(Self::Version);
        }

        match args.subcommand()?.as_deref() {
            Some("table") => {
                let input = args.value_from_os_str(["-i", "--input"], to_pathbuf)?;
                let output = args.value_from_os_str(["-o", "--output"], to_pathbuf)?;

                Ok(Self::Table(input, output))
            }
            Some("help") | None => Ok(Self::Help),
            Some(unk) => {
                eprintln!("Unrecognized subcommand <{}>", unk);
                Ok(Self::Help)
            }
        }
    }
}

fn to_pathbuf(s: &OsStr) -> ArgResult<PathBuf> {
    Ok(PathBuf::from(s.to_os_string()))
}

fn main() -> Result<()> {
    let args = Args::from_env().context("parsing CLI args")?;

    match args {
        Args::Table(input, output) => table(input, output),
        Args::Help => Ok(print_usage()),
        Args::Version => Ok(print_version()),
    }
}

fn table(input: PathBuf, output: PathBuf) -> Result<()> {
    let json = fs::read_to_string(input).context("reading input JSON")?;
    let entries: Vec<resources::TableEntry> =
        serde_json::from_str(&json).context("deserializing input JSON")?;

    let script = table::generate_ldscript(&entries).context("creating LD script")?;

    fs::write(output, &script).context("writing output LD script")
}
