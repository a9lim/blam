//! Finite, executable checks for the structurally admitted Gate-2 compiler
//! sector.  The cap-free syntax walk owns admission; this module is the
//! independent complete-carrier audit oracle used by Phase 3 tests.

use std::collections::{HashMap, HashSet};

use super::compiler::{compiler_certificate, recognized_metadata, Circuit, CompileError, Compiled};
use super::mark::{
    rs_is_canonical, Alpha, CDescriptor, CGam, Frame, FrameDescriptor, KdKey, KsHead, LogEntry, Lp,
    RetainCargo, TapeEntry,
};
use super::readback::{nf_carrier_and_columns_with, nf_gram_with, MachineKind, NfError};
use super::state::{Nf, NfState, NfTerminal, RunCore, Vert};
use super::term::{binder_path, level, subterm, Dir, GateName, Term};
use super::wire::CertEntries;

/// A compiler image admitted without carrier discovery or a state cap.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct StructuralAdmission {
    compiled: Compiled,
    certificate: CertEntries,
}

impl StructuralAdmission {
    pub fn compiled(&self) -> &Compiled {
        &self.compiled
    }

    pub fn circuit(&self) -> &Circuit {
        &self.compiled.circuit
    }

    pub fn certificate(&self) -> &CertEntries {
        &self.certificate
    }
}

/// Recognize and admit only the compiler grammar.  `Ok(None)` is an ordinary
/// non-image; Gate-1 fallback and the total public selector remain Phase 4.
pub fn structural_admission(term: &Term) -> Result<Option<StructuralAdmission>, CompileError> {
    let Some(compiled) = recognized_metadata(term) else {
        return Ok(None);
    };
    let certificate = compiler_certificate(&compiled)?;
    Ok(Some(StructuralAdmission {
        compiled,
        certificate,
    }))
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum ShadowViolation {
    Image,
    Grammar,
    Level,
    DuplicateFrame,
    FrameOrder,
    BitConflict,
    LiveVirtualFrame,
    LiveVirtualTicket,
    Lifecycle,
    StagePosition,
    ProbeBalance,
    RootDelimiter,
    StorageExclusivity,
    DuplicateTicket,
}

fn path_prefix(path: &[Dir], prefix: &[Dir]) -> bool {
    path.len() >= prefix.len() && path[..prefix.len()] == *prefix
}

fn lp_ok(term: &Term, lp: &Lp, compiler_owned: bool) -> bool {
    if !matches!(subterm(term, &lp.occ), Some(Term::Var(_))) {
        return false;
    }
    let Some(binder) = binder_path(term, &lp.occ) else {
        return false;
    };
    let Some(required) = level(&lp.occ).checked_sub(level(&binder)) else {
        return false;
    };
    if (compiler_owned && lp.slice.len() > required)
        || (!compiler_owned && lp.slice.len() != required)
    {
        return false;
    }
    lp.slice.iter().all(|e| log_ok(term, e, true))
}

fn cgam_ok(term: &Term, g: &CGam) -> bool {
    let Ok((first, second, continuation)) = super::shadow::c_arguments(term, &g.occurrence) else {
        return false;
    };
    lp_ok(term, &g.invoked, true)
        && g.occurrence == g.invoked.occ
        && g.first == first
        && g.second == second
        && g.continuation == continuation
}

fn alpha_ok(term: &Term, a: &Alpha) -> bool {
    a.bit <= 1 && lp_ok(term, &a.instance, true)
}

fn log_ok(term: &Term, e: &LogEntry, compiler_owned: bool) -> bool {
    match e {
        LogEntry::Lp(lp) => lp_ok(term, lp, compiler_owned),
        LogEntry::Gam(g) => matches!(g, GateName::H | GateName::T),
        LogEntry::Cgam(g) => cgam_ok(term, g),
        LogEntry::Alpha(a) => alpha_ok(term, a),
        LogEntry::Rbl(_) => true,
    }
}

fn cargo_ok(term: &Term, cargo: &RetainCargo) -> bool {
    match cargo {
        RetainCargo::Lp(lp) => lp_ok(term, lp, true),
        RetainCargo::Alpha(a) => alpha_ok(term, a),
    }
}

fn tape_ok(term: &Term, e: &TapeEntry) -> bool {
    match e {
        TapeEntry::Bullet
        | TapeEntry::BulletBa
        | TapeEntry::Rho
        | TapeEntry::Rb(_)
        | TapeEntry::Rbl(_) => true,
        TapeEntry::Lp(lp) => lp_ok(term, lp, true),
        TapeEntry::Gam(g) | TapeEntry::Mu(g) => matches!(g, GateName::H | GateName::T),
        TapeEntry::Cgam(g) => cgam_ok(term, g),
        TapeEntry::Cmu { invoked, .. } => lp_ok(term, invoked, true),
        TapeEntry::Ans(g, bit) => matches!(g, GateName::H | GateName::T) && *bit <= 1,
        TapeEntry::Alpha(a) => alpha_ok(term, a),
    }
}

fn descriptor_ok(term: &Term, d: &CDescriptor) -> bool {
    match d {
        CDescriptor::Alpha { instance, .. } => lp_ok(term, instance, true),
        CDescriptor::Logged(cargo) => cargo_ok(term, cargo),
    }
}

fn frame_descriptors_ok(term: &Term, fs: &[FrameDescriptor]) -> bool {
    fs.iter().all(|f| lp_ok(term, &f.instance, true))
}

fn storage_ok(term: &Term, e: &KsHead) -> bool {
    match e {
        KsHead::Decode { gate, instance } | KsHead::Suppressed { gate, instance } => {
            gate.source().is_some() && lp_ok(term, instance, true)
        }
        KsHead::DeadBundle(keys) => keys.iter().all(|k| lp_ok(term, &k.instance, true)),
        KsHead::RetainWhole(cargo) => cargo_ok(term, cargo),
        KsHead::CnotPark {
            invoked,
            bit,
            descriptor,
            frames,
            occurrence,
            continuation,
        } => {
            let Ok((_, _, wanted)) = super::shadow::c_arguments(term, occurrence) else {
                return false;
            };
            lp_ok(term, invoked, true)
                && invoked.occ == *occurrence
                && *bit <= 1
                && descriptor_ok(term, descriptor)
                && frame_descriptors_ok(term, frames)
                && *continuation == wanted
        }
        KsHead::CnotHistory {
            invoked,
            first,
            first_frames,
            second,
            second_frames,
            occurrence,
            continuation,
        } => {
            let Ok((_, _, wanted)) = super::shadow::c_arguments(term, occurrence) else {
                return false;
            };
            lp_ok(term, invoked, true)
                && invoked.occ == *occurrence
                && descriptor_ok(term, first)
                && descriptor_ok(term, second)
                && frame_descriptors_ok(term, first_frames)
                && frame_descriptors_ok(term, second_frames)
                && *continuation == wanted
        }
        KsHead::CnotDead {
            invoked, logged, ..
        } => lp_ok(term, invoked, true) && lp_ok(term, logged, true),
        KsHead::CnotQuery {
            invoked, logged, ..
        } => lp_ok(term, invoked, true) && lp_ok(term, logged, true),
        KsHead::CnotStage(_) => true,
    }
}

fn add_alpha_bits_log(e: &LogEntry, bits: &mut HashMap<KdKey, HashSet<u8>>) {
    let mut stack = vec![e];
    while let Some(e) = stack.pop() {
        match e {
            LogEntry::Alpha(a) => {
                bits.entry(KdKey {
                    gate: a.gate,
                    instance: a.instance.clone(),
                })
                .or_default()
                .insert(a.bit);
            }
            LogEntry::Lp(lp) => stack.extend(lp.slice.iter()),
            _ => {}
        }
    }
}

fn add_alpha_bits_tape(e: &TapeEntry, bits: &mut HashMap<KdKey, HashSet<u8>>) {
    match e {
        TapeEntry::Alpha(a) => {
            bits.entry(KdKey {
                gate: a.gate,
                instance: a.instance.clone(),
            })
            .or_default()
            .insert(a.bit);
        }
        TapeEntry::Lp(lp) => {
            for e in &lp.slice {
                add_alpha_bits_log(e, bits);
            }
        }
        _ => {}
    }
}

fn add_live_keys_log(e: &LogEntry, out: &mut HashSet<KdKey>) {
    let mut bits = HashMap::new();
    add_alpha_bits_log(e, &mut bits);
    out.extend(bits.into_keys());
}

fn add_live_keys_tape(e: &TapeEntry, out: &mut HashSet<KdKey>) {
    let mut bits = HashMap::new();
    add_alpha_bits_tape(e, &mut bits);
    out.extend(bits.into_keys());
}

fn add_live_keys_cargo(c: &RetainCargo, out: &mut HashSet<KdKey>) {
    match c {
        RetainCargo::Alpha(a) => {
            out.insert(KdKey {
                gate: a.gate,
                instance: a.instance.clone(),
            });
        }
        RetainCargo::Lp(lp) => {
            for e in &lp.slice {
                add_live_keys_log(e, out);
            }
        }
    }
}

fn gamma_count_log(root: &LogEntry) -> usize {
    let mut total = 0;
    let mut stack = vec![root];
    while let Some(e) = stack.pop() {
        match e {
            LogEntry::Gam(_) | LogEntry::Cgam(_) => total += 1,
            LogEntry::Lp(lp) => stack.extend(lp.slice.iter()),
            _ => {}
        }
    }
    total
}

fn gamma_count_tape(e: &TapeEntry) -> usize {
    match e {
        TapeEntry::Gam(_) | TapeEntry::Cgam(_) => 1,
        TapeEntry::Lp(lp) => lp.slice.iter().map(gamma_count_log).sum(),
        _ => 0,
    }
}

fn gamma_count_storage(e: &KsHead) -> usize {
    match e {
        KsHead::RetainWhole(RetainCargo::Lp(lp)) => lp.slice.iter().map(gamma_count_log).sum(),
        _ => 0,
    }
}

fn bitfree_keys(ks: &[KsHead]) -> HashSet<KdKey> {
    let mut out = HashSet::new();
    for e in ks {
        match e {
            KsHead::Decode { gate, instance } => {
                out.insert(KdKey {
                    gate: *gate,
                    instance: instance.clone(),
                });
            }
            KsHead::DeadBundle(keys) => out.extend(keys.iter().cloned()),
            _ => {}
        }
    }
    out
}

/// Check the honest compiler-indexed replacement for Gate 1's raw logged-
/// position equation.  Terminal states are outside the running grammar.
pub fn shadow_wf(compiled: &Compiled, state: &NfState) -> Vec<ShadowViolation> {
    if recognized_metadata(&compiled.term).as_ref() != Some(compiled) {
        return vec![ShadowViolation::Image];
    }
    shadow_wf_image_checked(compiled, state)
}

fn shadow_wf_image_checked(compiled: &Compiled, state: &NfState) -> Vec<ShadowViolation> {
    let NfState::Run(run) = state else {
        return Vec::new();
    };
    let token = &run.token;
    if subterm(&compiled.term, &token.path).is_none()
        || token.log.iter().any(|e| !log_ok(&compiled.term, e, true))
        || token.tape.iter().any(|e| !tape_ok(&compiled.term, e))
        || token
            .rs
            .iter()
            .any(|f| f.bit > 1 || !lp_ok(&compiled.term, &f.instance, true))
        || token.ks.iter().any(|e| !storage_ok(&compiled.term, e))
        || token.vb.is_some_and(|v| v.bit > 1 || v.k > 2)
    {
        return vec![ShadowViolation::Grammar];
    }
    let projected = projected_core(token);

    let mut bad = Vec::new();
    let active = token
        .ks
        .iter()
        .filter(|e| {
            matches!(e, KsHead::CnotHistory { continuation, .. }
                if path_prefix(&token.path, continuation))
        })
        .count();
    let defect = level(&token.path) as isize - token.log.len() as isize;
    if defect < 0 || defect as usize > active {
        bad.push(ShadowViolation::Level);
    }

    let mut keys = HashSet::new();
    let mut duplicate_frame = false;
    for f in &token.rs {
        if !keys.insert(KdKey {
            gate: f.gate,
            instance: f.instance.clone(),
        }) {
            duplicate_frame = true;
        }
    }
    if duplicate_frame {
        bad.push(ShadowViolation::DuplicateFrame);
    }
    // The first half is the actual state-identity invariant; the second is
    // exactly Python SW2 after its deep readback-to-kernel projection.
    if !rs_is_canonical(&token.rs) || !rs_is_canonical(&projected.rs) {
        bad.push(ShadowViolation::FrameOrder);
    }

    let mut bits: HashMap<KdKey, HashSet<u8>> = HashMap::new();
    for f in &token.rs {
        bits.entry(KdKey {
            gate: f.gate,
            instance: f.instance.clone(),
        })
        .or_default()
        .insert(f.bit);
    }
    for e in &token.log {
        add_alpha_bits_log(e, &mut bits);
    }
    for e in &token.tape {
        add_alpha_bits_tape(e, &mut bits);
    }
    if bits.values().any(|v| v.len() > 1) {
        bad.push(ShadowViolation::BitConflict);
    }

    if let (Some(vb), Some(LogEntry::Lp(lp))) = (token.vb, token.log.first()) {
        let key = KdKey {
            gate: vb.gate,
            instance: lp.clone(),
        };
        if keys.contains(&key) {
            bad.push(ShadowViolation::LiveVirtualFrame);
        }
        let mut live = HashSet::new();
        for e in &token.log {
            add_live_keys_log(e, &mut live);
        }
        for e in &token.tape {
            add_live_keys_tape(e, &mut live);
        }
        if live.contains(&key) {
            bad.push(ShadowViolation::LiveVirtualTicket);
        }
    }

    let mut lifecycle: HashMap<&Lp, usize> = HashMap::new();
    for e in &token.ks {
        match e {
            KsHead::CnotPark { invoked, .. } | KsHead::CnotHistory { invoked, .. } => {
                *lifecycle.entry(invoked).or_default() += 1;
            }
            _ => {}
        }
    }
    if lifecycle.values().any(|n| *n > 1) {
        bad.push(ShadowViolation::Lifecycle);
    }
    if token
        .ks
        .iter()
        .skip(1)
        .any(|e| matches!(e, KsHead::CnotStage(_)))
    {
        bad.push(ShadowViolation::StagePosition);
    }

    // SW5 is a predicate of the projected kernel token. Deep RBL entries
    // become gamma and nested RB delimiters become mu before counting.
    let gammas: usize = projected.log.iter().map(gamma_count_log).sum::<usize>()
        + projected.tape.iter().map(gamma_count_tape).sum::<usize>()
        + projected.ks.iter().map(gamma_count_storage).sum::<usize>();
    let mus = projected
        .tape
        .iter()
        .filter(|e| matches!(e, TapeEntry::Mu(_) | TapeEntry::Cmu { .. }))
        .count();
    let answers = projected
        .tape
        .iter()
        .filter(|e| matches!(e, TapeEntry::Ans(_, _)))
        .count();
    if gammas != mus + answers {
        bad.push(ShadowViolation::ProbeBalance);
    }
    if token.tape.iter().filter(|e| **e == TapeEntry::Rho).count() != 0 {
        // Composed tokens carry RB, not rho. The projected root check below
        // accepts exactly one root RB at the tail.
        bad.push(ShadowViolation::RootDelimiter);
    } else if token
        .tape
        .iter()
        .filter(|e| matches!(e, TapeEntry::Rb(r) if r.output.is_empty() && r.code.is_empty()))
        .count()
        != 1
        || !matches!(token.tape.last(), Some(TapeEntry::Rb(r)) if r.output.is_empty() && r.code.is_empty())
    {
        bad.push(ShadowViolation::RootDelimiter);
    }

    let mut answerable = keys;
    for e in &token.log {
        add_live_keys_log(e, &mut answerable);
    }
    for e in &token.tape {
        add_live_keys_tape(e, &mut answerable);
    }
    let mut burial = HashSet::new();
    for e in &token.ks {
        if let KsHead::RetainWhole(c) = e {
            add_live_keys_cargo(c, &mut burial);
        }
    }
    let bitfree = bitfree_keys(&token.ks);
    if answerable.union(&burial).any(|key| bitfree.contains(key)) {
        bad.push(ShadowViolation::StorageExclusivity);
    }
    let mut tickets: HashMap<KdKey, usize> = HashMap::new();
    for e in &token.log {
        let mut live = HashSet::new();
        add_live_keys_log(e, &mut live);
        for key in live {
            *tickets.entry(key).or_default() += 1;
        }
    }
    for e in &token.tape {
        let mut live = HashSet::new();
        add_live_keys_tape(e, &mut live);
        for key in live {
            *tickets.entry(key).or_default() += 1;
        }
    }
    if tickets.values().any(|n| *n > 1) {
        bad.push(ShadowViolation::DuplicateTicket);
    }
    bad
}

#[derive(Clone, Debug, PartialEq, Eq, Hash)]
struct Arrival {
    slot: u8,
    cargo: RetainCargo,
    tail: Vec<TapeEntry>,
    log: Vec<LogEntry>,
    frames: Vec<Frame>,
    storage: Vec<KsHead>,
}

fn project_lp(lp: &Lp) -> Lp {
    Lp {
        occ: lp.occ.clone(),
        slice: lp.slice.iter().map(project_log).collect(),
    }
}

fn project_key(key: &KdKey) -> KdKey {
    KdKey {
        gate: key.gate,
        instance: project_lp(&key.instance),
    }
}

fn project_alpha(a: &Alpha) -> Alpha {
    Alpha {
        gate: a.gate,
        instance: project_lp(&a.instance),
        bit: a.bit,
        epoch: a.epoch.clone(),
    }
}

fn project_cgam(g: &CGam) -> CGam {
    CGam {
        port: g.port,
        invoked: project_lp(&g.invoked),
        occurrence: g.occurrence.clone(),
        first: g.first.clone(),
        second: g.second.clone(),
        continuation: g.continuation.clone(),
    }
}

fn project_log(e: &LogEntry) -> LogEntry {
    match e {
        LogEntry::Lp(lp) => LogEntry::Lp(project_lp(lp)),
        LogEntry::Gam(g) => LogEntry::Gam(*g),
        LogEntry::Cgam(g) => LogEntry::Cgam(project_cgam(g)),
        LogEntry::Alpha(a) => LogEntry::Alpha(project_alpha(a)),
        LogEntry::Rbl(_) => LogEntry::Gam(GateName::H),
    }
}

fn project_cargo(c: &RetainCargo) -> RetainCargo {
    match c {
        RetainCargo::Lp(lp) => RetainCargo::Lp(project_lp(lp)),
        RetainCargo::Alpha(a) => RetainCargo::Alpha(project_alpha(a)),
    }
}

fn project_tape(e: &TapeEntry) -> TapeEntry {
    match e {
        TapeEntry::BulletBa => TapeEntry::Bullet,
        TapeEntry::Rb(r) if r.output.is_empty() && r.code.is_empty() => TapeEntry::Rho,
        TapeEntry::Rb(_) => TapeEntry::Mu(GateName::H),
        TapeEntry::Rbl(_) => TapeEntry::Gam(GateName::H),
        TapeEntry::Lp(lp) => TapeEntry::Lp(project_lp(lp)),
        TapeEntry::Alpha(a) => TapeEntry::Alpha(project_alpha(a)),
        TapeEntry::Cgam(g) => TapeEntry::Cgam(project_cgam(g)),
        TapeEntry::Cmu { port, invoked } => TapeEntry::Cmu {
            port: *port,
            invoked: project_lp(invoked),
        },
        _ => e.clone(),
    }
}

fn project_frame(f: &Frame) -> Frame {
    Frame {
        gate: f.gate,
        instance: project_lp(&f.instance),
        bit: f.bit,
        epoch: f.epoch.clone(),
    }
}

fn project_descriptor(d: &CDescriptor) -> CDescriptor {
    match d {
        CDescriptor::Alpha {
            gate,
            instance,
            epoch,
        } => CDescriptor::Alpha {
            gate: *gate,
            instance: project_lp(instance),
            epoch: epoch.clone(),
        },
        CDescriptor::Logged(c) => CDescriptor::Logged(project_cargo(c)),
    }
}

fn project_frames(fs: &[FrameDescriptor]) -> Vec<FrameDescriptor> {
    fs.iter()
        .map(|f| FrameDescriptor {
            gate: f.gate,
            instance: project_lp(&f.instance),
            epoch: f.epoch.clone(),
        })
        .collect()
}

fn project_storage(e: &KsHead) -> KsHead {
    match e {
        KsHead::Decode { gate, instance } => KsHead::Decode {
            gate: *gate,
            instance: project_lp(instance),
        },
        KsHead::DeadBundle(keys) => KsHead::DeadBundle(
            keys.iter()
                .map(|k| KdKey {
                    gate: k.gate,
                    instance: project_lp(&k.instance),
                })
                .collect(),
        ),
        KsHead::Suppressed { gate, instance } => KsHead::Suppressed {
            gate: *gate,
            instance: project_lp(instance),
        },
        KsHead::RetainWhole(c) => KsHead::RetainWhole(project_cargo(c)),
        KsHead::CnotPark {
            invoked,
            bit,
            descriptor,
            frames,
            occurrence,
            continuation,
        } => KsHead::CnotPark {
            invoked: project_lp(invoked),
            bit: *bit,
            descriptor: project_descriptor(descriptor),
            frames: project_frames(frames),
            occurrence: occurrence.clone(),
            continuation: continuation.clone(),
        },
        KsHead::CnotHistory {
            invoked,
            first,
            first_frames,
            second,
            second_frames,
            occurrence,
            continuation,
        } => KsHead::CnotHistory {
            invoked: project_lp(invoked),
            first: project_descriptor(first),
            first_frames: project_frames(first_frames),
            second: project_descriptor(second),
            second_frames: project_frames(second_frames),
            occurrence: occurrence.clone(),
            continuation: continuation.clone(),
        },
        KsHead::CnotDead {
            port,
            invoked,
            epoch,
            logged,
            answered,
        } => KsHead::CnotDead {
            port: *port,
            invoked: project_lp(invoked),
            epoch: epoch.clone(),
            logged: project_lp(logged),
            answered: *answered,
        },
        KsHead::CnotQuery {
            port,
            invoked,
            logged,
        } => KsHead::CnotQuery {
            port: *port,
            invoked: project_lp(invoked),
            logged: project_lp(logged),
        },
        KsHead::CnotStage(s) => KsHead::CnotStage(*s),
    }
}

fn projected_core(c: &RunCore) -> RunCore {
    RunCore {
        path: c.path.clone(),
        d: c.d,
        log: c.log.iter().map(project_log).collect(),
        tape: c.tape.iter().map(project_tape).collect(),
        vb: c.vb,
        rs: c.rs.iter().map(project_frame).collect(),
        ks: c.ks.iter().map(project_storage).collect(),
    }
}

fn arrival(c: &RunCore) -> Option<(u8, RetainCargo, Vec<TapeEntry>)> {
    fn cargo(e: &TapeEntry) -> Option<RetainCargo> {
        match e {
            TapeEntry::Lp(lp) => Some(RetainCargo::Lp(lp.clone())),
            TapeEntry::Alpha(a) => Some(RetainCargo::Alpha(a.clone())),
            _ => None,
        }
    }
    match c.tape.as_slice() {
        [head, TapeEntry::Mu(_) | TapeEntry::Cmu { .. }, tail @ ..] => {
            Some((0, cargo(head)?, tail.to_vec()))
        }
        [TapeEntry::Bullet, head, TapeEntry::Mu(_) | TapeEntry::Cmu { .. }, tail @ ..] => {
            Some((1, cargo(head)?, tail.to_vec()))
        }
        _ => None,
    }
}

fn gam_free(c: &RetainCargo) -> bool {
    let RetainCargo::Lp(lp) = c else {
        return true;
    };
    let mut stack: Vec<&LogEntry> = lp.slice.iter().collect();
    while let Some(e) = stack.pop() {
        match e {
            LogEntry::Gam(_) | LogEntry::Cgam(_) => return false,
            LogEntry::Lp(lp) => stack.extend(lp.slice.iter()),
            _ => {}
        }
    }
    true
}

fn live_keys_cargo(c: &RetainCargo) -> HashSet<KdKey> {
    let mut out = HashSet::new();
    add_live_keys_cargo(c, &mut out);
    out
}

fn erased_keys(a: &Arrival, popped: &[Frame], retained: &[Frame]) -> HashSet<KdKey> {
    let mut out = live_keys_cargo(&a.cargo);
    out.extend(popped.iter().map(|f| KdKey {
        gate: f.gate,
        instance: f.instance.clone(),
    }));
    for f in retained {
        out.remove(&KdKey {
            gate: f.gate,
            instance: f.instance.clone(),
        });
    }
    for e in &a.storage {
        if let KsHead::RetainWhole(c) = e {
            for key in live_keys_cargo(c) {
                out.remove(&key);
            }
        }
    }
    for e in &a.tail {
        let mut live = HashSet::new();
        add_live_keys_tape(e, &mut live);
        for key in live {
            out.remove(&key);
        }
    }
    for e in &a.log {
        let mut live = HashSet::new();
        add_live_keys_log(e, &mut live);
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
    for a in arrivals {
        if !gam_free(&a.cargo) {
            return false;
        }
        let (popped, retained): (Vec<_>, Vec<_>) = a.frames.iter().cloned().partition(|f| {
            popset.contains(&KdKey {
                gate: f.gate,
                instance: f.instance.clone(),
            })
        });
        if popped.iter().any(|f| f.bit != a.slot) {
            return false;
        }
        let mut bits = HashMap::new();
        match &a.cargo {
            RetainCargo::Alpha(alpha) => {
                bits.entry(KdKey {
                    gate: alpha.gate,
                    instance: alpha.instance.clone(),
                })
                .or_insert_with(HashSet::new)
                .insert(alpha.bit);
            }
            RetainCargo::Lp(lp) => {
                for e in &lp.slice {
                    add_alpha_bits_log(e, &mut bits);
                }
            }
        }
        for f in &a.frames {
            bits.entry(KdKey {
                gate: f.gate,
                instance: f.instance.clone(),
            })
            .or_insert_with(HashSet::new)
            .insert(f.bit);
        }
        if bits.values().any(|v| v.len() > 1) {
            return false;
        }
        if !popped.is_empty()
            || !matches!(&a.cargo, RetainCargo::Alpha(alpha) if alpha.bit == a.slot)
        {
            has_data = true;
        }
        let fkey = (
            a.slot,
            a.tail.clone(),
            a.log.clone(),
            a.storage.clone(),
            retained.clone(),
        );
        let fvalue = (a.cargo.clone(), popped.clone());
        if fibres
            .insert(fkey, fvalue.clone())
            .is_some_and(|v| v != fvalue)
        {
            return false;
        }
        bundles
            .entry((
                a.tail.clone(),
                a.log.clone(),
                a.storage.clone(),
                retained.clone(),
            ))
            .or_default()
            .insert(a.slot, erased_keys(a, &popped, &retained));
    }
    if bundles
        .values()
        .any(|slots| matches!((slots.get(&0), slots.get(&1)), (Some(a), Some(b)) if a != b))
    {
        return false;
    }
    has_data
}

fn closed_nf(n: &Nf, depth: u64) -> bool {
    match n {
        Nf::Hole { .. } => false,
        Nf::Var(i) => *i >= 1 && *i <= depth,
        Nf::Lam(body) => closed_nf(body, depth + 1),
        Nf::Gate(g) => matches!(g, GateName::H | GateName::T),
        Nf::App(f, a) => {
            if matches!(f.as_ref(), Nf::Lam(_)) {
                return false;
            }
            if matches!(f.as_ref(), Nf::Gate(_)) {
                return neutral_headed(a, depth) && closed_nf(a, depth);
            }
            closed_nf(f, depth) && closed_nf(a, depth)
        }
    }
}

fn neutral_headed(n: &Nf, depth: u64) -> bool {
    match n {
        Nf::Var(i) => *i >= 1 && *i <= depth,
        Nf::App(f, a) => neutral_headed(f, depth) && closed_nf(a, depth),
        _ => false,
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct AuditReport {
    pub certified: bool,
    pub basis: usize,
    pub certificate_positions: usize,
    pub wf_violations: usize,
    pub transparency_violations: usize,
    pub vacuous_positions: usize,
    pub vacuous_keys: usize,
    pub range_violations: usize,
    pub adapter_errors: usize,
    pub error_terminals: usize,
    pub output_violations: usize,
    pub nonunit: usize,
    pub nonorthogonal: usize,
}

/// Complete finite audit of one compiler image.  Success is evidence, not the
/// admission rule: `structural_admission` is deliberately cap-free.
pub fn validate(
    compiled: &Compiled,
    certificate: &CertEntries,
    state_cap: usize,
) -> Result<AuditReport, NfError> {
    let image_ok = recognized_metadata(&compiled.term).as_ref() == Some(compiled);
    let carrier = nf_carrier_and_columns_with(
        MachineKind::Gate2,
        &compiled.term,
        Some(certificate),
        2,
        state_cap,
    )?;
    let gram = nf_gram_with(
        MachineKind::Gate2,
        &compiled.term,
        Some(certificate),
        2,
        state_cap,
    )?;
    let mut arrivals: HashMap<Vec<Dir>, Vec<Arrival>> = HashMap::new();
    for state in &carrier.order {
        let NfState::Run(run) = state else {
            continue;
        };
        let core = projected_core(&run.token);
        if core.vb.is_none()
            && core.path.last() == Some(&Dir::A)
            && core.d == Vert::U
            && matches!(core.log.first(), Some(LogEntry::Gam(_) | LogEntry::Cgam(_)))
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
    let mut transparency_violations = 0;
    let mut vacuous_positions = 0;
    let mut vacuous_keys = 0;
    for (position, keys) in certificate {
        let projected_keys: Vec<KdKey> = keys.iter().map(project_key).collect();
        let Some(here) = arrivals.get(position) else {
            vacuous_positions += 1;
            continue;
        };
        if !transparent(here, &projected_keys) {
            transparency_violations += 1;
        }
        for key in &projected_keys {
            if !here.iter().any(|a| {
                a.frames
                    .iter()
                    .any(|f| f.gate == key.gate && f.instance == key.instance)
            }) {
                vacuous_keys += 1;
            }
        }
    }

    let wf_violations = if image_ok {
        carrier
            .order
            .iter()
            .filter(|state| !shadow_wf_image_checked(compiled, state).is_empty())
            .count()
    } else {
        carrier.order.len()
    };
    let mut incoming: HashMap<usize, Vec<(usize, &str)>> = HashMap::new();
    let mut adapter_errors = 0;
    for (source, rows) in &carrier.columns {
        for (_, rule, target) in rows {
            incoming.entry(*target).or_default().push((*source, rule));
            if matches!(
                rule.as_str(),
                "error-pop-err"
                    | "error-stuck"
                    | "error-machine-exception"
                    | "error-invalid-kernel-target"
            ) {
                adapter_errors += 1;
            }
        }
    }
    let mut range_violations = 0;
    for rows in incoming.values() {
        let sources: HashSet<_> = rows.iter().map(|(s, _)| *s).collect();
        if sources.len() > 1 && !(sources.len() == 2 && rows.iter().all(|(_, r)| *r == "fire-h")) {
            range_violations += 1;
        }
        if rows.iter().any(|(_, r)| super::shadow::is_custom_rule(r)) && sources.len() != 1 {
            range_violations += 1;
        }
    }
    let error_terminals = carrier
        .order
        .iter()
        .filter(|s| {
            matches!(
                s,
                NfState::RunDone(NfTerminal::Error { .. })
                    | NfState::Done {
                        terminal: NfTerminal::Error { .. },
                        ..
                    }
            )
        })
        .count();
    let output_violations = carrier
        .order
        .iter()
        .filter(|s| match s {
            NfState::RunDone(NfTerminal::Halt { output, .. })
            | NfState::Done {
                terminal: NfTerminal::Halt { output, .. },
                ..
            } => !closed_nf(output, 0),
            _ => false,
        })
        .count();
    let certified = wf_violations == 0
        && transparency_violations == 0
        && vacuous_positions == 0
        && vacuous_keys == 0
        && range_violations == 0
        && adapter_errors == 0
        && error_terminals == 0
        && output_violations == 0
        && gram.nonunit == 0
        && gram.nonorthogonal == 0;
    Ok(AuditReport {
        certified,
        basis: gram.basis,
        certificate_positions: certificate.len(),
        wf_violations,
        transparency_violations,
        vacuous_positions,
        vacuous_keys,
        range_violations,
        adapter_errors,
        error_terminals,
        output_violations,
        nonunit: gram.nonunit,
        nonorthogonal: gram.nonorthogonal,
    })
}

/// Exact ideal H/T/CNOT column in the same little-endian wire convention as
/// the compiler battery (`wire 0` is the low bit).
pub fn ideal_column(circuit: &Circuit, basis: usize) -> Option<Vec<super::amp::Amp>> {
    if basis >= (1usize.checked_shl(circuit.width as u32)?) {
        return None;
    }
    let mut state = vec![super::amp::Amp::ZERO; 1usize.checked_shl(circuit.width as u32)?];
    state[basis] = super::amp::Amp::ONE;
    for gate in &circuit.gates {
        let mut out = vec![super::amp::Amp::ZERO; state.len()];
        match gate.kind {
            super::compiler::Kind::H => {
                for (source, amplitude) in state.iter().copied().enumerate() {
                    let bit = (source >> gate.first) & 1;
                    let target = source ^ (1 << gate.first);
                    let diagonal = if bit == 1 {
                        amplitude.div_sqrt2()?.neg()?
                    } else {
                        amplitude.div_sqrt2()?
                    };
                    out[source] = out[source].add(diagonal)?;
                    out[target] = out[target].add(amplitude.div_sqrt2()?)?;
                }
            }
            super::compiler::Kind::T => {
                for (source, amplitude) in state.iter().copied().enumerate() {
                    let value = if ((source >> gate.first) & 1) == 1 {
                        amplitude.mul_omega()?
                    } else {
                        amplitude
                    };
                    out[source] = out[source].add(value)?;
                }
            }
            super::compiler::Kind::Cx => {
                let target = gate.second?;
                for (source, amplitude) in state.iter().copied().enumerate() {
                    let image = source ^ (((source >> gate.first) & 1) << target);
                    out[image] = out[image].add(amplitude)?;
                }
            }
        }
        state = out;
    }
    Some(state)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::qalc::compiler::{Circuit, Op};

    #[test]
    fn structural_admission_bypasses_carriers_and_rejects_mutation() {
        let c = Circuit::new(2, vec![Op::h(0), Op::cx(0, 1)]).unwrap();
        let compiled = super::super::compiler::compile_circuit(&c).unwrap();
        let admitted = structural_admission(&compiled.term).unwrap().unwrap();
        assert_eq!(admitted.circuit(), &c);
        assert_eq!(
            admitted.certificate(),
            &compiler_certificate(&compiled).unwrap()
        );
        let Term::App(f, _) = &compiled.term else {
            unreachable!()
        };
        let mutated = Term::App(f.clone(), Box::new(Term::Gate(GateName::H)));
        assert!(structural_admission(&mutated).unwrap().is_none());
    }
}
