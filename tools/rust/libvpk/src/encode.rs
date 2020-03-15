use crate::error::VpkError;
use bitstream_io::{BigEndian, BitReader};
use std::collections::VecDeque;
use std::fmt;
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

    pub fn new(offset_bits: usize, size_bits: usize, max_uncoded: usize) -> Self {
        Self {
            offset_bits,
            size_bits,
            max_uncoded,
        }
    }

    fn window_size(&self) -> usize {
        // overflow assert?
        1 << self.offset_bits
    }

    fn max_encoded(&self) -> usize {
        // overflow assert?
        (1 << self.size_bits) + self.max_uncoded
    }
}

struct SlidingWindow<R: Read> {
    /// window of already read bytes
    behind: CylicBuffer,
    /// uncoded lookahead
    ahead: CylicBuffer,
    rdr: R,
}
impl<R: Read> SlidingWindow<R> {
    fn from_reader(mut rdr: R, window: usize, lookup: usize) -> io::Result<Self> {
        let ahead = CylicBuffer::new_from_reader(lookup, &mut rdr)?;
        let behind = CylicBuffer::new(window.min(ahead.window_size));

        Ok(Self { behind, ahead, rdr })
    }
    fn remaining(&self) -> usize {
        self.ahead.buf.len()
    }
    fn behind_iter(&self) -> impl Iterator<Item = &u8> + '_ {
        self.behind.buf.iter()
    }
    fn ahead_iter(&self) -> impl Iterator<Item = &u8> + '_ {
        self.ahead.buf.iter()
    }
    fn next_byte(&self) -> u8 {
        *self.ahead.buf.front().unwrap()
    }
    fn shift_byte(&mut self) -> io::Result<()> {
        // shift byte from front ahead to back of behind
        if let Some(byte) = self.ahead.buf.pop_front() {
            if self.behind.buf.len() >= self.behind.window_size {
                self.behind
                    .buf
                    .pop_front()
                    .expect("behind sliding window to have non-zero capacity and length");
            } else {
                // just use the vec's length!!
                //self.behind.len += 1;
            }
            self.behind.buf.push_back(byte);
            // fill from reader
            let mut next = [0u8; 1];

            self.rdr.read(&mut next).and_then(|size| {
                if size > 0 {
                    self.ahead.buf.push_back(next[0]);
                } else {
                    //self.ahead.window_size -= 1;
                }

                Ok(())
            })
        } else {
            // read last byte of uncoded look ahead, nothing to do
            //self.ahead.len = 0;
            Ok(())
        }
    }
}

impl<R: Read> fmt::Display for SlidingWindow<R> {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        writeln!(
            f,
            "Back Window:\nsize: {} [{:#x} of {:#x}]\n{:x?}",
            self.behind.window_size,
            self.behind.buf.len(),
            self.behind.buf.capacity(),
            &self.behind.buf
        )?;
        write!(
            f,
            "Lookahead:\nsize: {} [{:#x} of {:#x}]\n{:x?}",
            self.ahead.window_size,
            self.ahead.buf.len(),
            self.ahead.buf.capacity(),
            &self.ahead.buf
        )
    }
}

#[derive(Debug)]
struct CylicBuffer {
    window_size: usize,
    buf: VecDeque<u8>,
}
impl CylicBuffer {
    fn new(window_size: usize) -> Self {
        Self {
            window_size,
            buf: VecDeque::with_capacity(window_size),
        }
    }
    fn new_from_reader<R: Read>(len: usize, mut rdr: R) -> io::Result<Self> {
        let mut buf = vec![0; len];
        let n = rdr.read(&mut buf)?;
        // better handling of when eof?
        let window_size = len.min(n);
        buf.truncate(window_size);
        Ok(Self {
            window_size,
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

    let mut output = Vec::with_capacity(window.remaining());
    loop {
        if window.remaining() == 0 { break; }
        println!("\n{}", &window);
        let found = find_match(&window, settings.max_encoded());

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
    }
    // for now, print out info
    println!("\n\nfinal window\n{}", &window);
    println!("\nLZSS Encoded File");
    for (pos, point) in output.into_iter().enumerate() {
        log_lszz_encode(&point, pos);
    }

    Ok(())
}

fn log_lszz_encode(point: &LzssByte, position: usize) {
    use LzssByte::*;
    match point {
        Uncoded(_)  => println!("{:04x}: {:x?}", position, point),
        Encoded{..} => println!("{:04x}: {:?}", position, point),
    };
}

#[derive(Debug, Default, Clone, Copy)]
struct Match {
    // these might have to be fixed width eventually (probably u32), but maybe not...
    moveback: usize,
    size: usize,
}

fn find_match<R: Read>(sliding: &SlidingWindow<R>, max: usize) -> Match {
    sliding
        .ahead
        .buf
        .front()
        .map(|next_byte| {
            //let final_byte = sliding.behind.buf.back();

            sliding
                .behind_iter()
                .enumerate()
                .filter(|(_, b)| *b == next_byte) // get starts of all matches
                .fold(Match::default(), |found, (i, _)| {
                    let size = 1 + sliding
                        .behind_iter()
                        .skip(i + 1)
                        //.chain(final_byte.into_iter().cycle())
                        .zip(sliding.ahead_iter().skip(1))
                        .take_while(|(b, a)| b == a)
                        .count();
                    
                    // take reference to the match data, to see if the match continues to match after the match buffer
                    // has been added to the end of match
                    println!("new match at {} for {} bytes in look-back buffer", i, size);
                    // this could be janky, it needs the buffer to be grown from the front only... 
                    // turn this into a method on the cyclic buffer...
                    let match_to_end = &sliding.behind.buf.as_slices().0[i..];
                    println!("testing checking end: {:x?}", &match_to_end);
                    // update the size with the match if to recopy anything that exists in the match
                    let recopy = match_to_end.iter().cycle()
                        .skip(size) // skip what's already matched
                        .zip(sliding.ahead_iter().skip(size))
                        .take_while(|(b, a)| b == a)
                        .count();
                    
                    println!("copyback: {}", recopy);
                    let size = size + recopy;

                    println!("{} ?> {:?}", size, found);
                    // take most recent match to match nintendo? or maybe just define a ord trait and max?
                    if size >= found.size {
                        Match {
                            moveback: sliding.behind.buf.len() - i,
                            size,
                        }
                    } else {
                        found
                    }
                })
        })
        .unwrap_or_else(|| Match::default())
}
