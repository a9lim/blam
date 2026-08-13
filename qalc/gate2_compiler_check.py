"""End-to-end exact checks for the native-CNOT Gate-2 compiler.

The strongest check starts from every basis configuration at the compiler's
single reachable preparation cut, evolves it independently through the same
immutable invocation sector, and compares the exact ``Dw`` output column with
the ideal circuit matrix.  It also requires one relative halt time, one
literal terminal-garbage value, tick zero, no early terminal branch, compiler
certificate transparency, and an exact reachable Gram.
"""

from dataclasses import dataclass
from itertools import product

import dw
from dw_machine import edge_coefficient
from certify import transparent
import readback
import readback_certify
import readback_checks
from readback import (Hole, NFDone, NFApp, NFLam, NFRun, NFVar,
                      canonical_boolean)

import gate2_cnot_shadow as shadow
import gate2_admission
from gate2_compiler import (Circuit, Kind, Op, compile_circuit,
                            compiled_runtime, compiler_certificate,
                            CX_ROWS, H_ROWS, output_rows, physical_event_kinds,
                            preparation_rows, recognize_compiled, t_rows,
                            toffoli)
from gate2_cnot_circuit import (Gate as IdealGate, Kind as IdealKind,
                                run as ideal_run)
import gate2_semantics
import gate2_shadow_wf
from lam_iam import App, Gate as SourceGate


def configure():
    readback.step = shadow.step
    readback.nf_step = shadow.nf_step
    readback_certify.nf_step = shadow.nf_step
    readback_checks.nf_step = shadow.nf_step


def step_distribution(term, distribution, certificate):
    out = {}
    for state, amplitude in distribution.items():
        for sign, denominator, rule, target in shadow.nf_step(
                term, state, certificate):
            coefficient = edge_coefficient(sign, denominator, rule)
            out[target] = (out.get(target, dw.ZERO)
                           + amplitude * coefficient)
    return {state: amplitude for state, amplitude in out.items()
            if amplitude != dw.ZERO}


def input_word(compiled, state):
    frames = {
        frame[2][1]: frame[3]
        for frame in state.token.rs
        if (frame[0] == "R" and frame[1] == "c2"
            and frame[2][1] in compiled.prep_occurrences)
    }
    return tuple(frames[position] for position in compiled.prep_occurrences)


def input_skeleton(compiled, state):
    records = tuple(
        frame[:3] + ("input-bit",) + frame[4:]
        if (frame[0] == "R" and frame[1] == "c2"
            and frame[2][1] in compiled.prep_occurrences)
        else frame
        for frame in state.token.rs)
    token = state.token
    return (token.path, token.d, token.log, token.tape, token.vb,
            records, token.ks, state.zipper)


def input_cut(compiled, certificate):
    distribution = {readback.nf_init(compiled.term): dw.ONE}
    last_prep = compiled.prep_occurrences[-1]

    def at_cut(state):
        return (isinstance(state, NFRun)
                and state.token.path == compiled.input_boundary_path
                and state.token.d == "D"
                and any(shadow.is_ch(entry) and entry[6] == last_prep
                        for entry in state.token.ks)
                and not any(shadow.is_cstage(entry)
                            for entry in state.token.ks))

    time = 0
    while not (distribution and all(at_cut(state) for state in distribution)):
        if any(isinstance(state, NFDone) for state in distribution):
            raise AssertionError(("halt before input cut", time))
        distribution = step_distribution(
            compiled.term, distribution, certificate)
        time += 1

    wanted_words = set(product((0, 1), repeat=compiled.circuit.width))
    states = {}
    for state, amplitude in distribution.items():
        word = input_word(compiled, state)
        if word in states:
            raise AssertionError(("duplicate input word", word))
        states[word] = state
        if amplitude != dw.Dw(1, 0, 0, 0, compiled.circuit.width):
            raise AssertionError(("preparation amplitude", word, amplitude))
    if set(states) != wanted_words:
        raise AssertionError(("input cut support", set(states), wanted_words))
    if len({input_skeleton(compiled, state) for state in states.values()}) != 1:
        raise AssertionError("input cut has non-word-dependent residue")
    if time != 47 * compiled.circuit.width + 4:
        raise AssertionError(("input cut time", time, compiled.circuit.width))
    return time, states


def verify_preparation_traces(compiled, certificate, cut_time):
    distribution = {(readback.nf_init(compiled.term), ()): dw.ONE}
    for _time in range(cut_time):
        out = {}
        for (state, rows), amplitude in distribution.items():
            for sign, denominator, rule, target in shadow.nf_step(
                    compiled.term, state, certificate):
                coefficient = edge_coefficient(sign, denominator, rule)
                key = (target, rows + (rule,))
                out[key] = out.get(key, dw.ZERO) + amplitude * coefficient
        distribution = {key: amplitude for key, amplitude in out.items()
                        if amplitude != dw.ZERO}
    expected_rows = preparation_rows(compiled.circuit.width)
    observed = {}
    for (state, rows), amplitude in distribution.items():
        if rows != expected_rows:
            raise AssertionError(("preparation physical row word", rows,
                                  expected_rows))
        word = input_word(compiled, state)
        if word in observed:
            raise AssertionError(("duplicate traced input word", word))
        observed[word] = amplitude
    expected_amplitude = dw.Dw(
        1, 0, 0, 0, compiled.circuit.width)
    if len(observed) != 1 << compiled.circuit.width or any(
            amplitude != expected_amplitude
            for amplitude in observed.values()):
        raise AssertionError(("preparation traced column", observed))


def decode_output(output, width):
    if not isinstance(output, NFLam):
        raise AssertionError(("output is not tuple lambda", output))
    node = output.body
    arguments = []
    while isinstance(node, NFApp):
        arguments.append(node.argument)
        node = node.function
    if not isinstance(node, NFVar) or node.index != 1:
        raise AssertionError(("output tuple head", node))
    word = tuple(canonical_boolean(argument)
                 for argument in reversed(arguments))
    if len(word) != width or any(bit not in (0, 1) for bit in word):
        raise AssertionError(("output word", word))
    return word


def evolve_from(term, start, certificate, record_events=True):
    distribution = {start: dw.ONE}
    time = 0
    events = []
    while True:
        terminals = [state for state in distribution
                     if isinstance(state, NFDone)]
        if terminals:
            if len(terminals) != len(distribution):
                raise AssertionError(("early halt", time, len(terminals),
                                      len(distribution)))
            return time, distribution, tuple(events)
        out = {}
        event_kind = None
        event_targets = []
        non_event_sources = 0
        for state, amplitude in distribution.items():
            rows = shadow.nf_step(term, state, certificate)
            rules = ({rule for _sign, _denominator, rule, _target in rows}
                     if record_events else set())
            local = None
            if rules == {"fire-h"}:
                local = Kind.H
            elif rules and rules <= {"fire-t0", "fire-t1"}:
                local = Kind.T
            elif rules == {"fire-c-2"}:
                local = Kind.CX
            if local is not None:
                if non_event_sources:
                    raise AssertionError(("unsynchronized gate event", time))
                if event_kind is None:
                    event_kind = local
                elif event_kind is not local:
                    raise AssertionError(("mixed gate event", time, rules))
                event_targets.extend(target for _, _, _, target in rows)
            elif event_kind is not None:
                raise AssertionError(("unsynchronized gate event", time))
            else:
                non_event_sources += 1
            for sign, denominator, rule, target in rows:
                coefficient = edge_coefficient(sign, denominator, rule)
                out[target] = out.get(target, dw.ZERO) + amplitude * coefficient
        if event_kind is not None:
            events.append((time + 1, event_kind,
                           frozenset(logical_skeleton(target)
                                     for target in event_targets)))
        distribution = {state: amplitude for state, amplitude in out.items()
                        if amplitude != dw.ZERO}
        time += 1


def expected_traces(circuit, source):
    """Unmerged ideal paths paired with their literal physical rule words."""
    branches = {(tuple(source), ()): dw.ONE}
    for gate in circuit.gates:
        out = {}
        for (word, rows), amplitude in branches.items():
            if gate.kind is Kind.H:
                for bit in (0, 1):
                    target = list(word)
                    target[gate.first] = bit
                    sign = -1 if word[gate.first] and bit else 1
                    coefficient = dw.Dw(sign, 0, 0, 0, 1)
                    key = (tuple(target), rows + H_ROWS)
                    out[key] = out.get(key, dw.ZERO) + amplitude * coefficient
            elif gate.kind is Kind.T:
                coefficient = (dw.Dw(0, 1, 0, 0, 0)
                               if word[gate.first] else dw.ONE)
                key = (word, rows + t_rows(word[gate.first]))
                out[key] = out.get(key, dw.ZERO) + amplitude * coefficient
            else:
                target = list(word)
                target[gate.second] ^= target[gate.first]
                key = (tuple(target), rows + CX_ROWS)
                out[key] = out.get(key, dw.ZERO) + amplitude
        branches = {key: amplitude for key, amplitude in out.items()
                    if amplitude != dw.ZERO}
    suffix = output_rows(circuit.width, len(circuit.gates))
    return {(word, rows + suffix): amplitude
            for (word, rows), amplitude in branches.items()}


def executable_traces(compiled, start, certificate):
    """Run without merging paths that carry different physical row words."""
    distribution = {(start, ()): dw.ONE}
    while True:
        terminals = [key for key in distribution
                     if isinstance(key[0], NFDone)]
        if terminals:
            if len(terminals) != len(distribution):
                raise AssertionError(("trace early halt", len(terminals),
                                      len(distribution)))
            out = {}
            for (terminal, rows), amplitude in distribution.items():
                if terminal.kind != ("halt",) or terminal.tick != 0:
                    raise AssertionError(("trace bad terminal", terminal))
                word = decode_output(terminal.output, compiled.circuit.width)
                key = (word, rows)
                out[key] = out.get(key, dw.ZERO) + amplitude
            return {key: amplitude for key, amplitude in out.items()
                    if amplitude != dw.ZERO}
        out = {}
        for (state, rows), amplitude in distribution.items():
            for sign, denominator, rule, target in shadow.nf_step(
                    compiled.term, state, certificate):
                coefficient = edge_coefficient(sign, denominator, rule)
                key = (target, rows + (rule,))
                out[key] = out.get(key, dw.ZERO) + amplitude * coefficient
        distribution = {key: amplitude for key, amplitude in out.items()
                        if amplitude != dw.ZERO}


def _mask_bits(value):
    if not isinstance(value, tuple) or not value:
        return value
    tag = value[0]
    if tag == "AL" and len(value) == 5:
        return value[:3] + ("logical-bit",) + (_mask_bits(value[4]),)
    if tag == "R" and len(value) == 5:
        return value[:3] + ("logical-bit",) + (_mask_bits(value[4]),)
    if tag == "A" and len(value) == 3:
        return value[:2] + ("logical-bit",)
    if tag == "CP" and len(value) == 7:
        return value[:2] + ("logical-bit",) + tuple(
            _mask_bits(field) for field in value[3:])
    return tuple(_mask_bits(field) for field in value)


def logical_skeleton(state):
    if not isinstance(state, NFRun):
        return state
    token = state.token
    vb = (None if token.vb is None
          else (token.vb[0], "logical-bit", token.vb[2]))
    zipper = state.zipper
    zipper_skeleton = (mask_output(zipper.tree), zipper.cursor,
                       zipper.binders, zipper.residues)
    return (token.path, token.d, _mask_bits(token.log),
            _mask_bits(token.tape), vb, _mask_bits(token.rs),
            _mask_bits(token.ks), zipper_skeleton)


def mask_output(node):
    if canonical_boolean(node) in (0, 1):
        return ("logical-bit",)
    if isinstance(node, NFVar):
        return ("var", node.index)
    if isinstance(node, NFLam):
        return ("lam", mask_output(node.body))
    if isinstance(node, NFApp):
        return ("app", mask_output(node.function),
                mask_output(node.argument))
    if isinstance(node, Hole):
        return ("hole", node.armed)
    return node


def ideal_gates(circuit):
    names = {Kind.H: IdealKind.H, Kind.T: IdealKind.T,
             Kind.CX: IdealKind.CX}
    return tuple(IdealGate(names[gate.kind], gate.first, gate.second)
                 for gate in circuit.gates)


@dataclass(frozen=True)
class Result:
    cut_time: int
    run_time: int
    certificate_size: int
    basis: int | None


def verify_circuit(circuit, gram=False, state_cap=2_000_000):
    configure()
    compiled = compile_circuit(circuit)
    recognized = recognize_compiled(compiled.term)
    if recognized is None or compile_circuit(recognized).term != compiled.term:
        raise AssertionError("compiler image recognizer is not a retraction")
    if compiled_runtime(recognized) != compiled_runtime(circuit):
        raise AssertionError("recognizer changed the physical schedule")
    for source in range(1 << circuit.width):
        if ideal_run(circuit.width, ideal_gates(recognized), source) \
                != ideal_run(circuit.width, ideal_gates(circuit), source):
            raise AssertionError(("recognizer changed ideal circuit", source))
    certificate = compiler_certificate(compiled)
    carrier = readback_certify.composed_carrier(
        compiled.term, certificate, state_cap=state_cap)
    if carrier["stuck"] or carrier["recall_collisions"] \
            or carrier["pop_collisions"]:
        raise AssertionError("compiled carrier has a structural defect")
    wf_bad = []
    for state in carrier["states"]:
        bad = gate2_shadow_wf.wf(compiled, state)
        if bad:
            wf_bad.append((state, bad))
    if wf_bad:
        raise AssertionError(("compiled shadow WF", wf_bad[0]))
    if not all(position in carrier["arrivals"]
               and transparent(carrier["arrivals"][position], popkeys)
               for position, popkeys in certificate.items()):
        raise AssertionError("compiler certificate is not transparent")
    for target, incoming in carrier["incoming"].items():
        distinct_sources = {source for source, _rule in incoming}
        if len(distinct_sources) > 1:
            rules = {rule for _source, rule in incoming}
            if rules != {"fire-h"} or len(distinct_sources) != 2:
                raise AssertionError(("global range collision", target,
                                      incoming))
        if not any(rule in shadow.CUSTOM_RULES
                   for _source, rule in incoming):
            continue
        if len(distinct_sources) != 1:
            raise AssertionError(("CNOT range collision", target, incoming))
        for source, rule in incoming:
            if rule not in shadow.CUSTOM_RULES:
                continue
            rebuilt = shadow.custom_predecessor(
                compiled.term, rule, target)
            if rebuilt != source:
                raise AssertionError(("CNOT inverse", rule, source, rebuilt))
            if not any(row_rule == rule and row_target == target
                       for _sign, _denominator, row_rule, row_target
                       in shadow.nf_step(
                           compiled.term, rebuilt, certificate)):
                raise AssertionError(("CNOT inverse forward", rule, target))

    cut_time, inputs = input_cut(compiled, certificate)
    verify_preparation_traces(compiled, certificate, cut_time)
    expected_gates = ideal_gates(circuit)
    times = set()
    terminal_garbage = set()
    event_skeletons = None
    event_signature = None
    for word, state in inputs.items():
        source = sum(bit << wire for wire, bit in enumerate(word))
        time, final, events = evolve_from(compiled.term, state, certificate)
        times.add(time)
        signature = tuple((event_time, kind)
                          for event_time, kind, _skeletons in events)
        if tuple(kind for _time, kind in signature) != \
                physical_event_kinds(recognized):
            raise AssertionError(("macro event order", word, signature))
        if event_signature is None:
            event_signature = signature
        elif signature != event_signature:
            raise AssertionError(("word-dependent macro event time", word,
                                  signature, event_signature))
        if event_skeletons is None:
            event_skeletons = [set() for _event in events]
        for aggregate, (_event_time, _kind, skeletons) in zip(
                event_skeletons, events, strict=True):
            aggregate.update(skeletons)
        observed = [dw.ZERO] * (1 << circuit.width)
        for terminal, amplitude in final.items():
            if terminal.kind != ("halt",) or terminal.tick != 0:
                raise AssertionError(("bad terminal", word, terminal))
            output = decode_output(terminal.output, circuit.width)
            index = sum(bit << wire for wire, bit in enumerate(output))
            observed[index] = observed[index] + amplitude
            terminal_garbage.add(terminal.garbage)
        expected = ideal_run(
            circuit.width, expected_gates, source)
        if tuple(observed) != expected:
            raise AssertionError(("matrix column", word,
                                  tuple(observed), expected))
        executable = executable_traces(compiled, state, certificate)
        expected_rows = expected_traces(recognized, word)
        if executable != expected_rows:
            unexpected = set(executable) - set(expected_rows)
            missing = set(expected_rows) - set(executable)
            raise AssertionError(("literal physical path word", word,
                                  unexpected, missing))
    if len(times) != 1:
        raise AssertionError(("input-dependent runtime", times))
    if times != {compiled_runtime(circuit)}:
        raise AssertionError(("compiler runtime expression", times,
                              compiled_runtime(circuit)))
    if len(terminal_garbage) != 1:
        raise AssertionError(("input-dependent terminal garbage",
                              len(terminal_garbage)))
    if event_skeletons is not None and any(
            len(skeletons) != 1 for skeletons in event_skeletons):
        raise AssertionError(("word-dependent macro-boundary skeleton",
                              tuple(map(len, event_skeletons))))

    basis = None
    if gram:
        exact_gram = readback_checks.reachable_gram(
            compiled.term, certificate, state_cap=state_cap)
        if exact_gram["nonunit"] or exact_gram["nonorthogonal"]:
            raise AssertionError(("Gram defect", exact_gram))
        basis = exact_gram["basis"]
    return Result(cut_time, next(iter(times)), len(certificate), basis)


def short_circuits():
    alphabet = (
        Op(Kind.H, 0), Op(Kind.H, 1),
        Op(Kind.T, 0), Op(Kind.T, 1),
        Op(Kind.CX, 0, 1), Op(Kind.CX, 1, 0),
    )
    yield Circuit(2)
    for length in (1, 2):
        for gates in product(alphabet, repeat=length):
            yield Circuit(2, gates)


def main():
    checked = 0
    for circuit in short_circuits():
        compiled = compile_circuit(circuit)
        assert (gate2_semantics.select(compiled.term).admission.certificate()
                == compiler_certificate(compiled))
        verify_circuit(circuit, gram=True)
        checked += 1

    # The compiler-image selector is structurally prior to Gate 1's bounded
    # discovery/fallback path.  Replacing that delegate by a bomb leaves the
    # structural admission unchanged.  A one-node invocation mutation is no
    # longer in the image and is rejected by the recognizer.
    selector_probe = compile_circuit(Circuit(2, (
        Op(Kind.H, 0), Op(Kind.CX, 0, 1))))
    original_select = gate2_semantics.gate1_semantics.select
    original_validate = gate2_admission.validate
    gate2_semantics.gate1_semantics.select = lambda _term: (_ for _ in ()).throw(
        AssertionError("bounded Gate-1 selector was consulted"))
    gate2_admission.validate = lambda *_args, **_kwargs: (_ for _ in ()).throw(
        AssertionError("finite Gate-2 validator was consulted"))
    try:
        selected = gate2_semantics.select(selector_probe.term)
    finally:
        gate2_semantics.gate1_semantics.select = original_select
        gate2_admission.validate = original_validate
    assert isinstance(selected.admission, gate2_semantics.StructuralAdmission)
    assert (selected.admission.certificate()
            == compiler_certificate(selector_probe))
    mutated = App(selector_probe.term.f, SourceGate("h"))
    assert recognize_compiled(mutated) is None

    bell_uncompute = Circuit(2, (
        Op(Kind.H, 0), Op(Kind.CX, 0, 1),
        Op(Kind.CX, 0, 1), Op(Kind.H, 0)))
    bell = verify_circuit(bell_uncompute, gram=True)
    assert bell == Result(98, 205, 4, 1013)
    bell_sector = gate2_semantics.select(
        compile_circuit(bell_uncompute).term)
    semantic_final = list(gate2_semantics.evolve(
        bell_sector, bell.cut_time + bell.run_time))[-1][1]
    assert gate2_semantics.halt_mass(semantic_final) == dw.ONE
    semantic_rho = gate2_semantics.rho(semantic_final)
    assert semantic_rho
    assert any(left != right for left, right in semantic_rho)

    # Mutation control: without the syntax-directed erasure certificate the
    # same circuit keeps one terminal block per input word.  This ensures the
    # canonical-selector theorem is load-bearing rather than decorative.
    compiled_bell = compile_circuit(bell_uncompute)
    _cut, dirty_inputs = input_cut(compiled_bell, None)
    dirty_garbage = set()
    for state in dirty_inputs.values():
        _time, final, _events = evolve_from(
            compiled_bell.term, state, None, record_events=False)
        dirty_garbage.update(terminal.garbage for terminal in final)
    assert len(dirty_garbage) == 4

    tof = verify_circuit(Circuit(3, toffoli(0, 1, 2)), gram=True)
    assert tof == Result(145, 1796, 30, 14809)

    nonlinear = Circuit(
        4, toffoli(0, 1, 2) + (Op(Kind.CX, 2, 3),))
    reuse = verify_circuit(nonlinear, gram=True)
    assert reuse == Result(192, 1841, 31, 30393)

    print("QALC GATE2 SHADOW COMPILER: PASS")
    print(f"exhaustive width-2 circuits through length 2: {checked}")
    print("Bell-uncompute:", bell)
    print("derived Toffoli:", tof)
    print("nonlinear target-as-control reuse:", reuse)


if __name__ == "__main__":
    main()
