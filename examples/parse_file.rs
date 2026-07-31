//! Parse a file of ASCII '0'/'1' BLC bits and report on the term.
//!
//! Usage: cargo run --example parse_file -- path/to/file.blc

use blc::parse_all;

fn main() {
    let path = std::env::args().nth(1).expect("usage: parse_file <file>");
    let src = std::fs::read_to_string(&path).expect("read file");
    match parse_all(&src) {
        Ok(term) => {
            println!("parsed OK: {} bits", term.bit_size());
            println!("closed: {}", term.is_closed());
            let shown = term.to_string();
            if shown.len() > 200 {
                println!("term: {}...", &shown[..200]);
            } else {
                println!("term: {shown}");
            }
        }
        Err(e) => {
            println!("parse error: {e:?}");
            std::process::exit(1);
        }
    }
}
