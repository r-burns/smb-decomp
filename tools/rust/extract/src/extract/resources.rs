use crate::config::{ResTable, Resources};
use crate::extract::{ExtractContext, ExtractTask, ToExtract};
use anyhow::{bail, Context, Error};
use std::{
    borrow::Cow,
    convert::TryInto,
    fs,
    iter::{self, Peekable},
    ops::Range,
    path::Path,
};

pub(super) fn todo<'a>(
    res: &'a Resources,
    ctx: ExtractContext<'a>,
) -> Option<impl Iterator<Item = ToExtract<'a>>> {
    let read_table = |tbl| read_res_table(&res.output_dir, ctx, tbl);

    res.tables[ctx.version].as_ref().map(|tbl| {
        let table_list = parse_resource_table(tbl, &res.output_dir, ctx);

        iter::once(table_list).chain(read_table(tbl))
    })
}

pub(super) fn extract(out: &Path, task: ExtractTask) -> Result<(), Error> {
    use ExtractTask::{Resource, ResourceReq, ResourceTable};

    match task {
        ResourceTable(entries) => write_resource_table_json(out, entries)?,
        Resource(data) | ResourceReq(data) => {
            fs::write(out, data)?;
        }
        _ => bail!("Not a resource extraction: {:?}", task),
    }

    Ok(())
}

fn read_res_table<'a>(
    out_dir: &'a Path,
    ctx: ExtractContext<'a>,
    table: &'a ResTable,
) -> impl Iterator<Item = ToExtract<'a>> {
    let start = table.offset.start as usize;
    let end = table.offset.end as usize;
    let raw_table = &ctx.rom[start..end];
    let file_dir = {
        let mut p = out_dir.join("files");
        p.push("raw");
        p
    };

    let raw_iter = iterate_table_entries(raw_table);
    ResEntryIter::new(raw_iter, ctx.rom, start..end)
        .enumerate()
        .filter_map(move |(i, entry)| {
            entry.details.as_ref().map(|details| {
                // todo: check table.entries for existing name
                let filename = named_file_or_default(i, table.entries.as_deref());
                let mut out = file_dir.join(&*filename);
                if details.is_compressed {
                    out.set_extension("vpk");
                } else {
                    out.set_extension("bin");
                }

                let reqs = details.reqs.map(|data| {
                    // TODO function to name the req file?
                    let out = file_dir.join(format!("{}req.bin", &filename));
                    ToExtract {
                        out: out.into(),
                        info: ExtractTask::ResourceReq(data),
                    }
                });
                let file = ToExtract {
                    out: out.into(),
                    info: ExtractTask::Resource(details.file),
                };
                iter::once(file).chain(reqs)
            })
        })
        .flatten()
}

#[derive(Debug)]
struct ResourceDetails<'a> {
    file: &'a [u8],
    reqs: Option<&'a [u8]>,
    is_compressed: bool,
    // can add back later once these are processed...
    // internal_ptrs: Option<usize>,
    // external_ptrs: Option<usize>,
    // compressed_size: Option<usize>,
    // original_size: usize,
}

#[derive(Debug)]
struct ParsedResourceEntry<'a> {
    /// offset of file from the end of the resource table
    offset: usize,
    /// if entry is not a terminator, this has the entry's information
    details: Option<ResourceDetails<'a>>,
}

impl<'a> ParsedResourceEntry<'a> {
    fn from_raw(raw: RawEntry, rom: &'a [u8], table_end: usize) -> Self {
        match raw {
            RawEntry::End(o) => Self {
                offset: o as usize,
                details: None,
            },
            RawEntry::Entry {
                offset,
                size,
                compressed,
                ..
            } => {
                let offset = offset as usize;
                let size = compressed.unwrap_or(size) as usize;

                let file_range = table_end + offset..table_end + offset + size;
                let file = &rom[file_range];

                Self {
                    offset,
                    details: Some(ResourceDetails {
                        file,
                        reqs: None,
                        is_compressed: compressed.is_some(),
                    }),
                }
            }
        }
    }
}

fn iterate_table_entries(table: &[u8]) -> impl Iterator<Item = RawEntry> + '_ {
    assert!(
        table.len() % RawEntry::SIZE == 0,
        "Resource table not a multiple of {} bytes; was {}",
        RawEntry::SIZE,
        table.len()
    );

    table
        .chunks(RawEntry::SIZE)
        .map(|raw| TryInto::<[u8; RawEntry::SIZE]>::try_into(raw).unwrap())
        .map(RawEntry::from)
}

#[derive(Debug, Copy, Clone, PartialEq, Eq)]
enum RawEntry {
    End(u32),
    Entry {
        offset: u32,
        inptrs: Option<u32>,
        exptrs: Option<u32>,
        size: u32,
        /// if compressed
        compressed: Option<u32>,
    },
}

impl RawEntry {
    const SIZE: usize = 12; // 12 bytes per entry in table
    const NULL_PTR: u16 = 0xFFFF;
}

impl From<[u8; Self::SIZE]> for RawEntry {
    fn from(raw: [u8; Self::SIZE]) -> Self {
        let read_u32 = |r: Range<usize>| u32::from_be_bytes(raw[r].try_into().unwrap());
        let read_u16 = |r: Range<usize>| u16::from_be_bytes(raw[r].try_into().unwrap());
        let read_word_size = |r| read_u16(r) as u32 * 4;
        let read_ptr = |p: u16| {
            if p != Self::NULL_PTR {
                Some(p as u32 * 4)
            } else {
                None
            }
        };

        let (offset, compressed) = {
            let o = read_u32(0..4);
            (o & 0x7FFF_FFFF, o & 0x8000_0000 != 0)
        };
        let inptrs = read_ptr(read_u16(4..6));
        let compressed = if compressed {
            Some(read_word_size(6..8))
        } else {
            None
        };
        let exptrs = read_ptr(read_u16(8..10));
        let size = read_word_size(10..12);

        if size == 0 {
            Self::End(offset)
        } else {
            Self::Entry {
                offset,
                inptrs,
                exptrs,
                size,
                compressed,
            }
        }
    }
}

struct ResEntryIter<'a, I: Iterator> {
    rom: &'a [u8],
    table_offset: Range<usize>,
    entries: Peekable<I>,
    next_entry: Option<ParsedResourceEntry<'a>>,
}

impl<'a, I: Iterator> ResEntryIter<'a, I> {
    fn new(entries: I, rom: &'a [u8], table_offset: Range<usize>) -> Self {
        Self {
            rom,
            entries: entries.peekable(),
            table_offset,
            next_entry: None,
        }
    }
}

impl<'a, I: Iterator<Item = RawEntry> + 'a> Iterator for ResEntryIter<'a, I> {
    type Item = ParsedResourceEntry<'a>;

    fn next(&mut self) -> Option<Self::Item> {
        // borrow-checker
        let rom = self.rom;
        let entries = &mut self.entries;
        let next_entry = &mut self.next_entry;
        let table_end = self.table_offset.end;

        let parse_raw = |raw| Self::Item::from_raw(raw, rom, table_end);

        entries.next().map(|raw| {
            let next = entries.peek().copied().map(parse_raw);
            let mut cur = next_entry.take().unwrap_or_else(|| parse_raw(raw));

            // check the next file to see if there is req data between
            // these two entries
            if let Some(details) = cur.details.as_mut() {
                // offsets are relative to the end of the table,
                // so have to add the offsets to the table_end address to
                // get the rom address
                let file_end_addr = cur.offset + details.file.len();
                let found_reqs = next.as_ref().map(|n| n.offset).and_then(|next_file_addr| {
                    if file_end_addr < next_file_addr {
                        let s = table_end + file_end_addr;
                        let e = table_end + next_file_addr;
                        Some(&rom[s..e])
                    } else {
                        None
                    }
                });

                let has_exptrs = if let RawEntry::Entry { exptrs, .. } = raw {
                    exptrs.is_some()
                } else {
                    false
                };

                debug_assert_eq!(
                    found_reqs.is_some(),
                    has_exptrs,
                    "all exptrs need req file:\n{:#?}\ncur: {:#x} + {:#x} = {:#x}\n{:#?}",
                    raw,
                    cur.offset,
                    details.file.len(),
                    file_end_addr,
                    next.map(|n| n.offset)
                );

                details.reqs = found_reqs;

                *next_entry = next;
            }

            cur
        })
    }
}

type BoxedResEntriesIter<'a> = Box<dyn Iterator<Item = TableEntry<'a>> + 'a>;
pub(super) struct TableEntries<'a> {
    iter: BoxedResEntriesIter<'a>,
}

fn named_file_or_default(idx: usize, names: Option<&[String]>) -> Cow<str> {
    names
        .and_then(|n| n.get(idx))
        .map(Cow::from)
        .unwrap_or_else(|| default_resfile_name(idx).into())
}

fn default_resfile_name(n: usize) -> String {
    format!("resource-{:04}", n)
}

use resources::TableEntry;

// Create an Iterator that can provide the info for recreating the resource table
// right now, each entry needs all of the describing info,
// eventually this shouldn't be the case
fn parse_resource_table<'a>(
    tbl: &'a ResTable,
    outdir: &Path,
    ctx: ExtractContext<'a>,
) -> ToExtract<'a> {
    let filename = "resources.json";
    let file = outdir.join(filename);

    let start = tbl.offset.start as usize;
    let end = tbl.offset.end as usize;
    let raw_table = &ctx.rom[start..end];
    let iter =
        iterate_table_entries(raw_table)
            .enumerate()
            .filter_map(move |(i, entry)| match entry {
                RawEntry::End(_) => None,
                RawEntry::Entry {
                    inptrs,
                    exptrs,
                    size,
                    compressed,
                    ..
                } => {
                    let name = named_file_or_default(i, tbl.entries.as_deref());

                    Some(TableEntry::Detailed {
                        name,
                        internal: inptrs,
                        external: exptrs,
                        decompressed: size,
                        compressed,
                    })
                }
            });

    let iter = Box::new(iter) as BoxedResEntriesIter;

    ToExtract {
        out: file.into(),
        info: ExtractTask::ResourceTable(TableEntries { iter }),
    }
}

/// output the `TableEntry`s from the passed iterator to the newly created JSON file `out`
fn write_resource_table_json(out: &Path, entries: TableEntries) -> Result<(), Error> {
    let entries: Vec<_> = entries.iter.collect();
    let wtr = fs::File::create(out).context("creating resource table json file")?;

    serde_json::to_writer_pretty(wtr, &entries).context("writing JSON to resource table file")
}
