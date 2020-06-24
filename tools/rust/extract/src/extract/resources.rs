use crate::config::{ResTable, Resources};
use crate::extract::{ExtractContext, ToExtract};
use std::convert::TryInto;
use std::iter::{self, Peekable};
use std::ops::Range;
use std::path::Path;
use std::slice::Chunks;

pub(super) fn todo<'a>(
    res: &'a Resources,
    ctx: ExtractContext<'a>,
) -> Option<impl Iterator<Item = ToExtract<'a>>> {
    let read_table = |tbl| read_res_table(&res.output_dir, ctx, tbl);

    res.tables[ctx.version].as_ref().map(|tbl| {
        let filename = "resource-filetable.bin";
        let range = tbl.offset.start as usize..tbl.offset.end as usize;
        let table_bin = ToExtract::ResourceTable {
            out: res.output_dir.join(filename),
            data: &ctx.rom[range],
        };

        iter::once(table_bin).chain(read_table(tbl))
    })
}

fn read_res_table<'a>(
    out_dir: &'a Path,
    ctx: ExtractContext<'a>,
    table: &'a ResTable,
) -> impl Iterator<Item = ToExtract<'a>> {
    let start = table.offset.start as usize;
    let end = table.offset.end as usize;
    let raw_table = &ctx.rom[start..end];
    let file_dir = out_dir.join("files");

    ResEntryIter::new(raw_table, ctx.rom, start..end)
        .enumerate()
        .filter_map(move |(i, entry)| {
            entry.details.as_ref().map(|details| {
                // todo: check table.entries for existing name
                let filename = format!("resource-{:04}", i);
                let mut out = file_dir.join(&filename);
                if entry.is_compressed() {
                    out.set_extension("vpk");
                } else {
                    out.set_extension("bin");
                }

                let reqs = details.reqs.map(|data| {
                    let out = file_dir.join(format!("{}-req.bin", &filename));
                    ToExtract::ResourceReq { out, data }
                });
                let file = ToExtract::Resource {
                    out,
                    data: details.file,
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
    internal_ptrs: Option<usize>,
    external_ptrs: Option<usize>,
    compressed_size: Option<usize>,
}

#[derive(Debug)]
struct ResourceEntry<'a> {
    /// offset of file from the end of the resource table
    offset: usize,
    /// if entry is not a terminator, this has the entry's information
    details: Option<ResourceDetails<'a>>,
}

impl<'a> ResourceEntry<'a> {
    const RAWSIZE: usize = 0x0C;

    fn is_compressed(&self) -> bool {
        self.details
            .as_ref()
            .map_or(false, |d| d.compressed_size.is_some())
    }

    fn new(entry: [u8; 12], rom: &'a [u8], tbl_end: usize) -> Self {
        // The word offset to the pointer-linked-list uses this value for no list
        const NO_PTR: u16 = 0xFFFF;

        let read_u32 = |r: Range<usize>| u32::from_be_bytes(entry[r].try_into().unwrap());
        let read_u16 = |r: Range<usize>| u16::from_be_bytes(entry[r].try_into().unwrap());
        let check_ptr = |p| {
            if p == NO_PTR {
                None
            } else {
                Some(p as usize * 4)
            }
        };

        let (offset, compressed) = {
            let o = read_u32(0..4);
            ((o & 0x7FFF_FFFF) as usize, o & 0x8000_0000 != 0)
        };
        let size = read_u16(10..12) as usize * 4;
        let details = if size == 0 {
            // end of table, though offset points to end of the final file's data
            None
        } else {
            let compressed_size = if compressed {
                let s = read_u16(6..8);
                Some(s as usize * 4)
            } else {
                None
            };
            let internal_ptrs = check_ptr(read_u16(4..6));
            let external_ptrs = check_ptr(read_u16(8..10));
            let r = tbl_end + offset..tbl_end + offset + size;
            let file = &rom[r];

            Some(ResourceDetails {
                file,
                internal_ptrs,
                external_ptrs,
                compressed_size,
                reqs: None,
            })
        };

        Self { offset, details }
    }
}

struct ResEntryIter<'a, 'csr> {
    rom: &'a [u8],
    entries: Peekable<Chunks<'csr, u8>>,
    table_offset: Range<usize>,
    next_entry: Option<ResourceEntry<'a>>,
}

impl<'a, 'csr> ResEntryIter<'a, 'csr> {
    fn new(table: &'csr [u8], rom: &'a [u8], table_offset: Range<usize>) -> Self {
        const SIZE: usize = ResourceEntry::RAWSIZE;
        assert!(
            table.len() % SIZE == 0,
            "Resource table not a multiple of {} bytes; was {}",
            SIZE,
            table.len()
        );

        Self {
            rom,
            entries: table.chunks(SIZE).peekable(),
            table_offset,
            next_entry: None,
        }
    }
}

impl<'a, 'csr> Iterator for ResEntryIter<'a, 'csr> {
    type Item = ResourceEntry<'a>;

    fn next(&mut self) -> Option<Self::Item> {
        const SIZE: usize = ResourceEntry::RAWSIZE;

        // borrow-checker
        let rom = self.rom;
        let entries = &mut self.entries;
        let next_entry = &mut self.next_entry;

        let tbl_end = self.table_offset.end;
        let new_entry = |raw| ResourceEntry::new(raw, rom, tbl_end);

        entries.next().and_then(|raw| {
            let raw: [u8; SIZE] = raw.try_into().unwrap();
            let next = entries.peek().map(|&r| new_entry(r.try_into().unwrap()));
            let cur = next_entry.take().unwrap_or_else(|| new_entry(raw));

            let opt_details = cur.details;
            let offset = cur.offset;

            opt_details
                .map(|mut details| {
                    let cur_size = details
                        .compressed_size
                        .unwrap_or_else(|| details.file.len());
                    let cur_file_end = offset + cur_size;
                    let found_reqs = next.as_ref().map(|n| n.offset).and_then(|start_next| {
                        if cur_file_end < start_next {
                            let start = tbl_end + cur_file_end;
                            let end = tbl_end + start_next;

                            Some(&rom[start..end])
                        } else {
                            None
                        }
                    });

                    details.reqs = found_reqs;
                    *next_entry = next;

                    Self::Item {
                        offset,
                        details: Some(details),
                    }
                })
                .or_else(|| {
                    Some(Self::Item {
                        offset,
                        details: None,
                    })
                })
        })
    }
}
