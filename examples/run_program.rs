//! Compile a program from Tromp's λ-notation, apply it to an input list,
//! and read its output while the call-by-need machine produces it — what
//! `blam blc run` does.
//!
//! Usage: cargo run --example run_program

use blam::app;
use blam::blc::notation;
use blam::classical::io::{self, Dialect, Reader};
use blam::classical::lazy::{Lazy, Limits};
use blam::classical::machine::Pool;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Prepend the bit 0 (true) to the input.
    let prog = notation::compile(r"\input. let cons = \a\b\p. p a b in cons (\x\y.x) input")?;
    let term = app(prog, io::bits(&[true, true], io::nil()));
    let mut pool = Pool::new();
    let root = pool.from_term(&term);
    let mut out = Reader::new(Dialect::Tromp, 0, Vec::new());
    let stats = Lazy::new().normalize(&pool, root, Limits::default(), &mut out)?;
    let bytes = out.finish()?;
    assert_eq!(bytes, b"011");
    println!("{} ({} beta)", String::from_utf8(bytes)?, stats.beta);
    Ok(())
}
