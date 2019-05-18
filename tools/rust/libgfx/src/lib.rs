///! A crate for dealing with n64 graphic formats. It can convert from the raw, big-endian
///! n64 binary data into a `Vec` of RGBA or GrayAlpha values
use std::fmt;
use serde::{Serialize, Serializer};

mod decode;
mod utils;

pub use decode::{raw_to_gray, raw_to_indexed, raw_to_rgba};

/// The supported N64 image formats.
#[derive(Debug, Copy, Clone, Eq, PartialEq, Serialize)]
#[serde(rename_all = "lowercase")]
pub enum ImageFormat {
    RGBA,
    IA,
    I,
    CI,
}

impl fmt::Display for ImageFormat {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        use ImageFormat::*;
        let output = match self {
            RGBA => "rgba",
            IA => "ia",
            I => "i",
            CI => "ci",
        };

        write!(f, "{}", output)
    }
}

/// Supported N64 image bit-depths.
#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub enum BitDepth {
    Bit4 = 4,
    Bit8 = 8,
    Bit16 = 16,
    Bit32 = 32,
}

impl Serialize for BitDepth {
    fn serialize<S>(&self, ser: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer,
    {
        use BitDepth::*;
        match *self {
            Bit4 => ser.serialize_unit_variant("BitDepth", 0, "4bit"),
            Bit8 => ser.serialize_unit_variant("BitDepth", 0, "8bit"),
            Bit16 => ser.serialize_unit_variant("BitDepth", 0, "16bit"),
            Bit32 => ser.serialize_unit_variant("BitDepth", 0, "32bit"),
        }
    }
}
