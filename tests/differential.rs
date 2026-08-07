//! Differential tests: the KN machine must agree with the naive reference
//! normalizer bit-for-bit AND step-for-step (KN simulates normal order in
//! lockstep — García-Pérez & Nogueira 2019), exhaustively over all closed
//! terms of small sizes, divergers included.

use blam::blc::enumerate::for_each_closed;
use blam::blc::term::{app, lam, var, Term};
use blam::blc::wire::enc_to_string;
use blam::classical::machine::{Machine, Pool, SizeSink, StringSink};
use blam::classical::reference::normalize;
use blam::classical::Budget;
use blam::parse_all;

// Generous vs. the measured max of 11 β-steps for halting terms ≤ 24 bits;
// kept modest because the naive whnf recurses once per step, so divergers
// dig FUEL-deep stacks.
const FUEL: u64 = 2_000;

#[test]
fn exhaustive_agreement_small_sizes() {
    // Fat stack for the naive side's per-step recursion on divergers.
    std::thread::Builder::new()
        .stack_size(256 << 20)
        .spawn(exhaustive_agreement_body)
        .unwrap()
        .join()
        .unwrap();
}

fn exhaustive_agreement_body() {
    let mut pool = Pool::new();
    let mut vm = Machine::new();
    let mut checked = 0u64;
    for n in 4..=18 {
        for_each_closed(n, &mut |enc, len| {
            let bits = enc_to_string(enc, len);
            let t = parse_all(&bits).unwrap();
            pool.clear();
            let root = pool.decode_u64(enc, len).unwrap();

            let mut fuel = Budget::new(FUEL);
            let naive = normalize(&t, &mut fuel);
            let mut sink = StringSink::default();
            let fast = vm.normalize(&pool, root, FUEL, &mut sink);

            match (naive, fast) {
                (Ok(nf), Ok(steps)) => {
                    assert_eq!(nf.to_bits(), sink.0, "nf mismatch on {bits}");
                    assert_eq!(fuel.steps, steps, "step mismatch on {bits}");
                }
                (Err(_), Err(_)) => {} // both out of fuel: agreement
                (a, b) => panic!("verdict mismatch on {bits}: naive {a:?} vs vm {b:?}"),
            }
            checked += 1;
        });
    }
    // Exact cumulative closed-term count through 18 bits (A114852 partial
    // sum) — fails loudly if the enumerator ever drifts.
    assert_eq!(checked, 658);
}

#[test]
fn vm_reproduces_bb_witnesses() {
    // Same witnesses as tests/tromp_vectors.rs, now on the fast machine.
    let cases: Vec<(Term, u64)> = vec![
        (
            lam(app(lam(app(var(1), var(1))), app(var(1), lam(var(2))))),
            22,
        ),
        (
            app(
                lam(app(var(1), var(1))),
                lam(lam(app(var(2), app(var(1), var(2))))),
            ),
            52,
        ),
        (
            lam(app(
                lam(app(var(1), var(1))),
                lam(app(var(1), app(var(1), app(var(2), var(1))))),
            )),
            223,
        ),
        (
            lam(app(
                lam(app(var(1), var(1))),
                lam(app(var(1), app(var(1), app(var(2), lam(var(2)))))),
            )),
            298,
        ),
        (
            lam(app(
                lam(app(var(1), var(1))),
                lam(app(var(1), app(var(1), app(var(1), app(var(2), var(1)))))),
            )),
            1812,
        ),
        // The n=34 BBλ champion: (λ.1 1 1 1) C2 → C65536, 327,686-bit
        // nf. Previously an #[ignore]d fat-stack naive-normalizer test
        // in tromp_vectors.rs; the KN machine streams it to a SizeSink
        // in milliseconds with O(1) space.
        (
            app(
                lam(app(app(app(var(1), var(1)), var(1)), var(1))),
                lam(lam(app(var(2), app(var(2), var(1))))),
            ),
            327_686,
        ),
    ];
    let mut pool = Pool::new();
    let mut vm = Machine::new();
    for (t, expect) in cases {
        pool.clear();
        let root = pool.from_term(&t);
        let mut sink = SizeSink::default();
        vm.normalize(&pool, root, 10_000_000, &mut sink).unwrap();
        assert_eq!(sink.0, expect);
    }
}

#[test]
fn vm_handles_bb34_fast() {
    // (\1 1 1 1) C2 -> C65536: 327686-bit normal form. The whole point of
    // the machine — no fat stack, no ignore attribute, streaming size sink.
    let c2 = lam(lam(app(var(2), app(var(2), var(1)))));
    let t = app(lam(app(app(app(var(1), var(1)), var(1)), var(1))), c2);
    let mut pool = Pool::new();
    let root = pool.from_term(&t);
    let mut vm = Machine::new();
    let mut sink = SizeSink::default();
    vm.normalize(&pool, root, 10_000_000_000, &mut sink)
        .unwrap();
    assert_eq!(sink.0, 327_686);
}

#[test]
fn vm_survives_corpus_diverger() {
    // The 170-bit self-interpreter is built with Y-injected recursion, so
    // the bare term has NO normal form — normalizing it must exhaust fuel
    // gracefully (deep env chains, growing spine), not hang or crash.
    let int170 = "01000110100001000000011000000101110011000011111110000101110011111110000001111000000101110111001101111001111111100001111111100001011110100111010010111110100101101010011010";
    let mut pool = Pool::new();
    let root = pool.decode_str(int170).unwrap();
    let mut vm = Machine::new();
    let mut sink = StringSink::default();
    assert!(vm.normalize(&pool, root, 100_000, &mut sink).is_err());
}
