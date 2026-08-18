//! Public qALC semantic objects: total sector selection, one-step `U`,
//! finite-time halt mass `mu_p`, reduced output operator `rho_p`, and finite
//! directed approximants of `M` / `Omega_qALC`.

use std::collections::{HashMap, HashSet};
use std::hash::{Hash, Hasher};
use std::sync::Arc;

use crate::quantum::scalar::ExactSum;

use super::admission::{
    try_admit, try_admit_probe_with_cap_profiled, try_admit_with_cap_profiled, AdmissionTelemetry,
    Gate1Admission, CANONICAL_STATE_CAP,
};
use super::amp::Amp;
use super::gate2check::{structural_admission, StructuralAdmission};
use super::kernel::edge_coefficient;
use super::readback::{nf_gram_with, nf_init, nf_step_with, MachineKind, NfError};
use super::state::{Nf, NfState, NfTerminal, TerminalGarbage};
use super::term::Term;
use super::wire::CertEntries;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SelectionKind {
    StructuralGate2,
    ValidatedGate1,
    Conservative,
}

#[derive(Clone, Debug)]
enum Selection {
    Structural(StructuralAdmission),
    Gate1(Gate1Admission),
    Conservative,
}

/// Immutable, term-determined static machine metadata.  There is no public
/// constructor for an unchecked admitted sector.
#[derive(Clone, Debug)]
pub struct Sector {
    term: Arc<Term>,
    selection: Selection,
}

impl Sector {
    pub fn term(&self) -> &Term {
        &self.term
    }

    pub fn selection_kind(&self) -> SelectionKind {
        match self.selection {
            Selection::Structural(_) => SelectionKind::StructuralGate2,
            Selection::Gate1(_) => SelectionKind::ValidatedGate1,
            Selection::Conservative => SelectionKind::Conservative,
        }
    }

    pub fn is_admitted(&self) -> bool {
        !matches!(self.selection, Selection::Conservative)
    }

    pub fn gate1_admission(&self) -> Option<&Gate1Admission> {
        match &self.selection {
            Selection::Gate1(admission) => Some(admission),
            _ => None,
        }
    }

    pub fn structural_admission(&self) -> Option<&StructuralAdmission> {
        match &self.selection {
            Selection::Structural(admission) => Some(admission),
            _ => None,
        }
    }

    fn machine(&self) -> MachineKind {
        match self.selection {
            Selection::Structural(_) => MachineKind::Gate2,
            _ => MachineKind::Gate1,
        }
    }

    fn certificate(&self) -> Option<&CertEntries> {
        match &self.selection {
            Selection::Structural(admission) => Some(admission.certificate()),
            Selection::Gate1(admission) => admission.certificate(),
            Selection::Conservative => None,
        }
    }

    fn conservative(&self) -> bool {
        matches!(self.selection, Selection::Conservative)
    }

    #[cfg(test)]
    fn forced_conservative(term: Term) -> Self {
        Self {
            term: Arc::new(term),
            selection: Selection::Conservative,
        }
    }
}

/// Total combined selector: cap-free compiler-image admission first, then
/// checked Gate-1 admission, then conservative history.
pub fn select(term: Term) -> Sector {
    let selection = match structural_admission(&term) {
        Ok(Some(admission)) => Selection::Structural(admission),
        _ => try_admit(&term)
            .map(Selection::Gate1)
            .unwrap_or(Selection::Conservative),
    };
    Sector {
        term: Arc::new(term),
        selection,
    }
}

/// The total selector plus diagnostic Gate-1 phase timings. Structural Gate-2
/// images never enter Gate 1 and therefore return zeroed admission telemetry.
pub fn select_profiled(term: Term) -> (Sector, AdmissionTelemetry) {
    let (selection, telemetry) = match structural_admission(&term) {
        Ok(Some(admission)) => (
            Selection::Structural(admission),
            AdmissionTelemetry::default(),
        ),
        _ => {
            let (admission, telemetry) = try_admit_with_cap_profiled(&term, CANONICAL_STATE_CAP);
            (
                admission
                    .map(Selection::Gate1)
                    .unwrap_or(Selection::Conservative),
                telemetry,
            )
        }
    };
    (
        Sector {
            term: Arc::new(term),
            selection,
        },
        telemetry,
    )
}

/// Definitive cheap selector probe for population scheduling. `Some` is a
/// fully validated sector identical to canonical selection. `None` means only
/// that the caller must retry through [`select_profiled`] at the canonical
/// cap; it is never a conservative verdict.
pub fn select_probe_profiled(
    term: Term,
    gate1_state_cap: usize,
) -> (Option<Sector>, AdmissionTelemetry) {
    match structural_admission(&term) {
        Ok(Some(admission)) => (
            Some(Sector {
                term: Arc::new(term),
                selection: Selection::Structural(admission),
            }),
            AdmissionTelemetry::default(),
        ),
        _ => {
            let (admission, telemetry) = try_admit_probe_with_cap_profiled(&term, gate1_state_cap);
            (
                admission.map(|admission| Sector {
                    term: Arc::new(term),
                    selection: Selection::Gate1(admission),
                }),
                telemetry,
            )
        }
    }
}

#[derive(Clone, Debug)]
struct HistoryNode {
    prior: Option<Arc<HistoryNode>>,
    live: NfState,
    len: usize,
    digest: u64,
}

impl Drop for HistoryNode {
    fn drop(&mut self) {
        let mut prior = self.prior.take();
        while let Some(node) = prior {
            let Ok(mut node) = Arc::try_unwrap(node) else {
                break;
            };
            prior = node.prior.take();
        }
    }
}

/// Persistent exact predecessor coordinate. Hashing is O(1); equality is by
/// content with a shared-tail fast path, so allocation identity never becomes
/// semantic. One source clone is retained per physical step and H siblings
/// share the same newly appended node.
#[derive(Clone, Debug, Default)]
struct History(Option<Arc<HistoryNode>>);

impl History {
    fn append(&self, live: &NfState) -> Self {
        let mut hasher = std::collections::hash_map::DefaultHasher::new();
        self.len().hash(&mut hasher);
        self.digest().hash(&mut hasher);
        live.hash(&mut hasher);
        Self(Some(Arc::new(HistoryNode {
            prior: self.0.clone(),
            live: live.clone(),
            len: self.len() + 1,
            digest: hasher.finish(),
        })))
    }

    fn len(&self) -> usize {
        self.0.as_ref().map_or(0, |node| node.len)
    }

    fn digest(&self) -> u64 {
        self.0.as_ref().map_or(0, |node| node.digest)
    }

    fn last(&self) -> Option<&NfState> {
        self.0.as_ref().map(|node| &node.live)
    }

    fn pop(&self) -> Option<Self> {
        self.0
            .as_ref()
            .map(|node| Self(node.prior.as_ref().map(Arc::clone)))
    }

    fn oldest_first(&self) -> Vec<&NfState> {
        let mut out = Vec::with_capacity(self.len());
        let mut cursor = self.0.as_deref();
        while let Some(node) = cursor {
            out.push(&node.live);
            cursor = node.prior.as_deref();
        }
        out.reverse();
        out
    }

    #[cfg(test)]
    fn shares_tail(&self, other: &Self) -> bool {
        match (&self.0, &other.0) {
            (None, None) => true,
            (Some(left), Some(right)) => Arc::ptr_eq(left, right),
            _ => false,
        }
    }
}

impl PartialEq for History {
    fn eq(&self, other: &Self) -> bool {
        if self.len() != other.len() || self.digest() != other.digest() {
            return false;
        }
        let mut left = self.0.as_deref();
        let mut right = other.0.as_deref();
        loop {
            match (left, right) {
                (None, None) => return true,
                (Some(a), Some(b)) if std::ptr::eq(a, b) => return true,
                (Some(a), Some(b)) if a.live == b.live => {
                    left = a.prior.as_deref();
                    right = b.prior.as_deref();
                }
                _ => return false,
            }
        }
    }
}

impl Eq for History {}

impl Hash for History {
    fn hash<H: Hasher>(&self, state: &mut H) {
        self.len().hash(state);
        self.digest().hash(state);
    }
}

/// The complete exact predecessor history used only by rejected sectors.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct ConservativeState {
    live: NfState,
    history: History,
}

impl ConservativeState {
    pub fn live(&self) -> &NfState {
        &self.live
    }

    pub fn history(&self) -> Vec<&NfState> {
        self.history.oldest_first()
    }
}

#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum BasisState {
    Admitted(NfState),
    Conservative(ConservativeState),
}

impl BasisState {
    pub fn live(&self) -> &NfState {
        match self {
            BasisState::Admitted(state) => state,
            BasisState::Conservative(state) => &state.live,
        }
    }
}

pub type Superposition = Vec<(BasisState, Amp)>;
pub type DensityMatrix = HashMap<(Nf, Nf), Amp>;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SemanticsError {
    Capacity,
    BasisKind,
    DuplicateBasis,
    NoTransition,
    NormLeak,
    NotConservativeLanding,
    InvalidPredecessor,
}

fn norm(vector: &Superposition) -> Result<Amp, SemanticsError> {
    let mut total = Amp::ZERO;
    for (_, amplitude) in vector {
        total = total
            .add(amplitude.norm_sq().ok_or(SemanticsError::Capacity)?)
            .ok_or(SemanticsError::Capacity)?;
    }
    Ok(total)
}

pub fn initial_vector(sector: &Sector) -> Superposition {
    let initial = nf_init();
    let basis = if sector.conservative() {
        BasisState::Conservative(ConservativeState {
            live: initial,
            history: History::default(),
        })
    } else {
        BasisState::Admitted(initial)
    };
    vec![(basis, Amp::ONE)]
}

/// Exact sparse linear extension of one selected physical transition.
/// The step is transactional: any capacity/basis failure discards the local
/// target map and returns a typed outcome.
pub fn u(sector: &Sector, vector: &Superposition) -> Result<Superposition, SemanticsError> {
    let mut distinct = HashSet::new();
    if !vector.iter().all(|(basis, _)| distinct.insert(basis)) {
        return Err(SemanticsError::DuplicateBasis);
    }
    let source_norm = norm(vector)?;
    let mut target: Superposition = Vec::new();
    let mut index: HashMap<BasisState, usize> = HashMap::new();
    for (source, amplitude) in vector {
        let (live, history) = match (sector.conservative(), source) {
            (false, BasisState::Admitted(live)) => (live, None),
            (true, BasisState::Conservative(state)) => (state.live(), Some(&state.history)),
            _ => return Err(SemanticsError::BasisKind),
        };
        let rows = nf_step_with(sector.machine(), sector.term(), live, sector.certificate());
        if rows.is_empty() {
            return Err(SemanticsError::NoTransition);
        }
        let next_history = history.map(|history| history.append(live));
        for row in rows {
            let coefficient =
                edge_coefficient(row.sign, row.dk, &row.rule).ok_or(SemanticsError::Capacity)?;
            let contribution = amplitude.mul(coefficient).ok_or(SemanticsError::Capacity)?;
            let basis = if let Some(history) = &next_history {
                BasisState::Conservative(ConservativeState {
                    live: row.state,
                    history: history.clone(),
                })
            } else {
                BasisState::Admitted(row.state)
            };
            if let Some(&at) = index.get(&basis) {
                target[at].1 = target[at]
                    .1
                    .add(contribution)
                    .ok_or(SemanticsError::Capacity)?;
            } else {
                index.insert(basis.clone(), target.len());
                target.push((basis, contribution));
            }
        }
    }
    target.retain(|(_, amplitude)| !amplitude.is_zero());
    if norm(&target)? != source_norm {
        return Err(SemanticsError::NormLeak);
    }
    Ok(target)
}

/// Mathematical spelling retained as a public alias beside idiomatic Rust
/// `u`.
pub use u as U;

/// Pop and relation-check the exact fallback predecessor coordinate.
pub fn conservative_predecessor(
    sector: &Sector,
    target: &BasisState,
) -> Result<BasisState, SemanticsError> {
    if !sector.conservative() {
        return Err(SemanticsError::NotConservativeLanding);
    }
    let BasisState::Conservative(target) = target else {
        return Err(SemanticsError::NotConservativeLanding);
    };
    let Some(source_live) = target.history.last() else {
        return Err(SemanticsError::NotConservativeLanding);
    };
    let source = BasisState::Conservative(ConservativeState {
        live: source_live.clone(),
        history: target.history.pop().expect("nonempty history"),
    });
    let valid = nf_step_with(MachineKind::Gate1, sector.term(), source_live, None)
        .into_iter()
        .any(|row| row.state == target.live);
    if valid {
        Ok(source)
    } else {
        Err(SemanticsError::InvalidPredecessor)
    }
}

pub fn evolve(sector: &Sector, transitions: u64) -> Result<Superposition, SemanticsError> {
    let mut vector = initial_vector(sector);
    for _ in 0..transitions {
        vector = u(sector, &vector)?;
    }
    Ok(vector)
}

/// Finite exact Gram audit of the selected live machine.  For an admitted
/// sector this checks the same machine/certificate pair used by [`u`].  For
/// a conservative sector it intentionally audits the underlying Gate-1 live
/// transition before history is attached; the public history-extended step
/// remains isometric by construction even when this report finds a defect.
pub fn gram(
    sector: &Sector,
    tick_depth: u64,
    state_cap: usize,
) -> Result<super::kernel::GramReport, NfError> {
    nf_gram_with(
        sector.machine(),
        sector.term(),
        sector.certificate(),
        tick_depth,
        state_cap,
    )
}

fn done_halt(state: &NfState) -> Option<(&Nf, &TerminalGarbage, u64)> {
    match state {
        NfState::Done {
            terminal: NfTerminal::Halt { output, garbage },
            tick,
        } => Some((output, garbage, *tick)),
        _ => None,
    }
}

pub fn halt_mass(vector: &Superposition) -> Result<Amp, SemanticsError> {
    let mut total = Amp::ZERO;
    for (basis, amplitude) in vector {
        if done_halt(basis.live()).is_some() {
            total = total
                .add(amplitude.norm_sq().ok_or(SemanticsError::Capacity)?)
                .ok_or(SemanticsError::Capacity)?;
        }
    }
    Ok(total)
}

pub fn error_mass(vector: &Superposition) -> Result<Amp, SemanticsError> {
    let mut total = Amp::ZERO;
    for (basis, amplitude) in vector {
        if matches!(
            basis.live(),
            NfState::Done {
                terminal: NfTerminal::Error { .. },
                ..
            }
        ) {
            total = total
                .add(amplitude.norm_sq().ok_or(SemanticsError::Capacity)?)
                .ok_or(SemanticsError::Capacity)?;
        }
    }
    Ok(total)
}

pub fn running_mass(vector: &Superposition) -> Result<Amp, SemanticsError> {
    let mut total = Amp::ZERO;
    for (basis, amplitude) in vector {
        if !matches!(basis.live(), NfState::Done { .. }) {
            total = total
                .add(amplitude.norm_sq().ok_or(SemanticsError::Capacity)?)
                .ok_or(SemanticsError::Capacity)?;
        }
    }
    Ok(total)
}

pub fn mu_p(sector: &Sector, transitions: u64) -> Result<Amp, SemanticsError> {
    halt_mass(&evolve(sector, transitions)?)
}

pub fn mu_approximants(
    sector: &Sector,
    transitions: u64,
) -> Result<Vec<(u64, Amp)>, SemanticsError> {
    let mut vector = initial_vector(sector);
    let mut out = vec![(0, halt_mass(&vector)?)];
    for time in 1..=transitions {
        vector = u(sector, &vector)?;
        out.push((time, halt_mass(&vector)?));
    }
    Ok(out)
}

#[derive(Clone, Debug, PartialEq, Eq, Hash)]
struct TraceBlock {
    garbage: TerminalGarbage,
    tick: u64,
    history: Option<History>,
}

pub fn rho(vector: &Superposition) -> Result<DensityMatrix, SemanticsError> {
    let mut blocks: HashMap<TraceBlock, HashMap<Nf, Amp>> = HashMap::new();
    for (basis, amplitude) in vector {
        let (live, history) = match basis {
            BasisState::Admitted(live) => (live, None),
            BasisState::Conservative(state) => (state.live(), Some(state.history.clone())),
        };
        let Some((output, garbage, tick)) = done_halt(live) else {
            continue;
        };
        let block = blocks
            .entry(TraceBlock {
                garbage: garbage.clone(),
                tick,
                history,
            })
            .or_default();
        let value = block.entry(output.clone()).or_insert(Amp::ZERO);
        *value = value.add(*amplitude).ok_or(SemanticsError::Capacity)?;
    }
    let mut matrix = HashMap::new();
    for block in blocks.values() {
        for (left, left_amplitude) in block {
            for (right, right_amplitude) in block {
                let entry = left_amplitude
                    .mul(right_amplitude.conj().ok_or(SemanticsError::Capacity)?)
                    .ok_or(SemanticsError::Capacity)?;
                let value = matrix
                    .entry((left.clone(), right.clone()))
                    .or_insert(Amp::ZERO);
                *value = value.add(entry).ok_or(SemanticsError::Capacity)?;
            }
        }
    }
    matrix.retain(|_, value| !value.is_zero());
    Ok(matrix)
}

pub fn rho_p(sector: &Sector, transitions: u64) -> Result<DensityMatrix, SemanticsError> {
    rho(&evolve(sector, transitions)?)
}

pub fn rho_approximants(
    sector: &Sector,
    transitions: u64,
) -> Result<Vec<(u64, DensityMatrix)>, SemanticsError> {
    let mut vector = initial_vector(sector);
    let mut out = vec![(0, rho(&vector)?)];
    for time in 1..=transitions {
        vector = u(sector, &vector)?;
        out.push((time, rho(&vector)?));
    }
    Ok(out)
}

/// Finite directed approximant.  Runtime amplitudes remain `Amp`; Kraft
/// weighting and cross-program accumulation cross explicitly into the wider
/// `ExactSum` layer. Callers own the prefix-free, duplicate-free program list;
/// this low-level exact accumulator does not infer a code family from terms.
#[derive(Debug)]
pub struct FiniteApproximation {
    pub matrix: HashMap<(Nf, Nf), ExactSum>,
    pub omega_qalc: ExactSum,
}

/// Cross one runtime scalar into the exact Kraft accumulator at weight
/// `2^-bit_length`.  Census callers supply the original prefix-program length;
/// invocation gates are convention, not program bits.
pub fn kraft_weight(value: Amp, bit_length: u32) -> Option<crate::quantum::scalar::Dw> {
    (bit_length <= crate::quantum::scalar::K_CAP_ACCUM / 2)
        .then(|| value.into_dw().div_pow2(bit_length))?
}

pub fn finite_m(
    programs: &[(u32, Sector)],
    transitions: u64,
) -> Result<FiniteApproximation, SemanticsError> {
    let mut matrix: HashMap<(Nf, Nf), ExactSum> = HashMap::new();
    let mut omega = ExactSum::ZERO;
    for (bit_length, sector) in programs {
        let vector = evolve(sector, transitions)?;
        omega.add(kraft_weight(halt_mass(&vector)?, *bit_length));
        if !omega.is_exact() {
            return Err(SemanticsError::Capacity);
        }
        for (coordinate, value) in rho(&vector)? {
            let sum = matrix.entry(coordinate).or_insert(ExactSum::ZERO);
            sum.add(kraft_weight(value, *bit_length));
            if !sum.is_exact() {
                return Err(SemanticsError::Capacity);
            }
        }
    }
    matrix.retain(|_, sum| sum.value().is_some_and(|value| !value.is_zero()));
    Ok(FiniteApproximation {
        matrix,
        omega_qalc: omega,
    })
}

/// Mathematical spelling retained as a public alias beside idiomatic Rust
/// `finite_m`.
pub use finite_m as finite_M;

pub fn omega_qalc_approximant(
    programs: &[(u32, Sector)],
    transitions: u64,
) -> Result<ExactSum, SemanticsError> {
    Ok(finite_m(programs, transitions)?.omega_qalc)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::qalc::wire::parse_fixtures;

    fn lam(term: Term) -> Term {
        Term::Lam(Box::new(term))
    }
    fn app(function: Term, argument: Term) -> Term {
        Term::App(Box::new(function), Box::new(argument))
    }

    fn pinned(name: &str) -> Term {
        parse_fixtures(include_str!("admission_pins.qfx"))
            .unwrap()
            .programs
            .into_iter()
            .find(|fixture| fixture.name == name)
            .unwrap()
            .term
    }

    fn to_absorption(sector: &Sector, max_steps: u64) -> (u64, Superposition) {
        let mut vector = initial_vector(sector);
        for time in 0..=max_steps {
            if vector
                .iter()
                .all(|(basis, _)| matches!(basis.live(), NfState::Done { .. }))
            {
                return (time, vector);
            }
            vector = u(sector, &vector).unwrap();
        }
        panic!("sector did not absorb");
    }

    #[test]
    fn total_selection_and_conservative_predecessor_are_live() {
        let omega_body = app(Term::Var(1), Term::Var(1));
        let omega = app(lam(omega_body.clone()), lam(omega_body));
        let h_omega = app(
            app(
                lam(lam(app(Term::Var(2), omega))),
                Term::Gate(crate::qalc::term::GateName::H),
            ),
            Term::Gate(crate::qalc::term::GateName::T),
        );
        let sector = select(h_omega);
        assert_eq!(sector.selection_kind(), SelectionKind::Conservative);
        let mut vector = initial_vector(&sector);
        for _ in 0..64 {
            let next = u(&sector, &vector).unwrap();
            for (basis, _) in &next {
                assert!(vector
                    .iter()
                    .any(
                        |(source, _)| conservative_predecessor(&sector, basis).unwrap() == *source
                    ));
            }
            vector = next;
        }

        // A known H sector forced through fallback keeps its siblings on one
        // shared exact predecessor coordinate.
        let forced = Sector::forced_conservative(pinned("lone"));
        let mut vector = initial_vector(&forced);
        for _ in 0..64 {
            let next = u(&forced, &vector).unwrap();
            if next.len() == 2 {
                let BasisState::Conservative(left) = &next[0].0 else {
                    unreachable!()
                };
                let BasisState::Conservative(right) = &next[1].0 else {
                    unreachable!()
                };
                assert!(left.history.shares_tail(&right.history));
                assert_eq!(
                    conservative_predecessor(&forced, &next[0].0).unwrap(),
                    conservative_predecessor(&forced, &next[1].0).unwrap()
                );
                return;
            }
            vector = next;
        }
        panic!("forced fallback never fired H");
    }

    #[test]
    fn persistent_history_is_content_keyed_and_depth_safe() {
        let live = nf_init();
        let mut left = History::default();
        let mut right = History::default();
        for _ in 0..4_096 {
            left = left.append(&live);
            right = right.append(&live);
        }
        assert_eq!(left, right);
        let mut set = HashSet::new();
        set.insert(left);
        assert!(set.contains(&right));
    }

    #[test]
    fn semantic_objects_and_kraft_layer_are_exact() {
        let identity = select(lam(Term::Var(1)));
        assert_eq!(identity.selection_kind(), SelectionKind::ValidatedGate1);
        let (time, vector) = to_absorption(&identity, 32);
        assert_eq!(halt_mass(&vector).unwrap(), Amp::ONE);
        let matrix = rho(&vector).unwrap();
        let trace = matrix
            .iter()
            .filter(|((left, right), _)| left == right)
            .try_fold(Amp::ZERO, |sum, (_, value)| sum.add(*value))
            .unwrap();
        assert_eq!(trace, Amp::ONE);
        let finite = finite_m(&[(2, identity.clone())], time).unwrap();
        let omega = finite.omega_qalc.value().unwrap().reduce();
        assert_eq!(
            (omega.a, omega.b, omega.c, omega.d, omega.k),
            (1, 0, 0, 0, 4)
        );
        assert_eq!(
            omega_qalc_approximant(&[(2, identity)], time)
                .unwrap()
                .value()
                .unwrap()
                .reduce(),
            omega
        );
    }

    #[test]
    fn four_bit_classical_wrapper_has_exact_rank_one_contribution() {
        // W(p) = lambda h. lambda t. p is the constant-overhead classical
        // corner of M.  Pin the wire accounting and one complete semantic
        // contribution together: p = I has four bits, W(p) has eight, and
        // W(p) h t returns |I><I| with Kraft weight 2^-8.
        let program = crate::blc::lam(crate::blc::var(1));
        let wrapped = crate::blc::lam(crate::blc::lam(program.clone()));
        assert_eq!(wrapped.bit_size(), program.bit_size() + 4);
        assert_eq!(wrapped.to_bits(), format!("0000{}", program.to_bits()));

        let invoked = super::super::term::invoke_ht(super::super::term::from_blc(&wrapped));
        let sector = select(invoked);
        let (time, vector) = to_absorption(&sector, 64);
        assert_eq!(halt_mass(&vector).unwrap(), Amp::ONE);
        assert_eq!(error_mass(&vector).unwrap(), Amp::ZERO);

        let output = Nf::Lam(Arc::new(Nf::Var(1)));
        assert_eq!(
            rho(&vector).unwrap(),
            HashMap::from([((output.clone(), output.clone()), Amp::ONE)])
        );

        let finite = finite_m(&[(wrapped.bit_size() as u32, sector)], time).unwrap();
        let omega = finite.omega_qalc.value().unwrap().reduce();
        assert_eq!(
            (omega.a, omega.b, omega.c, omega.d, omega.k),
            (1, 0, 0, 0, 16)
        );
        assert_eq!(
            finite
                .matrix
                .get(&(output.clone(), output))
                .and_then(ExactSum::value)
                .map(|value| value.reduce()),
            Some(omega)
        );
    }

    #[test]
    fn public_u_runs_the_structural_gate2_machine() {
        use crate::qalc::compiler::{compile_circuit, Circuit, Op};

        let circuit = Circuit::new(2, vec![Op::h(0), Op::cx(0, 1), Op::t(1)]).unwrap();
        let compiled = compile_circuit(&circuit).unwrap();
        let sector = select(compiled.term);
        assert_eq!(sector.selection_kind(), SelectionKind::StructuralGate2);
        assert_eq!(sector.structural_admission().unwrap().circuit(), &circuit);
        let (_, vector) = to_absorption(&sector, 2_000);
        assert_eq!(norm(&vector).unwrap(), Amp::ONE);
        assert_eq!(halt_mass(&vector).unwrap(), Amp::ONE);
        assert_eq!(error_mass(&vector).unwrap(), Amp::ZERO);
    }

    #[test]
    fn structural_selector_has_no_syntax_depth_cliff() {
        use crate::qalc::compiler::{compile_circuit, Circuit, Op};

        let circuit = Circuit::new(1, vec![Op::h(0); 100]).unwrap();
        let compiled = compile_circuit(&circuit).unwrap();
        let mut maximum = 0usize;
        let mut stack = vec![(&compiled.term, 0usize)];
        while let Some((node, depth)) = stack.pop() {
            maximum = maximum.max(depth);
            match node {
                Term::Var(_) | Term::Gate(_) => {}
                Term::Lam(body) => stack.push((body, depth + 1)),
                Term::App(function, argument) => {
                    stack.push((function, depth + 1));
                    stack.push((argument, depth + 1));
                }
            }
        }
        assert!(maximum > 256);
        assert_eq!(
            select(compiled.term).selection_kind(),
            SelectionKind::StructuralGate2
        );
    }

    #[test]
    fn nine_clause_quantum_witness_surface() {
        let zero = Nf::Lam(Arc::new(Nf::Lam(Arc::new(Nf::Var(2)))));
        for name in ["HH", "HNH"] {
            let sector = select(pinned(name));
            let (_, vector) = to_absorption(&sector, 256);
            assert_eq!(halt_mass(&vector).unwrap(), Amp::ONE, "{name}");
            assert!(vector.iter().all(|(basis, amplitude)| {
                matches!(basis.live(), NfState::Done {
                    terminal: NfTerminal::Halt { output, .. }, ..
                } if output == &zero)
                    && !amplitude.is_zero()
            }));
        }

        let lone = select(pinned("lone"));
        let (_, lone_final) = to_absorption(&lone, 256);
        let lone_rho = rho(&lone_final).unwrap();
        assert_eq!(lone_rho.len(), 4, "lone H keeps the coherent 2x2 block");

        let selector = select(pinned("selector"));
        let (_, selector_final) = to_absorption(&selector, 256);
        assert_eq!(rho(&selector_final).unwrap().len(), 2);

        let negative = select(pinned("negative"));
        let (_, negative_final) = to_absorption(&negative, 256);
        let halted: Vec<_> = negative_final
            .iter()
            .filter(|(basis, amplitude)| done_halt(basis.live()).is_some() && !amplitude.is_zero())
            .collect();
        assert_eq!(halted.len(), 2);
        assert_ne!(
            halted[0].0, halted[1].0,
            "noninjective outputs retain orthogonal garbage"
        );
        let outputs: HashSet<_> = halted
            .iter()
            .map(|(basis, _)| done_halt(basis.live()).unwrap().0.clone())
            .collect();
        assert_eq!(outputs.len(), 1, "both negative branches may output I");
    }

    #[test]
    fn norm_and_mu_are_exact_at_every_transition_on_the_frozen_suite() {
        let fixtures = parse_fixtures(include_str!("admission_pins.qfx")).unwrap();
        let mut transitions = 0u64;
        for fixture in fixtures.programs {
            let sector = select(fixture.term);
            assert!(sector.is_admitted(), "{}", fixture.name);
            let mut vector = initial_vector(&sector);
            let mut prior_mu = Amp::ZERO;
            for _ in 0..512 {
                assert_eq!(norm(&vector).unwrap(), Amp::ONE, "{}", fixture.name);
                let mu = halt_mass(&vector).unwrap();
                let classified = mu
                    .add(error_mass(&vector).unwrap())
                    .and_then(|mass| mass.add(running_mass(&vector).unwrap()))
                    .unwrap();
                assert_eq!(classified, Amp::ONE, "{}", fixture.name);
                assert!(
                    mu.sub(prior_mu)
                        .and_then(|difference| difference.into_dw().try_sign_real())
                        .is_some_and(|sign| sign >= 0),
                    "{}: mu decreased",
                    fixture.name
                );
                prior_mu = mu;
                if vector
                    .iter()
                    .all(|(basis, _)| matches!(basis.live(), NfState::Done { .. }))
                {
                    break;
                }
                vector = u(&sector, &vector).unwrap();
                transitions += 1;
            }
            assert!(
                vector
                    .iter()
                    .all(|(basis, _)| matches!(basis.live(), NfState::Done { .. })),
                "{}",
                fixture.name
            );
        }
        assert_eq!(transitions, 2_361);
    }
}
