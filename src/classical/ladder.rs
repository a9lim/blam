//! The halting ladder: the one implementation of the census's
//! cheapest-verdict-first pipeline, shared by every driver that
//! adjudicates closed BLC terms.
//!
//! Per term, in order:
//!   1. pre-scan — no redex ⇒ the term is its own normal form
//!   2. divergence-oracle prefilter on the raw term
//!   3. KN machine at `budget1` β (transitions `budget1 × 64`) — resolves
//!      the 99.7% fast
//!   4. KN machine at `budget2` β (transitions `budget2 × 64`)
//!   5. escalation engine at `bb_cap` (oracle at every App + redex
//!      history): proven Diverge, proven Halt, or Unknown
//!   6. KN rescue at `rescue` β (transitions `rescue × rescue_trans_mult`)
//!      — recovers the canonical β count of an engine-proven halt, and
//!      catches the big-growth halters the engine ran out of room on
//!
//! Every budget in [`LadderCfg`] is measured, not guessed; the defaults
//! are the values the canonical census table was generated at, and the
//! field docs carry the measurement that fixed each one.
//!
//! What is NOT here: the census's cross-size memos (the λ-wrap verdict
//! memo and the no-whnf head memo). Those sit in the census driver ON
//! TOP of this ladder, because they are facts about a whole enumeration
//! — a term's fate reused from a *different* term's run — while the
//! ladder is a pure function of one term and its config. Keeping them
//! out is what lets `blam adjudicate` and `blam solomonoff` share this
//! code without inheriting a sweep's accumulated state.

use crate::classical::escalation::{self, emit_bits, EngineCfg, LTerm, NoNf, Why, DEFAULT_CAP};
use crate::classical::machine::{Machine, Pool, Sink};
use crate::classical::oracle::no_nf;
use crate::classical::OutOfFuel;

/// Transition cap per β on the two KN rungs. Measured across 4..40:
/// exactly ONE rung-2 success ever exceeded it (n=39; it now takes the
/// escalation+rescue path to the same verdict), while stuck rung-2
/// attempts burned the machine's default `1 << 22` floor ~150k times per
/// big size. Rung 1 with the floor would cost exactly as much as rung 2
/// on transition-bound terms, i.e. pure overhead.
const KN_TRANS_MULT: u64 = 64;

/// The ladder's budgets and switches. `Default` is the census-measured
/// configuration that generated `data/classical/census_table.txt`.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LadderCfg {
    /// Rung-1 β budget.
    pub budget1: u64,
    /// Rung-2 β budget.
    pub budget2: u64,
    /// Escalation-engine capacity in redex bits.
    pub bb_cap: i64,
    /// KN rescue β budget. 50× the BB(34) witness's measured 192,757 β.
    /// Holds through n=41, but the margin is thin: the max successful
    /// rescue is 9,457,564 β, only 1.06× headroom — raise it before
    /// running n=42.
    pub rescue: u64,
    /// Rescue transition cap = `rescue` × this. Measured: no successful
    /// rescue in 4..40 exceeds 17.0 transitions/β (the n=38 champion:
    /// 9.45M β via 160.4M transitions); 32 keeps a 1.88× margin and
    /// halves the cost of transition-bound stuck rescues vs the old
    /// blanket 64.
    pub rescue_trans_mult: u64,
    /// Run the redex-free pre-scan (rung 1 of the ladder).
    pub prescan: bool,
    /// Run the divergence-oracle prefilter (rung 2).
    pub oracle: bool,
    /// Escalation work-meter units per capacity bit.
    pub work_mult: i64,
    /// β budget for the escalation engine's redloop probes.
    pub probe_fuel: u64,
}

impl Default for LadderCfg {
    fn default() -> LadderCfg {
        let e = EngineCfg::default();
        LadderCfg {
            budget1: 64,
            budget2: 4096,
            bb_cap: DEFAULT_CAP,
            rescue: 10_000_000,
            rescue_trans_mult: 32,
            prescan: true,
            oracle: true,
            work_mult: e.work_mult,
            probe_fuel: e.probe_fuel,
        }
    }
}

impl LadderCfg {
    /// The escalation-engine slice of this config.
    pub fn engine(&self) -> EngineCfg {
        EngineCfg {
            work_mult: self.work_mult,
            probe_fuel: self.probe_fuel,
        }
    }
}

/// Which rung produced the verdict.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Rung {
    /// Redex-free pre-scan. The sink is left UNTOUCHED (this is the
    /// majority path; filling it would dominate a sweep) and `nf_bits`
    /// is the term's own bit size, which is its normal form's.
    Prescan,
    /// Syntactic divergence oracle on the raw term.
    Oracle,
    /// KN machine at `budget1`.
    Kn1,
    /// KN machine at `budget2`.
    Kn2,
    /// The escalation engine itself: a Diverge or Unknown verdict, or a
    /// proven Halt whose canonical β count the rescue could not recover.
    Escalation,
    /// KN rescue after the escalation engine.
    Rescue,
}

/// Where a Halt's normal-form size comes from. The ladder streams
/// normal forms into a caller-owned sink, so on most paths only the
/// sink knows the size; the pre-scan skips readback entirely and
/// reports the size directly.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum NfSize {
    /// Readback ran: the sink holds the normal form's bits, and a
    /// counting sink's total is the size.
    Streamed,
    /// Readback did NOT run — the sink is untouched and this is the
    /// size (the pre-scan's term-is-its-own-normal-form case).
    Untouched(u64),
}

impl NfSize {
    /// The normal form's bit size, given what a counting sink received.
    pub fn resolve(self, streamed_bits: u64) -> u64 {
        match self {
            NfSize::Streamed => streamed_bits,
            NfSize::Untouched(n) => n,
        }
    }
}

/// The typed verdict. `Unknown` is a resource outcome of *this* budget
/// ladder, never a claim about the term.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Verdict {
    Halt {
        /// How to read the normal form's bit size off this run.
        nf: NfSize,
        /// β steps under leftmost-outermost reduction, when exact.
        steps: u64,
        /// False when the escalation engine proved the halt but the
        /// rescue ran out of fuel before recovering the canonical count
        /// (the engine's own count is distorted by simplify's
        /// β-inlining, so it reports none). `steps` is 0 there.
        steps_exact: bool,
    },
    /// Proven: oracle hit, redex reoccurrence, or the redloop certificate.
    Diverge,
    /// A resource died first; the `Why` says which one, in the engine.
    Unknown(Why),
}

/// Everything a driver needs beyond the verdict itself: which resources
/// died where, and the no-whnf attribution.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Telemetry {
    /// The escalation engine ran (rung 5 was reached).
    pub escalated: bool,
    /// Why the escalation engine stopped short, when it did — the
    /// attribution a rescue inherits (capacity smells like a missed
    /// loop, the work meter like a big-growth halter).
    pub escal_why: Option<Why>,
    /// Which fuel rung 2 ran out of, when rung 2 failed.
    pub kn2_stuck: Option<OutOfFuel>,
    /// Which fuel the rescue ran out of, when a rescue ran and failed.
    pub rescue_stuck: Option<OutOfFuel>,
    /// Machine transitions of the last KN run on this term (0 if none
    /// ran). On a `Rung::Rescue` outcome this is the rescue's cost —
    /// the datum that sets `rescue_trans_mult`.
    pub last_trans: u64,
    /// The Diverge proof landed on the root's own head-reduction chain:
    /// the term has no WEAK head normal form, a fact that transfers
    /// through application heads. Only ever true alongside
    /// `Verdict::Diverge` from `Rung::Escalation`.
    pub head_diverge: bool,
}

/// One term's trip through the ladder.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct LadderOutcome {
    pub verdict: Verdict,
    pub rung: Rung,
    pub tel: Telemetry,
}

/// Run the ladder on the term at `root` in `pool`.
///
/// On every Halt except [`Rung::Prescan`], `sink` is left holding the
/// normal form's BLC bits (the ladder resets it before each attempt, so
/// a failed rung leaves no partial bits behind). On Prescan the sink is
/// untouched and the term itself is the normal form; on Diverge and
/// Unknown the sink's contents are meaningless.
pub fn adjudicate<S: Sink + Default>(
    cfg: &LadderCfg,
    pool: &Pool,
    vm: &mut Machine,
    root: u32,
    sink: &mut S,
) -> LadderOutcome {
    let mut tel = Telemetry::default();
    let out = |verdict, rung, tel| LadderOutcome { verdict, rung, tel };

    if cfg.prescan && !pool.has_redex(root) {
        let halt = Verdict::Halt {
            nf: NfSize::Untouched(pool.bit_size(root)),
            steps: 0,
            steps_exact: true,
        };
        return out(halt, Rung::Prescan, tel);
    }
    if cfg.oracle && no_nf(0, (pool, root)) {
        return out(Verdict::Diverge, Rung::Oracle, tel);
    }

    // The two KN rungs.
    for (rung, budget) in [(Rung::Kn1, cfg.budget1), (Rung::Kn2, cfg.budget2)] {
        *sink = S::default();
        match vm.normalize_capped(
            pool,
            root,
            budget,
            budget.saturating_mul(KN_TRANS_MULT),
            sink,
        ) {
            Ok(steps) => {
                tel.last_trans = vm.last_trans;
                return out(
                    Verdict::Halt {
                        nf: NfSize::Streamed,
                        steps,
                        steps_exact: true,
                    },
                    rung,
                    tel,
                );
            }
            Err(e) if rung == Rung::Kn2 => tel.kn2_stuck = Some(e),
            Err(_) => {}
        }
    }

    // Escalation: full BB.lhs semantics.
    tel.escalated = true;
    let t = LTerm::from_pool(pool, root);
    let (verdict, spine) = escalation::normal_form_with(cfg.engine(), cfg.bb_cap, &t);
    // The rescue, shared by the engine-Halt and engine-Unknown paths:
    // the engine's β-count isn't canonical (history machinery, no step
    // ledger, and simplify inlines βs), so a KN re-run recovers it —
    // and on the Unknown path the same run is a genuine last attempt.
    let rescue = |vm: &mut Machine, sink: &mut S, tel: &mut Telemetry| {
        *sink = S::default();
        match vm.normalize_capped(
            pool,
            root,
            cfg.rescue,
            cfg.rescue.saturating_mul(cfg.rescue_trans_mult),
            sink,
        ) {
            Ok(steps) => {
                tel.last_trans = vm.last_trans;
                Some(steps)
            }
            Err(e) => {
                tel.rescue_stuck = Some(e);
                None
            }
        }
    };
    let rescued = |steps| Verdict::Halt {
        nf: NfSize::Streamed,
        steps,
        steps_exact: true,
    };
    match verdict {
        Ok(nf) => match rescue(vm, sink, &mut tel) {
            Some(steps) => out(rescued(steps), Rung::Rescue, tel),
            None => {
                // Proven halt, canonical count unavailable. Hand the
                // engine's own normal form to the sink so the Halt
                // contract holds on this path too — the readback the
                // rescue could not finish, done structurally instead.
                *sink = S::default();
                emit_bits(&nf, sink);
                debug_assert!(nf.bit_size() > 0);
                out(
                    Verdict::Halt {
                        nf: NfSize::Streamed,
                        steps: 0,
                        steps_exact: false,
                    },
                    Rung::Escalation,
                    tel,
                )
            }
        },
        Err(NoNf::Diverge) => {
            tel.head_diverge = spine;
            out(Verdict::Diverge, Rung::Escalation, tel)
        }
        Err(NoNf::Unknown(why)) => {
            tel.escal_why = Some(why);
            match rescue(vm, sink, &mut tel) {
                Some(steps) => out(rescued(steps), Rung::Rescue, tel),
                None => out(Verdict::Unknown(why), Rung::Escalation, tel),
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::classical::machine::SizeSink;

    fn run(bits: &str) -> (LadderOutcome, u64) {
        let mut pool = Pool::new();
        let root = pool.decode_str(bits).expect("closed term");
        let mut vm = Machine::new();
        let mut sink = SizeSink::default();
        let o = adjudicate(&LadderCfg::default(), &pool, &mut vm, root, &mut sink);
        (o, sink.0)
    }

    #[test]
    fn prescan_takes_normal_forms_without_touching_the_sink() {
        // I = λx.x has no redex.
        let (o, emitted) = run("0010");
        assert_eq!(o.rung, Rung::Prescan);
        assert_eq!(
            o.verdict,
            Verdict::Halt {
                nf: NfSize::Untouched(4),
                steps: 0,
                steps_exact: true
            }
        );
        assert_eq!(emitted, 0, "prescan must not pay for readback");
    }

    #[test]
    fn oracle_kills_omega_before_the_machine_runs() {
        let (o, _) = run("010001101000011010");
        assert_eq!(o.rung, Rung::Oracle);
        assert_eq!(o.verdict, Verdict::Diverge);
        assert!(!o.tel.escalated);
    }

    #[test]
    fn rung1_halts_and_fills_the_sink() {
        // (λx. x x)(λy. y) → λy. y, one β step.
        let (o, emitted) = run("01000110100010");
        assert_eq!(o.rung, Rung::Kn1);
        assert!(matches!(
            o.verdict,
            Verdict::Halt {
                steps: 2,
                steps_exact: true,
                ..
            }
        ));
        assert_eq!(emitted, 4, "the sink holds |nf| on a KN halt");
    }

    #[test]
    fn escalation_proves_a_growing_wrapper_diverger() {
        // (λx. x x)(λx. x (I x)) — the oracle cannot see it; simplify
        // collapses the per-cycle I wrapper so the history key recurs.
        let (o, _) = run("010001101000011001001010");
        assert_eq!(o.verdict, Verdict::Diverge);
        assert_eq!(o.rung, Rung::Escalation);
        assert!(o.tel.escalated);
    }

    #[test]
    fn disabling_the_prefilters_reroutes_but_does_not_change_the_verdict() {
        let mut pool = Pool::new();
        let root = pool.decode_str("0010").expect("closed term");
        let mut vm = Machine::new();
        let mut sink = SizeSink::default();
        let cfg = LadderCfg {
            prescan: false,
            oracle: false,
            ..LadderCfg::default()
        };
        let o = adjudicate(&cfg, &pool, &mut vm, root, &mut sink);
        assert_eq!(o.rung, Rung::Kn1);
        let Verdict::Halt { nf, steps, .. } = o.verdict else {
            panic!("I halts")
        };
        assert_eq!((nf.resolve(sink.0), steps), (4, 0));
    }
}
