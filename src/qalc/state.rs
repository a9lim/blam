//! Kernel-stratum and composed-stratum machine states, typed.
//!
//! The kernel half mirrors `qalc/kernel.py`'s `Run`/`RunDone`/`Done`
//! exactly: the five registers, the virtual-boolean phase, and the two
//! residue shapes (gate/leaf errors freeze the complete seven-register
//! pre-entry state; root arrivals freeze the four-register form).
//! Residues are semantic — terminal injectivity rides on them — so they
//! are typed, not stringified.
//!
//! The composed half mirrors `qalc/readback.py`'s state grammar: NF
//! output trees with armed holes, the output zipper with binder marks
//! and moved scope residues, terminal garbage, and the composed
//! `NFRun`/`NFRunDone`/`NFDone` strata. The composed token reuses
//! [`RunCore`] over the BA tape alphabet. Python's untyped `(kind,
//! output, garbage)` triples become sums: halt landings carry
//! [`TerminalGarbage`], error landings carry their own typed
//! [`ErrorGarbage`] family (never `TerminalGarbage`), and the
//! machine-exception class name is normalized to a stable
//! cross-language fault category — the raw CPython class name is
//! fixture metadata, not state identity.

use std::sync::Arc;

use super::mark::{Epoch, Frame, GateTag, KsHead, LogEntry, Lp, TapeEntry};
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
    pub gate: GateTag,
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

// ---------------------------------------------------------------------------
// Composed (readback) stratum.

/// A full-NF output tree under construction: `readback.py`'s
/// `Hole`/`NFVar`/`NFLam`/`NFApp`/`NFGate`. Children are `Arc`-shared
/// so a zipper `replace` clones only the rewritten spine, as the
/// reference shares subtrees; equality and hashing stay structural.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum Nf {
    /// An open output position. `HEAD` arms argument holes; only armed
    /// holes may override b3 with `ENTER`.
    Hole {
        armed: bool,
    },
    /// A de Bruijn output variable (1-indexed).
    Var(u64),
    Lam(Arc<Nf>),
    App(Arc<Nf>, Arc<Nf>),
    Gate(GateName),
}

/// A binder mark's dynamic identity: `("source", path, log)` for an
/// emitted source lambda, `("virtual", g, i, phase, code)` for one half
/// of a virtual Church boolean.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum BinderIdentity {
    Source {
        path: Path,
        log: Vec<LogEntry>,
    },
    Virtual {
        gate: GateTag,
        instance: Lp,
        phase: u8,
        code: Path,
    },
}

/// Reversible controller metadata for one emitted output binder — not
/// part of the observable NF.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct BinderMark {
    pub output: Path,
    pub identity: BinderIdentity,
}

/// A scope residue moved to controller garbage by a child `RETURN` (or
/// retained by a neutral probe): the four `readback.py` residue
/// dataclasses.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum ScopeResidue {
    Exact {
        output: Path,
        prefix: Vec<TapeEntry>,
    },
    Virtual {
        output: Path,
        gate: GateTag,
        instance: Lp,
        epoch: Epoch,
    },
    /// Exact path coordinate discarded by a pure child `RETURN`.
    Pure { output: Path },
    NeutralProbe {
        binder_path: Path,
        binder_log: Vec<LogEntry>,
        logged_argument: Lp,
    },
}

/// A terminal garbage carrier: the root compression's retained answer
/// or ticket position. Only the exact and virtual shapes can reach the
/// root (`terminal_predecessor` rejects the others), so the pure and
/// neutral-probe residues are excluded by construction.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum TerminalCarrier {
    Exact {
        output: Path,
        prefix: Vec<TapeEntry>,
    },
    Virtual {
        output: Path,
        gate: GateTag,
        instance: Lp,
        epoch: Epoch,
    },
}

/// Exact terminal controller/token residue frozen by `rootdone`.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct TerminalGarbage {
    pub carrier: Option<TerminalCarrier>,
    pub frames: Vec<Frame>,
    pub storage: Vec<KsHead>,
    pub binders: Vec<BinderMark>,
    pub residues: Vec<ScopeResidue>,
}

/// The output zipper: the only live state beyond the token.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Zipper {
    pub tree: Nf,
    pub cursor: Option<Path>,
    pub binders: Vec<BinderMark>,
    pub residues: Vec<ScopeResidue>,
}

/// A running composed state: kernel token (BA tape alphabet) plus the
/// output zipper.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct NfRun {
    pub token: RunCore,
    pub zipper: Zipper,
}

/// A composed error kind. `Typed` is `("error", k)` — a kernel kind or
/// composed rule (`stuck`, `no-instance`, `alien-ticket`, …). `Fault`
/// is `("error", "machine-exception", class)` with the class normalized
/// to a stable cross-language fault category.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum ErrorKind {
    Typed(String),
    Fault(String),
}

/// Typed error garbage — the exact offending source, per landing
/// family. Distinct failing sources land distinctly because the
/// complete source is retained.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum ErrorGarbage {
    /// `_error` without residue: the `(token, zipper)` pair.
    Composed { token: RunCore, zipper: Zipper },
    /// A kernel `RunDone` wrap: the `(token, zipper, residue)` triple.
    Kernel {
        token: RunCore,
        zipper: Zipper,
        residue: Residue,
    },
    /// A kernel `Done` target reached the composed adapter.
    InvalidKernelTarget {
        token: RunCore,
        zipper: Zipper,
        target: Box<KState>,
    },
    /// Totalized host fault: `("raised-source", state)`.
    Fault { source: Box<NfState> },
}

/// A composed terminal payload: halt with its closed NF output and
/// `TerminalGarbage`, or a typed error with its own garbage family.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum NfTerminal {
    Halt {
        output: Nf,
        garbage: TerminalGarbage,
    },
    Error {
        kind: ErrorKind,
        garbage: ErrorGarbage,
    },
}

/// One composed basis state. Terminal entry mirrors the kernel's
/// normative two-step: `NFRunDone → NFDone(tick 0) → tick`.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum NfState {
    Run(NfRun),
    RunDone(NfTerminal),
    Done { terminal: NfTerminal, tick: u64 },
}
