//! Total Gate-1 finite-carrier admission.
//!
//! Certificate discovery deliberately stays in Python/lab.  Rust embeds the
//! twenty frozen candidates exported from the authoritative kernel fixtures,
//! validates the matching candidate from scratch, then independently tries
//! the no-erasure candidate if needed.  An arbitrary term has only the latter
//! checked attempt.  Every cap, defect, or failed obligation is rejection;
//! `semantics::select` turns rejection into conservative-history dynamics.

use std::collections::{HashMap, HashSet, VecDeque};
use std::sync::{Arc, OnceLock};
use std::time::{Duration, Instant};

use super::kernel::{init_state, step as kernel_step};
use super::mark::{Frame, GateTag, KdKey, KsHead, LogEntry, Lp, RetainCargo, TapeEntry};
use super::readback::{nf_carrier_and_columns, nf_gram_from_carrier, NfError};
use super::state::{KState, Nf, NfState, NfTerminal, RunCore, Vert};
use super::term::{Dir, GateName, Path, Term};
use super::wf::{check as check_wf, kernel_projection};
use super::wire::{nf_state_bytes, parse_fixtures, CertEntries};

pub const CANONICAL_STATE_CAP: usize = 300_000;
const SYNTAX_DEPTH_CAP: usize = 256;
const PURE_REDUCTION_CAP: usize = 20_000;
const NORMALIZER_DEPTH_CAP: usize = 512;

/// Aggregate wall time spent in the independently checked Gate-1 admission
/// phases. Summing this per-program telemetry across rayon workers gives
/// worker-seconds rather than sweep wall time; it is diagnostic only and is
/// never part of sector identity or a checkpoint.
#[derive(Clone, Copy, Debug, Default)]
pub struct AdmissionTelemetry {
    pub attempts: u64,
    pub carrier: Duration,
    pub gram: Duration,
    pub obligations: Duration,
    pub rri: Duration,
    pub digest: Duration,
}

impl AdmissionTelemetry {
    pub fn merge(&mut self, other: Self) {
        self.attempts += other.attempts;
        self.carrier += other.carrier;
        self.gram += other.gram;
        self.obligations += other.obligations;
        self.rri += other.rri;
        self.digest += other.digest;
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Gate1Admission {
    certificate: Option<CertEntries>,
    basis: usize,
    rust_wire_digest: String,
}

impl Gate1Admission {
    pub fn certificate(&self) -> Option<&CertEntries> {
        self.certificate.as_ref()
    }

    pub fn uses_no_erasure(&self) -> bool {
        self.certificate.is_none()
    }

    pub fn basis(&self) -> usize {
        self.basis
    }

    /// SHA-256 of sorted Rust qfx state encodings. This is local telemetry,
    /// not Python's separately formatted `repr` carrier digest.
    pub fn rust_wire_digest(&self) -> &str {
        &self.rust_wire_digest
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct AdmissionReport {
    pub certified: bool,
    pub basis: usize,
    pub wf_violations: usize,
    pub transparency_violations: usize,
    pub vacuous_positions: usize,
    pub vacuous_keys: usize,
    pub range_violations: usize,
    pub adapter_errors: usize,
    /// Reachable typed semantic-error states. These are valid invariant
    /// sectors; only adapter/pop/stuck errors reject admission.
    pub semantic_error_terminal_states: usize,
    pub output_violations: usize,
    pub pure_output_mismatch: usize,
    pub nonunit: usize,
    pub nonorthogonal: usize,
    pub rri_violations: usize,
    /// SHA-256 of sorted Rust qfx state encodings, including a final newline.
    pub rust_wire_digest: String,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum AdmissionError {
    Machine(NfError),
    InvalidTerm,
    MalformedCertificate,
}

impl From<NfError> for AdmissionError {
    fn from(value: NfError) -> Self {
        Self::Machine(value)
    }
}

#[derive(Clone)]
struct Arrival {
    slot: u8,
    cargo: RetainCargo,
    tail: Vec<TapeEntry>,
    log: Vec<LogEntry>,
    frames: Vec<Frame>,
    storage: Vec<KsHead>,
}

fn arrival(core: &RunCore) -> Option<(u8, RetainCargo, Vec<TapeEntry>)> {
    fn cargo(entry: &TapeEntry) -> Option<RetainCargo> {
        match entry {
            TapeEntry::Lp(lp) => Some(RetainCargo::Lp(lp.clone())),
            TapeEntry::Alpha(alpha) => Some(RetainCargo::Alpha(alpha.clone())),
            _ => None,
        }
    }
    match core.tape.as_slice() {
        [head, TapeEntry::Mu(_), tail @ ..] => Some((0, cargo(head)?, tail.to_vec())),
        [TapeEntry::Bullet, head, TapeEntry::Mu(_), tail @ ..] => {
            Some((1, cargo(head)?, tail.to_vec()))
        }
        _ => None,
    }
}

fn add_alpha_bits_log(entry: &LogEntry, bits: &mut HashMap<KdKey, HashSet<u8>>) {
    let mut stack = vec![entry];
    while let Some(entry) = stack.pop() {
        match entry {
            LogEntry::Alpha(alpha) => {
                bits.entry(KdKey {
                    gate: alpha.gate,
                    instance: alpha.instance.clone(),
                })
                .or_default()
                .insert(alpha.bit);
            }
            LogEntry::Lp(lp) => stack.extend(lp.slice.iter()),
            _ => {}
        }
    }
}

fn add_live_keys_log(entry: &LogEntry, out: &mut HashSet<KdKey>) {
    let mut bits = HashMap::new();
    add_alpha_bits_log(entry, &mut bits);
    out.extend(bits.into_keys());
}

fn add_live_keys_tape(entry: &TapeEntry, out: &mut HashSet<KdKey>) {
    match entry {
        TapeEntry::Alpha(alpha) => {
            out.insert(KdKey {
                gate: alpha.gate,
                instance: alpha.instance.clone(),
            });
        }
        TapeEntry::Lp(lp) => {
            for entry in &lp.slice {
                add_live_keys_log(entry, out);
            }
        }
        _ => {}
    }
}

fn add_live_keys_cargo(cargo: &RetainCargo, out: &mut HashSet<KdKey>) {
    match cargo {
        RetainCargo::Alpha(alpha) => {
            out.insert(KdKey {
                gate: alpha.gate,
                instance: alpha.instance.clone(),
            });
        }
        RetainCargo::Lp(lp) => {
            for entry in &lp.slice {
                add_live_keys_log(entry, out);
            }
        }
    }
}

fn gamma_free(cargo: &RetainCargo) -> bool {
    let RetainCargo::Lp(lp) = cargo else {
        return true;
    };
    let mut stack: Vec<&LogEntry> = lp.slice.iter().collect();
    while let Some(entry) = stack.pop() {
        match entry {
            LogEntry::Gam(_) => return false,
            LogEntry::Lp(lp) => stack.extend(lp.slice.iter()),
            _ => {}
        }
    }
    true
}

fn erased_keys(arrival: &Arrival, popped: &[Frame], retained: &[Frame]) -> HashSet<KdKey> {
    let mut out = HashSet::new();
    add_live_keys_cargo(&arrival.cargo, &mut out);
    out.extend(popped.iter().map(|frame| KdKey {
        gate: frame.gate,
        instance: frame.instance.clone(),
    }));
    for frame in retained {
        out.remove(&KdKey {
            gate: frame.gate,
            instance: frame.instance.clone(),
        });
    }
    for entry in &arrival.storage {
        if let KsHead::RetainWhole(cargo) = entry {
            let mut buried = HashSet::new();
            add_live_keys_cargo(cargo, &mut buried);
            for key in buried {
                out.remove(&key);
            }
        }
    }
    for entry in &arrival.tail {
        let mut live = HashSet::new();
        add_live_keys_tape(entry, &mut live);
        for key in live {
            out.remove(&key);
        }
    }
    for entry in &arrival.log {
        let mut live = HashSet::new();
        add_live_keys_log(entry, &mut live);
        for key in live {
            out.remove(&key);
        }
    }
    out
}

fn transparent(arrivals: &[Arrival], popkeys: &[KdKey]) -> bool {
    type FibreKey = (u8, Vec<TapeEntry>, Vec<LogEntry>, Vec<KsHead>, Vec<Frame>);
    type FibreValue = (RetainCargo, Vec<Frame>);
    type BundleKey = (Vec<TapeEntry>, Vec<LogEntry>, Vec<KsHead>, Vec<Frame>);
    let popset: HashSet<KdKey> = popkeys.iter().cloned().collect();
    let mut has_data = false;
    let mut fibres: HashMap<FibreKey, FibreValue> = HashMap::new();
    let mut bundles: HashMap<BundleKey, HashMap<u8, HashSet<KdKey>>> = HashMap::new();
    for arrival in arrivals {
        if !gamma_free(&arrival.cargo) {
            return false;
        }
        let (popped, retained): (Vec<_>, Vec<_>) =
            arrival.frames.iter().cloned().partition(|frame| {
                popset.contains(&KdKey {
                    gate: frame.gate,
                    instance: frame.instance.clone(),
                })
            });
        if popped.iter().any(|frame| frame.bit != arrival.slot) {
            return false;
        }
        let mut bits = HashMap::new();
        match &arrival.cargo {
            RetainCargo::Alpha(alpha) => {
                bits.entry(KdKey {
                    gate: alpha.gate,
                    instance: alpha.instance.clone(),
                })
                .or_insert_with(HashSet::new)
                .insert(alpha.bit);
            }
            RetainCargo::Lp(lp) => {
                for entry in &lp.slice {
                    add_alpha_bits_log(entry, &mut bits);
                }
            }
        }
        for frame in &arrival.frames {
            bits.entry(KdKey {
                gate: frame.gate,
                instance: frame.instance.clone(),
            })
            .or_insert_with(HashSet::new)
            .insert(frame.bit);
        }
        if bits.values().any(|values| values.len() > 1) {
            return false;
        }
        if !popped.is_empty()
            || !matches!(&arrival.cargo, RetainCargo::Alpha(alpha) if alpha.bit == arrival.slot)
        {
            has_data = true;
        }
        let key = (
            arrival.slot,
            arrival.tail.clone(),
            arrival.log.clone(),
            arrival.storage.clone(),
            retained.clone(),
        );
        let value = (arrival.cargo.clone(), popped.clone());
        if fibres
            .insert(key, value.clone())
            .is_some_and(|old| old != value)
        {
            return false;
        }
        bundles
            .entry((
                arrival.tail.clone(),
                arrival.log.clone(),
                arrival.storage.clone(),
                retained.clone(),
            ))
            .or_default()
            .insert(arrival.slot, erased_keys(arrival, &popped, &retained));
    }
    if bundles
        .values()
        .any(|slots| matches!((slots.get(&0), slots.get(&1)), (Some(a), Some(b)) if a != b))
    {
        return false;
    }
    has_data
}

fn closed_nf(root: &Nf, initial_depth: u64) -> bool {
    enum Mode {
        Closed,
        Neutral,
    }
    let mut stack = vec![(root, initial_depth, Mode::Closed)];
    while let Some((node, depth, mode)) = stack.pop() {
        match (mode, node) {
            (Mode::Closed | Mode::Neutral, Nf::Var(index)) if *index >= 1 && *index <= depth => {}
            (Mode::Closed, Nf::Lam(body)) => {
                let Some(depth) = depth.checked_add(1) else {
                    return false;
                };
                stack.push((body, depth, Mode::Closed));
            }
            (Mode::Closed, Nf::Gate(GateName::H | GateName::T)) => {}
            (Mode::Closed, Nf::App(function, argument))
                if !matches!(function.as_ref(), Nf::Lam(_)) =>
            {
                stack.push((argument, depth, Mode::Closed));
                match function.as_ref() {
                    Nf::Gate(GateName::H | GateName::T) => {
                        stack.push((argument, depth, Mode::Neutral));
                    }
                    Nf::Gate(GateName::C) => return false,
                    _ => stack.push((function, depth, Mode::Closed)),
                }
            }
            (Mode::Neutral, Nf::App(function, argument)) => {
                stack.push((argument, depth, Mode::Closed));
                stack.push((function, depth, Mode::Neutral));
            }
            _ => return false,
        }
    }
    true
}

fn has_gate(term: &Term) -> bool {
    let mut stack = vec![term];
    while let Some(node) = stack.pop() {
        match node {
            Term::Gate(_) => return true,
            Term::Var(_) => {}
            Term::Lam(body) => stack.push(body),
            Term::App(function, argument) => {
                stack.push(argument);
                stack.push(function);
            }
        }
    }
    false
}

fn syntax_within_limit(term: &Term) -> bool {
    let mut stack = vec![(term, 0usize)];
    while let Some((node, depth)) = stack.pop() {
        if depth > SYNTAX_DEPTH_CAP {
            return false;
        }
        match node {
            Term::Var(index) if *index > 0 => {}
            Term::Var(_) => return false,
            Term::Gate(_) => {}
            Term::Lam(body) => stack.push((body, depth + 1)),
            Term::App(function, argument) => {
                stack.push((argument, depth + 1));
                stack.push((function, depth + 1));
            }
        }
    }
    true
}

fn depth_at_most(term: &Term, cap: usize) -> bool {
    let mut stack = vec![(term, 0usize)];
    while let Some((node, depth)) = stack.pop() {
        if depth > cap {
            return false;
        }
        match node {
            Term::Var(_) | Term::Gate(_) => {}
            Term::Lam(body) => stack.push((body, depth + 1)),
            Term::App(function, argument) => {
                stack.push((argument, depth + 1));
                stack.push((function, depth + 1));
            }
        }
    }
    true
}

fn shift(term: &Term, amount: u32, cutoff: u32) -> Option<Term> {
    Some(match term {
        Term::Var(index) if *index > cutoff => Term::Var(index.checked_add(amount)?),
        Term::Var(index) => Term::Var(*index),
        Term::Lam(body) => Term::Lam(Box::new(shift(body, amount, cutoff + 1)?)),
        Term::App(function, argument) => Term::App(
            Box::new(shift(function, amount, cutoff)?),
            Box::new(shift(argument, amount, cutoff)?),
        ),
        Term::Gate(gate) => Term::Gate(*gate),
    })
}

fn substitute_top(body: &Term, argument: &Term, depth: u32) -> Option<Term> {
    Some(match body {
        Term::Var(index) if *index == depth + 1 => shift(argument, depth, 0)?,
        Term::Var(index) if *index > depth + 1 => Term::Var(index - 1),
        Term::Var(index) => Term::Var(*index),
        Term::Lam(inner) => Term::Lam(Box::new(substitute_top(inner, argument, depth + 1)?)),
        Term::App(function, value) => Term::App(
            Box::new(substitute_top(function, argument, depth)?),
            Box::new(substitute_top(value, argument, depth)?),
        ),
        Term::Gate(gate) => Term::Gate(*gate),
    })
}

fn spend(budget: &mut usize) -> Option<()> {
    *budget = budget.checked_sub(1)?;
    Some(())
}

fn whnf(mut term: Term, budget: &mut usize) -> Option<Term> {
    if !depth_at_most(&term, NORMALIZER_DEPTH_CAP) {
        return None;
    }
    loop {
        let Term::App(function, argument) = term else {
            return Some(term);
        };
        let function = whnf(*function, budget)?;
        let Term::Lam(body) = function else {
            return Some(Term::App(Box::new(function), argument));
        };
        spend(budget)?;
        term = substitute_top(&body, &argument, 0)?;
        if !depth_at_most(&term, NORMALIZER_DEPTH_CAP) {
            return None;
        }
    }
}

fn normal_form(term: Term, budget: &mut usize, nesting: usize) -> Option<Term> {
    if nesting > NORMALIZER_DEPTH_CAP || !depth_at_most(&term, NORMALIZER_DEPTH_CAP) {
        return None;
    }
    let child_nesting = nesting.checked_add(1)?;
    let normal = match whnf(term, budget)? {
        Term::Var(index) => Some(Term::Var(index)),
        Term::Gate(gate) => Some(Term::Gate(gate)),
        Term::Lam(body) => Some(Term::Lam(Box::new(normal_form(
            *body,
            budget,
            child_nesting,
        )?))),
        Term::App(function, argument) => Some(Term::App(
            Box::new(normal_form(*function, budget, child_nesting)?),
            Box::new(normal_form(*argument, budget, child_nesting)?),
        )),
    }?;
    depth_at_most(&normal, NORMALIZER_DEPTH_CAP).then_some(normal)
}

fn term_as_nf(term: &Term) -> Option<Nf> {
    enum Action<'a> {
        Visit(&'a Term),
        Lam,
        App,
    }
    let mut actions = vec![Action::Visit(term)];
    let mut values = Vec::new();
    while let Some(action) = actions.pop() {
        match action {
            Action::Visit(Term::Var(index)) => values.push(Nf::Var(u64::from(*index))),
            Action::Visit(Term::Gate(gate)) => values.push(Nf::Gate(*gate)),
            Action::Visit(Term::Lam(body)) => {
                actions.push(Action::Lam);
                actions.push(Action::Visit(body));
            }
            Action::Visit(Term::App(function, argument)) => {
                actions.push(Action::App);
                actions.push(Action::Visit(argument));
                actions.push(Action::Visit(function));
            }
            Action::Lam => {
                let body = values.pop()?;
                values.push(Nf::Lam(Arc::new(body)));
            }
            Action::App => {
                let argument = values.pop()?;
                let function = values.pop()?;
                values.push(Nf::App(Arc::new(function), Arc::new(argument)));
            }
        }
    }
    let value = values.pop()?;
    values.is_empty().then_some(value)
}

#[derive(Clone, Debug, PartialEq, Eq, Hash)]
struct RecallProjection {
    path: Path,
    d: Vert,
    log: Vec<LogEntry>,
    tape: Vec<TapeEntry>,
    rs: Vec<Frame>,
    ks: Vec<KsHead>,
}

type RecallKey = (GateTag, Lp, u8);

fn recall_view(state: &KState) -> Option<(RecallKey, bool, RecallProjection)> {
    let KState::Run(core) = state else {
        return None;
    };
    if core.vb.is_some() {
        return None;
    }
    let mut at = 0usize;
    while matches!(core.tape.get(at), Some(TapeEntry::Bullet)) {
        at += 1;
    }
    let Some(TapeEntry::Alpha(alpha)) = core.tape.get(at) else {
        return None;
    };
    let first_epoch = super::mark::Epoch::Recall(Arc::new(super::mark::Epoch::Fresh));
    let matches: Vec<_> = core
        .rs
        .iter()
        .enumerate()
        .filter(|(_, frame)| {
            frame.gate == alpha.gate
                && frame.instance == alpha.instance
                && frame.bit == alpha.bit
                && frame.epoch == first_epoch
        })
        .map(|(index, _)| index)
        .collect();
    if matches.len() > 1 {
        return None;
    }
    let mut rs = core.rs.clone();
    let present = !matches.is_empty();
    if let Some(&index) = matches.first() {
        rs.remove(index);
    }
    Some((
        (alpha.gate, alpha.instance.clone(), alpha.bit),
        present,
        RecallProjection {
            path: core.path.clone(),
            d: core.d,
            log: core.log.clone(),
            tape: core.tape.clone(),
            rs,
            ks: core.ks.clone(),
        },
    ))
}

fn rri_violations(term: &Term, cert: Option<&CertEntries>, state_cap: usize) -> usize {
    let initial = init_state();
    let mut seen = HashSet::from([initial.clone()]);
    let mut queue = VecDeque::from([initial]);
    let mut recalls = Vec::new();
    while let Some(source) = queue.pop_front() {
        let Ok(rows) = kernel_step(term, &source, cert) else {
            return 1;
        };
        let recall_rows: Vec<_> = rows.iter().filter(|row| row.rule == "recall").collect();
        if !recall_rows.is_empty() {
            if rows.len() != 1 || recall_rows.len() != 1 {
                return 1;
            }
            let Some(view) = recall_view(&source) else {
                return 1;
            };
            recalls.push((view, recall_rows[0].state.clone()));
        }
        for row in rows {
            if matches!(&row.state, KState::Done { .. }) || seen.contains(&row.state) {
                continue;
            }
            if seen.len() >= state_cap {
                return 1;
            }
            seen.insert(row.state.clone());
            queue.push_back(row.state);
        }
    }

    // Replay closure independently of the queue bookkeeping, matching
    // rri_direct.py's successor-covered premise rather than trusting that
    // discovery itself could not have skipped a landing.
    for source in &seen {
        let Ok(rows) = kernel_step(term, source, cert) else {
            return 1;
        };
        if rows
            .iter()
            .any(|row| !matches!(&row.state, KState::Done { .. }) && !seen.contains(&row.state))
        {
            return 1;
        }
    }

    let mut projected: HashMap<(RecallKey, RecallProjection), HashSet<bool>> = HashMap::new();
    let mut targets: HashMap<(RecallKey, KState), (HashSet<bool>, HashSet<RecallProjection>)> =
        HashMap::new();
    let mut factored: HashMap<(RecallKey, RecallProjection), HashSet<KState>> = HashMap::new();
    for ((key, present, projection), target) in recalls {
        projected
            .entry((key.clone(), projection.clone()))
            .or_default()
            .insert(present);
        let bucket = targets.entry((key.clone(), target.clone())).or_default();
        bucket.0.insert(present);
        bucket.1.insert(projection.clone());
        factored
            .entry((key, projection))
            .or_default()
            .insert(target);
    }
    projected.values().filter(|phases| phases.len() > 1).count()
        + targets
            .values()
            .filter(|(phases, projections)| phases.len() > 1 || projections.len() > 1)
            .count()
        + factored
            .values()
            .filter(|targets| targets.len() > 1)
            .count()
}

fn rust_wire_digest(states: &[NfState]) -> String {
    let mut rows: Vec<String> = states.iter().map(nf_state_bytes).collect();
    rows.sort();
    let mut bytes = rows.join("\n").into_bytes();
    if !rows.is_empty() {
        bytes.push(b'\n');
    }
    crate::hash::sha256_hex(&bytes)
}

fn certificate_well_formed(certificate: &CertEntries) -> bool {
    let mut positions = HashSet::new();
    certificate.iter().all(|(position, keys)| {
        positions.insert(position) && keys.iter().collect::<HashSet<_>>().len() == keys.len()
    })
}

pub fn validate(
    term: &Term,
    certificate: Option<&CertEntries>,
    state_cap: usize,
) -> Result<AdmissionReport, AdmissionError> {
    validate_profiled(term, certificate, state_cap).0
}

fn validate_profiled(
    term: &Term,
    certificate: Option<&CertEntries>,
    state_cap: usize,
) -> (Result<AdmissionReport, AdmissionError>, AdmissionTelemetry) {
    let mut telemetry = AdmissionTelemetry {
        attempts: 1,
        ..AdmissionTelemetry::default()
    };
    let result = validate_inner(term, certificate, state_cap, &mut telemetry);
    (result, telemetry)
}

fn validate_inner(
    term: &Term,
    certificate: Option<&CertEntries>,
    state_cap: usize,
    telemetry: &mut AdmissionTelemetry,
) -> Result<AdmissionReport, AdmissionError> {
    if !syntax_within_limit(term) {
        return Err(AdmissionError::InvalidTerm);
    }
    if certificate.is_some_and(|certificate| !certificate_well_formed(certificate)) {
        return Err(AdmissionError::MalformedCertificate);
    }
    let started = Instant::now();
    let carrier_result = nf_carrier_and_columns(term, certificate, 2, state_cap);
    telemetry.carrier += started.elapsed();
    let carrier = carrier_result?;
    let started = Instant::now();
    let gram_result = nf_gram_from_carrier(&carrier);
    telemetry.gram += started.elapsed();
    let gram = gram_result?;

    let obligations_started = Instant::now();
    let mut arrivals: HashMap<Vec<Dir>, Vec<Arrival>> = HashMap::new();
    let mut wf_violations = 0usize;
    for state in &carrier.order {
        let NfState::Run(run) = state else {
            continue;
        };
        let core = kernel_projection(&run.token);
        wf_violations += usize::from(!check_wf(term, &core).is_empty());
        if core.vb.is_none()
            && core.path.last() == Some(&Dir::A)
            && core.d == Vert::U
            && matches!(core.log.first(), Some(LogEntry::Gam(_)))
        {
            if let Some((slot, cargo, tail)) = arrival(&core) {
                arrivals
                    .entry(core.path.clone())
                    .or_default()
                    .push(Arrival {
                        slot,
                        cargo,
                        tail,
                        log: core.log,
                        frames: core.rs,
                        storage: core.ks,
                    });
            }
        }
    }

    let mut transparency_violations = 0usize;
    let mut vacuous_positions = 0usize;
    let mut vacuous_keys = 0usize;
    if let Some(certificate) = certificate {
        for (position, keys) in certificate {
            let Some(here) = arrivals.get(position) else {
                vacuous_positions += 1;
                continue;
            };
            transparency_violations += usize::from(!transparent(here, keys));
            for key in keys {
                if !here.iter().any(|arrival| {
                    arrival
                        .frames
                        .iter()
                        .any(|frame| frame.gate == key.gate && frame.instance == key.instance)
                }) {
                    vacuous_keys += 1;
                }
            }
        }
    }

    let mut incoming: HashMap<usize, Vec<(usize, &str)>> = HashMap::new();
    let mut adapter_errors = 0usize;
    for (source, rows) in &carrier.columns {
        for (_, rule, target) in rows {
            incoming.entry(*target).or_default().push((*source, rule));
            adapter_errors += usize::from(matches!(
                rule.as_str(),
                "error-pop-err"
                    | "error-stuck"
                    | "error-machine-exception"
                    | "error-invalid-kernel-target"
            ));
        }
    }
    let range_violations = incoming
        .values()
        .filter(|rows| {
            let sources: HashSet<_> = rows.iter().map(|(source, _)| *source).collect();
            sources.len() > 1
                && !(sources.len() == 2 && rows.iter().all(|(_, rule)| *rule == "fire-h"))
        })
        .count();
    let semantic_error_terminal_states = carrier
        .order
        .iter()
        .filter(|state| {
            matches!(
                state,
                NfState::RunDone(NfTerminal::Error { .. })
                    | NfState::Done {
                        terminal: NfTerminal::Error { .. },
                        ..
                    }
            )
        })
        .count();
    let outputs: HashSet<Nf> = carrier
        .order
        .iter()
        .filter_map(|state| match state {
            NfState::RunDone(NfTerminal::Halt { output, .. })
            | NfState::Done {
                terminal: NfTerminal::Halt { output, .. },
                ..
            } => Some(output.clone()),
            _ => None,
        })
        .collect();
    let output_violations = outputs
        .iter()
        .filter(|output| !closed_nf(output, 0))
        .count();
    let pure_output_mismatch = if has_gate(term) {
        0
    } else {
        let mut budget = PURE_REDUCTION_CAP;
        usize::from(
            normal_form(term.clone(), &mut budget, 0)
                .and_then(|normal| term_as_nf(&normal))
                .map(|normal| outputs != HashSet::from([normal]))
                .unwrap_or(true),
        )
    };
    telemetry.obligations += obligations_started.elapsed();
    let started = Instant::now();
    let rri_violations = rri_violations(term, certificate, state_cap.min(100_000));
    telemetry.rri += started.elapsed();
    let certified = wf_violations == 0
        && transparency_violations == 0
        && vacuous_positions == 0
        && vacuous_keys == 0
        && range_violations == 0
        && adapter_errors == 0
        && output_violations == 0
        && pure_output_mismatch == 0
        && gram.nonunit == 0
        && gram.nonorthogonal == 0
        && rri_violations == 0;
    let started = Instant::now();
    let rust_wire_digest = rust_wire_digest(&carrier.order);
    telemetry.digest += started.elapsed();
    Ok(AdmissionReport {
        certified,
        basis: carrier.order.len(),
        wf_violations,
        transparency_violations,
        vacuous_positions,
        vacuous_keys,
        range_violations,
        adapter_errors,
        semantic_error_terminal_states,
        output_violations,
        pure_output_mismatch,
        nonunit: gram.nonunit,
        nonorthogonal: gram.nonorthogonal,
        rri_violations,
        rust_wire_digest,
    })
}

fn pinned_candidates() -> &'static Vec<(Term, Option<CertEntries>)> {
    static PINS: OnceLock<Vec<(Term, Option<CertEntries>)>> = OnceLock::new();
    PINS.get_or_init(|| {
        let fixtures = parse_fixtures(include_str!("admission_pins.qfx"))
            .expect("embedded admission pins are valid qalc-fixtures v1");
        assert_eq!(fixtures.programs.len(), 20);
        fixtures
            .programs
            .into_iter()
            .map(|fixture| (fixture.term, fixture.cert))
            .collect()
    })
}

fn pinned_candidate(term: &Term) -> Option<Option<CertEntries>> {
    pinned_candidates()
        .iter()
        .find(|(candidate, _)| candidate == term)
        .map(|(_, certificate)| certificate.clone())
}

/// Try the deterministic Gate-1 selector.  The result is total: every
/// validation/resource failure is `None`, never an unchecked no-erasure
/// certificate.
pub fn try_admit_with_cap(term: &Term, state_cap: usize) -> Option<Gate1Admission> {
    try_admit_with_cap_profiled(term, state_cap).0
}

/// Admission with explicit performance telemetry for population drivers.
/// The returned verdict is exactly [`try_admit_with_cap`]'s verdict.
pub fn try_admit_with_cap_profiled(
    term: &Term,
    state_cap: usize,
) -> (Option<Gate1Admission>, AdmissionTelemetry) {
    let mut telemetry = AdmissionTelemetry::default();
    if !syntax_within_limit(term) || state_cap == 0 {
        return (None, telemetry);
    }
    let pinned = pinned_candidate(term);
    let mut candidates = Vec::new();
    if let Some(candidate) = pinned {
        candidates.push(candidate);
    }
    if !candidates.iter().any(Option::is_none) {
        candidates.push(None);
    }
    for candidate in candidates {
        let (report, attempt_telemetry) = validate_profiled(term, candidate.as_ref(), state_cap);
        telemetry.merge(attempt_telemetry);
        let Ok(report) = report else {
            continue;
        };
        if report.certified {
            return (
                Some(Gate1Admission {
                    certificate: candidate,
                    basis: report.basis,
                    rust_wire_digest: report.rust_wire_digest,
                }),
                telemetry,
            );
        }
    }
    (None, telemetry)
}

/// Cheap first-candidate probe for a population scheduler. A successful
/// report is a complete admission and can be used directly. Any failure is
/// deliberately inconclusive: the canonical selector must retry at its full
/// cap and, for a pinned term, retain the normal candidate priority/fallback.
pub fn try_admit_probe_with_cap_profiled(
    term: &Term,
    state_cap: usize,
) -> (Option<Gate1Admission>, AdmissionTelemetry) {
    if !syntax_within_limit(term) || state_cap == 0 {
        return (None, AdmissionTelemetry::default());
    }
    let candidate = pinned_candidate(term).unwrap_or(None);
    let (report, telemetry) = validate_profiled(term, candidate.as_ref(), state_cap);
    let admission = report
        .ok()
        .filter(|report| report.certified)
        .map(|report| Gate1Admission {
            certificate: candidate,
            basis: report.basis,
            rust_wire_digest: report.rust_wire_digest,
        });
    (admission, telemetry)
}

pub fn try_admit(term: &Term) -> Option<Gate1Admission> {
    try_admit_with_cap(term, CANONICAL_STATE_CAP)
}

pub fn try_admit_profiled(term: &Term) -> (Option<Gate1Admission>, AdmissionTelemetry) {
    try_admit_with_cap_profiled(term, CANONICAL_STATE_CAP)
}

#[cfg(test)]
mod tests {
    use super::*;

    fn lam(term: Term) -> Term {
        Term::Lam(Box::new(term))
    }
    fn app(function: Term, argument: Term) -> Term {
        Term::App(Box::new(function), Box::new(argument))
    }

    #[test]
    fn all_frozen_candidates_are_revalidated_and_match_their_metadata() {
        let fixtures = parse_fixtures(include_str!("admission_pins.qfx")).unwrap();
        assert_eq!(fixtures.programs.len(), 20);
        for fixture in fixtures.programs {
            let report =
                validate(&fixture.term, fixture.cert.as_ref(), CANONICAL_STATE_CAP).unwrap();
            assert!(report.certified, "{}: {report:?}", fixture.name);
            let admission = try_admit(&fixture.term).expect("canonical candidate admits");
            assert_eq!(
                admission.certificate(),
                fixture.cert.as_ref(),
                "{}",
                fixture.name
            );
            assert!(admission.basis() > 0);
            assert_eq!(admission.rust_wire_digest().len(), 64);
        }
    }

    #[test]
    fn embedded_candidates_match_the_authoritative_fixture_sources() {
        let fixture_root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/qalc");
        if !fixture_root.is_dir() {
            // The published crate intentionally excludes repository evidence.
            return;
        }
        let embedded = parse_fixtures(include_str!("admission_pins.qfx")).unwrap();
        for fixture in embedded.programs {
            let source =
                std::fs::read_to_string(fixture_root.join(format!("{}.qfx", fixture.name)))
                    .unwrap();
            let source = parse_fixtures(&source).unwrap();
            assert_eq!(source.programs.len(), 1, "{}", fixture.name);
            assert_eq!(source.programs[0].term, fixture.term, "{}", fixture.name);
            assert_eq!(source.programs[0].cert, fixture.cert, "{}", fixture.name);
        }
    }

    #[test]
    fn cap_failure_is_rejection_while_a_pure_identity_admits() {
        let identity = lam(Term::Var(1));
        let admission = try_admit(&identity).expect("identity admits");
        assert!(admission.uses_no_erasure());

        let omega_body = app(Term::Var(1), Term::Var(1));
        let omega = app(lam(omega_body.clone()), lam(omega_body));
        let h_omega = app(
            app(lam(lam(app(Term::Var(2), omega))), Term::Gate(GateName::H)),
            Term::Gate(GateName::T),
        );
        assert!(try_admit_with_cap(&h_omega, 20_000).is_none());
    }

    #[test]
    fn carrier_derived_gram_matches_independent_walk() {
        let identity = lam(Term::Var(1));
        let carrier = nf_carrier_and_columns(&identity, None, 2, 10_000).unwrap();
        let derived = nf_gram_from_carrier(&carrier).unwrap();
        let independent = super::super::readback::nf_gram(&identity, None, 2, 10_000).unwrap();
        assert_eq!(
            (derived.basis, derived.nonunit, derived.nonorthogonal),
            (
                independent.basis,
                independent.nonunit,
                independent.nonorthogonal
            )
        );
    }

    #[test]
    fn successful_probe_is_the_canonical_admission() {
        let identity = lam(Term::Var(1));
        let (probe, _) = try_admit_probe_with_cap_profiled(&identity, 1_000);
        assert_eq!(probe, try_admit(&identity));
    }

    #[test]
    fn a_ghost_certificate_is_not_laundered() {
        let (term, certificate) = pinned_candidates()
            .iter()
            .find(|(_, certificate)| certificate.is_some())
            .unwrap();
        let mut corrupted = certificate.clone().unwrap();
        corrupted.push((vec![Dir::A], vec![]));
        let report = validate(term, Some(&corrupted), CANONICAL_STATE_CAP).unwrap();
        assert!(!report.certified);
        assert!(report.vacuous_positions > 0);
    }

    #[test]
    fn duplicate_certificate_coordinates_are_refused() {
        let (term, certificate) = pinned_candidates()
            .iter()
            .find(|(_, certificate)| certificate.is_some())
            .unwrap();
        let mut duplicate = certificate.clone().unwrap();
        duplicate.push(duplicate[0].clone());
        assert_eq!(
            validate(term, Some(&duplicate), CANONICAL_STATE_CAP),
            Err(AdmissionError::MalformedCertificate)
        );
    }

    #[test]
    fn deep_gate1_terms_reject_before_recursive_normalization() {
        let mut deep = Term::Var(1);
        for _ in 0..300 {
            deep = lam(deep);
        }
        assert_eq!(
            validate(&deep, None, CANONICAL_STATE_CAP),
            Err(AdmissionError::InvalidTerm)
        );
        assert!(try_admit(&deep).is_none());
    }

    #[test]
    fn normalizer_nesting_cap_is_a_typed_rejection() {
        let two = lam(lam(app(Term::Var(2), app(Term::Var(2), Term::Var(1)))));
        let explosive = app(app(app(two.clone(), two.clone()), two.clone()), two);
        let mut budget = PURE_REDUCTION_CAP;
        assert!(normal_form(explosive, &mut budget, 0).is_none());
    }

    fn closed_terms(size: usize, depth: u32) -> Vec<Term> {
        let mut terms = Vec::new();
        if size == 1 {
            terms.extend((1..=depth).map(Term::Var));
        }
        if size >= 2 {
            terms.extend(closed_terms(size - 1, depth + 1).into_iter().map(lam));
        }
        for function_size in 1..size.saturating_sub(1) {
            let argument_size = size - 1 - function_size;
            for function in closed_terms(function_size, depth) {
                for argument in closed_terms(argument_size, depth) {
                    terms.push(app(function.clone(), argument));
                }
            }
        }
        terms
    }

    #[test]
    fn effect_free_terms_match_independent_normalization_on_the_covered_range() {
        let mut checked = 0usize;
        let mut invoked_effect_free = 0usize;
        for size in 2..=7 {
            for pure in closed_terms(size, 0) {
                let term = pure.clone();
                let report = validate(&term, None, 10_000).unwrap();
                assert!(report.certified, "size={size}: {report:?}");
                assert_eq!(report.pure_output_mismatch, 0);
                assert_eq!((report.nonunit, report.nonorthogonal), (0, 0));
                checked += 1;

                // Exercise the contract's literal p h t fragment too.  A
                // normalizing run is effect-free exactly when its complete
                // carrier contains neither a delta row nor a semantic error;
                // on that measured subset its sole observable output must be
                // the independent rigid-constant normal form.
                let invoked = app(app(pure, Term::Gate(GateName::H)), Term::Gate(GateName::T));
                let mut budget = PURE_REDUCTION_CAP;
                let Some(expected) = normal_form(invoked.clone(), &mut budget, 0) else {
                    continue;
                };
                let Ok(carrier) = nf_carrier_and_columns(&invoked, None, 2, 10_000) else {
                    continue;
                };
                let fired = carrier
                    .columns
                    .iter()
                    .any(|(_, rows)| rows.iter().any(|(_, rule, _)| rule.starts_with("fire-")));
                let errored = carrier.order.iter().any(|state| {
                    matches!(
                        state,
                        NfState::RunDone(NfTerminal::Error { .. })
                            | NfState::Done {
                                terminal: NfTerminal::Error { .. },
                                ..
                            }
                    )
                });
                if fired || errored {
                    continue;
                }
                let outputs: HashSet<_> = carrier
                    .order
                    .iter()
                    .filter_map(|state| match state {
                        NfState::RunDone(NfTerminal::Halt { output, .. })
                        | NfState::Done {
                            terminal: NfTerminal::Halt { output, .. },
                            ..
                        } => Some(output.clone()),
                        _ => None,
                    })
                    .collect();
                assert_eq!(outputs, HashSet::from([term_as_nf(&expected).unwrap()]));
                let report = validate(&invoked, None, 10_000).unwrap();
                assert!(report.certified, "invoked size={size}: {report:?}");
                invoked_effect_free += 1;
            }
        }
        assert_eq!(checked, 201);
        assert_eq!(invoked_effect_free, 105);
    }
}
