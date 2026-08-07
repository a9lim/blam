//! The quantum pillar: qBLC — untyped BLC extended with primitive gates
//! and opaque qubit handles over an exact `Z[ω]/√2^k` store.
//!
//! `reference` is the executable semantics of
//! `docs/quantum/architecture.md`, `machine` the lockstep-verified fast
//! path, `scalar` the exact ring both run on, `sig` the frozen signature
//! order, and `certificate` the trusted skeleton checker of the quantum
//! escalation ladder.
//!
//! The types every layer shares — the primitive alphabet, the store,
//! fates, budgets, and leaves — live here at the pillar root so both
//! engines name one definition and stores compare bit-identically.

pub mod certificate;
pub mod machine;
pub mod reference;
pub mod scalar;
pub mod sig;

use scalar::Dw;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Prim {
    New,
    Meas,
    Cnot,
    T,
    H,
    /// Phase gate S = T² = diag(1, i). Clifford; exact in `ℤ[ω]`.
    S,
    /// Pauli X (bit flip). Clifford; a permutation of amplitudes.
    X,
    /// Pauli Z = S² = diag(1, −1). Clifford.
    Z,
}

impl Prim {
    /// The canonical universe as an unordered five-gate SET, used as a
    /// permutation seed (`qpilot` enumerates its orderings). S/X/Z exist
    /// for alternate signature universes (`qcensus --sig`); the canonical
    /// census and all frozen thresholds use only these five.
    ///
    /// This is NOT the signature order — that is `sig::FROZEN`, the single
    /// home for the ordering the pilot froze.
    pub const CANONICAL_SET: [Prim; 5] = [Prim::New, Prim::Meas, Prim::Cnot, Prim::T, Prim::H];

    pub(crate) fn arity(self) -> usize {
        match self {
            Prim::Cnot => 2,
            _ => 1,
        }
    }

    pub fn name(self) -> &'static str {
        match self {
            Prim::New => "new",
            Prim::Meas => "meas",
            Prim::Cnot => "cnot",
            Prim::T => "t",
            Prim::H => "h",
            Prim::S => "s",
            Prim::X => "x",
            Prim::Z => "z",
        }
    }

    /// Inverse of `name` (signature parsing).
    pub fn by_name(s: &str) -> Option<Prim> {
        Some(match s {
            "new" => Prim::New,
            "meas" => Prim::Meas,
            "cnot" => Prim::Cnot,
            "t" => Prim::T,
            "h" => Prim::H,
            "s" => Prim::S,
            "x" => Prim::X,
            "z" => Prim::Z,
            _ => return None,
        })
    }

    /// Unary store gate (everything except the special forms new/meas/cnot).
    pub(crate) fn is_gate1(self) -> bool {
        matches!(self, Prim::H | Prim::T | Prim::S | Prim::X | Prim::Z)
    }
}

// ---------------------------------------------------------------------------
// The quantum store: branch-local, unnormalized.

/// Tensor position: bit p of a statevector index is the p-th *live* qubit
/// in allocation-rank order (LSB = earliest surviving allocation).
///
/// Methods are pub(crate): `qvm` (the fast path) reuses this exact effect
/// implementation, so both engines share one definition of H/T/CNOT/project
/// and stores compare bit-identically in the lockstep tests.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Store {
    /// Unnormalized amplitudes, length 2^live.
    pub amps: Vec<Dw>,
    /// Per qubit id: Some(epoch) while usable, None once retired (measured).
    epochs: Vec<Option<u32>>,
    /// Live qubit ids in allocation-rank order; position = tensor bit.
    live: Vec<u32>,
}

impl Store {
    fn new() -> Store {
        Store {
            amps: vec![Dw::ONE],
            epochs: Vec::new(),
            live: Vec::new(),
        }
    }

    pub fn live_count(&self) -> usize {
        self.live.len()
    }

    /// Live qubit ids in allocation-rank order: position i is the qubit
    /// occupying tensor bit i of `amps`. Without this the public `amps`
    /// vector is uninterpretable.
    pub fn live(&self) -> &[u32] {
        &self.live
    }

    /// ‖v‖² — the branch's exact mass. None on coefficient overflow.
    pub fn mass(&self) -> Option<Dw> {
        let mut m = Dw::ZERO;
        for a in &self.amps {
            m = m.add(a.norm_sq()?)?;
        }
        Some(m.reduce())
    }

    fn pos_of(&self, q: u32) -> Option<usize> {
        self.live.iter().position(|&x| x == q)
    }

    pub(crate) fn empty() -> Store {
        Store::new()
    }

    pub(crate) fn alloc(&mut self, max_qubits: usize) -> Result<u32, Capacity> {
        if self.live.len() >= max_qubits {
            return Err(Capacity::Qubits);
        }
        let q = self.epochs.len() as u32;
        self.epochs.push(Some(0));
        self.live.push(q);
        // Append |0⟩ as the new highest tensor bit: old amplitudes keep
        // their indices, the bit-set half is zero.
        let old = self.amps.len();
        self.amps.resize(old * 2, Dw::ZERO);
        Ok(q)
    }

    /// Check-and-bump an epoch (atomic consumption). Err = stale or retired.
    pub(crate) fn consume(&mut self, q: u32, e: u32) -> Result<(), ErrKind> {
        match self.epochs.get_mut(q as usize) {
            Some(Some(cur)) if *cur == e => {
                *cur += 1;
                Ok(())
            }
            Some(Some(_)) => Err(ErrKind::StaleEpoch),
            Some(None) => Err(ErrKind::Retired),
            None => unreachable!("handle to unknown qubit"),
        }
    }

    pub(crate) fn peek(&self, q: u32, e: u32) -> Result<(), ErrKind> {
        match self.epochs.get(q as usize) {
            Some(Some(cur)) if *cur == e => Ok(()),
            Some(Some(_)) => Err(ErrKind::StaleEpoch),
            Some(None) => Err(ErrKind::Retired),
            None => unreachable!("handle to unknown qubit"),
        }
    }

    pub(crate) fn apply_h(&mut self, q: u32) -> Result<(), Capacity> {
        let p = self.pos_of(q).expect("H on non-live qubit");
        let bit = 1usize << p;
        for i in 0..self.amps.len() {
            if i & bit == 0 {
                let (v0, v1) = (self.amps[i], self.amps[i | bit]);
                let s = v0.add(v1).ok_or(Capacity::Amplitude)?;
                let dnew = v0.sub(v1).ok_or(Capacity::Amplitude)?;
                self.amps[i] = s.div_sqrt2().ok_or(Capacity::Amplitude)?.reduce();
                self.amps[i | bit] = dnew.div_sqrt2().ok_or(Capacity::Amplitude)?.reduce();
            }
        }
        Ok(())
    }

    pub(crate) fn apply_t(&mut self, q: u32) -> Result<(), Capacity> {
        let p = self.pos_of(q).expect("T on non-live qubit");
        let bit = 1usize << p;
        for i in 0..self.amps.len() {
            if i & bit != 0 {
                self.amps[i] = self.amps[i].mul(Dw::OMEGA).ok_or(Capacity::Amplitude)?;
            }
        }
        Ok(())
    }

    pub(crate) fn apply_s(&mut self, q: u32) -> Result<(), Capacity> {
        // S = diag(1, i); i = ω² exactly.
        let i_unit = Dw {
            a: 0,
            b: 0,
            c: 1,
            d: 0,
            k: 0,
        };
        let p = self.pos_of(q).expect("S on non-live qubit");
        let bit = 1usize << p;
        for i in 0..self.amps.len() {
            if i & bit != 0 {
                self.amps[i] = self.amps[i].mul(i_unit).ok_or(Capacity::Amplitude)?;
            }
        }
        Ok(())
    }

    pub(crate) fn apply_x(&mut self, q: u32) -> Result<(), Capacity> {
        // Pure permutation: infallible, kept Result-shaped for uniformity.
        let p = self.pos_of(q).expect("X on non-live qubit");
        let bit = 1usize << p;
        for i in 0..self.amps.len() {
            if i & bit == 0 {
                self.amps.swap(i, i | bit);
            }
        }
        Ok(())
    }

    pub(crate) fn apply_z(&mut self, q: u32) -> Result<(), Capacity> {
        let p = self.pos_of(q).expect("Z on non-live qubit");
        let bit = 1usize << p;
        for i in 0..self.amps.len() {
            if i & bit != 0 {
                self.amps[i] = self.amps[i].neg();
            }
        }
        Ok(())
    }

    /// Dispatch a unary gate primitive (H/T/S/X/Z).
    pub(crate) fn apply_gate1(&mut self, p: Prim, q: u32) -> Result<(), Capacity> {
        match p {
            Prim::H => self.apply_h(q),
            Prim::T => self.apply_t(q),
            Prim::S => self.apply_s(q),
            Prim::X => self.apply_x(q),
            Prim::Z => self.apply_z(q),
            _ => unreachable!("apply_gate1 on {:?}", p),
        }
    }

    pub(crate) fn apply_cnot(&mut self, qc: u32, qt: u32) {
        let pc = self.pos_of(qc).expect("CNOT control non-live");
        let pt = self.pos_of(qt).expect("CNOT target non-live");
        let (bc, bt) = (1usize << pc, 1usize << pt);
        for i in 0..self.amps.len() {
            // For control=1, swap target pair once (visit the target-0 index).
            if i & bc != 0 && i & bt == 0 {
                self.amps.swap(i, i | bt);
            }
        }
    }

    /// Project qubit q onto |outcome⟩, remove its tensor factor, retire it.
    /// The surviving vector stays unnormalized — its norm² is the branch mass.
    pub(crate) fn measure_project(&mut self, q: u32, outcome_one: bool) {
        let p = self.pos_of(q).expect("measure on non-live qubit");
        let bit = 1usize << p;
        let mut kept = Vec::with_capacity(self.amps.len() / 2);
        for i in 0..self.amps.len() {
            if (i & bit != 0) == outcome_one {
                kept.push(self.amps[i]);
            }
        }
        self.amps = kept;
        self.epochs[q as usize] = None;
        self.live.remove(p);
    }
}

// ---------------------------------------------------------------------------
// Fates and budgets.

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ErrKind {
    /// Primitive met a canonical non-handle value.
    Species,
    /// Handle in operator position.
    HandleApplied,
    /// Epoch already consumed — a duplication was attempted.
    StaleEpoch,
    /// Qubit already measured.
    Retired,
    /// cnot with coincident arguments.
    SameQubit,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Capacity {
    Qubits,
    Amplitude,
    Branches,
}

/// One store effect, as it fired. The per-leaf effect path (root to leaf,
/// `Meas` outcomes included) is the trace surface of
/// `docs/quantum/architecture.md`'s
/// obligation 2: two runs are effect-trace equivalent when their leaf
/// sequences carry identical paths — β-steps are erased by construction,
/// since only primitive firings append events.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Effect {
    /// Allocation: the fresh qubit id.
    New(u32),
    /// H applied to (qubit, consumed epoch).
    H(u32, u32),
    /// T applied to (qubit, consumed epoch).
    T(u32, u32),
    /// cnot (control qubit, control epoch, target qubit, target epoch).
    Cnot(u32, u32, u32, u32),
    /// Measurement of (qubit, epoch) with this branch's outcome.
    Meas(u32, u32, bool),
    /// S applied to (qubit, consumed epoch). Alternate universes only.
    S(u32, u32),
    /// X applied to (qubit, consumed epoch). Alternate universes only.
    X(u32, u32),
    /// Z applied to (qubit, consumed epoch). Alternate universes only.
    Z(u32, u32),
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Fate {
    /// Full normal form reached; store is the leaf's live output.
    Halt(Store),
    /// β budget or transition budget exhausted on this branch.
    Unknown,
    /// Capacity charge fired (resource verdict, never a wrong number).
    Capacity(Capacity),
    /// Store-discipline violation; the branch's mass is excluded from
    /// Ω_success by construction.
    Err(ErrKind),
}

#[derive(Clone, Copy, Debug)]
pub struct Budget {
    /// β-steps per branch.
    pub beta: u64,
    /// Small-step transitions per branch (redex searches).
    pub trans: u64,
    /// Max simultaneous live qubits per branch.
    pub max_qubits: usize,
    /// Max total branches per program.
    pub max_branches: usize,
}

impl Default for Budget {
    fn default() -> Self {
        Budget {
            beta: 4096,
            trans: 1 << 16,
            max_qubits: 12,
            max_branches: 4096,
        }
    }
}

/// One leaf of the (truncated) branch tree, with its exact mass.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Leaf {
    pub fate: Fate,
    /// ‖v‖² at the leaf — mass of Halt leaves is the Ω_success contribution;
    /// mass of Err/Unknown/Capacity leaves feeds the bracket / Err column.
    /// None only if the mass itself overflowed (counted as Capacity).
    pub mass: Option<Dw>,
    /// Contractions (β + primitive firings) on this leaf's branch path —
    /// the lockstep surface the fast path must reproduce exactly.
    pub steps: u64,
}
