//! qALC Phase-3 Gate-2 compiler, native-CNOT shadow, and clean physical
//! refinement battery.

use std::collections::{HashMap, HashSet};
use std::sync::Arc;

use blam::hash::sha256_hex;
use blam::qalc::amp::Amp;
use blam::qalc::compiler::{
    compile_circuit, compiled_runtime, compiler_certificate, output_rows, physical_event_kinds,
    preparation_rows, recognize_compiled, t_rows, toffoli, Circuit, Kind, Op, CX_ROWS, H_ROWS,
};
use blam::qalc::gate2check;
use blam::qalc::gate2check::ShadowViolation;
use blam::qalc::kernel::edge_coefficient;
use blam::qalc::mark::{
    Alpha, CDescriptor, FrameDescriptor, GateTag, KdKey, KsHead, LogEntry, Lp, Rbl, RetainCargo,
    TapeEntry,
};
use blam::qalc::readback::{
    canonical_boolean, evolve_nf_trace_with, nf_carrier_and_columns_with, nf_init, nf_step_with,
    MachineKind, NfPsi,
};
use blam::qalc::shadow;
use blam::qalc::state::{KState, Nf, NfState, NfTerminal, RunCore, TerminalGarbage, Vb, Vert};
use blam::qalc::term::{binder_path, level, Dir, GateName, Term};
use blam::qalc::wire::{
    amp_bytes, column_commitment, kd_key_bytes, nf_state_bytes, parse_fixtures, serialize_fixtures,
    term_bytes, CertEntries, ComposedFixture, Fixtures,
};

fn circuit(width: usize, gates: Vec<Op>) -> Circuit {
    Circuit::new(width, gates).unwrap()
}

fn short_circuits() -> Vec<Circuit> {
    let alphabet = [
        Op::h(0),
        Op::h(1),
        Op::t(0),
        Op::t(1),
        Op::cx(0, 1),
        Op::cx(1, 0),
    ];
    let mut out = vec![circuit(2, vec![])];
    out.extend(alphabet.iter().copied().map(|op| circuit(2, vec![op])));
    for first in alphabet {
        for second in alphabet {
            out.push(circuit(2, vec![first, second]));
        }
    }
    assert_eq!(out.len(), 43);
    out
}

fn merge(
    out: &mut HashMap<(NfState, Vec<String>), Amp>,
    key: (NfState, Vec<String>),
    contribution: Amp,
) {
    let value = out.entry(key).or_insert(Amp::ZERO);
    *value = value.add(contribution).expect("Gate-2 amplitude capacity");
}

fn step_paths(
    term: &Term,
    certificate: &CertEntries,
    distribution: HashMap<(NfState, Vec<String>), Amp>,
) -> HashMap<(NfState, Vec<String>), Amp> {
    let mut out = HashMap::new();
    for ((state, rows), amplitude) in distribution {
        for row in nf_step_with(MachineKind::Gate2, term, &state, Some(certificate)) {
            let coefficient = edge_coefficient(row.sign, row.dk, &row.rule).unwrap();
            let contribution = amplitude.mul(coefficient).unwrap();
            let mut history = rows.clone();
            history.push(row.rule.into_owned());
            merge(&mut out, (row.state, history), contribution);
        }
    }
    out.retain(|_, amplitude| !amplitude.is_zero());
    out
}

fn mask_lp(lp: &mut Lp) {
    for entry in &mut lp.slice {
        mask_log(entry);
    }
}

fn mask_alpha(alpha: &mut Alpha) {
    alpha.bit = 0;
    mask_lp(&mut alpha.instance);
}

fn mask_log(entry: &mut LogEntry) {
    match entry {
        LogEntry::Lp(lp) => mask_lp(lp),
        LogEntry::Cgam(marker) => mask_lp(&mut marker.invoked),
        LogEntry::Alpha(alpha) => mask_alpha(alpha),
        LogEntry::Gam(_) | LogEntry::Rbl(_) => {}
    }
}

fn mask_cargo(cargo: &mut RetainCargo) {
    match cargo {
        RetainCargo::Lp(lp) => mask_lp(lp),
        RetainCargo::Alpha(alpha) => mask_alpha(alpha),
    }
}

fn mask_descriptor(descriptor: &mut CDescriptor) {
    match descriptor {
        CDescriptor::Alpha { instance, .. } => mask_lp(instance),
        CDescriptor::Logged(cargo) => mask_cargo(cargo),
    }
}

fn mask_frame_descriptor(descriptor: &mut FrameDescriptor) {
    mask_lp(&mut descriptor.instance);
}

fn mask_key(key: &mut KdKey) {
    mask_lp(&mut key.instance);
}

fn mask_tape(entry: &mut TapeEntry) {
    match entry {
        TapeEntry::Lp(lp) => mask_lp(lp),
        TapeEntry::Cgam(marker) => mask_lp(&mut marker.invoked),
        TapeEntry::Cmu { invoked, .. } => mask_lp(invoked),
        TapeEntry::Ans(_, bit) => *bit = 0,
        TapeEntry::Alpha(alpha) => mask_alpha(alpha),
        TapeEntry::Bullet
        | TapeEntry::BulletBa
        | TapeEntry::Rho
        | TapeEntry::Gam(_)
        | TapeEntry::Mu(_)
        | TapeEntry::Rb(_)
        | TapeEntry::Rbl(_) => {}
    }
}

fn mask_storage(entry: &mut KsHead) {
    match entry {
        KsHead::Decode { instance, .. } | KsHead::Suppressed { instance, .. } => {
            mask_lp(instance);
        }
        KsHead::DeadBundle(keys) => keys.iter_mut().for_each(mask_key),
        KsHead::RetainWhole(cargo) => mask_cargo(cargo),
        KsHead::CnotPark {
            invoked,
            bit,
            descriptor,
            frames,
            ..
        } => {
            mask_lp(invoked);
            *bit = 0;
            mask_descriptor(descriptor);
            frames.iter_mut().for_each(mask_frame_descriptor);
        }
        KsHead::CnotHistory {
            invoked,
            first,
            first_frames,
            second,
            second_frames,
            ..
        } => {
            mask_lp(invoked);
            mask_descriptor(first);
            first_frames.iter_mut().for_each(mask_frame_descriptor);
            mask_descriptor(second);
            second_frames.iter_mut().for_each(mask_frame_descriptor);
        }
        KsHead::CnotDead {
            invoked, logged, ..
        }
        | KsHead::CnotQuery {
            invoked, logged, ..
        } => {
            mask_lp(invoked);
            mask_lp(logged);
        }
        KsHead::CnotStage(_) => {}
    }
}

fn mask_nf(output: &mut Nf) {
    if canonical_boolean(output).is_some() {
        *output = Nf::Lam(Arc::new(Nf::Lam(Arc::new(Nf::Var(2)))));
        return;
    }
    match output {
        Nf::Lam(body) => mask_nf(Arc::make_mut(body)),
        Nf::App(function, argument) => {
            mask_nf(Arc::make_mut(function));
            mask_nf(Arc::make_mut(argument));
        }
        Nf::Hole { .. } | Nf::Var(_) | Nf::Gate(_) => {}
    }
}

fn logical_skeleton(state: &NfState) -> String {
    let mut state = state.clone();
    if let NfState::Run(run) = &mut state {
        run.token.log.iter_mut().for_each(mask_log);
        run.token.tape.iter_mut().for_each(mask_tape);
        if let Some(vb) = &mut run.token.vb {
            vb.bit = 0;
        }
        for frame in &mut run.token.rs {
            frame.bit = 0;
            mask_lp(&mut frame.instance);
        }
        run.token.ks.iter_mut().for_each(mask_storage);
        mask_nf(&mut run.zipper.tree);
    }
    nf_state_bytes(&state)
}

type MacroEvent = (u64, Kind, HashSet<String>);

fn macro_events(
    compiled: &blam::qalc::compiler::Compiled,
    certificate: &CertEntries,
    start: NfState,
) -> (u64, Vec<MacroEvent>) {
    let mut distribution = HashMap::from([(start, Amp::ONE)]);
    let mut events = Vec::new();
    for time in 0..10_000u64 {
        let terminals = distribution
            .keys()
            .filter(|state| matches!(state, NfState::Done { .. }))
            .count();
        if terminals > 0 {
            assert_eq!(terminals, distribution.len(), "macro-event early halt");
            return (time, events);
        }
        let mut out = HashMap::new();
        let mut event_kind = None;
        let mut event_targets = HashSet::new();
        let mut non_event_sources = 0usize;
        for (state, amplitude) in distribution {
            let rows = nf_step_with(
                MachineKind::Gate2,
                &compiled.term,
                &state,
                Some(certificate),
            );
            let rules: HashSet<&str> = rows.iter().map(|row| row.rule.as_ref()).collect();
            let local = if rules == HashSet::from(["fire-h"]) {
                Some(Kind::H)
            } else if !rules.is_empty()
                && rules
                    .iter()
                    .all(|rule| matches!(*rule, "fire-t0" | "fire-t1"))
            {
                Some(Kind::T)
            } else if rules == HashSet::from(["fire-c-2"]) {
                Some(Kind::Cx)
            } else {
                None
            };
            if let Some(local) = local {
                assert_eq!(non_event_sources, 0, "unsynchronized macro event");
                match event_kind {
                    None => event_kind = Some(local),
                    Some(want) => assert_eq!(local, want, "mixed macro event"),
                }
                event_targets.extend(rows.iter().map(|row| logical_skeleton(&row.state)));
            } else {
                assert!(event_kind.is_none(), "unsynchronized macro event");
                non_event_sources += 1;
            }
            for row in rows {
                let coefficient = edge_coefficient(row.sign, row.dk, &row.rule).unwrap();
                let contribution = amplitude.mul(coefficient).unwrap();
                let value = out.entry(row.state).or_insert(Amp::ZERO);
                *value = value.add(contribution).unwrap();
            }
        }
        if let Some(kind) = event_kind {
            events.push((time + 1, kind, event_targets));
        }
        out.retain(|_, amplitude| !amplitude.is_zero());
        distribution = out;
    }
    panic!("macro-event step cap")
}

fn at_input_cut(compiled: &blam::qalc::compiler::Compiled, state: &NfState) -> bool {
    let NfState::Run(run) = state else {
        return false;
    };
    let last = compiled.prep_occurrences.last().unwrap();
    run.token.path == compiled.input_boundary_path
        && run.token.d == Vert::D
        && run.token.ks.iter().any(
            |entry| matches!(entry, KsHead::CnotHistory { occurrence, .. } if occurrence == last),
        )
        && !run
            .token
            .ks
            .iter()
            .any(|entry| matches!(entry, KsHead::CnotStage(_)))
}

fn input_word(compiled: &blam::qalc::compiler::Compiled, state: &NfState) -> Vec<u8> {
    let NfState::Run(run) = state else {
        panic!("input cut contains a terminal")
    };
    compiled
        .prep_occurrences
        .iter()
        .map(|occurrence| {
            let found: Vec<u8> = run
                .token
                .rs
                .iter()
                .filter(|frame| frame.gate == GateTag::C2 && frame.instance.occ == *occurrence)
                .map(|frame| frame.bit)
                .collect();
            assert_eq!(found.len(), 1, "one input frame per wire");
            found[0]
        })
        .collect()
}

fn input_cut(
    compiled: &blam::qalc::compiler::Compiled,
    certificate: &CertEntries,
) -> (u64, HashMap<Vec<u8>, NfState>) {
    let mut distribution = HashMap::from([((nf_init(), Vec::new()), Amp::ONE)]);
    let mut time = 0;
    while !distribution
        .keys()
        .all(|(state, _)| at_input_cut(compiled, state))
    {
        assert!(
            !distribution
                .keys()
                .any(|(state, _)| matches!(state, NfState::Done { .. })),
            "halt before the common input cut at {time}"
        );
        distribution = step_paths(&compiled.term, certificate, distribution);
        time += 1;
        assert!(time < 10_000, "input-cut step cap");
    }
    assert_eq!(time, 47 * compiled.circuit.width as u64 + 4);
    let expected_rows: Vec<String> = preparation_rows(compiled.circuit.width)
        .unwrap()
        .into_iter()
        .map(str::to_string)
        .collect();
    let mut expected_amplitude = Amp::ONE;
    for _ in 0..compiled.circuit.width {
        expected_amplitude = expected_amplitude.div_sqrt2().unwrap();
    }
    let mut states = HashMap::new();
    let mut skeleton = None;
    for ((state, rows), amplitude) in distribution {
        assert_eq!(rows, expected_rows, "literal preparation row word");
        assert_eq!(amplitude, expected_amplitude, "preparation amplitude");
        let word = input_word(compiled, &state);
        assert!(
            states.insert(word, state.clone()).is_none(),
            "duplicate input word"
        );
        let mut masked = state;
        if let NfState::Run(run) = &mut masked {
            for frame in &mut run.token.rs {
                if frame.gate == GateTag::C2
                    && compiled.prep_occurrences.contains(&frame.instance.occ)
                {
                    frame.bit = 0;
                }
            }
        }
        match &skeleton {
            None => skeleton = Some(masked),
            Some(want) => assert_eq!(&masked, want, "word-dependent input residue"),
        }
    }
    assert_eq!(states.len(), 1usize << compiled.circuit.width);
    states
        .keys()
        .for_each(|word| assert_eq!(word.len(), compiled.circuit.width));
    (time, states)
}

fn decode_output(output: &Nf, width: usize) -> Vec<u8> {
    let Nf::Lam(body) = output else {
        panic!("output is not a tuple lambda: {output:?}")
    };
    let mut node = body.as_ref();
    let mut arguments = Vec::new();
    while let Nf::App(function, argument) = node {
        arguments.push(argument.as_ref());
        node = function.as_ref();
    }
    assert_eq!(node, &Nf::Var(1), "output tuple head");
    arguments.reverse();
    let word: Vec<u8> = arguments
        .into_iter()
        .map(|argument| canonical_boolean(argument).expect("canonical output bit"))
        .collect();
    assert_eq!(word.len(), width);
    word
}

fn word_index(word: &[u8]) -> usize {
    word.iter()
        .enumerate()
        .map(|(wire, bit)| (*bit as usize) << wire)
        .sum()
}

fn expected_traces(circuit: &Circuit, source: &[u8]) -> HashMap<(Vec<u8>, Vec<String>), Amp> {
    let mut branches = HashMap::from([((source.to_vec(), Vec::new()), Amp::ONE)]);
    for gate in &circuit.gates {
        let mut out = HashMap::new();
        for ((word, rows), amplitude) in branches {
            match gate.kind {
                Kind::H => {
                    for bit in [0u8, 1] {
                        let mut target = word.clone();
                        target[gate.first] = bit;
                        let mut coefficient = Amp::ONE.div_sqrt2().unwrap();
                        if word[gate.first] == 1 && bit == 1 {
                            coefficient = coefficient.neg().unwrap();
                        }
                        let mut history = rows.clone();
                        history.extend(H_ROWS.iter().map(|row| (*row).to_string()));
                        let contribution = amplitude.mul(coefficient).unwrap();
                        let entry = out.entry((target, history)).or_insert(Amp::ZERO);
                        *entry = entry.add(contribution).unwrap();
                    }
                }
                Kind::T => {
                    let coefficient = if word[gate.first] == 1 {
                        Amp::OMEGA
                    } else {
                        Amp::ONE
                    };
                    let mut history = rows;
                    history.extend(
                        t_rows(word[gate.first])
                            .unwrap()
                            .into_iter()
                            .map(str::to_string),
                    );
                    let contribution = amplitude.mul(coefficient).unwrap();
                    let entry = out.entry((word, history)).or_insert(Amp::ZERO);
                    *entry = entry.add(contribution).unwrap();
                }
                Kind::Cx => {
                    let mut target = word;
                    let second = gate.second.unwrap();
                    target[second] ^= target[gate.first];
                    let mut history = rows;
                    history.extend(CX_ROWS.iter().map(|row| (*row).to_string()));
                    let entry = out.entry((target, history)).or_insert(Amp::ZERO);
                    *entry = entry.add(amplitude).unwrap();
                }
            }
        }
        out.retain(|_, amplitude| !amplitude.is_zero());
        branches = out;
    }
    let suffix: Vec<String> = output_rows(circuit.width, circuit.gates.len())
        .into_iter()
        .map(str::to_string)
        .collect();
    branches
        .into_iter()
        .map(|((word, mut rows), amplitude)| {
            rows.extend(suffix.iter().cloned());
            ((word, rows), amplitude)
        })
        .collect()
}

fn evolve_paths_to_halt(
    compiled: &blam::qalc::compiler::Compiled,
    certificate: &CertEntries,
    start: NfState,
) -> (u64, HashMap<(NfState, Vec<String>), Amp>) {
    let mut distribution = HashMap::from([((start, Vec::new()), Amp::ONE)]);
    for time in 0..10_000u64 {
        let terminal = distribution
            .keys()
            .filter(|(state, _)| matches!(state, NfState::Done { .. }))
            .count();
        if terminal > 0 {
            assert_eq!(terminal, distribution.len(), "early terminal branch");
            return (time, distribution);
        }
        distribution = step_paths(&compiled.term, certificate, distribution);
    }
    panic!("Gate-2 run step cap")
}

fn verify_physical_refinement(
    compiled: &blam::qalc::compiler::Compiled,
    certificate: &CertEntries,
) -> (u64, usize) {
    let (cut_time, inputs) = input_cut(compiled, certificate);
    let mut runtimes = HashSet::new();
    let mut garbage = HashSet::<TerminalGarbage>::new();
    let mut event_signature: Option<Vec<(u64, Kind)>> = None;
    let mut event_skeletons: Option<Vec<HashSet<String>>> = None;
    for (word, state) in inputs {
        let source = word_index(&word);
        let (macro_runtime, events) = macro_events(compiled, certificate, state.clone());
        let signature: Vec<(u64, Kind)> = events
            .iter()
            .map(|(time, kind, _)| (*time, *kind))
            .collect();
        assert_eq!(
            signature.iter().map(|(_, kind)| *kind).collect::<Vec<_>>(),
            physical_event_kinds(&compiled.circuit),
            "macro event order for input {word:?}"
        );
        match &event_signature {
            None => event_signature = Some(signature),
            Some(want) => assert_eq!(&signature, want, "word-dependent macro event time"),
        }
        let aggregates =
            event_skeletons.get_or_insert_with(|| events.iter().map(|_| HashSet::new()).collect());
        assert_eq!(aggregates.len(), events.len());
        for (aggregate, (_, _, skeletons)) in aggregates.iter_mut().zip(events) {
            aggregate.extend(skeletons);
        }

        let (runtime, final_paths) = evolve_paths_to_halt(compiled, certificate, state);
        assert_eq!(macro_runtime, runtime, "macro/path runtime disagreement");
        runtimes.insert(runtime);
        let mut observed_traces = HashMap::new();
        let mut observed_column = vec![Amp::ZERO; 1usize << compiled.circuit.width];
        for ((terminal, rows), amplitude) in final_paths {
            let NfState::Done {
                terminal: NfTerminal::Halt { output, garbage: g },
                tick: 0,
            } = terminal
            else {
                panic!("bad Gate-2 terminal: {terminal:?}")
            };
            let output_word = decode_output(&output, compiled.circuit.width);
            let index = word_index(&output_word);
            observed_column[index] = observed_column[index].add(amplitude).unwrap();
            garbage.insert(g);
            let entry = observed_traces
                .entry((output_word, rows))
                .or_insert(Amp::ZERO);
            *entry = entry.add(amplitude).unwrap();
        }
        observed_traces.retain(|_, amplitude| !amplitude.is_zero());
        assert_eq!(
            observed_traces,
            expected_traces(&compiled.circuit, &word),
            "literal physical trace for input {word:?}"
        );
        assert_eq!(
            observed_column,
            gate2check::ideal_column(&compiled.circuit, source).unwrap(),
            "ideal column for input {word:?}"
        );
    }
    assert_eq!(
        runtimes,
        HashSet::from([compiled_runtime(&compiled.circuit)])
    );
    if let Some(skeletons) = event_skeletons {
        assert!(
            skeletons.iter().all(|states| states.len() == 1),
            "word-dependent macro-boundary skeleton"
        );
    }
    assert_eq!(garbage.len(), 1, "one literal terminal-garbage block");
    (cut_time, *runtimes.iter().next().unwrap() as usize)
}

#[test]
fn all_43_short_circuits_close_the_full_phase3_surface() {
    for circuit in short_circuits() {
        let compiled = compile_circuit(&circuit).unwrap();
        assert_eq!(recognize_compiled(&compiled.term), Some(circuit.clone()));
        assert_eq!(compile_circuit(&circuit).unwrap().term, compiled.term);
        let cert = compiler_certificate(&compiled).unwrap();
        let admission = gate2check::structural_admission(&compiled.term)
            .unwrap()
            .expect("compiler image structurally admitted");
        assert_eq!(admission.circuit(), &circuit);
        assert_eq!(admission.certificate(), &cert);
        let report = gate2check::validate(&compiled, &cert, 300_000)
            .unwrap_or_else(|e| panic!("{circuit:?}: audit failed: {e:?}"));
        assert!(report.certified, "{circuit:?}: {report:?}");
        verify_physical_refinement(&compiled, &cert);
    }
}

#[test]
fn selector_bypass_and_mutation_controls_are_load_bearing() {
    let compiled = compile_circuit(&circuit(2, vec![Op::h(0), Op::cx(0, 1)])).unwrap();
    assert!(gate2check::structural_admission(&compiled.term)
        .unwrap()
        .is_some());
    let Term::App(function, _) = &compiled.term else {
        unreachable!()
    };
    let mutated = Term::App(function.clone(), Box::new(Term::Gate(GateName::H)));
    assert!(gate2check::structural_admission(&mutated)
        .unwrap()
        .is_none());

    // The syntax-directed erasure certificate is observationally active:
    // Bell uncompute without it retains one garbage block per input word.
    let bell = compile_circuit(&circuit(
        2,
        vec![Op::h(0), Op::cx(0, 1), Op::cx(0, 1), Op::h(0)],
    ))
    .unwrap();
    let (_cut, dirty_inputs) = input_cut(&bell, &Vec::new());
    let mut dirty = HashSet::new();
    for state in dirty_inputs.into_values() {
        let (_time, paths) = evolve_paths_to_halt(&bell, &Vec::new(), state);
        for ((terminal, _), _) in paths {
            if let NfState::Done {
                terminal: NfTerminal::Halt { garbage, .. },
                ..
            } = terminal
            {
                dirty.insert(garbage);
            }
        }
    }
    assert_eq!(dirty.len(), 4);
}

#[test]
fn virtual_boolean_dispatch_precedes_the_shortened_var_extension() {
    // The argument occurrence has level one while its binder is at level
    // zero, so an empty log genuinely triggers the shortened-var predicate.
    // A live VB must still reach the kernel's higher-priority automaton.
    let term = Term::Lam(Box::new(Term::App(
        Box::new(Term::Var(1)),
        Box::new(Term::Var(1)),
    )));
    let state = KState::Run(RunCore {
        path: vec![Dir::B, Dir::A],
        d: Vert::D,
        log: Vec::new(),
        tape: Vec::new(),
        vb: Some(Vb {
            gate: GateTag::H,
            bit: 0,
            k: 0,
        }),
        rs: Vec::new(),
        ks: Vec::new(),
    });
    let KState::Run(core) = &state else {
        unreachable!()
    };
    let binder = binder_path(&term, &core.path).unwrap();
    assert_eq!(level(&core.path) - level(&binder), 1);
    assert!(core.log.len() < level(&core.path) - level(&binder));
    let rows = shadow::step(&term, &state, None).unwrap();
    assert_eq!(rows.len(), 1);
    assert_eq!(rows[0].rule, "stuck-vb");
}

#[test]
fn projected_probe_balance_and_complete_frame_harvest_are_load_bearing() {
    let compiled = compile_circuit(&circuit(2, vec![])).unwrap();
    let certificate = compiler_certificate(&compiled).unwrap();
    let (_, inputs) = input_cut(&compiled, &certificate);
    let state = inputs.into_values().next().unwrap();

    let mut scaffold_imbalance = state.clone();
    let NfState::Run(run) = &mut scaffold_imbalance else {
        unreachable!()
    };
    run.token.log.push(LogEntry::Rbl(Rbl {
        parent: Vec::new(),
        output: Vec::new(),
        code: Vec::new(),
    }));
    assert!(
        gate2check::shadow_wf(&compiled, &scaffold_imbalance)
            .contains(&ShadowViolation::ProbeBalance),
        "deep projection must count RBL as gamma"
    );

    let mut duplicate_then_live = state;
    let NfState::Run(run) = &mut duplicate_then_live else {
        unreachable!()
    };
    assert!(run.token.rs.len() >= 2);
    let first = run.token.rs[0].clone();
    let last = run.token.rs.last().unwrap().clone();
    run.token.rs = vec![first.clone(), first, last.clone()];
    run.token.log.insert(0, LogEntry::Lp(last.instance.clone()));
    run.token.vb = Some(Vb {
        gate: last.gate,
        bit: last.bit,
        k: 0,
    });
    let bad = gate2check::shadow_wf(&compiled, &duplicate_then_live);
    assert!(bad.contains(&ShadowViolation::DuplicateFrame));
    assert!(
        bad.contains(&ShadowViolation::LiveVirtualFrame),
        "a duplicate must not truncate harvesting of later frame keys"
    );
}

#[test]
fn large_clean_compilation_witnesses_match_the_reference_pins() {
    let cases = [
        (
            "Bell-uncompute",
            circuit(2, vec![Op::h(0), Op::cx(0, 1), Op::cx(0, 1), Op::h(0)]),
            (98, 205, 4, 1013),
        ),
        (
            "Toffoli",
            circuit(3, toffoli(0, 1, 2)),
            (145, 1796, 30, 14809),
        ),
        (
            "nonlinear-reuse",
            {
                let mut gates = toffoli(0, 1, 2);
                gates.push(Op::cx(2, 3));
                circuit(4, gates)
            },
            (192, 1841, 31, 30393),
        ),
    ];
    for (name, circuit, expected) in cases {
        let compiled = compile_circuit(&circuit).unwrap();
        let cert = compiler_certificate(&compiled).unwrap();
        let report = gate2check::validate(&compiled, &cert, 100_000)
            .unwrap_or_else(|e| panic!("{name}: {e:?}"));
        assert!(report.certified, "{name}: {report:?}");
        let (cut, runtime) = verify_physical_refinement(&compiled, &cert);
        assert_eq!(
            (cut as usize, runtime, cert.len(), report.basis),
            expected,
            "{name}"
        );
    }
}

fn certificate_pin_digest(certificate: &CertEntries) -> String {
    let mut entries = certificate.clone();
    entries.sort_by_key(|(path, _)| {
        path.iter()
            .map(|direction| match direction {
                Dir::F => 'f',
                Dir::A => 'a',
                Dir::B => 'b',
            })
            .collect::<String>()
    });
    let mut payload = String::new();
    for (path, keys) in entries {
        payload.extend(path.iter().map(|direction| match direction {
            Dir::F => 'f',
            Dir::A => 'a',
            Dir::B => 'b',
        }));
        payload.push(':');
        let mut keys: Vec<String> = keys.iter().map(kd_key_bytes).collect();
        keys.sort();
        payload.push_str(&keys.join(","));
        payload.push('\n');
    }
    sha256_hex(payload.as_bytes())
}

#[test]
fn all_five_lean_compiler_term_and_certificate_pins_match() {
    let text = include_str!("qalc/gate2/compiler_pins.txt");
    let mut lines = text.lines();
    assert_eq!(lines.next(), Some("qalc-compiler-pins v1"));
    let mut pins = HashMap::new();
    for line in lines {
        let fields: Vec<&str> = line.split_whitespace().collect();
        assert_eq!(fields.len(), 3, "compiler pin row: {line}");
        assert!(pins.insert(fields[0], (fields[1], fields[2])).is_none());
    }
    let cases = [
        ("empty1", circuit(1, vec![])),
        ("h1", circuit(1, vec![Op::h(0)])),
        ("t1", circuit(1, vec![Op::t(0)])),
        ("cx2", circuit(2, vec![Op::cx(0, 1)])),
        ("mixed2", circuit(2, vec![Op::h(0), Op::t(1), Op::cx(0, 1)])),
    ];
    for (name, circuit) in cases {
        let (term_pin, certificate_pin) = pins.remove(name).expect("exported compiler pin");
        let compiled = compile_circuit(&circuit).unwrap();
        let certificate = compiler_certificate(&compiled).unwrap();
        assert_eq!(
            sha256_hex(term_bytes(&compiled.term).as_bytes()),
            term_pin,
            "{name} term"
        );
        assert_eq!(
            certificate_pin_digest(&certificate),
            certificate_pin,
            "{name} certificate"
        );
    }
    assert!(pins.is_empty(), "unexpected compiler pin rows: {pins:?}");
}

// Full Python/Rust differential pin for the accepted 917-state mixed core.

fn ctrace_digest(name: &str, t: u64, prev: &str, psi: &NfPsi) -> String {
    let mut entries: Vec<(String, String)> = psi
        .iter()
        .map(|(state, amplitude)| (nf_state_bytes(state), amp_bytes(amplitude)))
        .collect();
    entries.sort();
    let mut payload = format!("qalc-ctrace v1\n{name}\n{t}\n{prev}\n");
    for (state, amplitude) in entries {
        payload.push_str(&state);
        payload.push(' ');
        payload.push_str(&amplitude);
        payload.push('\n');
    }
    sha256_hex(payload.as_bytes())
}

fn regenerate(p: &ComposedFixture) -> ComposedFixture {
    let cert = p.cert.as_ref();
    let carrier =
        nf_carrier_and_columns_with(MachineKind::Gate2, &p.term, cert, p.tick_depth, 300_000)
            .unwrap();
    let maps = evolve_nf_trace_with(MachineKind::Gate2, &p.term, cert, 100_000).unwrap();
    let mut trace = Vec::new();
    let mut prev = "0".repeat(64);
    for (at, psi) in maps.iter().enumerate() {
        prev = ctrace_digest(&p.name, at as u64 + 1, &prev, psi);
        trace.push((at as u64 + 1, psi.len() as u64, prev.clone()));
    }
    let mut finals = maps.last().unwrap().clone();
    finals.sort_by_key(|(state, amplitude)| (nf_state_bytes(state), amp_bytes(amplitude)));
    ComposedFixture {
        name: p.name.clone(),
        term: p.term.clone(),
        tick_depth: p.tick_depth,
        cert: p.cert.clone(),
        carrier: carrier.order,
        commitment: column_commitment(&carrier.columns),
        columns: carrier.columns,
        trace,
        finals,
        probes: Vec::new(),
    }
}

#[test]
fn mixed_917_state_fixture_regenerates_byte_identically() {
    let text = std::fs::read_to_string(concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/tests/qalc/gate2/mixed.qfx"
    ))
    .unwrap();
    let fixtures = parse_fixtures(&text).unwrap();
    assert_eq!(fixtures.composed.len(), 1);
    let pinned = &fixtures.composed[0];
    assert_eq!((pinned.carrier.len(), pinned.columns.len()), (917, 913));

    let mixed = circuit(2, vec![Op::h(0), Op::t(1), Op::cx(0, 1)]);
    let compiled = compile_circuit(&mixed).unwrap();
    assert_eq!(pinned.term, compiled.term, "exact compiler-term pin");
    assert_eq!(
        pinned.cert.as_ref().unwrap(),
        &compiler_certificate(&compiled).unwrap(),
        "exact compiler-certificate pin"
    );
    let regenerated = regenerate(pinned);
    let output = serialize_fixtures(&Fixtures {
        corpus: Vec::new(),
        programs: Vec::new(),
        composed: vec![regenerated],
    });
    if output != text {
        for (line, (got, want)) in output.lines().zip(text.lines()).enumerate() {
            assert_eq!(got, want, "mixed: first divergence at line {}", line + 1);
        }
        panic!(
            "mixed: regenerated {} lines, fixture has {}",
            output.lines().count(),
            text.lines().count()
        );
    }
}
