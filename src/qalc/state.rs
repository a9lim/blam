//! Kernel-stratum machine states, typed.
//!
//! Mirrors `qalc/kernel.py`'s `Run`/`RunDone`/`Done` exactly: the five
//! registers, the virtual-boolean phase, and the two residue shapes
//! (gate/leaf errors freeze the complete seven-register pre-entry state;
//! root arrivals freeze the four-register form). Residues are semantic —
//! terminal injectivity rides on them — so they are typed, not
//! stringified.

use super::mark::{Frame, KsHead, LogEntry, TapeEntry};
use super::term::{GateName, Path};

/// Token direction: descending into the term or ascending out of it.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Vert {
    D,
    U,
}

/// The virtual-boolean phase `(g, b′, k)`, `k ∈ {0, 1, 2}`.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub struct Vb {
    pub gate: GateName,
    pub bit: u8,
    pub k: u8,
}

/// A running kernel token: `(pos, d, log, tape, VB, RS, KS)`. RS is
/// canonically sorted (`mark::frame_repr` order — order-free identity);
/// KS is inert append-only history, newest head first.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct RunCore {
    pub path: Path,
    pub d: Vert,
    pub log: Vec<LogEntry>,
    pub tape: Vec<TapeEntry>,
    pub vb: Option<Vb>,
    pub rs: Vec<Frame>,
    pub ks: Vec<KsHead>,
}

/// Output sector: the kernel alphabet plus the absorbing error sector.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Kind {
    Halt0,
    Halt1,
    HaltI,
    Err,
}

impl Kind {
    /// The Python kind string (`'halt0'` …) — wire token and display.
    pub fn token(self) -> &'static str {
        match self {
            Kind::Halt0 => "halt0",
            Kind::Halt1 => "halt1",
            Kind::HaltI => "haltI",
            Kind::Err => "err",
        }
    }
}

/// The complete frozen pre-entry state (terminal injectivity). Gate and
/// leaf entries freeze all seven registers; root arrivals freeze four.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum Residue {
    Full(Box<RunCore>),
    Root {
        log: Vec<LogEntry>,
        tape: Vec<TapeEntry>,
        rs: Vec<Frame>,
        ks: Vec<KsHead>,
    },
}

/// One kernel basis state. Terminal entry is the normative two-step
/// `RunDone → Done(tick 0) → tick`, each a separate `U` application.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum KState {
    Run(RunCore),
    RunDone {
        kind: Kind,
        residue: Residue,
    },
    Done {
        kind: Kind,
        residue: Residue,
        tick: u64,
    },
}
