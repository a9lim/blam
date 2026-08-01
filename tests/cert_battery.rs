//! Certificate soundness battery (SPEC.md §6): run discovery and both
//! trusted verifiers over every closed term that provably HALTS, and
//! assert no certificate ever fires. This tests the implementation, not
//! the math — a certificate on a halter would mean a checker bug, since
//! both glue theorems conclude "no normal form".
//!
//! Terms whose naive normalization exceeds the budget are skipped: they
//! are not proven halters, so the battery has nothing to assert.
//!
//! The default tier (≤24 bits, ~19k halters) runs in seconds. The
//! extended tier (≤26 bits, ~79k halters) is single-threaded and slow;
//! run it explicitly after checker changes:
//! `cargo test --release --test cert_battery -- --ignored`

use blc::cert::{discover, try_htr, verify};
use blc::enumerate::{enc_to_string, for_each_closed};
use blc::{normalize, parse_all, Budget};

#[test]
fn no_certificate_fires_on_any_small_halter() {
    run_battery(24, 10_000);
}

#[test]
#[ignore = "extended tier, ~20 min single-threaded"]
fn no_certificate_fires_extended() {
    run_battery(26, 50_000);
}

fn run_battery(max_bits: u32, floor: u64) {
    // The naive normalizer is deeply recursive and some small halters
    // have enormous normal forms; give the battery its own fat stack.
    std::thread::Builder::new()
        .stack_size(1 << 30)
        .spawn(move || battery(max_bits, floor))
        .unwrap()
        .join()
        .unwrap();
}

fn battery(max_bits: u32, floor: u64) {
    let mut halters = 0u64;
    let mut certified = Vec::new();
    for n in 4..=max_bits {
        for_each_closed(n, &mut |enc, len| {
            let bits = enc_to_string(enc, len);
            let t = parse_all(&bits).unwrap();
            if normalize(&t, &mut Budget::new(100_000)).is_err() {
                return; // not a proven halter; out of scope
            }
            halters += 1;
            if let Some(cert) = discover(&t, 2000, 200_000) {
                if verify(&t, &cert, 4096, 2000, 200_000).is_ok() {
                    certified.push(format!("v1 certified halter {bits}"));
                } else if try_htr(&t, &cert, 4096, 2000, 200_000).is_some() {
                    certified.push(format!("htr certified halter {bits}"));
                }
            }
        });
    }
    assert!(halters > floor, "battery under-populated: {halters}");
    assert!(certified.is_empty(), "{certified:?}");
}
