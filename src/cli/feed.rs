//! Standard input as a lazily read input list, for `blam blc run` and
//! `blam uni`: bytes are read only when the program first demands the
//! cell that holds them, so a program that never reads its input never
//! waits for it, an interactive program sees its prompt before it blocks,
//! and the input need not fit in memory.

use blam::classical::lazy::{Input, Item, Next};
use std::io::Read;

/// Bytes off standard input (after an optional prefix — uni's embedded
/// input), read a buffer at a time, and only when needed.
pub struct Stdin {
    prefix: Vec<u8>,
    at: usize,
    buf: Vec<u8>,
    pos: usize,
    eof: bool,
}

impl Stdin {
    pub fn new(prefix: Vec<u8>) -> Stdin {
        Stdin {
            prefix,
            at: 0,
            buf: Vec::new(),
            pos: 0,
            eof: false,
        }
    }

    /// The next byte, or `None` at the end. `idle` runs before a read that
    /// may block. A read error ends the input.
    pub fn byte(&mut self, idle: &mut dyn FnMut()) -> Option<u8> {
        if self.at < self.prefix.len() {
            self.at += 1;
            return Some(self.prefix[self.at - 1]);
        }
        if self.pos == self.buf.len() {
            if self.eof {
                return None;
            }
            idle();
            self.buf.resize(1 << 16, 0);
            let n = loop {
                match std::io::stdin().lock().read(&mut self.buf) {
                    Ok(n) => break n,
                    Err(e) if e.kind() == std::io::ErrorKind::Interrupted => continue,
                    Err(_) => break 0,
                }
            };
            self.buf.truncate(n);
            self.pos = 0;
            if n == 0 {
                self.eof = true;
                return None;
            }
        }
        self.pos += 1;
        Some(self.buf[self.pos - 1])
    }
}

/// An input list over [`Stdin`]: each byte becomes one element through
/// `item`, and the list ends in `end`.
pub struct Feed<F: FnMut(u8) -> Item> {
    pub stdin: Stdin,
    pub item: F,
    pub end: Item,
}

impl<F: FnMut(u8) -> Item> Input for Feed<F> {
    fn next(&mut self, idle: &mut dyn FnMut()) -> Next {
        match self.stdin.byte(idle) {
            Some(b) => Next::Cell((self.item)(b)),
            None => Next::End(self.end),
        }
    }
}
