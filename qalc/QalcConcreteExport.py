#!/usr/bin/env python3
"""Emit untrusted finite carriers for Lean's concrete qALC RRI checker.

Lean recomputes every successor from the v1.42 table in
``QalcConcreteKernel.lean``.  This exporter is therefore only a carrier and
fixture producer: omission or mistranslation makes closure or row conformance
fail rather than proving the desired theorem.
"""

from __future__ import annotations

import argparse
from collections import deque
from pathlib import Path

import certify
from kernel import Done, Run, RunDone, init, step
from lam_iam import App, Gate, Lam, Var
import suite
import typecheck


def lean_bool(value):
    return "true" if bool(value) else "false"


def lean_gate(value):
    assert value in ("h", "t")
    return f".{value}"


def lean_path(value):
    names = {"f": ".fn", "a": ".arg", "b": ".body"}
    return "[" + ", ".join(names[item] for item in value) + "]"


def epoch_order(value):
    assert isinstance(value, tuple) and value
    if value == ("F",):
        return (0,)
    if value[0] == "EA" and len(value) == 2:
        return (1, epoch_order(value[1]))
    if value[0] == "EP" and len(value) == 3:
        return (2, epoch_order(value[1]), epoch_order(value[2]))
    raise ValueError(value)


def lean_epoch(value):
    if value == ("F",):
        return ".fresh"
    if value[0] == "EA" and len(value) == 2:
        return f".recalledAbsent ({lean_epoch(value[1])})"
    if value[0] == "EP" and len(value) == 3:
        return (f".recalledPresent ({lean_epoch(value[1])}) "
                f"({lean_epoch(value[2])})")
    raise ValueError(value)


def lean_term(value):
    if isinstance(value, Var):
        return f".var {value.i}"
    if isinstance(value, Lam):
        return f".lam ({lean_term(value.body)})"
    if isinstance(value, App):
        return f".app ({lean_term(value.f)}) ({lean_term(value.a)})"
    if isinstance(value, Gate):
        return f".gate {lean_gate(value.name)}"
    raise TypeError(value)


def entry_order(value):
    if value == "•":
        return (0,)
    assert isinstance(value, tuple) and value
    tag = value[0]
    if tag == "L":
        return (1, tuple({"f": 0, "a": 1, "b": 2}[x] for x in value[1]),
                tuple(entry_order(x) for x in value[2]))
    if tag == "G":
        return (2, 0 if value[1] == "h" else 1)
    if tag == "M":
        return (3, 0 if value[1] == "h" else 1)
    if tag == "A":
        return (4, 0 if value[1] == "h" else 1, bool(value[2]))
    if tag == "AL":
        return (5, 0 if value[1] == "h" else 1,
                entry_order(value[2]), bool(value[3]), epoch_order(value[4]))
    if value == ("R",):
        return (6,)
    raise ValueError(value)


def key_order(value):
    gate, inst = value
    return (0 if gate == "h" else 1, entry_order(inst))


def frame_order(value):
    assert value[0] == "R" and len(value) == 5
    return key_order((value[1], value[2])) + \
        (bool(value[3]), epoch_order(value[4]))


def lean_entries(values):
    result = ".nil"
    for value in reversed(tuple(values)):
        result = f".cons ({lean_entry(value)}) ({result})"
    return result


def lean_entry(value):
    if value == "•":
        return ".bullet"
    assert isinstance(value, tuple) and value
    tag = value[0]
    if tag == "L":
        return f".lp {lean_path(value[1])} ({lean_entries(value[2])})"
    if tag == "G":
        return f".gam {lean_gate(value[1])}"
    if tag == "M":
        return f".mu {lean_gate(value[1])}"
    if tag == "A":
        return f".ans {lean_gate(value[1])} {lean_bool(value[2])}"
    if tag == "AL":
        return (f".alpha {lean_gate(value[1])} ({lean_entry(value[2])}) "
                f"{lean_bool(value[3])} ({lean_epoch(value[4])})")
    if value == ("R",):
        return ".rho"
    raise ValueError(value)


def lean_key(value):
    gate, inst = value
    return f"⟨{lean_gate(gate)}, {lean_entry(inst)}⟩"


def lean_frame(value):
    assert value[0] == "R" and len(value) == 5
    return (f"⟨{lean_key((value[1], value[2]))}, "
            f"{lean_bool(value[3])}, {lean_epoch(value[4])}⟩")


def lean_store(value):
    assert isinstance(value, tuple) and value
    if value[0] == "K" and len(value) == 3:
        return f".decoded ({lean_key((value[1], value[2]))})"
    if value[0] == "KD" and len(value) == 2:
        keys = sorted(value[1], key=key_order)
        return ".bundle [" + ", ".join(lean_key(x) for x in keys) + "]"
    if value[0] == "K" and len(value) == 2:
        return f".burial ({lean_entry(value[1])})"
    if value[0] == "KA" and len(value) == 3:
        return f".suppressed ({lean_key((value[1], value[2]))})"
    raise ValueError(value)


def terminal_kind(value):
    return {"halt0": ".halt0", "halt1": ".halt1", "haltI": ".haltI",
            "err": ".err"}[value]


def lean_run(value):
    assert isinstance(value, Run)
    frames = sorted(value.rs, key=frame_order)
    vb = ("none" if value.vb is None else
          f"some ⟨{lean_gate(value.vb[0])}, {lean_bool(value.vb[1])}, "
          f"{value.vb[2]}⟩")
    return ("{ path := " + lean_path(value.path) +
            f", direction := .{'down' if value.d == 'D' else 'up'}" +
            ", log := [" + ", ".join(lean_entry(x) for x in value.log) + "]" +
            ", tape := [" + ", ".join(lean_entry(x) for x in value.tape) + "]" +
            f", vb := {vb}" +
            ", frames := [" + ", ".join(lean_frame(x) for x in frames) + "]" +
            ", storage := [" + ", ".join(lean_store(x) for x in value.ks) + "] }")


def lean_state(value, source=None):
    if isinstance(value, Run):
        return f".run ({lean_run(value)})"
    if isinstance(value, RunDone):
        assert isinstance(source, Run)
        return f".runDone {terminal_kind(value.kind)} ({lean_run(source)})"
    if isinstance(value, Done):
        assert isinstance(source, Run)
        return (f".done {terminal_kind(value.kind)} ({lean_run(source)}) "
                f"{value.tick}")
    raise TypeError(value)


U64_MASK = (1 << 64) - 1


def hash_mix(left, right):
    return (left * 1099511628211 + right + 1469598103934665603) & U64_MASK


def hash_list(function, values):
    result = 37
    for value in values:
        result = hash_mix(result, function(value))
    return result


def hash_gate(value):
    return {"h": 11, "t": 13}[value]


def hash_path(value):
    code = {"f": 17, "a": 19, "b": 23}
    return hash_list(code.__getitem__, value)


def hash_bool(value):
    return 29 if value else 31


def hash_epoch(value):
    if value == ("F",):
        return 107
    if value[0] == "EA" and len(value) == 2:
        return hash_mix(109, hash_epoch(value[1]))
    if value[0] == "EP" and len(value) == 3:
        return hash_mix(113, hash_mix(hash_epoch(value[1]),
                                      hash_epoch(value[2])))
    raise ValueError(value)


def hash_entries(values):
    result = 71
    for value in reversed(tuple(values)):
        result = hash_mix(hash_entry(value), result)
    return result


def hash_entry(value):
    if value == "•":
        return 41
    assert isinstance(value, tuple) and value
    tag = value[0]
    if tag == "L":
        return hash_mix(43, hash_mix(hash_path(value[1]),
                                     hash_entries(value[2])))
    if tag == "G":
        return hash_mix(47, hash_gate(value[1]))
    if tag == "M":
        return hash_mix(53, hash_gate(value[1]))
    if tag == "A":
        return hash_mix(59, hash_mix(hash_gate(value[1]),
                                     hash_bool(value[2])))
    if tag == "AL":
        return hash_mix(61, hash_mix(hash_gate(value[1]),
                                     hash_mix(hash_entry(value[2]),
                                              hash_mix(hash_bool(value[3]),
                                                       hash_epoch(value[4])))))
    if value == ("R",):
        return 67
    raise ValueError(value)


def hash_key(value):
    gate, inst = value
    return hash_mix(hash_gate(gate), hash_entry(inst))


def hash_frame(value):
    assert value[0] == "R" and len(value) == 5
    return hash_mix(hash_key((value[1], value[2])),
                    hash_mix(hash_bool(value[3]), hash_epoch(value[4])))


def hash_store(value):
    assert isinstance(value, tuple) and value
    if value[0] == "K" and len(value) == 3:
        return hash_mix(73, hash_key((value[1], value[2])))
    if value[0] == "KD" and len(value) == 2:
        keys = sorted(value[1], key=key_order)
        return hash_mix(79, hash_list(hash_key, keys))
    if value[0] == "K" and len(value) == 2:
        return hash_mix(83, hash_entry(value[1]))
    if value[0] == "KA" and len(value) == 3:
        return hash_mix(89, hash_key((value[1], value[2])))
    raise ValueError(value)


def hash_option_virtual(value):
    if value is None:
        return 103
    gate, bit, phase = value
    payload = hash_mix(hash_gate(gate),
                       hash_mix(hash_bool(bit), phase & U64_MASK))
    return hash_mix(107, payload)


def hash_run(value):
    assert isinstance(value, Run)
    frames = sorted(value.rs, key=frame_order)
    return hash_mix(
        hash_path(value.path),
        hash_mix(
            97 if value.d == "D" else 101,
            hash_mix(
                hash_list(hash_entry, value.log),
                hash_mix(
                    hash_list(hash_entry, value.tape),
                    hash_mix(
                        hash_option_virtual(value.vb),
                        hash_mix(hash_list(hash_frame, frames),
                                 hash_list(hash_store, value.ks)))))))


def hash_state(value):
    assert isinstance(value, Run)
    return hash_mix(137, hash_run(value))


def lean_edge(row, source):
    sign, denominator, rule, target = row
    omega_power = 1 if rule == "fire-t1" else 0
    return (f"⟨{sign}, {denominator}, {omega_power}, {rule!r}, "
            f"{lean_state(target, source)}⟩").replace("'", '"')


def lean_certificate(cert):
    if cert is None:
        return "[]"
    assert isinstance(cert, dict)
    items = []
    for path, keys in sorted(cert.items()):
        assert keys is not None, "legacy pop-all certificates are out of scope"
        keys = sorted(keys, key=key_order)
        items.append(f"({lean_path(path)}, [" +
                     ", ".join(lean_key(x) for x in keys) + "])")
    return "[" + ", ".join(items) + "]"


def carrier_and_rows(term, cert, cap):
    initial_states = tuple(init(term))
    assert len(initial_states) == 1
    initial = initial_states[0]
    assert isinstance(initial, Run)
    seen, queue = {initial}, deque([initial])
    states = []
    rows = []
    while queue:
        source = queue.popleft()
        assert isinstance(source, Run), source
        states.append(source)
        outgoing = tuple(step(term, source, cert))
        rows.append(outgoing)
        for _sign, _denominator, _rule, target in outgoing:
            if isinstance(target, (RunDone, Done)):
                continue
            assert isinstance(target, Run)
            if target in seen:
                continue
            assert len(seen) < cap, "carrier cap"
            seen.add(target)
            queue.append(target)
    return states, rows


def ident(name):
    return "p_" + "".join(ch if ch.isalnum() else "_" for ch in name)


def emit_program(name, term, cert, cap, include_rows=False, chunk_size=64):
    states, rows = carrier_and_rows(term, cert, cap)
    prefix = ident(name)
    fire_sources = sum(any(row[2] == "fire-h" for row in outgoing)
                       for outgoing in rows)
    certified_fire_sources = sum(
        any(row[2] == "fire-h" for row in outgoing) and
        states[index].path in (cert or {})
        for index, outgoing in enumerate(rows))
    recalls = sum(any(row[2] == "recall" for row in outgoing)
                  for outgoing in rows)
    target_sources = {}
    for source, outgoing in zip(states, rows):
        for row in outgoing:
            if row[2] == "fire-h" and isinstance(row[3], Run):
                target_sources.setdefault(row[3], set()).add(source)
    h_reconvergences = sum(len(sources) > 1
                           for sources in target_sources.values())
    lines = [
        f"\nnamespace {prefix}",
        f"def term : Term := {lean_term(term)}",
        f"def certificate : Certificate := {lean_certificate(cert)}",
    ]
    indexed_states = list(enumerate(states))
    for state_index, state in indexed_states:
        lines.append(f"def state_{state_index} : State := {lean_state(state)}")
    chunks = [indexed_states[index:index + chunk_size]
              for index in range(0, len(indexed_states), chunk_size)]
    for index, chunk in enumerate(chunks):
        lines.append(f"def carrier_{index} : List State := [")
        lines.extend(f"  state_{state_index},"
                     for state_index, _state in chunk)
        lines.append("]")
        lines.append(f"def index_{index} : List StateSlot := [")
        lines.extend(f"  ⟨{hash_state(state)}, state_{state_index}⟩,"
                     for state_index, state in chunk)
        lines.append("]")
    carrier_expression = " ++ ".join(f"carrier_{index}"
                                      for index in range(len(chunks)))
    lines.append(f"def carrier : List State := {carrier_expression}")
    index_expression = " ++ ".join(f"index_{index}"
                                    for index in range(len(chunks)))
    lines.append(f"def carrierIndex : List StateSlot := {index_expression}")
    if include_rows:
        row_chunks = [rows[index:index + chunk_size]
                      for index in range(0, len(rows), chunk_size)]
        for index, (state_chunk, row_chunk) in enumerate(zip(chunks, row_chunks)):
            lines.append(f"def expectedRows_{index} : List (List Edge) := [")
            for (_state_index, source), outgoing in zip(state_chunk, row_chunk):
                lines.append("  [" + ", ".join(lean_edge(row, source)
                                               for row in outgoing) + "],")
            lines.append("]")
        lines.extend([
            "def exactRowsChunk (states : List State)",
            "    (expected : List (List Edge)) : Bool :=",
            "  eqBool states.length expected.length &&",
            "    (states.zip expected).all (fun pair =>",
            "      eqBool (step term pair.1 certificate) pair.2)",
        ])
        for index in range(len(chunks)):
            lines.extend([
                f"theorem conform_{index} :",
                f"    exactRowsChunk carrier_{index} expectedRows_{index} = true := by",
                "  decide +kernel",
            ])
    lines.extend([
        "def closureChunk (chunk : List State) : Bool :=",
        "  chunk.all (fun state =>",
        "    (step term state certificate).all (indexedTargetCovered carrierIndex))",
        "def rowsChunk (chunk : List State) : Bool :=",
        "  chunk.all (recallRowWellFormed term certificate)",
    ])
    for index in range(len(chunks)):
        lines.extend([
            f"theorem closure_{index} : closureChunk carrier_{index} = true := by",
            "  decide +kernel",
            f"theorem rows_{index} : rowsChunk carrier_{index} = true := by",
            "  decide +kernel",
        ])
    def left_and(names):
        return " && ".join(names)

    closure_terms = [f"closureChunk carrier_{index}"
                     for index in range(len(chunks))]
    row_terms = [f"rowsChunk carrier_{index}"
                 for index in range(len(chunks))]
    closure_names = ", ".join(f"closure_{index}"
                              for index in range(len(chunks)))
    row_names = ", ".join(f"rows_{index}"
                          for index in range(len(chunks)))
    if include_rows:
        conform_terms = [f"exactRowsChunk carrier_{index} expectedRows_{index}"
                         for index in range(len(chunks))]
        conform_names = ", ".join(f"conform_{index}"
                                  for index in range(len(chunks)))
        lines.extend([
            "theorem python_rows_conform :",
            f"    ({left_and(conform_terms)}) = true := by",
            f"  simp [{conform_names}]",
        ])
    lines.extend([
        "theorem initial_checked : memBool initial carrier = true := by",
        "  decide +kernel",
        "theorem index_aligned : carrierIndex.map (·.state) = carrier := by",
        "  rfl",
        "theorem closure_chunks :",
        f"    ({left_and(closure_terms)}) = true := by",
        f"  simp [{closure_names}]",
        "theorem all_indexed_closed :",
        "    carrier.all (fun state =>",
        "      (step term state certificate).all",
        "        (indexedTargetCovered carrierIndex)) = true := by",
        "  simpa only [carrier, List.all_append, closureChunk] using closure_chunks",
        "theorem indexed_closed_checked :",
        "    carrierIndexedClosed term certificate carrier carrierIndex = true := by",
        "  unfold carrierIndexedClosed",
        "  rw [initial_checked]",
        "  have alignedBool : eqBool (carrierIndex.map (·.state)) carrier = true := by",
        "    simp [eqBool, index_aligned]",
        "  rw [alignedBool, all_indexed_closed]",
        "  rfl",
        "theorem closed_checked : carrierClosed term certificate carrier = true := by",
        "  exact carrierIndexedClosed_sound indexed_closed_checked",
        "theorem row_chunks :",
        f"    ({left_and(row_terms)}) = true := by",
        f"  simp [{row_names}]",
        "theorem rows_checked :",
        "    carrier.all (recallRowWellFormed term certificate) = true := by",
        "  simpa only [carrier, List.all_append, rowsChunk] using row_chunks",
        "theorem rri_checked : carrierRRI term certificate carrier = true := by",
        "  decide +kernel",
        "theorem targets_checked :",
        "    carrierTargetFacts term certificate carrier = true := by",
        "  decide +kernel",
        "theorem checked : certificateBool term certificate carrier = true := by",
        "  simp [certificateBool, closed_checked, rows_checked, rri_checked,",
        "    targets_checked]",
        "theorem reachable_rri : RRIOn term certificate (Reachable term certificate) :=",
        "  certificate_sound checked",
        "theorem recall_target_rri :",
        "    RecallTargetRRIOn term certificate (Reachable term certificate) :=",
        "  certificate_target_sound checked",
        f"-- states={len(states)} recalls={recalls} fire={fire_sources} "
        f"certified_fire={certified_fire_sources} "
        f"h_reconvergences={h_reconvergences}",
        f"end {prefix}",
    ])
    return "\n".join(lines), {
        "states": len(states), "recalls": recalls,
        "fire": fire_sources, "certified_fire": certified_fire_sources,
        "h_reconvergences": h_reconvergences,
    }


def emit_deep_program(name, term, cert, cap, output, include_rows=False,
                      chunk_size=64):
    """Split one large sector into bounded Lean modules.

    The split is semantic, not trusted: each proof chunk imports the same
    carrier/index module, recomputes its own transition rows, and the final
    module assembles the checked propositions before applying the generic
    soundness theorem.
    """
    states, rows = carrier_and_rows(term, cert, cap)
    prefix = ident(name)
    output = Path(output)
    stem = output.stem
    indexed_states = list(enumerate(states))
    chunks = [indexed_states[index:index + chunk_size]
              for index in range(0, len(indexed_states), chunk_size)]
    row_chunks = [rows[index:index + chunk_size]
                  for index in range(0, len(rows), chunk_size)]

    def module_path(suffix):
        return output.with_name(f"{stem}_{suffix}.lean")

    header = [
        f"namespace QalcCanonicalRRI",
        "open QalcConcrete",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 100000",
        f"namespace {prefix}",
    ]
    footer = [f"end {prefix}", "end QalcCanonicalRRI", ""]

    core = [
        "import QalcConcreteCertificate",
        "",
        *header,
        f"def term : Term := {lean_term(term)}",
        f"def certificate : Certificate := {lean_certificate(cert)}",
        "def exactRowsChunk (states : List State)",
        "    (expected : List (List Edge)) : Bool :=",
        "  eqBool states.length expected.length &&",
        "    (states.zip expected).all (fun pair =>",
        "      eqBool (step term pair.1 certificate) pair.2)",
        *footer,
    ]
    module_path("Core").write_text("\n".join(core))

    for chunk_index, chunk in enumerate(chunks):
        data = [
            f"import {stem}_Core",
            "",
            *header,
        ]
        for state_index, state in chunk:
            data.append(
                f"def state_{state_index} : State := {lean_state(state)}")
        data.append(f"def carrier_{chunk_index} : List State := [")
        data.extend(f"  state_{state_index},"
                    for state_index, _state in chunk)
        data.append("]")
        data.append(f"def index_{chunk_index} : List StateSlot := [")
        data.extend(f"  ⟨{hash_state(state)}, state_{state_index}⟩,"
                    for state_index, state in chunk)
        data.extend([
            "]",
            *footer,
        ])
        module_path(f"Data_{chunk_index}").write_text("\n".join(data))

    carrier_imports = [f"import {stem}_Data_{index}"
                       for index in range(len(chunks))]
    carrier_expression = ", ".join(f"carrier_{index}"
                                    for index in range(len(chunks)))
    index_expression = ", ".join(f"index_{index}"
                                  for index in range(len(chunks)))
    carrier = [
        *carrier_imports,
        "",
        *header,
        f"def carrierChunks : List (List State) := [{carrier_expression}]",
        "def carrier : List State := carrierChunks.flatten",
        f"def indexChunks : List (List StateSlot) := [{index_expression}]",
        "def carrierIndex : List StateSlot := indexChunks.flatten",
        "def closureChunk (chunk : List State) : Bool :=",
        "  chunk.all (fun state =>",
        "    (step term state certificate).all",
        "      (indexedTargetCovered carrierIndex))",
        "def rowsChunk (chunk : List State) : Bool :=",
        "  chunk.all (recallRowWellFormed term certificate)",
        *footer,
    ]
    module_path("Carrier").write_text("\n".join(carrier))

    for chunk_index, (chunk, row_chunk) in enumerate(zip(chunks, row_chunks)):
        proof = [
            f"import {stem}_Carrier",
            "",
            *header,
        ]
        if include_rows:
            proof.append(
                f"def expectedRows_{chunk_index} : List (List Edge) := [")
            for (_state_index, source), outgoing in zip(chunk, row_chunk):
                proof.append("  [" + ", ".join(lean_edge(row, source)
                                                for row in outgoing) + "],")
            proof.extend([
                "]",
                f"theorem conform_{chunk_index} :",
                f"    exactRowsChunk carrier_{chunk_index} expectedRows_{chunk_index} = true := by",
                "  decide +kernel",
            ])
        proof.extend([
            f"theorem closure_{chunk_index} : closureChunk carrier_{chunk_index} = true := by",
            "  decide +kernel",
            f"theorem rows_{chunk_index} : rowsChunk carrier_{chunk_index} = true := by",
            "  decide +kernel",
            *footer,
        ])
        module_path(f"Proof_{chunk_index}").write_text("\n".join(proof))

    recalls = sum(any(row[2] == "recall" for row in outgoing)
                  for outgoing in rows)
    fire_sources = sum(any(row[2] == "fire-h" for row in outgoing)
                       for outgoing in rows)
    certified_fire_sources = sum(
        any(row[2] == "fire-h" for row in outgoing) and
        states[index].path in (cert or {})
        for index, outgoing in enumerate(rows))
    target_sources = {}
    for source, outgoing in zip(states, rows):
        for row in outgoing:
            if row[2] == "fire-h" and isinstance(row[3], Run):
                target_sources.setdefault(row[3], set()).add(source)
    h_reconvergences = sum(len(sources) > 1
                           for sources in target_sources.values())

    proof_imports = [f"import {stem}_Proof_{index}"
                     for index in range(len(chunks))]
    closure_names = ", ".join(f"closure_{index}"
                              for index in range(len(chunks)))
    row_names = ", ".join(f"rows_{index}"
                          for index in range(len(chunks)))
    final = [
        *proof_imports,
        "",
        *header,
        "theorem initial_checked : memBool initial carrier = true := by",
        "  decide +kernel",
        "theorem index_aligned : carrierIndex.map (·.state) = carrier := by",
        "  rfl",
    ]
    final.extend([
        "theorem closure_chunks :",
        "    carrierChunks.all closureChunk = true := by",
        f"  simp [carrierChunks, {closure_names}]",
        "theorem all_indexed_closed :",
        "    carrier.all (fun state =>",
        "      (step term state certificate).all",
        "        (indexedTargetCovered carrierIndex)) = true := by",
        "  rw [carrier, all_flatten_eq]",
        "  change carrierChunks.all closureChunk = true",
        "  exact closure_chunks",
        "theorem indexed_closed_checked :",
        "    carrierIndexedClosed term certificate carrier carrierIndex = true := by",
        "  unfold carrierIndexedClosed",
        "  rw [initial_checked]",
        "  have alignedBool : eqBool (carrierIndex.map (·.state)) carrier = true := by",
        "    simp [eqBool, index_aligned]",
        "  rw [alignedBool, all_indexed_closed]",
        "  rfl",
        "theorem closed_checked : carrierClosed term certificate carrier = true := by",
        "  exact carrierIndexedClosed_sound indexed_closed_checked",
        "theorem row_chunks :",
        "    carrierChunks.all rowsChunk = true := by",
        f"  simp [carrierChunks, {row_names}]",
        "theorem rows_checked :",
        "    carrier.all (recallRowWellFormed term certificate) = true := by",
        "  rw [carrier, all_flatten_eq]",
        "  change carrierChunks.all rowsChunk = true",
        "  exact row_chunks",
        "theorem rri_checked : carrierRRI term certificate carrier = true := by",
        "  decide +kernel",
        "theorem targets_checked :",
        "    carrierTargetFacts term certificate carrier = true := by",
        "  decide +kernel",
        "theorem checked : certificateBool term certificate carrier = true := by",
        "  simp [certificateBool, closed_checked, rows_checked, rri_checked,",
        "    targets_checked]",
        "theorem reachable_rri : RRIOn term certificate (Reachable term certificate) :=",
        "  certificate_sound checked",
        "theorem recall_target_rri :",
        "    RecallTargetRRIOn term certificate (Reachable term certificate) :=",
        "  certificate_target_sound checked",
        f"-- states={len(states)} recalls={recalls} fire={fire_sources} "
        f"certified_fire={certified_fire_sources} "
        f"h_reconvergences={h_reconvergences}",
        *footer,
    ])
    output.write_text("\n".join(final))
    return {
        "states": len(states), "recalls": recalls,
        "fire": fire_sources, "certified_fire": certified_fire_sources,
        "h_reconvergences": h_reconvergences,
        "modules": 3 + 2 * len(chunks),
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--program", action="append", default=[])
    parser.add_argument("--cap", type=int, default=100_000)
    parser.add_argument("--output", type=Path,
                        default=Path("QalcCanonicalRRI.lean"))
    parser.add_argument("--split", action="store_true",
                        help="emit one kernel-reduced module per sector")
    parser.add_argument("--deep-split", action="store_true",
                        help="split one large sector across bounded data/proof modules")
    parser.add_argument("--include-rows", action="store_true",
                        help="also emit full Python/Lean row-conformance fixtures")
    parser.add_argument("--chunk-size", type=int, default=64)
    args = parser.parse_args()
    if args.deep_split and len(args.program) != 1:
        parser.error("--deep-split requires exactly one --program")
    chosen = set(args.program)
    blocks = []
    stats = {}
    for name, term in suite.PROGRAMS.items():
        if chosen and name not in chosen:
            continue
        typing = typecheck.fragment_check(term)
        if not (typing["typable"] and typing["h_only"]):
            continue
        cert = certify.discover_total(term, state_cap=args.cap)
        validation = certify.validate(term, cert)
        if not validation["machine_coverage"]:
            continue
        if args.deep_split:
            stats[name] = emit_deep_program(
                name, term, cert, args.cap, args.output,
                include_rows=args.include_rows, chunk_size=args.chunk_size)
            continue
        block, report = emit_program(name, term, cert, args.cap,
                                     include_rows=args.include_rows,
                                     chunk_size=args.chunk_size)
        blocks.append((name, block))
        stats[name] = report
    if args.deep_split:
        print("QALC-CONCRETE-EXPORT", repr(stats), "output=", args.output)
        return
    header = """import QalcConcreteCertificate

/-! Generated, untrusted carrier data for canonical qALC sectors.

`QalcConcrete.step` recomputes all rows.  Optional `rows_conform` declarations
are differential port checks against Python; `checked` and `reachable_rri`
depend only on the Lean transition function and carrier closure.
-/

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
"""
    if args.split:
        modules = []
        for name, block in blocks:
            module = "QalcCanonicalSector_" + ident(name)
            path = args.output.with_name(module + ".lean")
            path.write_text(header + block + "\nend QalcCanonicalRRI\n")
            modules.append(module)
        args.output.write_text("\n".join(f"import {module}"
                                         for module in modules) + "\n")
    else:
        args.output.write_text(header + "\n".join(block for _name, block in blocks) +
                               "\nend QalcCanonicalRRI\n")
    print("QALC-CONCRETE-EXPORT", repr(stats), "output=", args.output)


if __name__ == "__main__":
    main()
