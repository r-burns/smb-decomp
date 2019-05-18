use byteorder::{ByteOrder, BE};
use failure::{format_err, Error};
use libgfx::{BitDepth, ImageFormat};
use serde::Serialize;
use std::convert::From;
use std::fmt;

/// Bank file header that has offsets each set of images
#[derive(Debug)]
pub struct Header {
    pub count: u32,
    pub offsets: Vec<u32>,
}

impl From<&[u8]> for Header {
    fn from(raw: &[u8]) -> Self {
        let count = BE::read_u32(&raw[0..4]);
        let end_entry_ptrs = 4 + (count as usize * 4);
        let mut offsets = vec![0; count as usize];
        BE::read_u32_into(&raw[4..end_entry_ptrs], &mut offsets);

        Self { count, offsets }
    }
}

impl fmt::Display for Header {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "count: {}\noffsets: {:x?}", self.count, &self.offsets)
    }
}

/// An individual set of images pointed to by an offset in the [Header]
#[derive(Debug)]
pub struct Entry {
    pub entry_offset: u32,
    pub image_count: u32,
    pub format: ImageFormat,
    pub bitdepth: BitDepth,
    pub width: u32,
    pub height: u32,
    pub are_palettes: bool,
    pub image_offsets: Vec<u32>,
    pub palette_offsets: Option<Vec<u32>>,
}

impl Entry {
    pub fn size(&self) -> usize {
        (self.width as usize) * (self.height as usize)
    }

    pub fn bitsize(&self) -> usize {
        self.size() * (self.bitdepth as usize)
    }
    // round up for the case of an odd pixel numbered 4bit image
    pub fn bytesize(&self) -> usize {
        1 + ((self.bitsize() - 1) / 8)
    }
}

/// Formatting string for transforming u32 image data offsets into an output filename
#[macro_export]
macro_rules! img_file_name {
    () => {
        "{:06X}.{}{}.png"
    };
}

/// Configuration struct for an image entry
#[derive(Debug, Serialize)]
pub struct EntryConfig {
    format: ImageFormat,
    bitdepth: BitDepth,
    width: u32,
    height: u32,
    /// None = use filesystem to list images; Some(vec![]) = no images in this entry...
    images: Option<Vec<String>>,
}

impl From<Entry> for EntryConfig {
    fn from(entry: Entry) -> Self {
        let Entry {
            format,
            bitdepth,
            width,
            height,
            image_offsets,
            ..
        } = entry;
        let images = Some(
            image_offsets
                .into_iter()
                .map(|o| format!(img_file_name![], o, format, bitdepth as u32))
                .collect(),
        );

        Self {
            format,
            bitdepth,
            width,
            height,
            images,
        }
    }
}

/// A simple wrapper type for the list of entries in a bank for outputting
/// the TOML config file for entry order in a bank
#[derive(Debug, Serialize)]
pub struct BankConfig {
    entries: Vec<String>,
}

impl From<Vec<String>> for BankConfig {
    fn from(entries: Vec<String>) -> Self {
        Self { entries }
    }
}

/// Convert from raw format int into ImageFormat enum
pub fn read_imgformat(magic: u32) -> Result<ImageFormat, Error> {
    use ImageFormat::*;
    match magic {
        0 => Ok(RGBA),
        1 => Err(format_err!("YUV not supported")),
        2 => Ok(CI),
        3 => Ok(IA),
        4 => Ok(I),
        _ => Err(format_err!("Unknown entry format number '{}", magic)),
    }
}
/// Convert form raw bitdepth int into BitDepth enum
pub fn read_bitdepth(magic: u32) -> Result<BitDepth, Error> {
    use BitDepth::*;
    match magic {
        0 => Ok(Bit4),
        1 => Ok(Bit8),
        2 => Ok(Bit16),
        3 => Ok(Bit32),
        _ => Err(format_err!("Unknown entry bitdepth '{}'", magic)),
    }
}
