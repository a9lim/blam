//! Conformance vectors from John Tromp's AIT repository (github.com/tromp/AIT
//! @ fd4e9b0). Bit strings are inlined so tests run without the ref/ clone;
//! quine/take256/truth were diffed byte-exact against the repo files, the
//! rest come from the archaeology pass (compiled via tools/blcc.py, which
//! reproduces the repo's checked-in goldens byte-exactly).
//!
//! BBλ values are the corrected bb0 table in ref/AIT/BB/BB1.lhs. The busy
//! beaver metric is max *normal-form BLC bit-size* over closed terms of
//! size exactly n — Tromp's tooling has no beta-step counter to match.

use blam::classical::reference::normalize;
use blam::parse_all;
use blam::{app, lam, var, Term};

/// ait/int.lam — the 170-bit self-interpreter (50_ft_lock, Dec 2025).
const INT_170: &str = "01000110100001000000011000000101110011000011111110000101110011111110000001111000000101110111001101111001111111100001111111100001011110100111010010111110100101101010011010";
/// ait/uni.lam — universal machine for closed programs, 196 bits.
const UNI_196: &str = "0101000110100001000000011000000101110011000011111110000101110011111110000001111000000101110111001101111001111111100001111111100001011110100111010010111110100101101010011010000110010001101000011010";
/// ait/quine — 66 bits, self-doubling under the universal machine.
const QUINE_66: &str = "000101100100011010000000000001011011110010111100111111011111011010";
/// bin/take256.blc — 81 bits, outputs first 256 input bits.
const TAKE256_81: &str =
    "000100011100101011001100110100000000001011011100111011110000000100000011100111010";
/// misc/truth — 58 bits.
const TRUTH_58: &str = "0001100000010001101000000101101111001011111000001001110110";
/// ait/Y.lam — 25 bits.
const Y_25: &str = "0001000110100001110011010";

fn nf(t: &Term, limit: u64) -> Term {
    normalize(t, limit).expect("out of fuel").0
}

#[test]
fn corpus_terms_parse_closed_and_round_trip() {
    for (bits, size) in [
        (INT_170, 170),
        (UNI_196, 196),
        (QUINE_66, 66),
        (TAKE256_81, 81),
        (TRUTH_58, 58),
        (Y_25, 25),
    ] {
        assert_eq!(bits.len(), size);
        let t = parse_all(bits).unwrap();
        assert!(t.is_closed());
        assert_eq!(t.bit_size(), size as u64);
        assert_eq!(t.to_bits(), bits);
    }
}

#[test]
fn smallest_closed_terms() {
    // BLC.tex:254-260 — the five smallest closed terms (sizes 4,6,7,8,8).
    assert_eq!(parse_all("0010").unwrap(), lam(var(1)));
    assert_eq!(parse_all("000010").unwrap(), lam(lam(var(1)))); // false
    assert_eq!(parse_all("0000110").unwrap(), lam(lam(var(2)))); // true
    assert_eq!(parse_all("00011010").unwrap(), lam(app(var(1), var(1))));
    assert_eq!(parse_all("00000010").unwrap(), lam(lam(lam(var(1)))));
}

#[test]
fn omega_table_row() {
    // ref/AIT/Omega: "00 00 01 110 10" decodes to \.\.(1 0) in 0-based
    // display, i.e. \\2 1 in our 1-based convention.
    assert_eq!(
        parse_all("00000111010").unwrap(),
        lam(lam(app(var(2), var(1))))
    );
}

// -- busy beaver witnesses (BB1.lhs bb0 table) ------------------------------
//
// BBλ(n) = max normal-form bit-size over closed terms of exactly n bits.
// Each witness below is built structurally, checked to have size n, then
// normalized and checked against the published BBλ(n).

#[test]
fn bb_20() {
    // \\\\\\\\\1 — already normal; BBλ(20) = 20.
    let mut t = var(1);
    for _ in 0..9 {
        t = lam(t);
    }
    assert_eq!(t.bit_size(), 20);
    assert_eq!(nf(&t, 10).bit_size(), 20);
}

#[test]
fn bb_21() {
    // \(\1 1) (1 (\2)) -> 22 bits
    let t = lam(app(lam(app(var(1), var(1))), app(var(1), lam(var(2)))));
    assert_eq!(t.bit_size(), 21);
    assert_eq!(nf(&t, 1_000).bit_size(), 22);
}

#[test]
fn bb_26() {
    // (\1 1) (\\2 (1 2)) -> 52 bits
    let t = app(
        lam(app(var(1), var(1))),
        lam(lam(app(var(2), app(var(1), var(2))))),
    );
    assert_eq!(t.bit_size(), 26);
    assert_eq!(nf(&t, 10_000).bit_size(), 52);
}

#[test]
fn bb_29() {
    // \(\1 1) (\1 (1 (2 1))) -> 223 bits
    let t = lam(app(
        lam(app(var(1), var(1))),
        lam(app(var(1), app(var(1), app(var(2), var(1))))),
    ));
    assert_eq!(t.bit_size(), 29);
    assert_eq!(nf(&t, 100_000).bit_size(), 223);
}

#[test]
fn bb_32() {
    // \(\1 1) (\1 (1 (2 (\2)))) -> 298 bits
    let t = lam(app(
        lam(app(var(1), var(1))),
        lam(app(var(1), app(var(1), app(var(2), lam(var(2)))))),
    ));
    assert_eq!(t.bit_size(), 32);
    assert_eq!(nf(&t, 100_000).bit_size(), 298);
}

#[test]
fn bb_33() {
    // \(\1 1) (\1 (1 (1 (2 1)))) -> 1812 bits
    let t = lam(app(
        lam(app(var(1), var(1))),
        lam(app(var(1), app(var(1), app(var(1), app(var(2), var(1)))))),
    ));
    assert_eq!(t.bit_size(), 33);
    assert_eq!(nf(&t, 1_000_000).bit_size(), 1812);
}
