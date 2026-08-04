//! Trace-level Pauli-support monitor — the validation layer of the
//! oddmin lane (√2-cancellation theorem hunt, LEDGER 2026-08-04).
//!
//! A sound may-abstraction of Galois-odd leaf mass for cnot-free
//! effect traces. Replayed over a leaf's effect path (qeval's trace
//! surface), `accepts` MUST return true whenever the leaf's
//! unnormalized mass has a nonzero √2-coefficient; false positives
//! are permitted (and measured by the tests, not merely tolerated —
//! looseness below 45 would sink the oddmin lower bound).
//!
//! Domain, per live qubit: the may-set S ⊆ {X, Y, Z} × {even, odd}
//! of Pauli components its normalized conditional state may carry,
//! graded by √2-exponent parity of the coefficient. Allocation
//! starts |0⟩ = {(Z, even)}; H swaps X↔Z support; T fixes Z and maps
//! any X/Y component to both X and Y at flipped grade (the 1/√2 in
//! TXT† = (X+Y)/√2 — cancellation deliberately ignored); a
//! computational measurement reads the Z component, so it MAY
//! produce a Galois-odd Born factor exactly when (Z, odd) ∈ S, and
//! collapse resets the qubit to {(Z, even)}. A leaf mass is a
//! product of Born factors, and a product of even factors is even —
//! so any odd leaf forces some measurement to fire on (Z, odd),
//! which is precisely the accept event (the product-structure
//! argument, Codex round 3, `qblc-omega-witnesses`).
//!
//! cnot is OUT OF SCOPE for stage 1a: the monitor latches
//! conservative acceptance on any Cnot effect (sound, maximally
//! loose). Stage 1b replaces this with Pauli-string support routing.
//!
//! This module is the trusted replayer of the planned oddmin
//! certificate and the validation oracle for its compositional DP;
//! it deliberately contains no term evaluation — pair it with
//! qeval::run_traced.

use crate::qeval::Effect;
use std::collections::HashMap;

const XE: u8 = 1 << 0;
const XO: u8 = 1 << 1;
const YE: u8 = 1 << 2;
const YO: u8 = 1 << 3;
const ZE: u8 = 1 << 4;
const ZO: u8 = 1 << 5;
const FRESH: u8 = ZE;

/// H: swap X↔Z support pairwise by grade (Y sign flips are invisible
/// to support).
fn h(s: u8) -> u8 {
    (s & (YE | YO)) | ((s & (XE | XO)) << 4) | ((s & (ZE | ZO)) >> 4)
}

/// T: Z fixed; every X/Y component feeds both X and Y at flipped
/// grade.
fn t(s: u8) -> u8 {
    let mut out = s & (ZE | ZO);
    if s & (XE | YE) != 0 {
        out |= XO | YO;
    }
    if s & (XO | YO) != 0 {
        out |= XE | YE;
    }
    out
}

/// Replay monitor over one leaf's effect path.
#[derive(Clone, Debug, Default)]
pub struct Monitor {
    qubits: HashMap<u32, u8>,
    accepted: bool,
    cnot_seen: bool,
}

impl Monitor {
    pub fn new() -> Monitor {
        Monitor::default()
    }

    pub fn step(&mut self, e: &Effect) {
        match e {
            Effect::New(q) => {
                self.qubits.insert(*q, FRESH);
            }
            Effect::H(q, _) => {
                let s = self.qubits.entry(*q).or_insert(FRESH);
                *s = h(*s);
            }
            Effect::T(q, _) => {
                let s = self.qubits.entry(*q).or_insert(FRESH);
                *s = t(*s);
            }
            Effect::Cnot(..) => self.cnot_seen = true,
            Effect::Meas(q, _, _) => {
                let s = self.qubits.entry(*q).or_insert(FRESH);
                if *s & ZO != 0 {
                    self.accepted = true;
                }
                *s = FRESH;
            }
        }
    }

    /// May this trace's leaf carry Galois-odd mass?
    pub fn accepts(&self) -> bool {
        self.accepted || self.cnot_seen
    }
}

/// Convenience: replay a whole path.
pub fn trace_accepts(trace: &[Effect]) -> bool {
    let mut m = Monitor::new();
    for e in trace {
        m.step(e);
        if m.accepts() {
            return true;
        }
    }
    false
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::enumerate::for_each_closed;
    use crate::parse_all;
    use crate::qeval::{self, Prim, QBudget};
    use crate::radical::radical_parts;

    const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];

    fn seq(ops: &str) -> Vec<Effect> {
        ops.chars()
            .enumerate()
            .map(|(i, c)| match c {
                'h' => Effect::H(0, i as u32),
                't' => Effect::T(0, i as u32),
                'm' => Effect::Meas(0, i as u32, false),
                _ => unreachable!(),
            })
            .collect()
    }

    #[test]
    fn sandwich_accepted_clifford_paths_not() {
        assert!(trace_accepts(&seq("hthm")));
        // Dyadic single-qubit paths must stay quiet.
        for ops in ["m", "hm", "tm", "htm", "httm", "htthm", "hthhm", "ttttm"] {
            assert!(!trace_accepts(&seq(ops)), "{ops} wrongly accepted");
        }
        // After a measurement the qubit is fresh again.
        assert!(!trace_accepts(&seq("hmhm")));
        // Odd support survives an intervening even segment.
        assert!(trace_accepts(&seq("htthhthm")));
    }

    /// Every known odd witness's odd leaves must be accepted, on the
    /// exact traces qeval produces.
    #[test]
    fn witnesses_accepted_on_their_odd_leaves() {
        const W45: &str = "000000000001111100111111001100111111001111010";
        const W48: &str = "000000010000110000111100111110011001111100111010";
        const W49: &str = "0000000100001100001111001111100110011111001110110";
        const P53: &str = "00000000000101111100111111001100111111001111010011010";
        let budget = QBudget {
            beta: 512,
            trans: 1 << 20,
            ..QBudget::default()
        };
        for src in [W45, W48, W49, P53] {
            let p = parse_all(src).expect("closed");
            let leaves = qeval::run_traced(qeval::apply_signature(&p, &FROZEN), &budget);
            let mut odd_seen = 0;
            for (leaf, trace) in &leaves {
                let Some(m) = leaf.mass else { continue };
                let (_, (sa, _)) = radical_parts(m.reduce());
                if sa != 0 {
                    odd_seen += 1;
                    assert!(trace_accepts(trace), "odd leaf not accepted: {src}");
                }
            }
            assert!(odd_seen > 0, "fixture has no odd leaf: {src}");
        }
    }

    /// Exhaustive agreement on the small population: every leaf of
    /// every closed program with a nonzero √2-part must be accepted.
    /// Also records the abstraction's looseness (accepted programs
    /// with no odd leaf) — expected 0 at these sizes.
    #[test]
    fn enumeration_soundness_small_sizes() {
        let budget = QBudget {
            beta: 128,
            trans: 1 << 14,
            ..QBudget::default()
        };
        // ≤22 measured at 0.01s; the naive-core cost cliff past 22 is
        // steep (a 23..26 extension ran away past 120s). A deeper
        // corpus probe needs a trace surface on the fast machine —
        // an oddmin-lane engineering item, not a test-budget knob.
        let (mut programs, mut accepted_programs) = (0u64, 0u64);
        for n in 4..=22 {
            for_each_closed(n, &mut |enc, len| {
                programs += 1;
                let mut bits = (0..len).rev().map(|i| enc >> i & 1 == 1);
                let p = crate::parse::parse_prefix(&mut bits).expect("enumerated term parses");
                let leaves = qeval::run_traced(qeval::apply_signature(&p, &FROZEN), &budget);
                let mut any_accept = false;
                for (leaf, trace) in &leaves {
                    let acc = trace_accepts(trace);
                    any_accept |= acc;
                    let Some(m) = leaf.mass else { continue };
                    let (_, (sa, _)) = radical_parts(m.reduce());
                    assert!(
                        sa == 0 || acc,
                        "odd leaf not accepted at n={n}: {enc:0>width$b}",
                        width = len as usize
                    );
                }
                accepted_programs += u64::from(any_accept);
            });
        }
        // First odd trace is at 45; sub-23 accepts are pure looseness.
        // cnot-latch accepts are expected once cnot-capable plumbing
        // enumerates; print for the record rather than asserting 0.
        println!("programs={programs} accepted={accepted_programs}");
    }
}
