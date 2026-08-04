//! qBLC self-interpretation, measured (DESIGN-QBLC.md, proof obligation 2).
//!
//! The interpreter is `E_q = intL I`: Tromp's 170-bit binary-LC interpreter
//! applied to the identity as continuation. Protocol: intL cont bits =
//! cont (\env.parsed) unparsed, so with cont = I the unparsed tail lands in
//! the environment slot — never consulted for closed programs (Tromp's own
//! `uni = intL (\z.z omega)` leans on the same invariance with a divergent
//! env). The signature then threads through ordinary application: no adapter
//! beyond the continuation exists, which is the HOAS payoff of passing
//! primitives by application. |E_q| = 176 bits.
//!
//! Verification: for every closed p (4..=max_n) whose direct run p σ⃗ fully
//! resolves (all leaves Halt/Err) at census budgets, the interpreted run
//! E_q ⌜p⌝ σ⃗ must yield the identical leaf sequence — fates, stores, exact
//! masses — with only `steps` free to differ (β-stuttering, reported).
//! ⌜p⌝ = Church-pair list of p's wire bits ('0' → true = λλ.2), FALSE tail.
//! Unresolved programs (any Unknown/Capacity leaf) are skipped and counted:
//! resource fates are explicitly out of scope for trace equivalence.
//!
//! Usage: qselfint [max_n] [phase]   (default: 24 all; phase ∈ all|quantum|nf)

use blam::enumerate::{enc_to_string, for_each_closed};
use blam::parse_all;
use blam::qeval::{self, Effect, Fate, Leaf, Prim, QBudget};
use blam::qvm;
use blam::term::{app, lam, var, Term};
use blam::vm::{Machine, StringSink, TermPool};
use rayon::prelude::*;
use std::time::Instant;

/// ref/AIT/ait/int.lam via tools/blcc.py (the 170-bit checked-in optimum).
const INTL: &str = "01000110100001000000011000000101110011000011111110000101110011111110000001111000000101110111001101111001111111100001111111100001011110100111010010111110100101101010011010";

/// λ⁵. meas (h (t (h (new t)))) — the first-nondyadic-leaves witness (n=45).
const WITNESS45: &str = "000000000001111100111111001100111111001111010";

const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];

fn church_bit(zero: bool) -> Term {
    // polarity: '0' → true = λx.λy.x
    lam(lam(var(if zero { 2 } else { 1 })))
}

/// ⌜p⌝: Church-pair list of the wire bits, FALSE tail. Every cell is closed.
fn quote(p: &Term) -> Term {
    let mut list = church_bit(false);
    for b in p.to_bits().bytes().rev() {
        list = lam(app(app(var(1), church_bit(b == b'0')), list));
    }
    list
}

fn resolved(leaves: &[(Leaf, Vec<Effect>)]) -> bool {
    leaves
        .iter()
        .all(|(l, _)| matches!(l.fate, Fate::Halt(_) | Fate::Err(_)))
}

/// Effect-trace equality: identical leaf sequence where each leaf carries
/// the same fate (incl. full store), exact mass, AND the same root-to-leaf
/// effect path (every primitive firing, in order, with qubits, epochs, and
/// Meas outcomes). β-steps are erased by construction — `steps` is the
/// stuttering the interpreter is allowed.
fn traces_match(direct: &[(Leaf, Vec<Effect>)], interp: &[(Leaf, Vec<Effect>)]) -> bool {
    direct.len() == interp.len()
        && direct
            .iter()
            .zip(interp)
            .all(|((d, dt), (i, it))| d.fate == i.fate && d.mass == i.mass && dt == it)
}

enum Outcome {
    Skipped,
    Verified {
        direct_steps: u64,
        interp_steps: u64,
    },
    Mismatch(String),
}

/// Pure-layer check: the quantum leaf surface is blind to *which* value a
/// pure program computes (every pure halter is Halt(empty store, mass 1)),
/// so additionally pin term-level β-equivalence: nf(E_q ⌜p⌝) ≡ nf(p) as
/// bit streams on the KN machine, whenever p has a normal form in fuel.
fn nf_check(src: &str, eq: &Term, pool: &mut TermPool, vm: &mut Machine) -> Outcome {
    let p = parse_all(src).expect("closed program");
    pool.clear();
    let root_p = pool.from_term(&p);
    let mut nf_p = StringSink::default();
    // Halting terms ≤24 bits need ≤11 β (measured, differential.rs); 2¹²
    // cleanly separates them from divergers.
    let direct_steps = match vm.normalize(pool, root_p, 1 << 12, &mut nf_p) {
        Ok(s) => s,
        Err(_) => return Outcome::Skipped, // diverger: no NF to compare
    };
    let root_i = pool.from_term(&app(eq.clone(), quote(&p)));
    let mut nf_i = StringSink::default();
    match vm.normalize(pool, root_i, 1 << 20, &mut nf_i) {
        Ok(interp_steps) => {
            if nf_p.0 == nf_i.0 {
                Outcome::Verified {
                    direct_steps,
                    interp_steps,
                }
            } else {
                Outcome::Mismatch(format!("{src}: NF mismatch"))
            }
        }
        Err(_) => Outcome::Mismatch(format!("{src}: interpreted NF ran out of fuel")),
    }
}

fn check(src: &str, eq: &Term, direct_budget: &QBudget, interp_budget: &QBudget) -> Outcome {
    let p = parse_all(src).expect("closed program");
    let direct = qeval::run_traced(qeval::apply_signature(&p, &FROZEN), direct_budget);
    if !resolved(&direct) {
        return Outcome::Skipped;
    }
    let interp_term = app(eq.clone(), quote(&p));
    let interp = qeval::run_traced(qeval::apply_signature(&interp_term, &FROZEN), interp_budget);
    if !resolved(&interp) {
        return Outcome::Mismatch(format!(
            "{src}: interpreted run unresolved at interp budget"
        ));
    }
    if !traces_match(&direct, &interp) {
        return Outcome::Mismatch(format!(
            "{src}: trace mismatch ({} direct leaves, {} interpreted)",
            direct.len(),
            interp.len()
        ));
    }
    // Independence: the interpreted run through the fast path must reproduce
    // qeval's interpreted leaves exactly (the qeval-vs-qeval differential
    // alone is metamorphic within one engine).
    let mut pool = qvm::Pool::new();
    let root = pool.from_term(&interp_term);
    let sig = pool.apply_signature(root, &FROZEN);
    let mut m = qvm::QMachine::new();
    let mut fast = Vec::new();
    let fast_budget = QBudget {
        trans: 1 << 28,
        ..*interp_budget
    };
    m.run_into(&mut pool, sig, &fast_budget, &mut fast);
    let interp_leaves: Vec<Leaf> = interp.iter().map(|(l, _)| l.clone()).collect();
    if fast != interp_leaves {
        return Outcome::Mismatch(format!("{src}: qvm interpreted run disagrees with qeval"));
    }
    Outcome::Verified {
        direct_steps: direct.iter().map(|(l, _)| l.steps).sum(),
        interp_steps: interp.iter().map(|(l, _)| l.steps).sum(),
    }
}

fn main() {
    let max_n: u32 = std::env::args()
        .nth(1)
        .map(|s| s.parse().expect("max_n"))
        .unwrap_or(24);
    let phase = std::env::args().nth(2).unwrap_or_else(|| "all".into());
    let (run_quantum, run_nf) = match phase.as_str() {
        "all" => (true, true),
        "quantum" => (true, false),
        "nf" => (false, true),
        other => panic!("unknown phase {other:?} (all|quantum|nf)"),
    };

    let intl = parse_all(INTL).expect("intL parses");
    assert_eq!(intl.bit_size(), 170, "intL is the 170-bit interpreter");
    let eq = app(intl, lam(var(1)));
    println!("E_q = intL I   |E_q| = {} bits", eq.bit_size());
    println!("wire: {}", eq.to_bits());

    // Direct: canonical census β with a generous transition cap (qeval's
    // default 2¹⁶ trans is NOT the canonical qcensus 2²⁶ — report actuals).
    let direct_budget = QBudget {
        trans: 1 << 26,
        ..QBudget::default()
    };
    let interp_budget = QBudget {
        beta: 1 << 20,
        trans: 1 << 24,
        ..QBudget::default()
    };

    let mut programs: Vec<(u64, u8)> = Vec::new();
    for n in 4..=max_n {
        for_each_closed(n, &mut |enc, len| programs.push((enc, len)));
    }
    println!("population 4..={max_n}: {} programs", programs.len());

    let mut mismatches = Vec::new();
    if run_quantum {
        let t0 = Instant::now();
        // Term is Rc-based (not Send): rebuild E_q once per rayon worker.
        let outcomes: Vec<Outcome> = programs
            .par_iter()
            .map_init(
                || app(parse_all(INTL).expect("intL parses"), lam(var(1))),
                |eq, &(enc, len)| {
                    check(&enc_to_string(enc, len), eq, &direct_budget, &interp_budget)
                },
            )
            .collect();

        let mut verified = 0u64;
        let mut skipped = 0u64;
        let (mut ratio_max, mut dsum, mut isum) = (0f64, 0u64, 0u64);
        for o in &outcomes {
            match o {
                Outcome::Skipped => skipped += 1,
                Outcome::Verified {
                    direct_steps,
                    interp_steps,
                } => {
                    verified += 1;
                    dsum += direct_steps;
                    isum += interp_steps;
                    if *direct_steps > 0 {
                        ratio_max = ratio_max.max(*interp_steps as f64 / *direct_steps as f64);
                    }
                }
                Outcome::Mismatch(m) => mismatches.push(m.clone()),
            }
        }

        println!(
            "verified {verified}   skipped(unresolved) {skipped}   mismatches {}   [{:.1?}]",
            mismatches.len(),
            t0.elapsed()
        );
        println!(
            "stuttering: mean ×{:.1} (Σinterp/Σdirect contractions), max ×{ratio_max:.1}",
            isum as f64 / dsum.max(1) as f64
        );
        for m in mismatches.iter().take(10) {
            println!("  MISMATCH {m}");
        }

        // Flagship: the 45-bit first-nondyadic-leaves witness, interpreted.
        match check(WITNESS45, &eq, &direct_budget, &interp_budget) {
            Outcome::Verified {
                direct_steps,
                interp_steps,
            } => println!(
                "witness45 verified: (2±√2)/4 leaves reproduced under interpretation \
                 ({direct_steps} → {interp_steps} contractions)"
            ),
            Outcome::Skipped => println!("witness45 SKIPPED (unexpected: direct run unresolved)"),
            Outcome::Mismatch(m) => println!("witness45 MISMATCH: {m}"),
        }
    }

    // Pure layer: exact NF equality on the KN machine over the same
    // population (the quantum leaf surface can't see pure values).
    let mut nf_bad: Vec<String> = Vec::new();
    if run_nf {
        let t1 = Instant::now();
        let nf_outcomes: Vec<Outcome> = programs
            .par_iter()
            .map_init(
                || {
                    (
                        app(parse_all(INTL).expect("intL parses"), lam(var(1))),
                        TermPool::new(),
                        Machine::new(),
                    )
                },
                |(eq, pool, vm), &(enc, len)| nf_check(&enc_to_string(enc, len), eq, pool, vm),
            )
            .collect();
        let nf_verified = nf_outcomes
            .iter()
            .filter(|o| matches!(o, Outcome::Verified { .. }))
            .count();
        let nf_skipped = nf_outcomes
            .iter()
            .filter(|o| matches!(o, Outcome::Skipped))
            .count();
        nf_bad = nf_outcomes
            .iter()
            .filter_map(|o| match o {
                Outcome::Mismatch(m) => Some(m.clone()),
                _ => None,
            })
            .collect();
        println!(
            "pure-NF: verified {nf_verified}   skipped(divergers) {nf_skipped}   mismatches {}   [{:.1?}]",
            nf_bad.len(),
            t1.elapsed()
        );
        for m in nf_bad.iter().take(10) {
            println!("  NF MISMATCH {m}");
        }
    }

    if !mismatches.is_empty() || !nf_bad.is_empty() {
        std::process::exit(1);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    /// E_q's wire code, pinned: any drift in intL provenance or the adapter
    /// is a loud failure, not a silent constant change.
    const EQ_WIRE: &str = "01010001101000010000000110000001011100110000111111100001011100111111100000011110000001011101110011011110011111111000011111111000010111101001110100101111101001011010100110100010";

    fn eq_term() -> Term {
        let intl = parse_all(INTL).expect("intL parses");
        assert_eq!(intl.bit_size(), 170);
        app(intl, lam(var(1)))
    }

    #[test]
    fn selfint_constant_is_176_bits() {
        let eq = eq_term();
        assert_eq!(eq.bit_size(), 176);
        assert_eq!(eq.to_bits(), EQ_WIRE);
    }

    /// Trace equivalence (DESIGN-QBLC.md obligation 2) on a fast core:
    /// the full ≤14 population plus the n=45 nondyadic witness. The full
    /// ≤24 sweep lives in the bin (`qselfint 24`), not the suite.
    #[test]
    fn selfint_traces_leq14_and_witness45() {
        let eq = eq_term();
        let direct_budget = QBudget {
            trans: 1 << 26,
            ..QBudget::default()
        };
        let interp_budget = QBudget {
            beta: 1 << 20,
            trans: 1 << 24,
            ..QBudget::default()
        };
        let mut programs: Vec<(u64, u8)> = Vec::new();
        for n in 4..=14 {
            for_each_closed(n, &mut |enc, len| programs.push((enc, len)));
        }
        let mut verified = 0u32;
        for &(enc, len) in &programs {
            match check(
                &enc_to_string(enc, len),
                &eq,
                &direct_budget,
                &interp_budget,
            ) {
                Outcome::Verified { .. } => verified += 1,
                Outcome::Skipped => {}
                Outcome::Mismatch(m) => panic!("{m}"),
            }
        }
        assert!(verified > 0);
        match check(WITNESS45, &eq, &direct_budget, &interp_budget) {
            Outcome::Verified { .. } => {}
            other => panic!(
                "witness45 not verified: {}",
                match other {
                    Outcome::Mismatch(m) => m,
                    _ => "skipped".into(),
                }
            ),
        }
    }

    /// Codex-suggested canary (gaslamp thread qblc-selfint): poison the seed
    /// environment with an EFFECTFUL tail — a QTerm-level `new t`, which
    /// allocates species-blind the moment `search` touches it. If the parser
    /// ever forces the seed env, the allocation fires, every later qubit id
    /// shifts, and the effect traces diverge loudly. Program uses the
    /// deepest binder (h, de Bruijn 5) in strict primitive position, so the
    /// environment walk passes directly over the cell holding the poison.
    #[test]
    fn selfint_effectful_tail_canary() {
        use blam::qeval::{qt_of_term, run_traced, QTerm};
        use std::rc::Rc;
        // p = λ⁵. meas (h (new t))
        let p = lam(lam(lam(lam(lam(app(
            var(4),
            app(var(5), app(var(3), var(1))),
        ))))));
        let direct_budget = QBudget {
            trans: 1 << 26,
            ..QBudget::default()
        };
        let interp_budget = QBudget {
            beta: 1 << 20,
            trans: 1 << 24,
            ..QBudget::default()
        };
        let direct = run_traced(qeval::apply_signature(&p, &FROZEN), &direct_budget);
        let poison = QTerm::App(
            Rc::new(QTerm::Prim(Prim::New)),
            Rc::new(QTerm::Prim(Prim::T)),
        );
        let mut list = poison;
        for b in p.to_bits().bytes().rev() {
            list = QTerm::Lam(Rc::new(QTerm::App(
                Rc::new(QTerm::App(
                    Rc::new(QTerm::Var(1)),
                    Rc::new(qt_of_term(&church_bit(b == b'0'))),
                )),
                Rc::new(list),
            )));
        }
        let mut t = QTerm::App(Rc::new(qt_of_term(&eq_term())), Rc::new(list));
        for pr in FROZEN {
            t = QTerm::App(Rc::new(t), Rc::new(QTerm::Prim(pr)));
        }
        let interp = run_traced(t, &interp_budget);
        assert!(
            traces_match(&direct, &interp),
            "seed environment was forced"
        );
    }

    /// Pure-layer β-equivalence over ≤14 on the KN machine.
    #[test]
    fn selfint_pure_nf_leq14() {
        let eq = eq_term();
        let mut pool = TermPool::new();
        let mut vm = Machine::new();
        let mut programs: Vec<(u64, u8)> = Vec::new();
        for n in 4..=14 {
            for_each_closed(n, &mut |enc, len| programs.push((enc, len)));
        }
        let mut verified = 0u32;
        for &(enc, len) in &programs {
            match nf_check(&enc_to_string(enc, len), &eq, &mut pool, &mut vm) {
                Outcome::Verified { .. } => verified += 1,
                Outcome::Skipped => {}
                Outcome::Mismatch(m) => panic!("{m}"),
            }
        }
        assert!(verified > 0);
    }
}
