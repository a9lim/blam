//! Gate-1 well-formedness at the Rust admission boundary.
//!
//! This is the typed Rust subset of `qalc/wf.py` used by
//! `readback_certify.validate_nf`.  Python's W0 also defends its host
//! boundary against tuple/list subclasses, hostile `__hash__`, missing
//! dataclass fields, and cyclic object graphs.  Rust's closed enums and
//! owned acyclic trees make those clauses impossible by construction; the
//! live W0 surface here is therefore the semantic grammar (closed term,
//! valid paths/logged positions, bits, gate species, and register placement).
//! W1--W6 and W8--W9 are checked directly.  W7 is certificate-relative and
//! is checked over the complete composed carrier in `admission`.

use std::collections::{HashMap, HashSet};

use super::mark::{
    rs_is_canonical, Alpha, Frame, GateTag, KdKey, KsHead, LogEntry, Lp, RetainCargo, TapeEntry,
};
use super::state::{RunCore, Vb};
use super::term::{binder_path, level, subterm, GateName, Term};

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Violation {
    W0,
    W1,
    W2,
    W3,
    W4,
    W5,
    W6,
    W8,
    W9,
}

fn project_lp(lp: &Lp) -> Lp {
    Lp {
        occ: lp.occ.clone(),
        slice: lp.slice.iter().map(project_log).collect(),
    }
}

fn project_alpha(alpha: &Alpha) -> Alpha {
    Alpha {
        gate: alpha.gate,
        instance: project_lp(&alpha.instance),
        bit: alpha.bit,
        epoch: alpha.epoch.clone(),
    }
}

fn project_log(entry: &LogEntry) -> LogEntry {
    match entry {
        LogEntry::Lp(lp) => LogEntry::Lp(project_lp(lp)),
        LogEntry::Alpha(alpha) => LogEntry::Alpha(project_alpha(alpha)),
        // Each nested RBL pairs with one nested RB.  Gamma/mu is the
        // balanced kernel scaffold used by the Python checker.
        LogEntry::Rbl(_) => LogEntry::Gam(GateName::H),
        _ => entry.clone(),
    }
}

fn project_cargo(cargo: &RetainCargo) -> RetainCargo {
    match cargo {
        RetainCargo::Lp(lp) => RetainCargo::Lp(project_lp(lp)),
        RetainCargo::Alpha(alpha) => RetainCargo::Alpha(project_alpha(alpha)),
    }
}

fn project_tape(entry: &TapeEntry) -> TapeEntry {
    match entry {
        TapeEntry::BulletBa => TapeEntry::Bullet,
        TapeEntry::Rb(rb) if rb.output.is_empty() && rb.code.is_empty() => TapeEntry::Rho,
        TapeEntry::Rb(_) => TapeEntry::Mu(GateName::H),
        TapeEntry::Rbl(_) => TapeEntry::Gam(GateName::H),
        TapeEntry::Lp(lp) => TapeEntry::Lp(project_lp(lp)),
        TapeEntry::Alpha(alpha) => TapeEntry::Alpha(project_alpha(alpha)),
        _ => entry.clone(),
    }
}

fn project_storage(entry: &KsHead) -> KsHead {
    match entry {
        KsHead::Decode { gate, instance } => KsHead::Decode {
            gate: *gate,
            instance: project_lp(instance),
        },
        KsHead::DeadBundle(keys) => KsHead::DeadBundle(
            keys.iter()
                .map(|key| KdKey {
                    gate: key.gate,
                    instance: project_lp(&key.instance),
                })
                .collect(),
        ),
        KsHead::Suppressed { gate, instance } => KsHead::Suppressed {
            gate: *gate,
            instance: project_lp(instance),
        },
        KsHead::RetainWhole(cargo) => KsHead::RetainWhole(project_cargo(cargo)),
        _ => entry.clone(),
    }
}

/// Forget composed RB/RBL/BA control into the audited kernel alphabet.
pub fn kernel_projection(state: &RunCore) -> RunCore {
    RunCore {
        path: state.path.clone(),
        d: state.d,
        log: state.log.iter().map(project_log).collect(),
        tape: state.tape.iter().map(project_tape).collect(),
        vb: state.vb,
        rs: state
            .rs
            .iter()
            .map(|frame| Frame {
                gate: frame.gate,
                instance: project_lp(&frame.instance),
                bit: frame.bit,
                epoch: frame.epoch.clone(),
            })
            .collect(),
        ks: state.ks.iter().map(project_storage).collect(),
    }
}

fn gate1_tag(g: GateTag) -> bool {
    matches!(g, GateTag::H | GateTag::T)
}

fn gate1_gate(g: GateName) -> bool {
    matches!(g, GateName::H | GateName::T)
}

/// Iterative closedness and source-alphabet check.  `Gate(c)` belongs only
/// to the structural Gate-2 selector and is outside Gate-1 W0.
pub fn closed_gate1_term(term: &Term) -> bool {
    let mut stack = vec![(term, 0u64)];
    while let Some((node, depth)) = stack.pop() {
        match node {
            Term::Var(i) if *i >= 1 && u64::from(*i) <= depth => {}
            Term::Var(_) | Term::Gate(GateName::C) => return false,
            Term::Gate(_) => {}
            Term::Lam(body) => stack.push((body, depth + 1)),
            Term::App(function, argument) => {
                stack.push((argument, depth));
                stack.push((function, depth));
            }
        }
    }
    true
}

fn lp_local_ok(term: &Term, lp: &Lp) -> bool {
    let Some(binder) = binder_path(term, &lp.occ) else {
        return false;
    };
    level(&lp.occ)
        .checked_sub(level(&binder))
        .is_some_and(|required| required == lp.slice.len())
}

fn alpha_local_ok(term: &Term, alpha: &Alpha) -> bool {
    gate1_tag(alpha.gate) && alpha.bit <= 1 && lp_local_ok(term, &alpha.instance)
}

fn logs_ok<'a>(term: &Term, roots: impl IntoIterator<Item = &'a LogEntry>) -> bool {
    let mut stack: Vec<&LogEntry> = roots.into_iter().collect();
    while let Some(entry) = stack.pop() {
        match entry {
            LogEntry::Lp(lp) => {
                if !lp_local_ok(term, lp) {
                    return false;
                }
                stack.extend(lp.slice.iter());
            }
            LogEntry::Gam(gate) if gate1_gate(*gate) => {}
            LogEntry::Alpha(alpha) if alpha_local_ok(term, alpha) => {
                stack.extend(alpha.instance.slice.iter());
            }
            // RBL is projected to gamma before W0; native-CNOT marks are
            // outside the Gate-1 grammar.
            _ => return false,
        }
    }
    true
}

fn cargo_ok(term: &Term, cargo: &RetainCargo) -> bool {
    match cargo {
        RetainCargo::Lp(lp) => lp_local_ok(term, lp) && logs_ok(term, lp.slice.iter()),
        RetainCargo::Alpha(alpha) => {
            alpha_local_ok(term, alpha) && logs_ok(term, alpha.instance.slice.iter())
        }
    }
}

fn frame_ok(term: &Term, frame: &Frame) -> bool {
    gate1_tag(frame.gate)
        && frame.bit <= 1
        && !matches!(frame.epoch, super::mark::Epoch::Fresh)
        && lp_local_ok(term, &frame.instance)
        && logs_ok(term, frame.instance.slice.iter())
}

fn key_ok(term: &Term, key: &KdKey) -> bool {
    gate1_tag(key.gate)
        && lp_local_ok(term, &key.instance)
        && logs_ok(term, key.instance.slice.iter())
}

fn tape_ok(term: &Term, tape: &[TapeEntry]) -> bool {
    tape.iter().all(|entry| match entry {
        TapeEntry::Bullet | TapeEntry::Rho => true,
        TapeEntry::Lp(lp) => lp_local_ok(term, lp) && logs_ok(term, lp.slice.iter()),
        TapeEntry::Gam(gate) | TapeEntry::Mu(gate) => gate1_gate(*gate),
        TapeEntry::Ans(gate, bit) => gate1_gate(*gate) && *bit <= 1,
        TapeEntry::Alpha(alpha) => {
            alpha_local_ok(term, alpha) && logs_ok(term, alpha.instance.slice.iter())
        }
        _ => false,
    })
}

fn storage_ok(term: &Term, storage: &[KsHead]) -> bool {
    storage.iter().all(|entry| match entry {
        KsHead::Decode { gate, instance } | KsHead::Suppressed { gate, instance } => {
            gate1_tag(*gate) && lp_local_ok(term, instance) && logs_ok(term, instance.slice.iter())
        }
        KsHead::DeadBundle(keys) => keys.iter().all(|key| key_ok(term, key)),
        KsHead::RetainWhole(cargo) => cargo_ok(term, cargo),
        _ => false,
    })
}

fn vb_ok(vb: &Option<Vb>) -> bool {
    vb.as_ref()
        .is_none_or(|v| gate1_tag(v.gate) && v.bit <= 1 && v.k <= 2)
}

fn note_bit(bits: &mut HashMap<KdKey, u8>, key: KdKey, bit: u8) -> bool {
    bits.insert(key, bit).is_none_or(|old| old == bit)
}

fn walk_alpha_log(root: &LogEntry, mut f: impl FnMut(&Alpha)) {
    let mut stack = vec![root];
    while let Some(entry) = stack.pop() {
        match entry {
            LogEntry::Alpha(alpha) => f(alpha),
            LogEntry::Lp(lp) => stack.extend(lp.slice.iter()),
            _ => {}
        }
    }
}

fn walk_alpha_tape(root: &TapeEntry, mut f: impl FnMut(&Alpha)) {
    match root {
        TapeEntry::Alpha(alpha) => f(alpha),
        TapeEntry::Lp(lp) => {
            for entry in &lp.slice {
                walk_alpha_log(entry, &mut f);
            }
        }
        _ => {}
    }
}

fn walk_alpha_cargo(root: &RetainCargo, mut f: impl FnMut(&Alpha)) {
    match root {
        RetainCargo::Alpha(alpha) => f(alpha),
        RetainCargo::Lp(lp) => {
            for entry in &lp.slice {
                walk_alpha_log(entry, &mut f);
            }
        }
    }
}

fn deep_gamma_log(root: &LogEntry) -> usize {
    let mut count = 0usize;
    let mut stack = vec![root];
    while let Some(entry) = stack.pop() {
        match entry {
            LogEntry::Gam(_) => count += 1,
            LogEntry::Lp(lp) => stack.extend(lp.slice.iter()),
            _ => {}
        }
    }
    count
}

fn key(gate: GateTag, instance: &Lp) -> KdKey {
    KdKey {
        gate,
        instance: instance.clone(),
    }
}

fn bitfree_keys(storage: &[KsHead]) -> HashSet<KdKey> {
    let mut out = HashSet::new();
    for entry in storage {
        match entry {
            KsHead::Decode { gate, instance } => {
                out.insert(key(*gate, instance));
            }
            KsHead::DeadBundle(keys) => out.extend(keys.iter().cloned()),
            _ => {}
        }
    }
    out
}

/// Check the live Gate-1 W0--W9 subset on one projected kernel token.
pub fn check(term: &Term, state: &RunCore) -> Vec<Violation> {
    let w0 = !closed_gate1_term(term)
        || subterm(term, &state.path).is_none()
        || !logs_ok(term, state.log.iter())
        || !tape_ok(term, &state.tape)
        || !state.rs.iter().all(|frame| frame_ok(term, frame))
        || !storage_ok(term, &state.ks)
        || !vb_ok(&state.vb);
    if w0 {
        return vec![Violation::W0];
    }

    let mut bad = Vec::new();
    if state.log.len() != level(&state.path) {
        bad.push(Violation::W1);
    }

    let mut frame_keys = HashSet::new();
    if !state
        .rs
        .iter()
        .all(|frame| frame_keys.insert(key(frame.gate, &frame.instance)))
        || !rs_is_canonical(&state.rs)
    {
        bad.push(Violation::W2);
    }

    let mut bits = HashMap::new();
    let mut coherent = true;
    for frame in &state.rs {
        coherent &= note_bit(&mut bits, key(frame.gate, &frame.instance), frame.bit);
    }
    for entry in &state.log {
        walk_alpha_log(entry, |alpha| {
            coherent &= note_bit(&mut bits, key(alpha.gate, &alpha.instance), alpha.bit);
        });
    }
    for entry in &state.tape {
        walk_alpha_tape(entry, |alpha| {
            coherent &= note_bit(&mut bits, key(alpha.gate, &alpha.instance), alpha.bit);
        });
    }
    for entry in &state.ks {
        if let KsHead::RetainWhole(cargo) = entry {
            walk_alpha_cargo(cargo, |alpha| {
                coherent &= note_bit(&mut bits, key(alpha.gate, &alpha.instance), alpha.bit);
            });
        }
    }
    if !coherent {
        bad.push(Violation::W3);
    }

    let bitfree = bitfree_keys(&state.ks);
    if let (Some(vb), Some(LogEntry::Lp(instance))) = (&state.vb, state.log.first()) {
        let active = key(vb.gate, instance);
        let frame = state.rs.iter().any(|f| key(f.gate, &f.instance) == active);
        let mut ticket = false;
        for entry in &state.log {
            walk_alpha_log(entry, |a| ticket |= key(a.gate, &a.instance) == active);
        }
        for entry in &state.tape {
            walk_alpha_tape(entry, |a| ticket |= key(a.gate, &a.instance) == active);
        }
        let mut conflicting_burial = false;
        for entry in &state.ks {
            if let KsHead::RetainWhole(cargo) = entry {
                walk_alpha_cargo(cargo, |a| {
                    conflicting_burial |= key(a.gate, &a.instance) == active && a.bit != vb.bit;
                });
            }
        }
        if frame || ticket || bitfree.contains(&active) || conflicting_burial {
            bad.push(Violation::W4);
        }
    }

    let gamma = state.log.iter().map(deep_gamma_log).sum::<usize>()
        + state
            .tape
            .iter()
            .map(|entry| match entry {
                TapeEntry::Gam(_) => 1,
                TapeEntry::Lp(lp) => lp.slice.iter().map(deep_gamma_log).sum(),
                _ => 0,
            })
            .sum::<usize>()
        + state
            .ks
            .iter()
            .map(|entry| match entry {
                KsHead::RetainWhole(RetainCargo::Lp(lp)) => {
                    lp.slice.iter().map(deep_gamma_log).sum()
                }
                _ => 0,
            })
            .sum::<usize>();
    let probes = state
        .tape
        .iter()
        .filter(|entry| matches!(entry, TapeEntry::Mu(_) | TapeEntry::Ans(_, _)))
        .count();
    if gamma != probes {
        bad.push(Violation::W5);
    }
    if state.tape.last() != Some(&TapeEntry::Rho)
        || state
            .tape
            .iter()
            .filter(|entry| **entry == TapeEntry::Rho)
            .count()
            != 1
    {
        bad.push(Violation::W6);
    }

    let mut answerable = frame_keys;
    let mut tickets: HashMap<KdKey, usize> = HashMap::new();
    for entry in &state.log {
        walk_alpha_log(entry, |a| {
            let k = key(a.gate, &a.instance);
            answerable.insert(k.clone());
            *tickets.entry(k).or_default() += 1;
        });
    }
    for entry in &state.tape {
        walk_alpha_tape(entry, |a| {
            let k = key(a.gate, &a.instance);
            answerable.insert(k.clone());
            *tickets.entry(k).or_default() += 1;
        });
    }
    let mut burial = HashSet::new();
    for entry in &state.ks {
        if let KsHead::RetainWhole(cargo) = entry {
            walk_alpha_cargo(cargo, |a| {
                burial.insert(key(a.gate, &a.instance));
            });
        }
    }
    if answerable.union(&burial).any(|k| bitfree.contains(k)) {
        bad.push(Violation::W8);
    }
    if tickets.values().any(|count| *count > 1) {
        bad.push(Violation::W9);
    }
    bad
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::qalc::state::Vert;

    #[test]
    fn typed_w0_and_live_invariants_reject_real_corruptions() {
        let term = Term::Lam(Box::new(Term::Var(1)));
        let root = RunCore {
            path: vec![],
            d: Vert::D,
            log: vec![],
            tape: vec![TapeEntry::Bullet, TapeEntry::Bullet, TapeEntry::Rho],
            vb: None,
            rs: vec![],
            ks: vec![],
        };
        assert!(check(&term, &root).is_empty());

        let mut broken = root.clone();
        broken.tape.push(TapeEntry::Rho);
        assert!(check(&term, &broken).contains(&Violation::W6));

        let open = Term::Var(1);
        assert_eq!(check(&open, &root), vec![Violation::W0]);
    }
}
