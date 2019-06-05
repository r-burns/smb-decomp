use crate::error::VpkError;
use crate::format::{HuffTree, VpkHeader, VpkMethod};
use bitstream_io::{BigEndian, BitReader};
use log::{debug, info, log_enabled, trace, Level::Info};
use std::io::Read;

/// Decode a Reader of vpk0 compressed data into a byte `Vec` of decompressed data
pub fn decode<R: Read>(mut buf: R) -> Result<Vec<u8>, VpkError> {
    let mut vpk0_bits = BitReader::endian(&mut buf, BigEndian);

    let header = VpkHeader::from_bitreader(&mut vpk0_bits)?;
    // read huffman trees from beginning of compressed input
    let movetree = HuffTree::from_bitreader(&mut vpk0_bits)?;
    let sizetree = HuffTree::from_bitreader(&mut vpk0_bits)?;

    if log_enabled!(Info) {
        info!("\n**** vpk0 header ****\n{:?}", &header);
        info!("\n**** Move Tree ****\n{}", movetree);
        info!("\n**** Size Tree ****\n{}", sizetree);
    }

    // start decoding the compressed input buffer
    let output_size = header.size as usize;
    let mut output: Vec<u8> = Vec::with_capacity(output_size);

    while output.len() < output_size {
        if vpk0_bits.read_bit()? {
            // copy bytes from inside the output back at the end of the output
            let initial_move = movetree.read_value(&mut vpk0_bits)? as usize;
            let move_back = match header.method {
                VpkMethod::TwoSample => {
                    if initial_move < 3 {
                        let l = initial_move + 1;
                        let u = movetree.read_value(&mut vpk0_bits)? as usize;
                        (l + (u << 2)) - 8
                    } else {
                        (initial_move << 2) - 8
                    }
                }
                VpkMethod::OneSample => initial_move,
            };

            // get start position in output, and the number of bytes to copy-back
            if move_back > output.len() {
                return Err(VpkError::BadLookBack(move_back, output.len()));
            }
            let start = output.len() - move_back;
            let size = sizetree.read_value(&mut vpk0_bits)? as usize;
            debug!(
                "start: {} | size: {} | length: {}",
                start,
                size,
                output.len()
            );

            // append bytes from somewhere in output to the end of output
            // this needs to be done byte-by-byte,
            // as the range can include newly added bytes
            for i in start..start + size {
                let byte = output[i];
                trace!("\t{}: {}", i, byte);
                output.push(byte);
            }
        } else {
            // push next byte from compressed input to output
            let byte = vpk0_bits.read(8)?;
            trace!("{}", byte);
            output.push(byte);
        }
    }

    Ok(output)
}
