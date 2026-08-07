//! Closed-term enumeration: count a size class and decode a term from
//! its packed `(u64, u8)` form without a string round-trip.
//!
//! Usage: cargo run --release --example enumerate

use blam::blc::enumerate::for_each_closed;
use blam::classical::machine::Pool;

fn main() {
    // A114852: closed terms of exactly n bits.
    let mut count = 0u64;
    let mut sample = None;
    for_each_closed(24, &mut |enc, len| {
        count += 1;
        sample.get_or_insert((enc, len));
    });
    println!("closed terms of 24 bits: {count}");
    assert_eq!(count, 8_574);

    // Packed bits decode straight into the KN machine's arena.
    let (enc, len) = sample.expect("nonempty size class");
    let mut pool = Pool::new();
    let root = pool.decode_u64(enc, len).expect("closed term");
    println!(
        "first enumerated: {} ({} bits, redex: {})",
        blam::blc::wire::enc_to_string(enc, len),
        pool.bit_size(root),
        pool.has_redex(root),
    );
}
