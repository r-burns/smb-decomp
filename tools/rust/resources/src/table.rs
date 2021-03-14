use anyhow::Result;
use indoc::indoc;
use resources::TableEntry;

use std::fmt::Write;

const TABLE_START: &str = r#"SECTIONS
{
    __pos = 0;
    .filetable 0 : AT(__pos)
    {
"#;

const TABLE_END: &str = r#"
        LONG(SIZEOF(.data)); LONG(0); LONG(0);
    }"#;

const DATA_START: &str = r#"
    __pos += SIZEOF(.filetable);
    __dataStart = __pos;
    .data 0 : AT(__pos)
    {
"#;

const DATA_END: &str = indoc!(
    r#"
        }
        
        /DISCARD/ :
        {
            *(*);
        }
    }
    "#
);

pub(crate) fn generate_ldscript(entries: &[TableEntry]) -> Result<String> {
    let mut tbl = String::with_capacity(entries.len() * 64); // + body size
    let mut data = String::with_capacity(entries.len() * 128);

    tbl.push_str(TABLE_START);
    data.push_str(DATA_START);

    let mut buf = String::with_capacity(0x100);
    for entry in entries {
        buf.clear();
        match entry {
            TableEntry::NameOnly(..) => unimplemented!("handling of pure resource files not ready"),
            TableEntry::Detailed {
                name,
                internal,
                external,
                decompressed,
                compressed,
            } => {
                let cprs_flag = (compressed.is_some() as u32) << 31;
                // todo: try into u16
                let internals_offset = internal.map(|n| n / 4).unwrap_or(0xFFFF);
                let externals_offset = external.map(|n| n / 4).unwrap_or(0xFFFF);
                // try into u16 and round up..?
                let compressed = compressed.unwrap_or(*decompressed) / 4;
                let decompressed = decompressed / 4;
                // write data start symbol to buf
                write!(&mut buf, "\"__{}\"", name)?;

                // write header
                write!(&mut tbl, "{:8}", "")?;
                write!(&mut tbl, "LONG({} | {:#08x});", buf, cprs_flag)?;
                write!(&mut tbl, "SHORT({:#04x});", internals_offset)?;
                write!(&mut tbl, "SHORT({:#04x});", compressed)?;
                write!(&mut tbl, "SHORT({:#04x});", externals_offset)?;
                writeln!(&mut tbl, "SHORT({:#04x});", decompressed)?;

                // write body
                write!(&mut data, "{:8}", "")?;
                writeln!(&mut data, "{} = .;", buf)?;

                write!(&mut data, "{:8}", "")?;
                writeln!(&mut data, "{}.o(.data);", name)?;

                if external.is_some() {
                    write!(&mut data, "{:8}", "")?;
                    writeln!(&mut data, "{}req.o(.data);", name)?;
                }
            }
        }
    }
    // add terminator entry to end of file table
    tbl.push_str(TABLE_END);

    // combine table/head and data/body
    tbl = tbl + &data;
    // add ending
    tbl.push_str(DATA_END);

    Ok(tbl)
}
