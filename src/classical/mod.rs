//! The classical pillar: pure untyped BLC, adjudicated.
//!
//! `reference` is the executable spec, `machine` the fast KN path
//! differential-tested against it, `oracle` Tromp's syntactic divergence
//! predicate, `escalation` the instrumented reducer that adjudicates what
//! the budget ladder cannot, `ladder` the one assembly of all four into
//! the cheapest-verdict-first pipeline every driver runs, and
//! `certificate` the trusted checker layer for ratchet divergence proofs.

pub mod certificate;
pub mod escalation;
pub mod ladder;
pub mod machine;
pub mod oracle;
pub mod reference;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum OutOfFuel {
    /// β-step budget exhausted.
    Beta,
    /// Machine-transition cap exhausted (machine only).
    Transitions,
    /// The sink asked to stop: it already knows the rest of the run is
    /// irrelevant (machine only; see `Sink::CAN_ABORT`). Not a resource
    /// verdict — the caller owns the reason and must not read it as "no
    /// normal form".
    Aborted,
}

/// Exhaustive by choice (no `#[non_exhaustive]`): every caller that
/// reports a stall names the resource, and a new resource SHOULD break
/// those matches rather than print a catch-all.
impl std::fmt::Display for OutOfFuel {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            OutOfFuel::Beta => write!(f, "beta budget exhausted"),
            OutOfFuel::Transitions => write!(f, "transition cap exhausted"),
            OutOfFuel::Aborted => write!(f, "the sink asked to stop"),
        }
    }
}

impl std::error::Error for OutOfFuel {}

/// Beta-step budget. `steps` is left at the count reached so far, so a
/// successful run reports its cost and an exhausted one shows the limit.
#[derive(Clone, Copy, Debug)]
pub struct Budget {
    pub limit: u64,
    pub steps: u64,
}

impl Budget {
    pub fn new(limit: u64) -> Self {
        Budget { limit, steps: 0 }
    }

    fn tick(&mut self) -> Result<(), OutOfFuel> {
        if self.steps >= self.limit {
            return Err(OutOfFuel::Beta);
        }
        self.steps += 1;
        Ok(())
    }
}
