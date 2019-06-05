use crate::error::VpkError;
use bitstream_io::{BitReader, BE as bitBE};
use byteorder::{ByteOrder, BE};
use std::fmt;
use std::io::Read;
use std::str;

/// Valid lookback methods for a VPK compressed file. `OneSample` directly encodes
/// the lookback value in stream, while `TwoSample` can have two lookbacks encoded
/// back-to-back
#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub enum VpkMethod {
    OneSample,
    TwoSample,
}

/// Represents the important info contained within the VPK0 header
#[derive(Debug)]
pub struct VpkHeader {
    /// Size of decompressed data
    pub size: u32,
    pub method: VpkMethod,
}
impl VpkHeader {
    /// Parse VPK header from a byte array
    fn from_array(arr: &[u8; 9]) -> Result<Self, VpkError> {
        let name = str::from_utf8(&arr[0..4])?;
        if name != "vpk0" {
            return Err(VpkError::InvalidHeader(name.into()));
        }

        let size = BE::read_u32(&arr[4..8]);
        let method = match arr[8] {
            0 => Ok(VpkMethod::OneSample),
            1 => Ok(VpkMethod::TwoSample),
            unk @ _ => Err(VpkError::InvalidMethod(unk)),
        }?;

        Ok(Self { size, method })
    }
    /// Convenience function to read the vpk0 header from a bitstream
    pub fn from_bitreader<R: Read>(reader: &mut BitReader<R, bitBE>) -> Result<Self, VpkError> {
        let mut header = [0u8; 9];
        reader.read_bytes(&mut header)?;

        Self::from_array(&header)
    }
}

/// A Huffman tree node or leaf designed to be stored in an array
#[derive(Debug)]
enum TreeEntry {
    // left and right are indices into a `HufTree` array
    Node { left: usize, right: usize },
    Leaf(u8),
}

/// An array based huffman tree
#[derive(Debug)]
pub struct HuffTree {
    entries: Vec<TreeEntry>,
}

impl HuffTree {
    pub fn from_bitreader<R: Read>(bits: &mut BitReader<R, bitBE>) -> Result<Self, VpkError> {
        let mut entries: Vec<TreeEntry> = Vec::new();
        let mut buf: Vec<usize> = Vec::new();

        loop {
            let new_entry_idx = entries.len();
            // create a Node (1) or Leaf (0)
            if bits.read_bit()? {
                // if there are less than 2 "outstanding" entries, the tree is done
                if buf.len() < 2 {
                    break;
                }

                entries.push(TreeEntry::Node {
                    right: buf.pop().unwrap(),
                    left: buf.pop().unwrap(),
                });
            } else {
                // add a leaf node with an 8-bit value
                entries.push(TreeEntry::Leaf(bits.read(8)?));
            }
            // store a reference to new leaf or node in the buf for later combination
            buf.push(new_entry_idx);
        }

        Ok(Self { entries })
    }
    /// Use `BitReader` `bits` to read a value out from this `HuffTree`
    pub fn read_value<R: Read>(&self, bits: &mut BitReader<R, bitBE>) -> Result<u32, VpkError> {
        let tbl = &self.entries;
        let len = tbl.len();
        if len == 0 {
            return Ok(0);
        };
        // tree starts from end
        let mut idx = len - 1;
        while let TreeEntry::Node { left, right } = tbl[idx] {
            if bits.read_bit()? {
                idx = right;
            } else {
                idx = left;
            }
        }
        // make a loop -> match set to just return this?
        match tbl[idx] {
            TreeEntry::Leaf(size) => Ok(bits.read(size as u32)?),
            _ => Err(VpkError::BadTreeEncoding),
        }
    }

    fn _format_entry(&self, entry: usize, f: &mut fmt::Formatter) -> fmt::Result {
        match self.entries[entry] {
            TreeEntry::Leaf(val) => write!(f, "{}", val),
            TreeEntry::Node { left, right } => {
                write!(f, "(")?;
                self._format_entry(left, f)?;
                write!(f, ", ")?;
                self._format_entry(right, f)?;
                write!(f, ")")
            }
        }
    }
}

impl fmt::Display for HuffTree {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        self._format_entry(self.entries.len() - 1, f)
    }
}
