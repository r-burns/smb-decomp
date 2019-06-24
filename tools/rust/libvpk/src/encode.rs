use crate::error::VpkError;
use bitstream_io::{BigEndian, BitReader};
use std::collections::VecDeque;
use std::io::{self, Read};

#[derive(Debug)]
pub struct LzssSettings {
    /// number of bits for move back (window size)
    offset_bits: usize,
    /// number of bits for copying (max match encoded)
    size_bits: usize,
    /// max number of bits not encoded
    max_uncoded: usize,
}
impl LzssSettings {
    const ENCODED: bool = true;
    const UNCODED: bool = false;

    fn window_size(&self) -> usize {
        // overflow assert?
        1 << self.offset_bits
    }

    fn max_encoded(&self) -> usize {
        // overflow assert?
        (1 << self.size_bits) + self.max_uncoded
    }
}

#[derive(Debug)]
struct SlidingWindow<R: Read> {
    /// window of already read bytes
    behind: CylicBuffer,
    /// uncoded lookahead
    ahead: CylicBuffer,
    rdr: R,
}
impl<R: Read> SlidingWindow<R> {
    fn from_reader(mut rdr: R, window: usize, lookup: usize) -> io::Result<Self> {
        let behind = CylicBuffer::new(window);
        let ahead = CylicBuffer::new_from_reader(lookup, &mut rdr)?;

        Ok(Self { behind, ahead, rdr })
    }
    fn remaining(&self) -> usize {
        self.ahead.len
    }
    fn behind_iter(&self) -> impl Iterator<Item = &u8> + '_ {
        self.behind.buf.iter()
    }
    fn ahead_iter(&self) -> impl Iterator<Item = &u8> + '_ {
        self.behind.buf.iter()
    }
    fn next_byte(&self) -> u8 {
        *self.ahead.buf.front().unwrap()
    }
    fn shift_byte(&mut self) -> io::Result<()> {
        // shift byte from front ahead to back of behind
        if let Some(byte) = self.ahead.buf.pop_front() {
            self.behind.buf.pop_front().unwrap();
            self.behind.buf.push_back(byte);
            // fill from reader
            let mut next = [0u8; 1];

            self.rdr.read(&mut next).and_then(|size| {
                if size > 0 {
                    self.ahead.buf.push_back(next[0]);
                } else {
                    self.ahead.len -= 1;
                }

                Ok(())
            })
        } else {
            // read last byte of uncoded look ahead, nothing to do
            self.ahead.len = 0;
            Ok(())
        }
    }
}

#[derive(Debug)]
struct CylicBuffer {
    len: usize,
    buf: VecDeque<u8>,
}
impl CylicBuffer {
    fn new(len: usize) -> Self {
        Self {
            len,
            buf: VecDeque::with_capacity(len),
        }
    }
    fn new_from_reader<R: Read>(len: usize, mut rdr: R) -> io::Result<Self> {
        let mut buf = vec![0; len];
        let n = rdr.read(&mut buf)?;
        // better handling of when eof?
        let len = len.min(n);
        buf.truncate(len);
        Ok(Self {
            len,
            buf: buf.into(),
        })
    }
}
#[derive(Debug)]
enum LzssByte {
    Encoded { size: usize, moveback: usize },
    Uncoded(u8),
}
impl From<Match> for LzssByte {
    fn from(m: Match) -> Self {
        LzssByte::Encoded {
            size: m.size,
            moveback: m.moveback,
        }
    }
}

pub fn encode<R: Read>(input: R, settings: LzssSettings) -> Result<(), VpkError> {
    use LzssByte::*;

    let mut window =
        SlidingWindow::from_reader(input, settings.window_size(), settings.max_encoded())?;
    // check for empty input...
    if window.remaining() == 0 {
        return Ok(());
    }

    let mut found = find_match(&window, settings.max_encoded());
    let mut output = Vec::with_capacity(window.remaining());
    while window.remaining() > 0 {
        // don't need the garbage buffer check, right?
        // just store unencrypted byte
        if found.size <= settings.max_uncoded {
            output.push(Uncoded(window.next_byte()));
            window.shift_byte()?;
        } else {
            // store encoded info and shift window accordingly..
            output.push(found.into());
            for _ in 0..found.size {
                window.shift_byte()?;
            }
        }

        found = find_match(&window, settings.max_encoded());
    }
    // for now, print out info
    for point in output {
        println!("{:?}", point);
    }

    Ok(())
}

#[derive(Debug, Default, Clone, Copy)]
struct Match {
    // these might have to be fixed width eventually (probably u32), but maybe not...
    moveback: usize,
    size: usize,
}

fn find_match<R: Read>(sliding: &SlidingWindow<R>, max: usize) -> Match {
    let mut position = 0;
    let mut found = Match::default();

    while position < sliding.behind.len {
        if let Some(first_match) = sliding
            .behind_iter()
            .skip(position)
            .zip(sliding.ahead_iter())
            .enumerate()
            .find(|(_i, (b, a))| b == a)
        {
            // found the beginning of match
            let (start, _) = first_match;
            let size = sliding
                .behind_iter()
                .skip(position + 1)
                .zip(sliding.ahead_iter().skip(1))
                .take_while(|(b, a)| b == a)
                .count();
            if size > found.size {
                found = Match {
                    moveback: sliding.behind.len - start,
                    size,
                };
            }
            if size >= max {
                found.size = max;
                break;
            }
        }
        position += 1;
    }

    found
}
