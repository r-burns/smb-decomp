mod decode;
mod error;
mod format;

pub use decode::decode;
pub use error::VpkError;

#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        assert_eq!(2 + 2, 4);
    }
}
