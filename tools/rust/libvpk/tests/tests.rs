use libvpk;
use log::{error, warn};
use simple_logger;

use std::io::Cursor;
use std::str::from_utf8;

fn setup() {
    match simple_logger::init() {
        Ok(_) => (),
        Err(err) => warn!("{}", err),
    };
}

#[test]
fn decode_method0() {
    setup();
    let lorem_text = include_str!("lorem.txt");
    let lorem_vpk0 = include_bytes!("lorem.vpk0");

    let mut lorem_reader = Cursor::new(lorem_vpk0.as_ref());

    let decoded = libvpk::decode(&mut lorem_reader).unwrap();
    let decoded_str = from_utf8(&decoded).unwrap();

    assert_eq!(decoded_str, lorem_text, "error decoding method0 vkp0 file");
}

#[test]
fn decode_bad_file() {
    setup();
    let bad_file = include_bytes!("bad-file.vpk0");
    let mut bf_r = Cursor::new(bad_file.as_ref());

    match libvpk::decode(&mut bf_r) {
        Ok(result) => {
            let err = "Expected error when decoding bad file";
            error!("{}", err);
            error!("{:?}", result);
            panic!("Expected error when decoding bad file");
        }
        Err(err) => {
            error!("{}", err);
            assert!(true)
        }
    };
}

#[test]
fn decode_method1() {
    setup();
    let uncompressed = include_bytes!("file39.bin");
    let compressed = include_bytes!("file39-raw.vpk0");

    let mut reader = Cursor::new(compressed.as_ref());
    let decoded = libvpk::decode(&mut reader).unwrap();

    assert_eq!(
        uncompressed.as_ref(),
        decoded.as_slice(),
        "error decoding method 1 encoded vpk0 file"
    );
}
