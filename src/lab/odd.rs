//! Trace-level Pauli-support monitor — the validation layer of the
//! oddmin √2-cancellation theorem lane.
//!
//! A sound may-abstraction of Galois-odd leaf mass for cnot-free
//! effect traces. Replayed over a leaf's effect path (qeval's trace
//! surface), the verdict MUST be `MayOdd` whenever the leaf's
//! unnormalized mass has a nonzero √2-coefficient and the trace is
//! cnot-free; false positives are permitted (and measured by the
//! tests, not merely tolerated — looseness below 45 would sink the
//! oddmin lower bound).
//!
//! Domain, per live qubit: the may-set S ⊆ {X, Y, Z} × {even, odd}
//! of Pauli components its normalized conditional state may carry,
//! graded by √2-exponent parity of the coefficient. Allocation
//! starts |0⟩ = {(Z, even)}; H swaps X↔Z support; T fixes Z and maps
//! any X/Y component to both X and Y at flipped grade (the 1/√2 in
//! TXT† = (X+Y)/√2 — cancellation deliberately ignored); a
//! computational measurement reads the Z component, so it MAY
//! produce a Galois-odd Born factor exactly when (Z, odd) ∈ S, and
//! collapse retires the qubit. A leaf mass is a product of Born
//! factors, and a product of even factors is even — so any odd leaf
//! forces some measurement to fire on (Z, odd), which is precisely
//! the accept event.
//!
//! cnot is OUT OF SCOPE for stage 1a: a Cnot effect ends
//! the sound single-lineage analysis, and the verdict becomes
//! `NeedsCnot` — explicitly not a claim in either direction. The
//! 28-bit witness λ⁴.((1 (2 1)) (2 1)) fires a Cnot effect, so any
//! accept-latch reading would cap the provable minimum at 28 ≪ 45.
//! Stage 1b (Pauli-string support with symplectic H/CNOT routing)
//! is the companion that removes the premise.
//!
//! The replayer is hardened for certificate use: effects
//! on unallocated or retired qubits, duplicate allocations, and
//! stale epochs reject the trace as `Malformed` rather than being
//! silently interpreted. qeval never emits such traces; a forged
//! certificate might.
//!
//! This module is the trusted replayer for the oddmin
//! certificate and the validation oracle for its compositional DP;
//! it deliberately contains no term evaluation — pair it with
//! `quantum::reference::run_traced`. The pure mask kernels (`step_h`, `step_t`,
//! `step_meas`) are shared with the future certificate transfer
//! transfers; keep them total and allocation-free.

use crate::quantum::Effect;
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
pub fn step_h(s: u8) -> u8 {
    (s & (YE | YO)) | ((s & (XE | XO)) << 4) | ((s & (ZE | ZO)) >> 4)
}

/// T: Z fixed; every X/Y component feeds both X and Y at flipped
/// grade.
pub fn step_t(s: u8) -> u8 {
    let mut out = s & (ZE | ZO);
    if s & (XE | YE) != 0 {
        out |= XO | YO;
    }
    if s & (XO | YO) != 0 {
        out |= XE | YE;
    }
    out
}

/// Computational measurement: may the Born factor be Galois-odd?
pub fn step_meas(s: u8) -> bool {
    s & ZO != 0
}

/// Stage-1a verdict for one leaf's effect path.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Verdict {
    /// Every Born factor is even: the leaf mass is Galois-even.
    Even,
    /// Some measurement may have produced an odd Born factor before
    /// any Cnot effect — the sound stage-1a accept.
    MayOdd,
    /// A Cnot effect ended the single-lineage analysis with no prior
    /// accept; stage 1a claims nothing about this trace.
    NeedsCnot,
}

/// A trace the replayer refuses to interpret (certificate hardening;
/// qeval never emits these).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Malformed {
    /// New on a qubit id that is live or retired.
    DupNew,
    /// Effect on a qubit id never allocated.
    NoNew,
    /// Effect on a qubit id after its measurement retired it.
    Retired,
    /// Effect epoch does not match the qubit's next expected epoch.
    StaleEpoch,
    /// Cnot with control = target.
    SameQubit,
}

#[derive(Clone, Copy, Debug)]
enum Slot {
    Live { next_epoch: u32, mask: u8 },
    Gone,
}

/// Replay monitor over one leaf's effect path.
#[derive(Clone, Debug, Default)]
pub struct Monitor {
    qubits: HashMap<u32, Slot>,
    may_odd: bool,
    cnot_seen: bool,
    malformed: Option<Malformed>,
}

impl Monitor {
    pub fn new() -> Monitor {
        Monitor::default()
    }

    /// Validity-check an effect on a live qubit and bump its epoch;
    /// returns the current mask slot or records the malformation.
    fn consume(&mut self, q: u32, e: u32) -> Option<&mut u8> {
        match self.qubits.get_mut(&q) {
            None => {
                self.malformed = Some(Malformed::NoNew);
                None
            }
            Some(Slot::Gone) => {
                self.malformed = Some(Malformed::Retired);
                None
            }
            Some(Slot::Live { next_epoch, mask }) => {
                if *next_epoch != e {
                    self.malformed = Some(Malformed::StaleEpoch);
                    return None;
                }
                *next_epoch += 1;
                Some(mask)
            }
        }
    }

    pub fn step(&mut self, eff: &Effect) {
        if self.malformed.is_some() {
            return;
        }
        match *eff {
            Effect::New(q) => match self.qubits.entry(q) {
                std::collections::hash_map::Entry::Occupied(_) => {
                    self.malformed = Some(Malformed::DupNew);
                }
                std::collections::hash_map::Entry::Vacant(v) => {
                    v.insert(Slot::Live {
                        next_epoch: 0,
                        mask: FRESH,
                    });
                }
            },
            Effect::H(q, e) => {
                if let Some(m) = self.consume(q, e) {
                    *m = step_h(*m);
                }
            }
            Effect::T(q, e) => {
                if let Some(m) = self.consume(q, e) {
                    *m = step_t(*m);
                }
            }
            Effect::Cnot(q1, e1, q2, e2) => {
                if q1 == q2 {
                    self.malformed = Some(Malformed::SameQubit);
                    return;
                }
                self.consume(q1, e1);
                if self.malformed.is_none() {
                    self.consume(q2, e2);
                }
                self.cnot_seen = true;
            }
            Effect::Meas(q, e, _) => {
                if let Some(m) = self.consume(q, e) {
                    // Sound only pre-cnot; post-cnot the lineage math
                    // is polluted and the verdict is NeedsCnot anyway.
                    if step_meas(*m) && !self.cnot_seen {
                        self.may_odd = true;
                    }
                    self.qubits.insert(q, Slot::Gone);
                }
            }
            // The mask algebra is derived for the canonical universe's
            // gates only; traces from alternate signature universes are
            // out of the monitor's soundness scope by construction.
            Effect::S(..) | Effect::X(..) | Effect::Z(..) => {
                unreachable!("odd monitor is canonical-universe (h/t/cnot/meas) only")
            }
        }
    }

    /// The stage-1a verdict for the effects replayed so far.
    pub fn verdict(&self) -> Result<Verdict, Malformed> {
        if let Some(m) = self.malformed {
            return Err(m);
        }
        Ok(if self.may_odd {
            Verdict::MayOdd
        } else if self.cnot_seen {
            Verdict::NeedsCnot
        } else {
            Verdict::Even
        })
    }
}

/// Replay a whole path to its verdict.
pub fn replay(trace: &[Effect]) -> Result<Verdict, Malformed> {
    let mut m = Monitor::new();
    for e in trace {
        m.step(e);
    }
    m.verdict()
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::enumerate::for_each_closed;
    use crate::blc::wire::parse_all;
    use crate::quantum::reference as qeval;
    use crate::quantum::scalar::radical_parts;
    use crate::quantum::sig::FROZEN;
    use crate::quantum::Budget as QBudget;

    /// Hand traces: one qubit per lowercase run, allocated up front,
    /// epochs counted per qubit the way qeval emits them.
    fn seq(ops: &str) -> Vec<Effect> {
        let mut out = vec![Effect::New(0)];
        let mut q = 0;
        let mut e = 0;
        for c in ops.chars() {
            match c {
                'h' => {
                    out.push(Effect::H(q, e));
                    e += 1;
                }
                't' => {
                    out.push(Effect::T(q, e));
                    e += 1;
                }
                'm' => {
                    out.push(Effect::Meas(q, e, false));
                    q += 1;
                    e = 0;
                    out.push(Effect::New(q));
                }
                _ => unreachable!(),
            }
        }
        out.pop(); // trailing New from the last 'm'
        out
    }

    #[test]
    fn sandwich_accepted_clifford_paths_not() {
        assert_eq!(replay(&seq("hthm")), Ok(Verdict::MayOdd));
        // Dyadic single-qubit paths must stay quiet.
        for ops in ["m", "hm", "tm", "htm", "httm", "htthm", "hthhm", "ttttm"] {
            assert_eq!(replay(&seq(ops)), Ok(Verdict::Even), "{ops} not Even");
        }
        // Measurement retires the qubit; the next run is fresh.
        assert_eq!(replay(&seq("hmhm")), Ok(Verdict::Even));
        // Odd support survives an intervening even segment.
        assert_eq!(replay(&seq("htthhthm")), Ok(Verdict::MayOdd));
    }

    #[test]
    fn hardening_rejects_forged_traces() {
        use Effect::*;
        // Effect without allocation.
        assert_eq!(replay(&[H(0, 0)]), Err(Malformed::NoNew));
        // Duplicate allocation.
        assert_eq!(replay(&[New(0), New(0)]), Err(Malformed::DupNew));
        // Stale epoch (replayed effect).
        assert_eq!(
            replay(&[New(0), H(0, 0), H(0, 0)]),
            Err(Malformed::StaleEpoch)
        );
        // Effect after measurement retired the qubit.
        assert_eq!(
            replay(&[New(0), Meas(0, 0, false), T(0, 1)]),
            Err(Malformed::Retired)
        );
        // Self-cnot.
        assert_eq!(
            replay(&[New(0), Cnot(0, 0, 0, 0)]),
            Err(Malformed::SameQubit)
        );
    }

    /// The 28-bit cnot witness λ⁴.((1 (2 1)) (2 1)) must come back
    /// NeedsCnot, not MayOdd — the stage-1a scope boundary.
    #[test]
    fn cnot_trace_is_out_of_scope() {
        let src = "0000000001011001110100111010";
        let p = parse_all(src).expect("closed");
        let budget = QBudget {
            beta: 512,
            trans: 1 << 20,
            ..QBudget::default()
        };
        let leaves = qeval::run_traced(qeval::apply_signature(&p, &FROZEN), &budget);
        let cnot_leaves = leaves
            .iter()
            .filter(|(_, tr)| replay(tr) == Ok(Verdict::NeedsCnot))
            .count();
        assert!(cnot_leaves > 0, "no NeedsCnot leaf on the cnot witness");
    }

    /// Every known odd witness's odd leaves must be accepted, on the
    /// exact traces qeval produces.
    #[test]
    fn witnesses_accepted_on_their_odd_leaves() {
        const W45: &str = "000000000001111100111111001100111111001111010";
        const W48: &str = "000000010000110000111100111110011001111100111010";
        const W49: &str = "0000000100001100001111001111100110011111001110110";
        const W50A: &str = "00000000010000011111100111001100111001111101011110";
        const W50B: &str = "00000001000011000011110011111001100111110011101110";
        const W50C: &str = "00000001000011000011110011111001100111110011100010";
        const P53: &str = "00000000000101111100111111001100111111001111010011010";
        // n=51: the full wrapper orbit of W45 — identity-apply and
        // eta-expansion at each affordable depth of the λ⁵ prefix
        // (indices 6/8 are the pre-registered outermost pair), plus
        // two K-plumbs and one self-application argument. All
        // σ-paired, fatediv 0.
        const W51: [&str; 12] = [
            "000000000100100001111100111111001100111111001111010",
            "000000000100000111111001110011001110011111011011110",
            "000000010000110000111100111110011001111100111011110",
            "000000010000110000111100111110011001111100111000110",
            "000000010000000111111001111001100111100111110101110",
            "000000010000000111111001111111001101110011110011010",
            "000100100000000001111100111111001100111111001111010",
            "010010000000000001111100111111001100111111001111010",
            "000100000000000111110011111100110011111100111101010",
            "000000010010000001111100111111001100111111001111010",
            "000001001000000001111100111111001100111111001111010",
            "000001000000000111111001111100110011111001111010110",
        ];
        let budget = QBudget {
            beta: 512,
            trans: 1 << 20,
            ..QBudget::default()
        };
        for src in [W45, W48, W49, W50A, W50B, W50C, P53]
            .into_iter()
            .chain(W51)
        {
            let p = parse_all(src).expect("closed");
            let leaves = qeval::run_traced(qeval::apply_signature(&p, &FROZEN), &budget);
            let mut odd_seen = 0;
            for (leaf, trace) in &leaves {
                let Some(m) = leaf.mass else { continue };
                let (_, (sa, _)) = radical_parts(m.reduce());
                if sa != 0 {
                    odd_seen += 1;
                    assert_eq!(
                        replay(trace),
                        Ok(Verdict::MayOdd),
                        "odd leaf not MayOdd: {src}"
                    );
                }
            }
            assert!(odd_seen > 0, "fixture has no odd leaf: {src}");
        }
    }

    /// Exhaustive agreement on the small population: every leaf of
    /// every closed program with a nonzero √2-part must be accepted,
    /// and every real qeval trace must replay as well-formed.
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
        let (mut programs, mut may_odd, mut needs_cnot) = (0u64, 0u64, 0u64);
        for n in 4..=22 {
            for_each_closed(n, &mut |enc, len| {
                programs += 1;
                let mut bits = (0..len).rev().map(|i| enc >> i & 1 == 1);
                let p = crate::blc::wire::parse_prefix(&mut bits).expect("enumerated term parses");
                let leaves = qeval::run_traced(qeval::apply_signature(&p, &FROZEN), &budget);
                let (mut any_odd, mut any_cnot) = (false, false);
                for (leaf, trace) in &leaves {
                    let v = replay(trace).unwrap_or_else(|m| {
                        panic!("qeval trace malformed ({m:?}) at n={n}: {enc:b}")
                    });
                    any_odd |= v == Verdict::MayOdd;
                    any_cnot |= v == Verdict::NeedsCnot;
                    let Some(m) = leaf.mass else { continue };
                    let (_, (sa, _)) = radical_parts(m.reduce());
                    assert!(
                        sa == 0 || v != Verdict::Even,
                        "odd leaf judged Even at n={n}: {enc:0>width$b}",
                        width = len as usize
                    );
                }
                may_odd += u64::from(any_odd);
                needs_cnot += u64::from(any_cnot);
            });
        }
        // First odd trace is at 45; sub-23 MayOdd is pure looseness.
        // NeedsCnot counts the out-of-scope sector, not accepts.
        println!("programs={programs} may_odd={may_odd} needs_cnot={needs_cnot}");
        assert_eq!(may_odd, 0, "stage-1a looseness appeared below 23");
    }
}
