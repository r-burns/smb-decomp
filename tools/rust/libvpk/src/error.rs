use err_derive::Error;
use std::io;
use std::str;

/// Possible errors that arise from attempting to convert a vpk0 binary into its
/// decompressed data, or vise-versa.
#[derive(Debug, Error)]
pub enum VpkError {
    #[error(display = "Invalid ascii string '{}' in header", _0)]
    InvalidHeader(String),

    #[error(display = "VPK method {} is invalid and not supported", _0)]
    InvalidMethod(u8),

    #[error(
        display = "Bad input file: asked to move back {} bytes in buffer of only {} bytes",
        _0,
        _1
    )]
    BadLookBack(usize, usize),

    #[error(display = "Huffman tree value couldn't be read")]
    BadTreeEncoding,

    #[error(display = "{}", _0)]
    Utf8Error(#[cause] str::Utf8Error),

    #[error(display = "{}", _0)]
    Io(#[cause] io::Error),
}

impl From<io::Error> for VpkError {
    fn from(error: io::Error) -> Self {
        VpkError::Io(error)
    }
}

impl From<str::Utf8Error> for VpkError {
    fn from(error: str::Utf8Error) -> Self {
        VpkError::Utf8Error(error)
    }
}
