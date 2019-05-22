use crate::format::BankConfig;
use failure::{format_err, Error, ResultExt};
use std::fmt::Write;
use std::fs;
use std::path::PathBuf;
use toml;

macro_rules! begin_script {
    () => {
        r#"SECTIONS {{
    .{secname} 0 : 0
    {{
"#
    };
}

macro_rules! end_script {
    () => {
        r#"    }}
}}"#
    };
}

pub fn generate_script(
    input: PathBuf,
    output: Option<PathBuf>,
    section: Option<String>,
) -> Result<(), Error> {
    let section = section.unwrap_or_else(|| ".rodata".into());
    let output = output.unwrap_or_else(|| input.with_extension("ld"));
    let bankname = output
        .file_stem()
        .ok_or_else(|| {
            format_err!(
                "couldn't generate bank name (output {} had no filename)",
                output.display()
            )
        })?
        .to_string_lossy();

    let raw = fs::read(&input).context("reading input config toml file")?;
    let config: BankConfig = toml::from_slice(&raw).context("parsing config file")?;

    let mut script = format!(begin_script![], secname = &bankname);
    for entry in config.entries.iter() {
        writeln!(&mut script, "        {}.o({});", entry, &section)?;
    }
    writeln!(&mut script, end_script![])?;

    fs::write(&output, &script).context("writing out ld script")?;

    Ok(())
}
