//! Gate-2 native-CNOT shadow step table — the literal differential port of
//! `qalc/gate2_cnot_shadow.py`.
//!
//! Every non-CNOT row delegates unchanged to the frozen Gate-1 kernel. The
//! four information-compressing CNOT rows are split through typed `CStage`
//! coordinates, and [`custom_predecessor`] supplies their exact inverse over
//! the composed state. No ambient dispatcher is mutated: callers select this
//! table explicitly through `readback::MachineKind::Gate2`.

use super::kernel::{instance, rs_insert, Defect, Row};
use super::mark::{
    Alpha, CDescriptor, CGam, CPort, CStage, Epoch, Frame, FrameDescriptor, GateTag, KsHead,
    LogEntry, Lp, RetainCargo, TapeEntry,
};
use super::state::{KState, Kind as TerminalKind, NfRun, NfState, Residue, RunCore, Vb, Vert};
use super::term::{binder_path, level, subterm, Dir, GateName, Path, Term};
use super::wire::CertEntries;

fn det(rule: &'static str, state: KState) -> Vec<Row> {
    vec![Row {
        sign: 1,
        dk: 0,
        rule,
        state,
    }]
}

fn err(rule: &'static str, state: &RunCore) -> Vec<Row> {
    det(
        rule,
        KState::RunDone {
            kind: TerminalKind::Err,
            residue: Residue::Full(Box::new(state.clone())),
        },
    )
}

pub(super) fn c_arguments(term: &Term, occurrence: &[Dir]) -> Result<(Path, Path, Path), Defect> {
    if occurrence.len() < 3 || occurrence[occurrence.len() - 3..] != [Dir::F, Dir::F, Dir::F] {
        return Err(Defect::PathOffTerm);
    }
    let root = &occurrence[..occurrence.len() - 3];
    let mut first = root.to_vec();
    first.extend([Dir::F, Dir::F, Dir::A]);
    let mut second = root.to_vec();
    second.extend([Dir::F, Dir::A]);
    let mut continuation = root.to_vec();
    continuation.push(Dir::A);
    let mut root_f = root.to_vec();
    root_f.push(Dir::F);
    let mut root_ff = root_f.clone();
    root_ff.push(Dir::F);
    if !matches!(subterm(term, root), Some(Term::App(..)))
        || !matches!(subterm(term, &root_f), Some(Term::App(..)))
        || !matches!(subterm(term, &root_ff), Some(Term::App(..)))
    {
        return Err(Defect::PathOffTerm);
    }
    Ok((first, second, continuation))
}

fn cgam(
    port: CPort,
    invoked: &Lp,
    occurrence: &Path,
    first: &Path,
    second: &Path,
    continuation: &Path,
) -> CGam {
    CGam {
        port,
        invoked: invoked.clone(),
        occurrence: occurrence.clone(),
        first: first.clone(),
        second: second.clone(),
        continuation: continuation.clone(),
    }
}

fn stage_for(rule: &str) -> Option<(CStage, &'static str)> {
    match rule {
        "park-c" => Some((CStage::Park, "park-c-1")),
        "fire-c" => Some((CStage::Fire, "fire-c-1")),
        "deliver-c" => Some((CStage::Deliver, "deliver-c-1")),
        "answer-c-port" => Some((CStage::AnswerPort, "answer-c-port-1")),
        _ => None,
    }
}

fn stage_finish(stage: CStage) -> &'static str {
    match stage {
        CStage::Park => "park-c-2",
        CStage::Fire => "fire-c-2",
        CStage::Deliver => "deliver-c-2",
        CStage::AnswerPort => "answer-c-port-2",
    }
}

pub(super) fn split_rows(rows: Vec<Row>) -> Vec<Row> {
    rows.into_iter()
        .map(|mut row| {
            let Some((stage, first_rule)) = stage_for(row.rule) else {
                return row;
            };
            if let KState::Run(mut target) = row.state {
                target.ks.insert(0, KsHead::CnotStage(stage));
                row.rule = first_rule;
                row.state = KState::Run(target);
            }
            row
        })
        .collect()
}

pub(super) fn finish_stage(state: &RunCore) -> Option<Vec<Row>> {
    let KsHead::CnotStage(stage) = state.ks.first()? else {
        return None;
    };
    let mut target = state.clone();
    target.ks.remove(0);
    Some(det(stage_finish(*stage), KState::Run(target)))
}

#[derive(Clone)]
enum ArrivalHead {
    Lp(Lp),
    Alpha(Alpha),
}

impl ArrivalHead {
    fn tape(self) -> TapeEntry {
        match self {
            ArrivalHead::Lp(lp) => TapeEntry::Lp(lp),
            ArrivalHead::Alpha(a) => TapeEntry::Alpha(a),
        }
    }
}

struct Arrival {
    bit: u8,
    logged: ArrivalHead,
    tail: Vec<TapeEntry>,
}

fn arrival_head(e: &TapeEntry) -> Option<ArrivalHead> {
    match e {
        TapeEntry::Lp(lp) => Some(ArrivalHead::Lp(lp.clone())),
        TapeEntry::Alpha(a) => Some(ArrivalHead::Alpha(a.clone())),
        _ => None,
    }
}

fn classify_arrival(tape: &[TapeEntry]) -> Option<Arrival> {
    if tape.len() >= 2 && matches!(tape[1], TapeEntry::Cmu { .. }) {
        return Some(Arrival {
            bit: 0,
            logged: arrival_head(&tape[0])?,
            tail: tape[2..].to_vec(),
        });
    }
    if tape.len() >= 3 && tape[0] == TapeEntry::Bullet && matches!(tape[2], TapeEntry::Cmu { .. }) {
        return Some(Arrival {
            bit: 1,
            logged: arrival_head(&tape[1])?,
            tail: tape[3..].to_vec(),
        });
    }
    None
}

fn mu_matches(state: &RunCore, bit: u8, port: CPort, invoked: &Lp) -> bool {
    let at = if bit == 0 { 1 } else { 2 };
    matches!(
        state.tape.get(at),
        Some(TapeEntry::Cmu { port: p, invoked: i }) if *p == port && i == invoked
    )
}

fn decode_input(
    bit: u8,
    logged: ArrivalHead,
    records: &[Frame],
) -> Result<(CDescriptor, Vec<FrameDescriptor>, Vec<Frame>), ()> {
    if let ArrivalHead::Alpha(a) = &logged {
        if a.bit == bit {
            let popped: Vec<&Frame> = records
                .iter()
                .filter(|f| f.gate == a.gate && f.instance == a.instance)
                .collect();
            if popped.iter().any(|f| f.bit != bit) {
                return Err(());
            }
            let retained = records
                .iter()
                .filter(|f| !(f.gate == a.gate && f.instance == a.instance))
                .cloned()
                .collect();
            let descriptors = popped
                .into_iter()
                .map(|f| FrameDescriptor {
                    gate: f.gate,
                    instance: f.instance.clone(),
                    epoch: f.epoch.clone(),
                })
                .collect();
            return Ok((
                CDescriptor::Alpha {
                    gate: a.gate,
                    instance: a.instance.clone(),
                    epoch: a.epoch.clone(),
                },
                descriptors,
                retained,
            ));
        }
    }
    let cargo = match logged {
        ArrivalHead::Lp(lp) => RetainCargo::Lp(lp),
        ArrivalHead::Alpha(a) => RetainCargo::Alpha(a),
    };
    Ok((CDescriptor::Logged(cargo), Vec::new(), records.to_vec()))
}

fn fresh_c_call(term: &Term, state: &RunCore) -> Vec<Row> {
    let Some(invoked) = instance(state).cloned() else {
        return err("c-no-instance", state);
    };
    let occurrence = invoked.occ.clone();
    let Ok((first, second, continuation)) = c_arguments(term, &occurrence) else {
        return err("c-arity", state);
    };
    if state.ks.iter().any(|entry| match entry {
        KsHead::CnotPark { invoked: i, .. } | KsHead::CnotHistory { invoked: i, .. } => {
            *i == invoked
        }
        _ => false,
    }) {
        return err("c-refire", state);
    }
    let marker = cgam(
        CPort::First,
        &invoked,
        &occurrence,
        &first,
        &second,
        &continuation,
    );
    let mut tape = vec![
        TapeEntry::Cgam(marker),
        TapeEntry::Bullet,
        TapeEntry::Bullet,
        TapeEntry::Cmu {
            port: CPort::First,
            invoked,
        },
    ];
    tape.extend_from_slice(&state.tape[1..]);
    let mut target = state.clone();
    target.d = Vert::U;
    target.tape = tape;
    target.vb = None;
    det("call-c", KState::Run(target))
}

fn park_first(state: &RunCore, arrival: Arrival) -> Vec<Row> {
    let Some(LogEntry::Cgam(marker)) = state.log.first() else {
        return err("c-arrival-shape", state);
    };
    if !mu_matches(state, arrival.bit, CPort::First, &marker.invoked) {
        return err("c-species-mu1", state);
    }
    if arrival.tail.first() != Some(&TapeEntry::Bullet) {
        return err("c-missing-second", state);
    }
    let Ok((descriptor, frames, retained)) = decode_input(arrival.bit, arrival.logged, &state.rs)
    else {
        return err("c-input1-conflict", state);
    };
    let parked = KsHead::CnotPark {
        invoked: marker.invoked.clone(),
        bit: arrival.bit,
        descriptor,
        frames,
        occurrence: marker.occurrence.clone(),
        continuation: marker.continuation.clone(),
    };
    let marker2 = cgam(
        CPort::Second,
        &marker.invoked,
        &marker.occurrence,
        &marker.first,
        &marker.second,
        &marker.continuation,
    );
    let mut tape = vec![
        TapeEntry::Bullet,
        TapeEntry::Bullet,
        TapeEntry::Cmu {
            port: CPort::Second,
            invoked: marker.invoked.clone(),
        },
    ];
    tape.extend_from_slice(&arrival.tail[1..]);
    let mut log = vec![LogEntry::Cgam(marker2)];
    log.extend_from_slice(&state.log[1..]);
    let mut ks = vec![parked];
    ks.extend_from_slice(&state.ks);
    det(
        "park-c",
        KState::Run(RunCore {
            path: marker.second.clone(),
            d: Vert::D,
            log,
            tape,
            vb: None,
            rs: retained,
            ks,
        }),
    )
}

fn fire_second(term: &Term, state: &RunCore, arrival: Arrival) -> Vec<Row> {
    let Some(LogEntry::Cgam(marker)) = state.log.first() else {
        return err("c-arrival-shape", state);
    };
    if !mu_matches(state, arrival.bit, CPort::Second, &marker.invoked) {
        return err("c-species-mu2", state);
    }
    let parked: Vec<(usize, &KsHead)> = state
        .ks
        .iter()
        .enumerate()
        .filter(|(_, entry)| {
            matches!(entry, KsHead::CnotPark { invoked, .. } if *invoked == marker.invoked)
        })
        .collect();
    if parked.len() != 1 {
        return err("c-missing-park", state);
    }
    if arrival.tail.first() != Some(&TapeEntry::Bullet) {
        return err("c-missing-continuation", state);
    }
    let (parked_at, parked) = parked[0];
    let KsHead::CnotPark {
        bit: bit1,
        descriptor: descriptor1,
        frames: frames1,
        occurrence,
        continuation,
        ..
    } = parked
    else {
        unreachable!()
    };
    if *occurrence != marker.occurrence || *continuation != marker.continuation {
        return err("c-park-conflict", state);
    }
    let Ok((descriptor2, frames2, retained)) = decode_input(arrival.bit, arrival.logged, &state.rs)
    else {
        return err("c-input2-conflict", state);
    };
    let bit1_out = *bit1;
    let bit2_out = arrival.bit ^ bit1_out;
    let outer_binder = marker.continuation.clone();
    let mut inner_binder = outer_binder.clone();
    inner_binder.push(Dir::B);
    if !matches!(subterm(term, &outer_binder), Some(Term::Lam(_)))
        || !matches!(subterm(term, &inner_binder), Some(Term::Lam(_)))
    {
        return err("c-continuation-shape", state);
    }
    let records = rs_insert(
        retained,
        Frame {
            gate: GateTag::C1,
            instance: marker.invoked.clone(),
            bit: bit1_out,
            epoch: Epoch::Recall(std::sync::Arc::new(Epoch::Fresh)),
        },
    );
    let records = rs_insert(
        records,
        Frame {
            gate: GateTag::C2,
            instance: marker.invoked.clone(),
            bit: bit2_out,
            epoch: Epoch::Recall(std::sync::Arc::new(Epoch::Fresh)),
        },
    );
    let history = KsHead::CnotHistory {
        invoked: marker.invoked.clone(),
        first: descriptor1.clone(),
        first_frames: frames1.clone(),
        second: descriptor2,
        second_frames: frames2,
        occurrence: marker.occurrence.clone(),
        continuation: marker.continuation.clone(),
    };
    let mut storage = state.ks.clone();
    storage[parked_at] = history;
    let mut tape = vec![TapeEntry::Bullet, TapeEntry::Bullet];
    tape.extend_from_slice(&arrival.tail[1..]);
    det(
        "fire-c",
        KState::Run(RunCore {
            path: marker.continuation.clone(),
            d: Vert::D,
            log: state.log[1..].to_vec(),
            tape,
            vb: None,
            rs: records,
            ks: storage,
        }),
    )
}

pub(super) fn deliver_port(term: &Term, state: &RunCore) -> Option<Vec<Row>> {
    if state.d != Vert::U {
        return None;
    }
    let TapeEntry::Lp(logged) = state.tape.first()? else {
        return None;
    };
    if binder_path(term, &logged.occ).as_deref() != Some(state.path.as_slice()) {
        return None;
    }
    let mut bindings = Vec::new();
    for history in &state.ks {
        let KsHead::CnotHistory {
            invoked,
            continuation,
            ..
        } = history
        else {
            continue;
        };
        if state.path == *continuation {
            bindings.push((invoked, CPort::First));
        } else {
            let mut inner = continuation.clone();
            inner.push(Dir::B);
            if state.path == inner {
                bindings.push((invoked, CPort::Second));
            }
        }
    }
    if bindings.is_empty() {
        return None;
    }
    if bindings.len() != 1 {
        return Some(err("c-port-conflict", state));
    }
    let (invoked, port) = bindings[0];
    let candidates: Vec<&Frame> = state
        .rs
        .iter()
        .filter(|f| f.gate == port.tag() && f.instance == *invoked)
        .collect();
    if candidates.len() != 1 {
        return Some(err("c-port-record", state));
    }
    let frame = candidates[0];
    if state.tape.len() >= 3
        && state.tape[1] == TapeEntry::Bullet
        && state.tape[2] == TapeEntry::Bullet
    {
        let mut emitted = vec![TapeEntry::Bullet; frame.bit as usize];
        emitted.push(TapeEntry::Alpha(Alpha {
            gate: port.tag(),
            instance: invoked.clone(),
            bit: frame.bit,
            epoch: frame.epoch.clone(),
        }));
        emitted.extend_from_slice(&state.tape[3..]);
        let mut log = logged.slice.clone();
        log.extend_from_slice(&state.log);
        let mut storage = vec![KsHead::CnotQuery {
            port,
            invoked: invoked.clone(),
            logged: logged.clone(),
        }];
        storage.extend_from_slice(&state.ks);
        return Some(det(
            "deliver-c",
            KState::Run(RunCore {
                path: logged.occ.clone(),
                d: Vert::U,
                log,
                tape: emitted,
                vb: None,
                rs: state.rs.clone(),
                ks: storage,
            }),
        ));
    }
    if matches!(state.tape.get(1), Some(TapeEntry::Rb(_))) {
        let retained = state.rs.iter().filter(|f| *f != frame).cloned().collect();
        let mut storage = vec![KsHead::CnotDead {
            port,
            invoked: invoked.clone(),
            epoch: frame.epoch.clone(),
            logged: logged.clone(),
            answered: false,
        }];
        storage.extend_from_slice(&state.ks);
        let mut log = vec![LogEntry::Lp(invoked.clone())];
        log.extend(logged.slice.clone());
        log.extend_from_slice(&state.log);
        return Some(det(
            "deliver-c-output",
            KState::Run(RunCore {
                path: logged.occ.clone(),
                d: Vert::D,
                log,
                tape: state.tape[1..].to_vec(),
                vb: Some(Vb {
                    gate: port.tag(),
                    bit: frame.bit,
                    k: 0,
                }),
                rs: retained,
                ks: storage,
            }),
        ));
    }
    Some(err("c-port-arity", state))
}

fn close_virtual_port(state: &RunCore) -> Option<Vec<Row>> {
    if state.d != Vert::U
        || state.vb.is_some()
        || state.log.is_empty()
        || state.tape.first() != Some(&TapeEntry::Bullet)
    {
        return None;
    }
    for history in &state.ks {
        let KsHead::CnotHistory { invoked, .. } = history else {
            continue;
        };
        if state.log.first() != Some(&LogEntry::Lp(invoked.clone())) {
            continue;
        }
        for port in [CPort::First, CPort::Second] {
            let mut alpha_at = 1;
            while state.tape.get(alpha_at) == Some(&TapeEntry::Bullet) {
                alpha_at += 1;
            }
            let Some(TapeEntry::Alpha(alpha)) = state.tape.get(alpha_at) else {
                continue;
            };
            if alpha.gate != port.tag()
                || alpha.instance != *invoked
                || alpha.bit as usize != alpha_at - 1
            {
                continue;
            }
            let dead: Vec<usize> = state
                .ks
                .iter()
                .enumerate()
                .filter_map(|(at, entry)| match entry {
                    KsHead::CnotDead {
                        port: p,
                        invoked: i,
                        answered: false,
                        ..
                    } if *p == port && *i == *invoked => Some(at),
                    _ => None,
                })
                .collect();
            if dead.len() != 1 {
                return Some(err("c-answer-record", state));
            }
            let mut target = state.clone();
            if let KsHead::CnotDead { answered, .. } = &mut target.ks[dead[0]] {
                *answered = true;
            }
            target.log.remove(0);
            target.tape.remove(0);
            return Some(det("answer-c-port", KState::Run(target)));
        }
    }
    None
}

fn return_continuation(state: &RunCore) -> Option<Vec<Row>> {
    if state.d != Vert::U
        || state.tape.len() < 2
        || state.tape[0] != TapeEntry::Bullet
        || state.tape[1] != TapeEntry::Bullet
    {
        return None;
    }
    let histories: Vec<&KsHead> = state
        .ks
        .iter()
        .filter(|entry| {
            matches!(entry, KsHead::CnotHistory { continuation, .. } if *continuation == state.path)
        })
        .collect();
    if histories.is_empty() {
        return None;
    }
    if histories.len() != 1 {
        return Some(err("c-return-conflict", state));
    }
    let KsHead::CnotHistory { occurrence, .. } = histories[0] else {
        unreachable!()
    };
    let mut target = state.clone();
    target.path = occurrence[..occurrence.len() - 3].to_vec();
    target.tape = state.tape[2..].to_vec();
    Some(det("return-c", KState::Run(target)))
}

/// One selected Gate-2 kernel-stratum step. Gate-1 rows are delegated
/// unchanged; malformed native-CNOT states land in typed kernel errors.
pub fn step(term: &Term, state: &KState, cert: Option<&CertEntries>) -> Result<Vec<Row>, Defect> {
    let KState::Run(core) = state else {
        return super::kernel::step(term, state, cert);
    };
    if let Some(rows) = finish_stage(core) {
        return Ok(rows);
    }
    if let Some(rows) = close_virtual_port(core) {
        return Ok(split_rows(rows));
    }
    if let Some(rows) = deliver_port(term, core) {
        return Ok(split_rows(rows));
    }
    if let Some(rows) = return_continuation(core) {
        return Ok(rows);
    }
    let code = subterm(term, &core.path).ok_or(Defect::PathOffTerm)?;
    if code == &Term::Gate(GateName::C) && core.d == Vert::D {
        if core.tape.first() == Some(&TapeEntry::Bullet) {
            return Ok(fresh_c_call(term, core));
        }
        return Ok(err("c-leaf-shape", core));
    }
    if core.d == Vert::U
        && core.path.last() == Some(&Dir::A)
        && matches!(core.log.first(), Some(LogEntry::Cgam(_)))
    {
        let Some(arrival) = classify_arrival(&core.tape) else {
            return Ok(err("c-arrival-shape", core));
        };
        let port = match core.log.first() {
            Some(LogEntry::Cgam(marker)) => marker.port,
            _ => unreachable!(),
        };
        return Ok(split_rows(match port {
            CPort::First => park_first(core, arrival),
            CPort::Second => fire_second(term, core, arrival),
        }));
    }
    // Gate-2's proved compiler grammar deliberately permits a CNOT shortcut
    // to discharge a prefix of the ordinary IAM slice. Python's substrate
    // `var` row slices permissively; the Gate-1 Rust port types a short log as
    // a host defect because it is unreachable there. Preserve the accepted
    // shadow table by spelling out the one Gate-2-only shortened `var` row.
    if core.vb.is_none() && core.d == Vert::D && matches!(code, Term::Var(_)) {
        let binder = binder_path(term, &core.path).ok_or(Defect::UnboundVar)?;
        let needed = level(&core.path) - level(&binder);
        if core.log.len() < needed {
            let lp = Lp {
                occ: core.path.clone(),
                slice: core.log.clone(),
            };
            let mut tape = vec![TapeEntry::Lp(lp)];
            tape.extend_from_slice(&core.tape);
            let mut target = core.clone();
            target.path = binder;
            target.d = Vert::U;
            target.log.clear();
            target.tape = tape;
            target.vb = None;
            return Ok(det("var", KState::Run(target)));
        }
    }
    super::kernel::step(term, state, cert)
}

fn restore_logged(bit: u8, descriptor: &CDescriptor) -> ArrivalHead {
    match descriptor {
        CDescriptor::Alpha {
            gate,
            instance,
            epoch,
        } => ArrivalHead::Alpha(Alpha {
            gate: *gate,
            instance: instance.clone(),
            bit,
            epoch: epoch.clone(),
        }),
        CDescriptor::Logged(RetainCargo::Lp(lp)) => ArrivalHead::Lp(lp.clone()),
        CDescriptor::Logged(RetainCargo::Alpha(a)) => ArrivalHead::Alpha(a.clone()),
    }
}

fn restore_frames(bit: u8, descriptors: &[FrameDescriptor], records: Vec<Frame>) -> Vec<Frame> {
    descriptors.iter().fold(records, |records, d| {
        rs_insert(
            records,
            Frame {
                gate: d.gate,
                instance: d.instance.clone(),
                bit,
                epoch: d.epoch.clone(),
            },
        )
    })
}

fn unsplit(rule: &str) -> Option<(&'static str, Option<CStage>)> {
    match rule {
        "call-c" => Some(("call-c", None)),
        "deliver-c-output" => Some(("deliver-c-output", None)),
        "return-c" => Some(("return-c", None)),
        "park-c-1" => Some(("park-c", Some(CStage::Park))),
        "park-c-2" => Some(("park-c", None)),
        "fire-c-1" => Some(("fire-c", Some(CStage::Fire))),
        "fire-c-2" => Some(("fire-c", None)),
        "deliver-c-1" => Some(("deliver-c", Some(CStage::Deliver))),
        "deliver-c-2" => Some(("deliver-c", None)),
        "answer-c-port-1" => Some(("answer-c-port", Some(CStage::AnswerPort))),
        "answer-c-port-2" => Some(("answer-c-port", None)),
        _ => None,
    }
}

fn token_predecessor(term: &Term, rule: &str, target: &RunCore) -> Result<RunCore, ()> {
    let (base, first_stage) = unsplit(rule).ok_or(())?;
    if rule.ends_with("-2") {
        let stage = match base {
            "park-c" => CStage::Park,
            "fire-c" => CStage::Fire,
            "deliver-c" => CStage::Deliver,
            "answer-c-port" => CStage::AnswerPort,
            _ => return Err(()),
        };
        let mut source = target.clone();
        source.ks.insert(0, KsHead::CnotStage(stage));
        return Ok(source);
    }
    let mut target = target.clone();
    if let Some(stage) = first_stage {
        if target.ks.first() != Some(&KsHead::CnotStage(stage)) {
            return Err(());
        }
        target.ks.remove(0);
    }
    match base {
        "call-c" => {
            if target.tape.len() < 4
                || !matches!(target.tape[0], TapeEntry::Cgam(ref g) if g.port == CPort::First)
            {
                return Err(());
            }
            let mut tape = vec![TapeEntry::Bullet];
            tape.extend_from_slice(&target.tape[4..]);
            target.d = Vert::D;
            target.tape = tape;
            Ok(target)
        }
        "park-c" => {
            let Some(LogEntry::Cgam(marker)) = target.log.first().cloned() else {
                return Err(());
            };
            let Some(KsHead::CnotPark {
                invoked,
                bit,
                descriptor,
                frames,
                occurrence,
                continuation,
            }) = target.ks.first().cloned()
            else {
                return Err(());
            };
            if marker.port != CPort::Second
                || marker.invoked != invoked
                || marker.occurrence != occurrence
                || marker.continuation != continuation
                || target.tape.len() < 3
            {
                return Err(());
            }
            let logged = restore_logged(bit, &descriptor).tape();
            let mut tape = vec![TapeEntry::Bullet; bit as usize];
            tape.push(logged);
            tape.push(TapeEntry::Cmu {
                port: CPort::First,
                invoked: invoked.clone(),
            });
            tape.push(TapeEntry::Bullet);
            tape.extend_from_slice(&target.tape[3..]);
            let marker1 = cgam(
                CPort::First,
                &invoked,
                &marker.occurrence,
                &marker.first,
                &marker.second,
                &marker.continuation,
            );
            let mut log = vec![LogEntry::Cgam(marker1)];
            log.extend_from_slice(&target.log[1..]);
            let mut source = target;
            source.path = marker.first;
            source.d = Vert::U;
            source.log = log;
            source.tape = tape;
            source.rs = restore_frames(bit, &frames, source.rs);
            source.ks.remove(0);
            Ok(source)
        }
        "fire-c" => {
            // Every recognized source CNOT occurrence ends in the three-node
            // application spine `fff`. Python's tuple slice is also defined
            // on hostile shorter tuples; the typed inverse refuses those
            // off-grammar coordinates instead of aliasing their empty prefix.
            let matches: Vec<(usize, KsHead)> = target
                .ks
                .iter()
                .enumerate()
                .filter_map(|(at, entry)| match entry {
                    KsHead::CnotHistory {
                        continuation,
                        occurrence,
                        ..
                    } if *continuation == target.path
                        && occurrence.len() >= 3
                        && occurrence[..occurrence.len() - 3]
                            == target.path[..target.path.len().saturating_sub(1)] =>
                    {
                        Some((at, entry.clone()))
                    }
                    _ => None,
                })
                .collect();
            if matches.len() != 1 || target.tape.len() < 2 {
                return Err(());
            }
            let (at, history) = matches.into_iter().next().unwrap();
            let KsHead::CnotHistory {
                invoked,
                first,
                first_frames,
                second,
                second_frames,
                occurrence,
                continuation,
            } = history
            else {
                unreachable!()
            };
            let out1: Vec<&Frame> = target
                .rs
                .iter()
                .filter(|f| f.gate == GateTag::C1 && f.instance == invoked)
                .collect();
            let out2: Vec<&Frame> = target
                .rs
                .iter()
                .filter(|f| f.gate == GateTag::C2 && f.instance == invoked)
                .collect();
            if out1.len() != 1 || out2.len() != 1 {
                return Err(());
            }
            let bit1 = out1[0].bit;
            let bit2 = out2[0].bit ^ bit1;
            let logged2 = restore_logged(bit2, &second).tape();
            let retained = target
                .rs
                .iter()
                .filter(|f| *f != out1[0] && *f != out2[0])
                .cloned()
                .collect();
            let records = restore_frames(bit2, &second_frames, retained);
            let parked = KsHead::CnotPark {
                invoked: invoked.clone(),
                bit: bit1,
                descriptor: first,
                frames: first_frames,
                occurrence: occurrence.clone(),
                continuation: continuation.clone(),
            };
            let mut storage = target.ks.clone();
            storage[at] = parked;
            let (first_path, second_path, _) = c_arguments(term, &occurrence).map_err(|_| ())?;
            let marker = cgam(
                CPort::Second,
                &invoked,
                &occurrence,
                &first_path,
                &second_path,
                &continuation,
            );
            let mut tape = vec![TapeEntry::Bullet; bit2 as usize];
            tape.push(logged2);
            tape.push(TapeEntry::Cmu {
                port: CPort::Second,
                invoked: invoked.clone(),
            });
            tape.push(TapeEntry::Bullet);
            tape.extend_from_slice(&target.tape[2..]);
            let mut log = vec![LogEntry::Cgam(marker)];
            log.extend_from_slice(&target.log);
            Ok(RunCore {
                path: second_path,
                d: Vert::U,
                log,
                tape,
                vb: target.vb,
                rs: records,
                ks: storage,
            })
        }
        "deliver-c" => {
            let Some(KsHead::CnotQuery {
                port,
                invoked,
                logged,
            }) = target.ks.first().cloned()
            else {
                return Err(());
            };
            let frames: Vec<&Frame> = target
                .rs
                .iter()
                .filter(|f| f.gate == port.tag() && f.instance == invoked)
                .collect();
            if frames.len() != 1 {
                return Err(());
            }
            let bit = frames[0].bit as usize;
            if target.tape.len() <= bit
                || target.tape[..bit].iter().any(|e| *e != TapeEntry::Bullet)
                || target.tape[bit]
                    != TapeEntry::Alpha(Alpha {
                        gate: port.tag(),
                        instance: invoked.clone(),
                        bit: bit as u8,
                        epoch: frames[0].epoch.clone(),
                    })
                || !target.log.starts_with(&logged.slice)
            {
                return Err(());
            }
            let path = binder_path(term, &logged.occ).ok_or(())?;
            let mut tape = vec![
                TapeEntry::Lp(logged.clone()),
                TapeEntry::Bullet,
                TapeEntry::Bullet,
            ];
            tape.extend_from_slice(&target.tape[bit + 1..]);
            let mut source = target;
            source.path = path;
            source.d = Vert::U;
            source.log = source.log[logged.slice.len()..].to_vec();
            source.tape = tape;
            source.ks.remove(0);
            Ok(source)
        }
        "deliver-c-output" => {
            let Some(vb) = target.vb else {
                return Err(());
            };
            let Some(KsHead::CnotDead {
                port,
                invoked,
                epoch,
                logged,
                answered: false,
            }) = target.ks.first().cloned()
            else {
                return Err(());
            };
            if vb.gate != port.tag() || vb.k != 0 {
                return Err(());
            }
            let mut prefix = vec![LogEntry::Lp(invoked.clone())];
            prefix.extend(logged.slice.clone());
            if !target.log.starts_with(&prefix) {
                return Err(());
            }
            let mut source = target;
            source.path = binder_path(term, &logged.occ).ok_or(())?;
            source.d = Vert::U;
            source.log = source.log[prefix.len()..].to_vec();
            source.tape.insert(0, TapeEntry::Lp(logged));
            source.vb = None;
            source.rs = rs_insert(
                source.rs,
                Frame {
                    gate: port.tag(),
                    instance: invoked,
                    bit: vb.bit,
                    epoch,
                },
            );
            source.ks.remove(0);
            Ok(source)
        }
        "answer-c-port" => {
            let alpha_at = target
                .tape
                .iter()
                .position(|e| *e != TapeEntry::Bullet)
                .ok_or(())?;
            let TapeEntry::Alpha(alpha) = &target.tape[alpha_at] else {
                return Err(());
            };
            let port = match alpha.gate {
                GateTag::C1 => CPort::First,
                GateTag::C2 => CPort::Second,
                _ => return Err(()),
            };
            let dead: Vec<usize> = target
                .ks
                .iter()
                .enumerate()
                .filter_map(|(at, entry)| match entry {
                    KsHead::CnotDead {
                        port: p,
                        invoked,
                        answered: true,
                        ..
                    } if *p == port && *invoked == alpha.instance => Some(at),
                    _ => None,
                })
                .collect();
            if dead.len() != 1 {
                return Err(());
            }
            let alpha_instance = alpha.instance.clone();
            let mut source = target;
            if let KsHead::CnotDead { answered, .. } = &mut source.ks[dead[0]] {
                *answered = false;
            }
            source.log.insert(0, LogEntry::Lp(alpha_instance));
            source.tape.insert(0, TapeEntry::Bullet);
            Ok(source)
        }
        "return-c" => {
            // Same compiler-grammar guard as `fire-c`: short occurrences are
            // not source CNOT coordinates and are refused deliberately.
            let histories: Vec<&KsHead> = target
                .ks
                .iter()
                .filter(|entry| {
                    matches!(entry, KsHead::CnotHistory { occurrence, .. }
                        if occurrence.len() >= 3 && occurrence[..occurrence.len()-3] == target.path)
                })
                .collect();
            if histories.len() != 1 {
                return Err(());
            }
            let KsHead::CnotHistory { continuation, .. } = histories[0] else {
                unreachable!()
            };
            let continuation = continuation.clone();
            let mut source = target;
            source.path = continuation;
            source.d = Vert::U;
            source.tape.insert(0, TapeEntry::Bullet);
            source.tape.insert(0, TapeEntry::Bullet);
            Ok(source)
        }
        _ => Err(()),
    }
}

/// Exact inverse of every successful custom composed edge.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CustomInverseError {
    Refused,
}

pub fn custom_predecessor(
    term: &Term,
    rule: &str,
    target: &NfState,
) -> Result<NfRun, CustomInverseError> {
    let NfState::Run(target) = target else {
        return Err(CustomInverseError::Refused);
    };
    let token = super::readback::kernel_token(&target.token);
    let token = token_predecessor(term, rule, &token).map_err(|_| CustomInverseError::Refused)?;
    Ok(NfRun {
        token: super::readback::composed_token(token),
        zipper: target.zipper.clone(),
    })
}

pub fn is_custom_rule(rule: &str) -> bool {
    unsplit(rule).is_some()
}
