//! The README's classical snippets, runnable: reference core, then the KN machine.
//!
//! Usage: cargo run --release --example normalize

use blam::vm::{Machine, StringSink, TermPool};
use blam::{normalize, parse_all, Budget};

fn main() {
    // Reference core: (λx.x x)(λx.x) → λx.x
    let term = parse_all("01000110100010").unwrap();
    let nf = normalize(&term, &mut Budget::new(1_000)).unwrap();
    assert_eq!(nf.to_bits(), "0010");
    println!("reference nf: {} ({})", nf.to_bits(), nf);

    // Fast KN machine, β-steps returned, nf streamed to a sink
    let mut pool = TermPool::new();
    let root = pool.decode_str("01000110100010").unwrap();
    let mut sink = StringSink(String::new());
    let steps = Machine::new()
        .normalize(&pool, root, 1_000, &mut sink)
        .unwrap();
    assert_eq!(sink.0, "0010");
    println!("kn nf: {} in {} beta-steps", sink.0, steps);
}
