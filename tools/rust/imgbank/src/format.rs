use byteorder::{ByteOrder, BE};
use failure::{format_err, Error};
use libgfx::{BitDepth, ImageFormat};
use serde::{Serialize, Serializer};
use std::convert::{From, TryFrom};
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
    pub format: BankFormat,
    pub bitdepth: BankDepth,
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
        self.size() * (self.bitdepth.depth())
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
    format: BankFormat,
    bitdepth: BankDepth,
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
                .map(|o| format!(img_file_name![], o, format, bitdepth.depth()))
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

/// Custom enum for an Entry's N64 image format
#[derive(Debug, Copy, Clone, Eq, PartialEq, Serialize)]
#[serde(rename_all = "lowercase")]
pub enum BankFormat {
    RGBA = 0,
    YUV = 1,
    CI = 2,
    IA = 3,
    I = 4,
}

impl Into<ImageFormat> for BankFormat {
    fn into(self) -> ImageFormat {
        match self {
            BankFormat::RGBA => ImageFormat::RGBA,
            BankFormat::CI => ImageFormat::CI,
            BankFormat::IA => ImageFormat::IA,
            BankFormat::I => ImageFormat::I,
            BankFormat::YUV => panic!("YUV images are not supported!"),
        }
    }
}

impl TryFrom<u32> for BankFormat {
    type Error = Error;
    fn try_from(v: u32) -> Result<Self, Self::Error> {
        use BankFormat::*;
        match v {
            0 => Ok(RGBA),
            1 => Ok(YUV),
            2 => Ok(CI),
            3 => Ok(IA),
            4 => Ok(I),
            _ => Err(format_err!("unknown image format: {}", v)),
        }
    }
}

impl fmt::Display for BankFormat {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        f.write_str(self.as_str())
    }
}

impl BankFormat {
    fn as_str(&self) -> &'static str {
        use BankFormat::*;
        match self {
            RGBA => "rgba",
            YUV => "yuv",
            CI => "ci",
            IA => "ia",
            I => "i",
        }
    }
}

/// Custom enum for an Entry's N64 bit depth
#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub enum BankDepth {
    B4 = 0,
    B8 = 1,
    B16 = 2,
    B32 = 3,
}

impl BankDepth {
    fn depth(&self) -> usize {
        use BankDepth::*;
        match self {
            B4 => 4,
            B8 => 8,
            B16 => 16,
            B32 => 32,
        }
    }
}

impl Into<BitDepth> for BankDepth {
    fn into(self) -> BitDepth {
        match self {
            BankDepth::B4 => BitDepth::Bit4,
            BankDepth::B8 => BitDepth::Bit8,
            BankDepth::B16 => BitDepth::Bit16,
            BankDepth::B32 => BitDepth::Bit32,
        }
    }
}

impl Serialize for BankDepth {
    fn serialize<S: Serializer>(&self, serializer: S) -> Result<S::Ok, S::Error> {
        Serialize::serialize(&self.depth(), serializer)
    }
}

impl TryFrom<u32> for BankDepth {
    type Error = Error;
    fn try_from(v: u32) -> Result<Self, Self::Error> {
        use BankDepth::*;
        match v {
            0 => Ok(B4),
            1 => Ok(B8),
            2 => Ok(B16),
            3 => Ok(B32),
            _ => Err(format_err!("unknown bit depth: {}", v)),
        }
    }
}