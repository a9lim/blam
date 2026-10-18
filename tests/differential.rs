//! Differential tests: the KN machine must agree with the naive reference
//! normalizer bit-for-bit AND step-for-step (KN simulates normal order in
//! lockstep — García-Pérez & Nogueira 2019), exhaustively over all closed
//! terms of small sizes, divergers included.

use blam::blc::enumerate::for_each_closed;
use blam::blc::wire::enc_to_string;
use blam::classical::machine::{Machine, Pool, SizeSink, StringSink};
use blam::classical::reference::normalize;
use blam::parse_all;
use blam::{app, lam, var, Term};

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

            let naive = normalize(&t, FUEL);
            let mut sink = StringSink::default();
            let fast = vm.normalize(&pool, root, FUEL, &mut sink);

            match (naive, fast) {
                (Ok((nf, nsteps)), Ok(steps)) => {
                    assert_eq!(nf.to_bits(), sink.0, "nf mismatch on {bits}");
                    assert_eq!(nsteps, steps, "step mismatch on {bits}");
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
fn machine_reproduces_bb_witnesses() {
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
fn machine_handles_bb34_fast() {
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
fn machine_survives_corpus_diverger() {
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

// ---- the call-by-need machine ------------------------------------------

use blam::classical::lazy::{Lazy, Limits, Stop};
use rayon::prelude::*;

/// The call-by-need machine against the KN machine on every closed term
/// through 26 bits (60,847 programs, 122 of them divergent): the same
/// normal form wherever KN finds one, never more β-steps (it shares what
/// normal order repeats), a normal form on every term KN normalizes, and
/// a black-hole verdict only on terms with none.
#[test]
fn lazy_machine_agrees_with_kn_through_26_bits() {
    let mut terms: Vec<(u64, u8)> = Vec::new();
    for n in 4..=26 {
        for_each_closed(n, &mut |enc, len| terms.push((enc, len)));
    }
    let limits = Limits {
        beta: u64::MAX,
        work: 1_000_000,
        live: 1 << 20,
    };
    let (halts, divergers) = terms
        .par_iter()
        .map(|&(enc, len)| {
            let bits = enc_to_string(enc, len);
            let mut pool = Pool::new();
            let root = pool.decode_u64(enc, len).unwrap();
            let mut kn_nf = StringSink::default();
            let kn = Machine::new().normalize(&pool, root, 10_000_000, &mut kn_nf);
            let mut lazy_nf = StringSink::default();
            let lazy = Lazy::new().normalize(&pool, root, limits, &mut lazy_nf);
            match (kn, lazy) {
                (Ok(steps), Ok(stats)) => {
                    assert_eq!(kn_nf.0, lazy_nf.0, "normal forms differ on {bits}");
                    assert!(
                        stats.beta <= steps,
                        "{bits}: lazy {} > KN {steps} beta",
                        stats.beta
                    );
                    (1u64, 0u64)
                }
                (Err(_), Err(Stop::Work | Stop::Memory | Stop::Loop)) => (0, 1),
                (kn, lazy) => panic!("verdicts differ on {bits}: KN {kn:?}, lazy {lazy:?}"),
            }
        })
        .reduce(|| (0, 0), |a, b| (a.0 + b.0, a.1 + b.1));
    // Census halt and diverge counts, 4..=26 (data/classical/census_table.txt).
    assert_eq!((halts, divergers), (60_725, 122));
}

/// An endless output list streams in bounded memory: a sink that stops
/// after a million bits ends the run (Aborted) long before a small live
/// cap would (Memory). `Y (λf. λz. z true f)` is the list 0 0 0 ….
#[test]
fn lazy_machine_streams_in_bounded_memory() {
    struct Count(u64);
    impl blam::classical::machine::Sink for Count {
        const CAN_ABORT: bool = true;
        fn zero(&mut self) {
            self.0 += 1;
        }
        fn one(&mut self) {
            self.0 += 1;
        }
        fn var(&mut self, n: u32) {
            self.0 += u64::from(n) + 1;
        }
        fn aborted(&self) -> bool {
            self.0 > 1_000_000
        }
    }
    let tru = lam(lam(var(2)));
    let w = lam(app(var(2), app(var(1), var(1))));
    let y = lam(app(w.clone(), w));
    let body = lam(lam(app(app(var(1), tru), var(2))));
    let t = app(y, body);
    let mut pool = Pool::new();
    let root = pool.from_term(&t);
    let limits = Limits {
        beta: u64::MAX,
        work: u64::MAX,
        live: 10_000,
    };
    let r = Lazy::new().normalize(&pool, root, limits, &mut Count(0));
    assert_eq!(r, Err(Stop::Aborted));
}

/// A million-cell input list is built, normalized and torn down without
/// recursion: the identity program hands it straight back.
#[test]
fn lazy_machine_survives_a_long_input() {
    let bits: Vec<bool> = (0..1_000_000).map(|i| i % 3 == 0).collect();
    let input = blam::classical::io::bits(&bits, blam::classical::io::nil());
    let t = app(lam(var(1)), input);
    let mut pool = Pool::new();
    let root = pool.from_term(&t);
    let mut size = SizeSink::default();
    let stats = Lazy::new()
        .normalize(&pool, root, Limits::default(), &mut size)
        .unwrap();
    assert_eq!(stats.beta, 1);
    assert!(size.0 > 10_000_000);
}

/// The live cap is hard: `λx. (λy.y) x x … x` with 10,000 arguments
/// allocates its whole neutral spine inside one machine step, and the cap
/// must still stop it (Codex's counterexample to a per-step check), while a
/// big enough cap reports the true peak. (The redex keeps the body from
/// being a closed normal form, which readback would emit without
/// evaluating.)
#[test]
fn lazy_machine_cap_is_checked_at_allocation() {
    let mut body = app(lam(var(1)), var(1));
    for _ in 0..10_000 {
        body = app(body, var(1));
    }
    let t = lam(body);
    let mut pool = Pool::new();
    let root = pool.from_term(&t);
    let small = Limits {
        live: 100,
        ..Limits::default()
    };
    let r = Lazy::new().normalize(&pool, root, small, &mut SizeSink::default());
    assert_eq!(r, Err(Stop::Memory));
    let stats = Lazy::new()
        .normalize(&pool, root, Limits::default(), &mut SizeSink::default())
        .unwrap();
    // The spine and the readback jobs for its 10,000 arguments coexist.
    assert!(stats.peak_live >= 20_000, "peak {}", stats.peak_live);
}

/// A run started from inside another run's sink has its own budget, and
/// the outer run's budget survives it — even when the inner one fails.
#[test]
fn lazy_machine_nested_runs_keep_their_budgets() {
    struct Nested(bool);
    impl blam::classical::machine::Sink for Nested {
        fn zero(&mut self) {
            if !self.0 {
                self.0 = true;
                let mut pool = Pool::new();
                let root = pool.from_term(&lam(var(1)));
                let tight = Limits {
                    live: 0,
                    ..Limits::default()
                };
                let inner = Lazy::new().normalize(&pool, root, tight, &mut SizeSink::default());
                assert_eq!(inner, Err(Stop::Memory));
            }
        }
        fn one(&mut self) {}
        fn var(&mut self, _: u32) {}
    }
    let mut pool = Pool::new();
    let root = pool.from_term(&app(lam(var(1)), lam(lam(var(2)))));
    let r = Lazy::new().normalize(&pool, root, Limits::default(), &mut Nested(false));
    assert!(r.is_ok(), "{r:?}");
}

/// Lazily read input is the eagerly built list: every closed program
/// through 18 bits, applied to the bits 0110 either way, has the same
/// normal form (or fails either way).
#[test]
fn lazy_input_matches_an_eager_list() {
    use blam::classical::io;
    use blam::classical::lazy::{Input, Item, Next};
    use blam::classical::machine::Node;
    struct Bits(Vec<u32>, u32);
    impl Input for Bits {
        fn next(&mut self, _: &mut dyn FnMut()) -> Next {
            if self.0.is_empty() {
                Next::End(Item::Term(self.1))
            } else {
                Next::Cell(Item::Term(self.0.remove(0)))
            }
        }
    }
    let input = [false, true, true, false];
    let limits = Limits {
        work: 200_000,
        live: 1 << 20,
        ..Limits::default()
    };
    let mut checked = 0;
    for n in 4..=18 {
        for_each_closed(n, &mut |enc, len| {
            let p = parse_all(&enc_to_string(enc, len)).unwrap();
            let eager_term = app(p.clone(), io::bits(&input, io::nil()));
            let mut pool = Pool::new();
            let root = pool.from_term(&eager_term);
            let mut eager = StringSink::default();
            let e = Lazy::new().normalize(&pool, root, limits, &mut eager);

            let mut pool = Pool::new();
            let pr = pool.from_term(&p);
            let tru = pool.from_term(&io::tru());
            let nil = pool.from_term(&io::nil());
            let z = pool.push(Node::Var(1));
            let h = pool.push(Node::Var(2));
            let t = pool.push(Node::Var(3));
            let a = pool.push(Node::App(z, h));
            let a = pool.push(Node::App(a, t));
            let cell = pool.push(Node::Lam(a));
            let i = pool.push(Node::Var(1));
            let body = pool.push(Node::App(pr, i));
            let root = pool.push(Node::Lam(body));
            let items = input.iter().map(|&b| if b { nil } else { tru }).collect();
            let mut lazy = StringSink::default();
            let l = Lazy::new().normalize_input(
                &pool,
                root,
                cell,
                0,
                &mut Bits(items, nil),
                limits,
                &mut lazy,
            );
            match (e, l) {
                (Ok(_), Ok(_)) => assert_eq!(eager.0, lazy.0, "{p}"),
                (Err(_), Err(_)) => {}
                (e, l) => panic!("{p}: eager {e:?}, lazy {l:?}"),
            }
            checked += 1;
        });
    }
    assert_eq!(checked, 658);
}
