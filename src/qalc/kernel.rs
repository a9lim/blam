//! The kernel step table and reference evolvers — the differential port
//! of `qalc/kernel.py` (the step function) and `qalc/dw_machine.py` (the
//! exact-Dw edge coefficients, evolution, carrier enumeration, and Gram
//! check).
//!
//! The Python reference is frozen and authoritative; this module ports
//! its transition surface rule for rule and is pinned by the
//! complete-carrier column fixtures and dynamic trace digests under
//! `tests/qalc/` (`docs/quantum-algebraic/rust-pillar.md` §6 phase 1).
//! Row *order* within a column is semantic — the fixtures record exact
//! ordered unmerged rows — so every arm returns its rows in the
//! reference's order.
//!
//! Totality discipline: the Python reference crashes on states outside
//! the reachable grammar (bad path, free variable, short log); here
//! those surface as a returned [`Defect`], never a panic. Resource
//! exhaustion in the amplitude ring surfaces as
//! [`MachineError::Capacity`]; each evolution step is transactional —
//! the step either completes exactly or returns the typed error with no
//! partial state visible — and iterates its support in deterministic
//! first-touch order.
//!
//! Certificates are pinned data (the frozen `CERTS` of `qalc/suite.py`,
//! carried per-program in the fixture files): typed, unchecked, and
//! consumed as-is. Nothing here validates or discovers one — that is
//! the phase-4 admission surface.

use std::collections::{HashMap, HashSet};

use super::amp::Amp;
use super::mark::{
    frame_repr, kd_key_repr, Alpha, Epoch, Frame, KdKey, KsHead, LogEntry, Lp, RetainCargo,
    TapeEntry,
};
use super::state::{KState, Kind, Residue, RunCore, Vb, Vert};
use super::term::{binder_path, level, subterm, Dir, GateName, Term};
use super::wire::{CertEntries, ColRow, Column};

/// A `(gate, instance)` key — the identity every storage guard, replay
/// lookup, and certified pop is keyed by. Borrowed: the sets built from
/// a state during one step never outlive it.
type Key<'a> = (GateName, &'a Lp);

/// One unmerged transition row, in the reference's `(sign, k_incr,
/// rule, state)` shape. `dk` is the √2-denominator increment (1 on
/// H-fire rows, else 0); the exact coefficient — including fire-t1's ω
/// — is [`edge_coefficient`]'s job, exactly as `dw_machine.step_dw`
/// wraps `kernel.step`.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Row {
    pub sign: i8,
    pub dk: u8,
    pub rule: &'static str,
    pub state: KState,
}

/// A state outside the machine's reachable grammar — impossible from
/// `init` (the Python reference crashes on each of these).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Defect {
    /// `subterm(term, path)` leaves the term.
    PathOffTerm,
    /// A variable occurrence with no binder (open term or non-Var path).
    UnboundVar,
    /// The `var` rule found fewer log entries than its slice needs.
    LogUnderflow,
}

/// Typed outcome of the evolvers: grammar defects, ring capacity, and
/// the reference's own runtime refusals (its asserts and `die`s).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MachineError {
    Defect(Defect),
    /// An `Amp` operation refused (`K_CAP` or i128 range) — a resource
    /// outcome, never a wrong number.
    Capacity,
    /// A non-terminal state with no successor rows (norm leak).
    Stuck,
    /// The support's norm left 1 — `evolve`'s per-step assertion.
    NormLeak,
    /// No absorption inside the step cap.
    StepCap,
    /// Carrier enumeration left the state cap.
    StateCap,
    /// A carrier column whose norm is not 1 — the exporter's `die`.
    ColumnNorm,
}

impl From<Defect> for MachineError {
    fn from(d: Defect) -> Self {
        MachineError::Defect(d)
    }
}

/// The initial kernel state: root, descending, `tape = • • ρ`.
pub fn init_state() -> KState {
    KState::Run(RunCore {
        path: vec![],
        d: Vert::D,
        log: vec![],
        tape: vec![TapeEntry::Bullet, TapeEntry::Bullet, TapeEntry::Rho],
        vb: None,
        rs: vec![],
        ks: vec![],
    })
}

// ---------------------------------------------------------------------------
// Small constructors.

fn det(rule: &'static str, state: KState) -> Vec<Row> {
    vec![Row {
        sign: 1,
        dk: 0,
        rule,
        state,
    }]
}

/// The reference's error shape at gate/leaf/boundary rules: freeze the
/// complete seven-register pre-entry state.
fn err_full(rule: &'static str, c: &RunCore) -> Vec<Row> {
    det(
        rule,
        KState::RunDone {
            kind: Kind::Err,
            residue: Residue::Full(Box::new(c.clone())),
        },
    )
}

/// `_mkrun`: a successor keeping the source's RS and KS.
fn run_t(
    c: &RunCore,
    path: Vec<Dir>,
    d: Vert,
    log: Vec<LogEntry>,
    tape: Vec<TapeEntry>,
    vb: Option<Vb>,
) -> KState {
    KState::Run(RunCore {
        path,
        d,
        log,
        tape,
        vb,
        rs: c.rs.clone(),
        ks: c.ks.clone(),
    })
}

fn cons_tape(head: TapeEntry, tail: &[TapeEntry]) -> Vec<TapeEntry> {
    let mut v = Vec::with_capacity(tail.len() + 1);
    v.push(head);
    v.extend_from_slice(tail);
    v
}

fn cons_log(head: LogEntry, tail: &[LogEntry]) -> Vec<LogEntry> {
    let mut v = Vec::with_capacity(tail.len() + 1);
    v.push(head);
    v.extend_from_slice(tail);
    v
}

fn cons_ks(head: KsHead, tail: &[KsHead]) -> Vec<KsHead> {
    let mut v = Vec::with_capacity(tail.len() + 1);
    v.push(head);
    v.extend_from_slice(tail);
    v
}

// ---------------------------------------------------------------------------
// Storage-key machinery (`alpha_keys_live`, `ks_bitfree_keys`,
// `ks_dead_keys`, `alpha_bits_deep`).
//
// Traversal covers lp slices only; instance keys are frozen names and
// are never traversed (the W5 ghost-count lesson), and epochs carry no
// keys. Recursion depth is bounded by the wire parser's `DEPTH_CAP` on
// every decodable state, as in `mark`'s renderer.

fn add_keys_log<'a>(e: &'a LogEntry, out: &mut HashSet<Key<'a>>) {
    match e {
        LogEntry::Alpha(a) => {
            out.insert((a.gate, &a.instance));
        }
        LogEntry::Lp(lp) => add_keys_lp(lp, out),
        LogEntry::Gam(_) => {}
    }
}

fn add_keys_lp<'a>(lp: &'a Lp, out: &mut HashSet<Key<'a>>) {
    for e in &lp.slice {
        add_keys_log(e, out);
    }
}

fn add_keys_tape<'a>(e: &'a TapeEntry, out: &mut HashSet<Key<'a>>) {
    match e {
        TapeEntry::Alpha(a) => {
            out.insert((a.gate, &a.instance));
        }
        TapeEntry::Lp(lp) => add_keys_lp(lp, out),
        _ => {}
    }
}

fn add_keys_cargo<'a>(cargo: &'a RetainCargo, out: &mut HashSet<Key<'a>>) {
    match cargo {
        RetainCargo::Alpha(a) => {
            out.insert((a.gate, &a.instance));
        }
        RetainCargo::Lp(lp) => add_keys_lp(lp, out),
    }
}

/// Instances recorded BIT-FREE: decoded `K` records and certified `KD`
/// bundles. `KA` heads are deliberately excluded (the suppressed key's
/// answerable representation survives in its frame or burial).
fn ks_bitfree_keys<'a>(ks: &'a [KsHead]) -> HashSet<Key<'a>> {
    let mut out = HashSet::new();
    for e in ks {
        match e {
            KsHead::Decode { gate, instance } => {
                out.insert((*gate, instance));
            }
            KsHead::DeadBundle(keys) => {
                for k in keys {
                    out.insert((k.gate, &k.instance));
                }
            }
            _ => {}
        }
    }
    out
}

/// ALL dead-storage instances: bit-free records plus tickets buried in
/// retained-whole cargo — the refire guard's quantifier.
fn ks_dead_keys<'a>(ks: &'a [KsHead]) -> HashSet<Key<'a>> {
    let mut out = ks_bitfree_keys(ks);
    for e in ks {
        if let KsHead::RetainWhole(cargo) = e {
            add_keys_cargo(cargo, &mut out);
        }
    }
    out
}

fn note_bit<'a>(key: Key<'a>, bit: u8, bits: &mut HashMap<Key<'a>, u8>, conflict: &mut bool) {
    match bits.get(&key) {
        Some(&b) if b != bit => *conflict = true,
        Some(_) => {}
        None => {
            bits.insert(key, bit);
        }
    }
}

fn add_bits_log<'a>(e: &'a LogEntry, bits: &mut HashMap<Key<'a>, u8>, conflict: &mut bool) {
    match e {
        LogEntry::Alpha(a) => note_bit((a.gate, &a.instance), a.bit, bits, conflict),
        LogEntry::Lp(lp) => {
            for x in &lp.slice {
                add_bits_log(x, bits, conflict);
            }
        }
        LogEntry::Gam(_) => {}
    }
}

// ---------------------------------------------------------------------------
// Arrival classifiers.

/// The boundary/root arrival head: a real lp or an answer ticket
/// (`arr_lp` in the reference), typed so the retain-whole arm is total.
#[derive(Clone, Copy)]
enum ArrHead<'a> {
    Lp(&'a Lp),
    Alpha(&'a Alpha),
}

fn arr_head(e: &TapeEntry) -> Option<ArrHead<'_>> {
    match e {
        TapeEntry::Lp(lp) => Some(ArrHead::Lp(lp)),
        TapeEntry::Alpha(a) => Some(ArrHead::Alpha(a)),
        _ => None,
    }
}

struct Arrival<'a> {
    slot: u8,
    head: ArrHead<'a>,
    tail: &'a [TapeEntry],
    mu: GateName,
}

/// At a gam-headed boundary: slot from tape shape, or `None`.
fn classify_arrival(tape: &[TapeEntry]) -> Option<Arrival<'_>> {
    if let [l, TapeEntry::Mu(g), tail @ ..] = tape {
        if let Some(head) = arr_head(l) {
            return Some(Arrival {
                slot: 0,
                head,
                tail,
                mu: *g,
            });
        }
    }
    if let [TapeEntry::Bullet, l, TapeEntry::Mu(g), tail @ ..] = tape {
        if let Some(head) = arr_head(l) {
            return Some(Arrival {
                slot: 1,
                head,
                tail,
                mu: *g,
            });
        }
    }
    None
}

fn classify_root(tape: &[TapeEntry]) -> Option<u8> {
    if let [l, TapeEntry::Rho, ..] = tape {
        if arr_head(l).is_some() {
            return Some(0);
        }
    }
    if let [TapeEntry::Bullet, l, TapeEntry::Rho, ..] = tape {
        if arr_head(l).is_some() {
            return Some(1);
        }
    }
    None
}

/// The invoking occurrence's logged position — the dynamic instance
/// identity of a gate visit. `None` if the log head is not an lp
/// (callers return the typed `no-instance` error; a silent TOP fallback
/// would alias instances).
fn instance(c: &RunCore) -> Option<&Lp> {
    match c.log.first() {
        Some(LogEntry::Lp(lp)) => Some(lp),
        _ => None,
    }
}

/// v1.7: RS is an instance-keyed set in canonical repr order. The new
/// frame lands where a stable sort of `rs + (fr,)` would put it —
/// after any equal key, though equal reprs are impossible for distinct
/// frames on this injectively-rendered domain.
fn rs_insert(rs: Vec<Frame>, fr: Frame) -> Vec<Frame> {
    let key = frame_repr(&fr);
    let at = rs.partition_point(|f| frame_repr(f) <= key);
    let mut out = rs;
    out.insert(at, fr);
    out
}

/// `recall_epoch`: the exact predecessor-fibre coordinate
/// (`RecallEpoch.lean`'s recursive tree).
fn recall_epoch(ticket_epoch: &Epoch, old_frame_epoch: Option<&Epoch>) -> Epoch {
    match old_frame_epoch {
        None => Epoch::Recall(Box::new(ticket_epoch.clone())),
        Some(old) => Epoch::RecallOver(Box::new(ticket_epoch.clone()), Box::new(old.clone())),
    }
}

// ---------------------------------------------------------------------------
// The step table.

/// One application of the kernel's transition table to a basis state:
/// the exact ordered unmerged rows. Deterministic rules yield one row;
/// an H fire yields two with `dk = 1`. Empty output is a classical
/// final (the substrate's own stuck shapes), which the evolvers treat
/// as the reference does.
pub fn step(term: &Term, s: &KState, cert: Option<&CertEntries>) -> Result<Vec<Row>, Defect> {
    let c = match s {
        KState::Done {
            kind,
            residue,
            tick,
        } => {
            return Ok(det(
                "tick",
                KState::Done {
                    kind: *kind,
                    residue: residue.clone(),
                    tick: tick + 1,
                },
            ));
        }
        KState::RunDone { kind, residue } => {
            return Ok(det(
                "halt",
                KState::Done {
                    kind: *kind,
                    residue: residue.clone(),
                    tick: 0,
                },
            ));
        }
        KState::Run(c) => c,
    };
    let Some(t) = subterm(term, &c.path) else {
        return Err(Defect::PathOffTerm);
    };

    // --- virtual boolean automaton at a gate leaf ---
    if let Some(vb) = c.vb {
        if vb.k < 2 {
            return Ok(match c.tape.first() {
                Some(TapeEntry::Bullet) => det(
                    "vb2",
                    run_t(
                        c,
                        c.path.clone(),
                        Vert::D,
                        c.log.clone(),
                        c.tape[1..].to_vec(),
                        Some(Vb { k: vb.k + 1, ..vb }),
                    ),
                ),
                // fewer outer bullets than 2: the answer boolean is
                // itself the output (partially applied)
                Some(TapeEntry::Rho) => det(
                    "rootval",
                    KState::RunDone {
                        kind: if vb.bit == 0 {
                            Kind::Halt0
                        } else {
                            Kind::Halt1
                        },
                        residue: Residue::Full(Box::new(c.clone())),
                    },
                ),
                // an inner probe sees a bare boolean VALUE answer
                Some(TapeEntry::Mu(_)) => err_full("verr", c),
                _ => err_full("stuck-vb", c),
            });
        }
        // k == 2: emit the balanced seek bullets^(b'+1) . alpha_g(i, b')
        let Some(i) = instance(c) else {
            return Ok(err_full("no-instance", c));
        };
        let mut tape = Vec::with_capacity(vb.bit as usize + 2 + c.tape.len());
        for _ in 0..=vb.bit {
            tape.push(TapeEntry::Bullet);
        }
        tape.push(TapeEntry::Alpha(Alpha {
            gate: vb.gate,
            instance: i.clone(),
            bit: vb.bit,
            epoch: Epoch::Fresh,
        }));
        tape.extend_from_slice(&c.tape);
        return Ok(det(
            "vvar",
            run_t(c, c.path.clone(), Vert::U, c.log.clone(), tape, None),
        ));
    }

    // --- gate leaf rules ---
    if let (Term::Gate(g), Vert::D) = (t, c.d) {
        return Ok(gate_leaf(c, *g));
    }

    // --- boundary: U at 'a'-position with gam log head ---
    if c.d == Vert::U && c.path.last() == Some(&Dir::A) {
        if let Some(LogEntry::Gam(g)) = c.log.first() {
            return Ok(boundary(c, *g, cert));
        }
    }

    // --- root arrivals ---
    if c.d == Vert::U && c.path.is_empty() {
        return Ok(root_arrival(c));
    }

    // --- classical rules (lam_iam's eight, with lp_like transport and
    //     the typed rho/mu-stuck error entries) ---
    if c.d == Vert::D {
        return classical_down(term, c, t);
    }
    Ok(classical_up(c))
}

fn gate_leaf(c: &RunCore, g: GateName) -> Vec<Row> {
    match c.tape.first() {
        Some(TapeEntry::Bullet) => {
            let Some(i) = instance(c) else {
                return err_full("no-instance", c);
            };
            let mut j = 0;
            while j < c.tape.len() && c.tape[j] == TapeEntry::Bullet {
                j += 1;
            }
            let dead = ks_dead_keys(&c.ks);
            let bitfree = ks_bitfree_keys(&c.ks);
            if let Some(TapeEntry::Alpha(a)) = c.tape.get(j) {
                if a.gate == g {
                    // a ticket of this gate probed at this leaf
                    if a.instance != *i {
                        // a foreign instance's ticket probed here
                        return err_full("alien-ticket", c);
                    }
                    if bitfree.contains(&(g, i)) {
                        // v1.8.1: a live ticket must never shadow a
                        // bit-free dead-storage record
                        return err_full("key-alias", c);
                    }
                    if j == a.bit as usize + 1 {
                        // recall: consistent transit replay off the
                        // ticket, no fire; the discriminator moves to
                        // the replay record (v1.7 instance-keyed set)
                        let have: Vec<&Frame> =
                            c.rs.iter()
                                .filter(|f| f.gate == g && f.instance == *i)
                                .collect();
                        if have.iter().any(|f| f.bit != a.bit) || have.len() > 1 {
                            return err_full("frame-conflict", c);
                        }
                        let fr2 = Frame {
                            gate: g,
                            instance: i.clone(),
                            bit: a.bit,
                            epoch: recall_epoch(&a.epoch, have.first().map(|f| &f.epoch)),
                        };
                        let rs0: Vec<Frame> =
                            c.rs.iter()
                                .filter(|f| !(f.gate == g && f.instance == *i))
                                .cloned()
                                .collect();
                        let rs2 = rs_insert(rs0, fr2);
                        let mut tape = vec![TapeEntry::Bullet; 3];
                        tape.extend_from_slice(&c.tape[j + 1..]);
                        return det(
                            "recall",
                            KState::Run(RunCore {
                                path: c.path.clone(),
                                d: Vert::U,
                                log: c.log.clone(),
                                tape,
                                vb: None,
                                rs: rs2,
                                ks: c.ks.clone(),
                            }),
                        );
                    }
                    // malformed re-entry arity: species error
                    return err_full("recall-err", c);
                }
            }
            let mine: Vec<&Frame> =
                c.rs.iter()
                    .filter(|f| f.gate == g && f.instance == *i)
                    .collect();
            if !mine.is_empty() && bitfree.contains(&(g, i)) {
                // v1.8.1: a live frame shadowing a bit-free record
                return err_full("key-alias", c);
            }
            if !mine.is_empty() {
                // replay (v1.7 deep keyed lookup): rederive the
                // instance's selection from its record wherever it sits
                if mine.len() > 1 {
                    return err_full("frame-conflict", c);
                }
                let bp = mine[0].bit;
                if j >= 3 {
                    let mut tape = vec![TapeEntry::Bullet; bp as usize + 1];
                    tape.push(TapeEntry::Alpha(Alpha {
                        gate: g,
                        instance: i.clone(),
                        bit: bp,
                        epoch: mine[0].epoch.clone(),
                    }));
                    tape.extend_from_slice(&c.tape[3..]);
                    return det(
                        "replay",
                        run_t(c, c.path.clone(), Vert::U, c.log.clone(), tape, None),
                    );
                }
                // under-applied re-seek: out of scope
                return err_full("replay-err", c);
            }
            if dead.contains(&(g, i)) {
                // v1.8 refire guard: one-fire-per-instance is a
                // machine invariant, typed, never silent
                return err_full("refire", c);
            }
            // fresh invocation: call
            let mut tape = vec![
                TapeEntry::Gam(g),
                TapeEntry::Bullet,
                TapeEntry::Bullet,
                TapeEntry::Mu(g),
            ];
            tape.extend_from_slice(&c.tape[1..]);
            det(
                "call",
                run_t(c, c.path.clone(), Vert::U, c.log.clone(), tape, None),
            )
        }
        Some(TapeEntry::Gam(gg)) => {
            if let Some(TapeEntry::Ans(ag, bit)) = c.tape.get(1) {
                // v1.20/v1.21: leaf = gamma = answer, bit in {0, 1} —
                // typed, never an assert
                if *gg != *ag || *ag != g || *bit > 1 {
                    return err_full("species-ans", c);
                }
                return det(
                    "anshead",
                    run_t(
                        c,
                        c.path.clone(),
                        Vert::D,
                        c.log.clone(),
                        c.tape[2..].to_vec(),
                        Some(Vb {
                            gate: *ag,
                            bit: *bit,
                            k: 0,
                        }),
                    ),
                );
            }
            // an answer, ticket, or value without its classifier shape
            err_full("species-leaf", c)
        }
        // unapplied constant meets a classifier: neutral value
        Some(TapeEntry::Rho) => err_full("rootneutral", c),
        Some(TapeEntry::Mu(_)) => err_full("species-neutral", c),
        Some(_) => err_full("species-leaf", c),
        None => vec![], // bare final
    }
}

fn boundary(c: &RunCore, g: GateName, cert: Option<&CertEntries>) -> Vec<Row> {
    if let Some(arr) = classify_arrival(&c.tape) {
        let (b, l, tail) = (arr.slot, arr.head, arr.tail);
        // v1.6: the probe frame's gate kind must match the boundary's
        // gam (range disjointness over the raw state type)
        if arr.mu != g {
            return err_full("species-mu", c);
        }
        // v1.10 deep W3 at the boundary: cargo-nested alpha bits and
        // RS frame bits, one bit per key, else typed
        let mut bits: HashMap<Key<'_>, u8> = HashMap::new();
        let mut conflict = false;
        match l {
            ArrHead::Alpha(a) => note_bit((a.gate, &a.instance), a.bit, &mut bits, &mut conflict),
            ArrHead::Lp(lp) => {
                for e in &lp.slice {
                    add_bits_log(e, &mut bits, &mut conflict);
                }
            }
        }
        for f in &c.rs {
            note_bit((f.gate, &f.instance), f.bit, &mut bits, &mut conflict);
        }
        if conflict {
            return err_full("key-alias", c);
        }
        // v1.5: the fire is an encoded fibre; certified erasure (v1.11
        // literal P/Q) / alpha decode / retain whole
        let popkeys = cert
            .and_then(|entries| entries.iter().find(|(p, _)| *p == c.path))
            .map(|(_, keys)| keys);
        let (rs2, ks2) = if let Some(popkeys) = popkeys {
            // v1.10 instance-directed certified erasure: pop P, retain
            // the spectators Q verbatim
            let in_pop = |f: &&Frame| {
                popkeys
                    .iter()
                    .any(|k| k.gate == f.gate && k.instance == f.instance)
            };
            let (p, q): (Vec<&Frame>, Vec<&Frame>) = c.rs.iter().partition(in_pop);
            if p.iter().any(|f| f.bit != b) {
                return err_full("pop-err", c);
            }
            // v1.8/v1.11/v1.12/v1.13: the bundle names only keys with
            // no surviving bit-carrying or answerable representation —
            // subtract retained Q frames, retained-whole burials, and
            // live tickets in the tape tail and the log
            let mut dk: HashSet<Key<'_>> = HashSet::new();
            match l {
                ArrHead::Alpha(a) => {
                    dk.insert((a.gate, &a.instance));
                }
                ArrHead::Lp(lp) => add_keys_lp(lp, &mut dk),
            }
            for f in &p {
                dk.insert((f.gate, &f.instance));
            }
            for f in &q {
                dk.remove(&(f.gate, &f.instance));
            }
            for e in &c.ks {
                if let KsHead::RetainWhole(cargo) = e {
                    let mut buried = HashSet::new();
                    add_keys_cargo(cargo, &mut buried);
                    for k in buried {
                        dk.remove(&k);
                    }
                }
            }
            let mut live = HashSet::new();
            for e in tail {
                add_keys_tape(e, &mut live);
            }
            for e in &c.log {
                add_keys_log(e, &mut live);
            }
            for k in live {
                dk.remove(&k);
            }
            // v1.23: the bundle is emitted unconditionally (empty
            // included) — storage histories stay prefix-free
            let mut keys: Vec<KdKey> = dk
                .into_iter()
                .map(|(gate, instance)| KdKey {
                    gate,
                    instance: instance.clone(),
                })
                .collect();
            keys.sort_by_key(kd_key_repr);
            (
                q.into_iter().cloned().collect(),
                cons_ks(KsHead::DeadBundle(keys), &c.ks),
            )
        } else if let ArrHead::Alpha(a) = l {
            if a.bit == b {
                // D(alpha) = (gate, i): the bit is redundant with the
                // slot. v1.8.1/v1.12: a same-key frame or burial keeps
                // the answerable representation — the fire appends the
                // inert KA history head instead of a dead record
                // (v1.24: exactly one head per fire, never zero).
                let in_frame =
                    c.rs.iter()
                        .any(|f| f.gate == a.gate && f.instance == a.instance);
                let in_burial = c.ks.iter().any(|e| {
                    if let KsHead::RetainWhole(cargo) = e {
                        let mut buried = HashSet::new();
                        add_keys_cargo(cargo, &mut buried);
                        buried.contains(&(a.gate, &a.instance))
                    } else {
                        false
                    }
                });
                let head = if in_frame || in_burial {
                    KsHead::Suppressed {
                        gate: a.gate,
                        instance: a.instance.clone(),
                    }
                } else {
                    KsHead::Decode {
                        gate: a.gate,
                        instance: a.instance.clone(),
                    }
                };
                (c.rs.clone(), cons_ks(head, &c.ks))
            } else {
                // mismatched ticket: retained whole (which-path data)
                (
                    c.rs.clone(),
                    cons_ks(KsHead::RetainWhole(RetainCargo::Alpha(a.clone())), &c.ks),
                )
            }
        } else {
            let ArrHead::Lp(lp) = l else {
                return err_full("species", c); // unreachable: Alpha handled above
            };
            (
                c.rs.clone(),
                cons_ks(KsHead::RetainWhole(RetainCargo::Lp((*lp).clone())), &c.ks),
            )
        };
        let arm = |bit: u8| {
            KState::Run(RunCore {
                path: c.path.clone(),
                d: Vert::U,
                log: c.log.clone(),
                tape: cons_tape(TapeEntry::Ans(g, bit), tail),
                vb: None,
                rs: rs2.clone(),
                ks: ks2.clone(),
            })
        };
        let (a0, a1) = (arm(0), arm(1));
        if g == GateName::H {
            let sign1 = if b == 0 { 1 } else { -1 };
            return vec![
                Row {
                    sign: 1,
                    dk: 1,
                    rule: "fire-h",
                    state: a0,
                },
                Row {
                    sign: sign1,
                    dk: 1,
                    rule: "fire-h",
                    state: a1,
                },
            ];
        }
        // T is diagonal on the same clean spectator fibre: fire-t0 has
        // coefficient 1, fire-t1 has ω (edge_coefficient's job)
        if b == 0 {
            return det("fire-t0", a0);
        }
        return det("fire-t1", a1);
    }
    if matches!(c.tape.first(), Some(TapeEntry::Ans(..))) {
        // bt1-gam (retrace)
        let mut path = c.path.clone();
        path.pop();
        path.push(Dir::F);
        return det(
            "bt1g",
            run_t(
                c,
                path,
                Vert::D,
                c.log[1..].to_vec(),
                cons_tape(TapeEntry::Gam(g), &c.tape),
                None,
            ),
        );
    }
    // non-boolean arrival shapes at a gate boundary: species error
    err_full("species", c)
}

fn root_arrival(c: &RunCore) -> Vec<Row> {
    let residue = Residue::Root {
        log: c.log.clone(),
        tape: c.tape.clone(),
        rs: c.rs.clone(),
        ks: c.ks.clone(),
    };
    if let Some(rb) = classify_root(&c.tape) {
        return det(
            "rootdone",
            KState::RunDone {
                kind: if rb == 0 { Kind::Halt0 } else { Kind::Halt1 },
                residue,
            },
        );
    }
    // I-shaped output: one lambda consumed, head = its own binder,
    // unapplied: arrival l . bullet . rho
    if let [l, TapeEntry::Bullet, TapeEntry::Rho, ..] = c.tape.as_slice() {
        if arr_head(l).is_some() {
            return det(
                "rootdone",
                KState::RunDone {
                    kind: Kind::HaltI,
                    residue,
                },
            );
        }
    }
    det(
        "rooterr",
        KState::RunDone {
            kind: Kind::Err,
            residue,
        },
    )
}

fn classical_down(term: &Term, c: &RunCore, t: &Term) -> Result<Vec<Row>, Defect> {
    match t {
        Term::App(..) => {
            let mut path = c.path.clone();
            path.push(Dir::F);
            Ok(det(
                "b1",
                run_t(
                    c,
                    path,
                    Vert::D,
                    c.log.clone(),
                    cons_tape(TapeEntry::Bullet, &c.tape),
                    None,
                ),
            ))
        }
        Term::Lam(_) => match c.tape.first() {
            Some(TapeEntry::Bullet) => {
                let mut path = c.path.clone();
                path.push(Dir::B);
                Ok(det(
                    "b2",
                    run_t(c, path, Vert::D, c.log.clone(), c.tape[1..].to_vec(), None),
                ))
            }
            Some(TapeEntry::Lp(lp)) => {
                let Some(bp) = binder_path(term, &lp.occ) else {
                    return Err(Defect::UnboundVar);
                };
                if bp == c.path {
                    let mut log = lp.slice.clone();
                    log.extend_from_slice(&c.log);
                    Ok(det(
                        "bt2",
                        run_t(c, lp.occ.clone(), Vert::U, log, c.tape[1..].to_vec(), None),
                    ))
                } else {
                    // foreign lp: the classical substrate's own final
                    Ok(vec![])
                }
            }
            // too many head lambdas for the question: not a boolean
            Some(TapeEntry::Mu(_)) | Some(TapeEntry::Rho) => Ok(err_full("shape-err", c)),
            // v1.21: a gate token meeting a binder is a species failure
            Some(TapeEntry::Gam(_)) | Some(TapeEntry::Ans(..)) | Some(TapeEntry::Alpha(_)) => {
                Ok(err_full("species-binder", c))
            }
            _ => Ok(vec![]), // classical final
        },
        Term::Var(_) => {
            let Some(bp) = binder_path(term, &c.path) else {
                return Err(Defect::UnboundVar);
            };
            let n = level(&c.path) - level(&bp);
            if c.log.len() < n {
                return Err(Defect::LogUnderflow);
            }
            let lp = Lp {
                occ: c.path.clone(),
                slice: c.log[..n].to_vec(),
            };
            Ok(det(
                "var",
                run_t(
                    c,
                    bp,
                    Vert::U,
                    c.log[n..].to_vec(),
                    cons_tape(TapeEntry::Lp(lp), &c.tape),
                    None,
                ),
            ))
        }
        // a Gate leaf in D was consumed by the gate-leaf block
        Term::Gate(_) => Ok(vec![]),
    }
}

fn classical_up(c: &RunCore) -> Vec<Row> {
    let Some(&last) = c.path.last() else {
        return vec![]; // root arrivals were handled above
    };
    let parent = &c.path[..c.path.len() - 1];
    match last {
        Dir::F => match c.tape.first() {
            Some(TapeEntry::Bullet) => det(
                "b3",
                run_t(
                    c,
                    parent.to_vec(),
                    Vert::U,
                    c.log.clone(),
                    c.tape[1..].to_vec(),
                    None,
                ),
            ),
            // lp_like transport: lp, gam, and alpha heads all descend
            Some(TapeEntry::Lp(lp)) => arg_row(c, parent, LogEntry::Lp(lp.clone())),
            Some(TapeEntry::Gam(g)) => arg_row(c, parent, LogEntry::Gam(*g)),
            Some(TapeEntry::Alpha(a)) => arg_row(c, parent, LogEntry::Alpha(a.clone())),
            // v1.21: mu, rho, and answer heads have no transport rule
            Some(_) => err_full("species-transport", c),
            None => vec![],
        },
        Dir::B => det(
            "b4",
            run_t(
                c,
                parent.to_vec(),
                Vert::U,
                c.log.clone(),
                cons_tape(TapeEntry::Bullet, &c.tape),
                None,
            ),
        ),
        Dir::A => match c.log.first() {
            // ordinary bt1 (real lp or alpha head; gam handled above)
            Some(LogEntry::Lp(lp)) => bt1_row(c, parent, TapeEntry::Lp(lp.clone())),
            Some(LogEntry::Alpha(a)) => bt1_row(c, parent, TapeEntry::Alpha(a.clone())),
            Some(LogEntry::Gam(_)) | None => vec![],
        },
    }
}

fn arg_row(c: &RunCore, parent: &[Dir], head: LogEntry) -> Vec<Row> {
    let mut path = parent.to_vec();
    path.push(Dir::A);
    det(
        "arg",
        run_t(
            c,
            path,
            Vert::D,
            cons_log(head, &c.log),
            c.tape[1..].to_vec(),
            None,
        ),
    )
}

fn bt1_row(c: &RunCore, parent: &[Dir], head: TapeEntry) -> Vec<Row> {
    let mut path = parent.to_vec();
    path.push(Dir::F);
    det(
        "bt1",
        run_t(
            c,
            path,
            Vert::D,
            c.log[1..].to_vec(),
            cons_tape(head, &c.tape),
            None,
        ),
    )
}

// ---------------------------------------------------------------------------
// Exact-Dw evolution (`dw_machine.py`).

/// The exact edge coefficient for one row: `sign / √2^dk`, times ω on
/// `fire-t1`.
pub fn edge_coefficient(sign: i8, dk: u8, rule: &str) -> Option<Amp> {
    let mut coefficient = if sign < 0 { Amp::ONE.neg()? } else { Amp::ONE };
    for _ in 0..dk {
        coefficient = coefficient.div_sqrt2()?;
    }
    if rule == "fire-t1" {
        coefficient = coefficient.mul_omega()?;
    }
    Some(coefficient)
}

/// `step_dw`: the step table with exact coefficients.
pub fn step_amp(
    term: &Term,
    s: &KState,
    cert: Option<&CertEntries>,
) -> Result<Vec<(Amp, &'static str, KState)>, MachineError> {
    step(term, s, cert)?
        .into_iter()
        .map(|r| {
            let a = edge_coefficient(r.sign, r.dk, r.rule).ok_or(MachineError::Capacity)?;
            Ok((a, r.rule, r.state))
        })
        .collect()
}

/// A sparse superposition in deterministic first-touch order.
pub type Psi = Vec<(KState, Amp)>;

/// Evolve from `init` to absorption (every basis state `Done`),
/// returning the support after every step — the trace the fixture
/// digest chains pin. Each step is transactional: on any typed error
/// the partially built step is discarded whole.
pub fn evolve_trace(
    term: &Term,
    cert: Option<&CertEntries>,
    max_steps: u64,
) -> Result<Vec<Psi>, MachineError> {
    let mut psi: Psi = vec![(init_state(), Amp::ONE)];
    let mut maps = Vec::new();
    for _ in 0..max_steps {
        if psi.iter().all(|(s, _)| matches!(s, KState::Done { .. })) {
            return Ok(maps);
        }
        let mut out: Psi = Vec::new();
        let mut index: HashMap<KState, usize> = HashMap::new();
        for (s, amp) in &psi {
            let rows = step_amp(term, s, cert)?;
            if rows.is_empty() {
                return Err(MachineError::Stuck);
            }
            for (coefficient, _rule, target) in rows {
                let contribution = amp.mul(coefficient).ok_or(MachineError::Capacity)?;
                if let Some(&at) = index.get(&target) {
                    out[at].1 = out[at].1.add(contribution).ok_or(MachineError::Capacity)?;
                } else {
                    index.insert(target.clone(), out.len());
                    out.push((target, contribution));
                }
            }
        }
        psi = out.into_iter().filter(|(_, a)| !a.is_zero()).collect();
        let mut norm = Amp::ZERO;
        for (_, a) in &psi {
            norm = norm
                .add(a.norm_sq().ok_or(MachineError::Capacity)?)
                .ok_or(MachineError::Capacity)?;
        }
        if norm != Amp::ONE {
            return Err(MachineError::NormLeak);
        }
        maps.push(psi.clone());
    }
    Err(MachineError::StepCap)
}

/// The complete finite carrier through `tick_depth` with exact
/// unmerged columns — the exporter's `carrier_and_columns`, BFS in
/// step-row order.
#[derive(Debug)]
pub struct Carrier {
    /// Carrier states in discovery order (their ids).
    pub order: Vec<KState>,
    /// `source id → ordered unmerged rows`, one column per
    /// non-tick-cut state, in id order.
    pub columns: Vec<Column>,
}

pub fn carrier_and_columns(
    term: &Term,
    cert: Option<&CertEntries>,
    tick_depth: u64,
    state_cap: usize,
) -> Result<Carrier, MachineError> {
    let start = init_state();
    let mut ids: HashMap<KState, usize> = HashMap::new();
    ids.insert(start.clone(), 0);
    let mut order = vec![start];
    let mut columns: Vec<Column> = Vec::new();
    let mut at = 0;
    while at < order.len() {
        let s = order[at].clone();
        at += 1;
        if let KState::Done { tick, .. } = &s {
            if *tick >= tick_depth {
                continue;
            }
        }
        let rows = step_amp(term, &s, cert)?;
        if rows.is_empty() {
            return Err(MachineError::Stuck);
        }
        let mut col: Vec<ColRow> = Vec::with_capacity(rows.len());
        let mut norm = Amp::ZERO;
        for (coefficient, rule, target) in rows {
            let id = match ids.get(&target) {
                Some(&id) => id,
                None => {
                    let id = order.len();
                    ids.insert(target.clone(), id);
                    order.push(target);
                    id
                }
            };
            norm = norm
                .add(coefficient.norm_sq().ok_or(MachineError::Capacity)?)
                .ok_or(MachineError::Capacity)?;
            col.push((coefficient, rule.to_string(), id));
        }
        if norm != Amp::ONE {
            return Err(MachineError::ColumnNorm);
        }
        if order.len() > state_cap {
            return Err(MachineError::StateCap);
        }
        // the source's id is its discovery index
        columns.push((at - 1, col));
    }
    Ok(Carrier { order, columns })
}

/// Native Gram check (`dw_machine.gram_dw`): per-source merged column
/// norms and pairwise column inner products via shared targets. The
/// unordered pair key uses carrier ids (a deterministic canonical
/// order; the reference's `repr` sort serves the same role), and the
/// accumulated product keeps the reference's BFS orientation, so
/// zero-ness is compared identically.
#[derive(Debug)]
pub struct GramReport {
    pub basis: usize,
    pub nonunit: usize,
    pub nonorthogonal: usize,
}

pub fn gram(
    term: &Term,
    cert: Option<&CertEntries>,
    tick_depth: u64,
    state_cap: usize,
) -> Result<GramReport, MachineError> {
    let start = init_state();
    let mut ids: HashMap<KState, usize> = HashMap::new();
    ids.insert(start.clone(), 0);
    let mut order = vec![start];
    let mut incoming: HashMap<usize, Vec<(usize, Amp)>> = HashMap::new();
    let mut nonunit = 0usize;
    let mut at = 0;
    while at < order.len() {
        let s = order[at].clone();
        let src = at;
        at += 1;
        if let KState::Done { tick, .. } = &s {
            if *tick >= tick_depth {
                continue;
            }
        }
        let rows = step_amp(term, &s, cert)?;
        // merged column in first-touch target order
        let mut column: Vec<(usize, Amp)> = Vec::new();
        let mut col_index: HashMap<usize, usize> = HashMap::new();
        for (coefficient, _rule, target) in rows {
            let id = match ids.get(&target) {
                Some(&id) => id,
                None => {
                    let id = order.len();
                    ids.insert(target.clone(), id);
                    order.push(target);
                    id
                }
            };
            if let Some(&k) = col_index.get(&id) {
                column[k].1 = column[k].1.add(coefficient).ok_or(MachineError::Capacity)?;
            } else {
                col_index.insert(id, column.len());
                column.push((id, coefficient));
            }
        }
        let mut norm = Amp::ZERO;
        for (id, coefficient) in &column {
            norm = norm
                .add(coefficient.norm_sq().ok_or(MachineError::Capacity)?)
                .ok_or(MachineError::Capacity)?;
            incoming.entry(*id).or_default().push((src, *coefficient));
        }
        if norm != Amp::ONE {
            nonunit += 1;
        }
        if order.len() > state_cap {
            return Err(MachineError::StateCap);
        }
    }
    let mut dots: HashMap<(usize, usize), Amp> = HashMap::new();
    for columns in incoming.values() {
        for (left_at, (left, left_coefficient)) in columns.iter().enumerate() {
            for (right, right_coefficient) in &columns[left_at + 1..] {
                if left == right {
                    continue;
                }
                let key = (*left.min(right), *left.max(right));
                let product = left_coefficient
                    .conj()
                    .and_then(|lc| lc.mul(*right_coefficient))
                    .ok_or(MachineError::Capacity)?;
                let cur = dots.get(&key).copied().unwrap_or(Amp::ZERO);
                dots.insert(key, cur.add(product).ok_or(MachineError::Capacity)?);
            }
        }
    }
    let nonorthogonal = dots.values().filter(|v| !v.is_zero()).count();
    Ok(GramReport {
        basis: order.len(),
        nonunit,
        nonorthogonal,
    })
}
