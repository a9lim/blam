"""Export executable Python composed transitions as concrete Lean equations.

This is an untrusted fidelity generator.  The generated file evaluates
``QalcComposedMachine.composedStep`` and compares every edge of a complete
reachable carrier with the live Python dispatcher, including coefficients,
rule tags, and full physical targets.
"""

from pathlib import Path

from lam_iam import App, Gate, Lam, Var, BULLET
from kernel import Run
import readback
from readback import (APP_BULLET, BinderMark, ExactScopeResidue, Hole,
                      NFDone, NFApp, NFGate, NFLam, NFRun, NFRunDone, NFVar,
                      NeutralProbeResidue, PureScopeResidue, TerminalGarbage,
                      VirtualScopeResidue, Zipper)
import readback_certify

import gate2_cnot_shadow as shadow
from gate2_compiler import (Circuit, Kind, Op, compile_circuit,
                            compiler_certificate)


ROOT = Path(__file__).resolve().parent


def lean_list(values):
    return "[" + ", ".join(values) + "]"


def path(value):
    names = {"f": ".fn", "a": ".arg", "b": ".body"}
    return lean_list(names[item] for item in value)


def gate_port(name):
    if name == "h":
        return ".h", "none"
    if name == "t":
        return ".t", "none"
    if name == "c":
        return ".c", "none"
    if name == "c1":
        return ".c", "(some .first)"
    if name == "c2":
        return ".c", "(some .second)"
    raise ValueError(("gate", name))


def term(value):
    if isinstance(value, Var):
        return f".var {value.i}"
    if isinstance(value, Lam):
        return f".lam ({term(value.body)})"
    if isinstance(value, App):
        return f".app ({term(value.f)}) ({term(value.a)})"
    if isinstance(value, Gate):
        gate, _port = gate_port(value.name)
        return f".gate {gate}"
    raise TypeError(value)


def epoch(value):
    if value == ("F",):
        return ".fresh"
    if value[0] == "EA":
        return f".recalledAbsent ({epoch(value[1])})"
    if value[0] == "EP":
        return f".recalledPresent ({epoch(value[1])}) ({epoch(value[2])})"
    raise ValueError(("epoch", value))


def entry(value):
    if value == BULLET:
        return "bullet"
    if value == APP_BULLET:
        return "appBullet"
    if not isinstance(value, tuple) or not value:
        raise ValueError(("entry", value))
    tag = value[0]
    if tag == "L":
        return f"lp {path(value[1])} {lean_list(entry(x) for x in value[2])}"
    if tag == "G" and len(value) == 2:
        gate, _port = gate_port(value[1])
        return f"gam {gate}"
    if tag == "G" and len(value) == 8 and value[1] == "c":
        port = ".first" if value[2] == 1 else ".second"
        return (f"cgam {port} ({entry(value[3])}) {path(value[4])} "
                f"{path(value[5])} {path(value[6])} {path(value[7])}")
    if tag == "M" and len(value) == 2:
        gate, _port = gate_port(value[1])
        return f"mu {gate}"
    if tag == "M" and len(value) == 4 and value[1] == "c":
        port = ".first" if value[2] == 1 else ".second"
        return f"cmu {port} ({entry(value[3])})"
    if tag == "A":
        gate, _port = gate_port(value[1])
        return f"ans {gate} {str(bool(value[2])).lower()}"
    if tag == "AL":
        gate, port = gate_port(value[1])
        return (f"alpha {gate} ({port}) ({entry(value[2])}) "
                f"{str(bool(value[3])).lower()} ({epoch(value[4])})")
    if tag == "R" and len(value) == 1:
        return "rho"
    if tag == "RB":
        return (f"rb {value[1]} {path(value[2])} {path(value[3])} "
                f"{lean_list(path(x) for x in value[4])}")
    if tag == "RBL":
        return f"rbl {path(value[1])} {path(value[2])} {path(value[3])}"
    raise ValueError(("entry", value))


def key(value):
    gate, port = gate_port(value[0])
    return f"⟨{gate}, {port}, {entry(value[1])}⟩"


def frame(value):
    assert value[0] == "R" and len(value) == 5
    return (f"⟨{key((value[1], value[2]))}, {str(bool(value[3])).lower()}, "
            f"{epoch(value[4])}⟩")


def descriptor(value):
    if value[0] == "DA":
        gate, port = gate_port(value[1])
        return (f".alpha {gate} {port} ({entry(value[2])}) "
                f"({epoch(value[3])})")
    if value[0] == "DL":
        return f".logged ({entry(value[1])})"
    raise ValueError(("descriptor", value))


def frame_descriptor(value):
    gate, port = gate_port(value[0])
    return f"⟨{gate}, {port}, {entry(value[1])}, {epoch(value[2])}⟩"


def store(value):
    tag = value[0]
    if tag == "K" and len(value) == 3:
        return f".decoded ({key((value[1], value[2]))})"
    if tag == "K" and len(value) == 2:
        return f".burial ({entry(value[1])})"
    if tag == "KD":
        return f".bundle {lean_list(key(item) for item in value[1])}"
    if tag == "KA":
        return f".suppressed ({key((value[1], value[2]))})"
    if tag == "CP":
        return (f".cpark ({entry(value[1])}) {str(bool(value[2])).lower()} "
                f"({descriptor(value[3])}) "
                f"{lean_list(frame_descriptor(x) for x in value[4])} "
                f"{path(value[5])} {path(value[6])}")
    if tag == "CH":
        return (f".chistory ({entry(value[1])}) ({descriptor(value[2])}) "
                f"{lean_list(frame_descriptor(x) for x in value[3])} "
                f"({descriptor(value[4])}) "
                f"{lean_list(frame_descriptor(x) for x in value[5])} "
                f"{path(value[6])} {path(value[7])}")
    if tag == "CD":
        port = ".first" if value[1] == 1 else ".second"
        return (f".cdead {port} ({entry(value[2])}) ({epoch(value[3])}) "
                f"({entry(value[4])}) {str(bool(value[5])).lower()}")
    if tag == "CQ":
        port = ".first" if value[1] == 1 else ".second"
        return f".cquery {port} ({entry(value[2])}) ({entry(value[3])})"
    if tag == "CS":
        kinds = {"park-c": ".park", "fire-c": ".fire",
                 "deliver-c": ".deliver", "answer-c-port": ".answerPort"}
        return f".cstage {kinds[value[1]]}"
    raise ValueError(("store", value))


def virtual(value):
    if value is None:
        return "none"
    gate, port = gate_port(value[0])
    return f"some ⟨{gate}, {port}, {str(bool(value[1])).lower()}, {value[2]}⟩"


def token(value):
    return (f"⟨{path(value.path)}, {'.down' if value.d == 'D' else '.up'}, "
            f"{lean_list(entry(x) for x in value.log)}, "
            f"{lean_list(entry(x) for x in value.tape)}, {virtual(value.vb)}, "
            f"{lean_list(frame(x) for x in value.rs)}, "
            f"{lean_list(store(x) for x in value.ks)}⟩")


def tree(value):
    if isinstance(value, Hole):
        return f".hole {str(value.armed).lower()}"
    if isinstance(value, NFVar):
        return f".var {value.index}"
    if isinstance(value, NFLam):
        return f".lam ({tree(value.body)})"
    if isinstance(value, NFApp):
        return f".app ({tree(value.function)}) ({tree(value.argument)})"
    if isinstance(value, NFGate):
        gate, _port = gate_port(value.name)
        return f".gate {gate}"
    raise TypeError(value)


def identity(value):
    if value[0] == "source":
        return f"sourceIdentity {path(value[1])} {lean_list(entry(x) for x in value[2])}"
    if value[0] == "virtual":
        gate, port = gate_port(value[1])
        return (f"virtualIdentity {gate} {port} ({entry(value[2])}) "
                f"{value[3]} {path(value[4])}")
    raise ValueError(("identity", value))


def binder(value):
    assert isinstance(value, BinderMark)
    return f"⟨{path(value.output_path)}, {identity(value.identity)}⟩"


def residue(value):
    if isinstance(value, ExactScopeResidue):
        return (f".exactScope {path(value.output_path)} "
                f"{lean_list(entry(x) for x in value.prefix)}")
    if isinstance(value, PureScopeResidue):
        return f".pureScope {path(value.output_path)}"
    if isinstance(value, VirtualScopeResidue):
        gate, port = gate_port(value.gate)
        return (f".virtualScope {path(value.output_path)} {gate} {port} "
                f"({entry(value.instance)}) ({epoch(value.epoch)})")
    if isinstance(value, NeutralProbeResidue):
        return (f".neutralProbe {path(value.binder_path)} "
                f"{lean_list(entry(x) for x in value.binder_log)} "
                f"({entry(value.logged_argument)})")
    raise TypeError(value)


def zipper(value):
    cursor = "none" if value.cursor is None else f"some {path(value.cursor)}"
    return (f"⟨{tree(value.tree)}, {cursor}, "
            f"{lean_list(binder(x) for x in value.binders)}, "
            f"{lean_list(residue(x) for x in value.residues)}⟩")


def garbage(value):
    assert isinstance(value, TerminalGarbage)
    carrier = "none" if value.carrier is None else f"some ({residue(value.carrier)})"
    return (f"⟨{carrier}, {lean_list(frame(x) for x in value.frames)}, "
            f"{lean_list(store(x) for x in value.storage)}, "
            f"{lean_list(binder(x) for x in value.binders)}, "
            f"{lean_list(residue(x) for x in value.residues)}⟩")


def state(value):
    if isinstance(value, NFRun):
        return f".run ({token(value.token)}) ({zipper(value.zipper)})"
    if isinstance(value, NFRunDone):
        kind = ".halt" if value.kind == ("halt",) else ".error \"python-error\""
        output = "none" if value.output is None else f"(some ({tree(value.output)}))"
        # Successful carriers are the fidelity target.  Error garbage has a
        # wider diagnostic tuple and is intentionally omitted by the exporter.
        return f".runDone {kind} {output} ({garbage(value.garbage)})"
    if isinstance(value, NFDone):
        kind = ".halt" if value.kind == ("halt",) else ".error \"python-error\""
        output = "none" if value.output is None else f"(some ({tree(value.output)}))"
        return f".done {kind} {output} ({garbage(value.garbage)}) {value.tick}"
    raise TypeError(value)


def rule(value):
    rows = {
        "b1": ".b1", "b2": ".b2", "b3": ".b3", "b4": ".b4",
        "var": ".var", "arg": ".arg", "bt1": ".bt1", "bt2": ".bt2",
        "call": ".call", "call-c": ".callC", "park-c-1": ".parkC1",
        "park-c-2": ".parkC2", "deliver-c-1": ".deliverC1",
        "deliver-c-2": ".deliverC2", "fire-c-1": ".fireC1",
        "fire-c-2": ".fireC2", "fire-h": ".fireH", "fire-t0": ".fireT false",
        "fire-t1": ".fireT true", "bt1g": ".bt1g", "anshead": ".anshead",
        "vb2": ".vb2", "vvar": ".vvar", "recall": ".recall",
        "replay": ".replay", "root": ".root", "rootval": ".rootval",
        "head-gate": ".headGate", "head-neutral-gate": ".headNeutralGate",
        "head": ".head", "enter": ".enter", "vlam": ".vlam",
        "deliver-c-output": ".deliverCOutput",
        "answer-c-port-1": ".answerCPort1", "answer-c-port-2": ".answerCPort2",
        "return": ".ret", "return-c": ".returnC", "rootdone": ".rootdone",
        "halt": ".halt", "tick": ".tick",
    }
    if value in rows:
        return f".row ({rows[value]})"
    return f'.error "{value}"'


def certificate(value):
    return lean_list(
        f"({path(position)}, {lean_list(key(item) for item in sorted(keys, key=repr))})"
        for position, keys in sorted(value.items(), key=repr))


def edge(value):
    sign, denominator, name, target = value
    omega_power = 1 if name == "fire-t1" else 0
    return (f"⟨{sign}, {denominator}, {omega_power}, {rule(name)}, "
            f"{state(target)}⟩")


def circuit_cases():
    return {
        "smoke": Circuit(1),
        "h": Circuit(1, (Op(Kind.H, 0),)),
        "t": Circuit(1, (Op(Kind.T, 0),)),
        "cx": Circuit(2, (Op(Kind.CX, 0, 1),)),
        "mixed": Circuit(2, (Op(Kind.H, 0), Op(Kind.T, 1),
                               Op(Kind.CX, 0, 1))),
    }


def lean_source_name(name):
    return dict(smoke="empty1", h="h1", t="t1", cx="cx2",
                mixed="mixed2")[name]


def export_pins():
    declarations = [
        "import Gate2PhysicalCompiler",
        "set_option maxRecDepth 1000000",
        "namespace QalcCompilerPins",
        "open QalcComposedMachine QalcGate2PhysicalCompiler",
    ]
    for name, circuit in circuit_cases().items():
        compiled = compile_circuit(circuit)
        cert = compiler_certificate(compiled)
        source_name = lean_source_name(name)
        declarations.extend([
            f"def program_{name} : Term := {term(compiled.term)}",
            f"def cert_{name} : Certificate := {certificate(cert)}",
            f"def certPaths_{name} : List Path := "
            f"{lean_list(path(position) for position in cert)}",
            f"theorem term_{name} : compileTerm? {source_name} = "
            f"some program_{name} := by native_decide",
            f"def certPinned_{name} : Bool :=",
            f"  (compilerCertificate {source_name}).length == cert_{name}.length &&",
            f"  certPaths_{name}.all fun position =>",
            f"    certificateLookup (compilerCertificate {source_name}) position ==",
            f"      certificateLookup cert_{name} position",
            f"theorem cert_pinned_{name} : certPinned_{name} = true := by native_decide",
        ])
    declarations.extend(["end QalcCompilerPins", ""])
    target = ROOT / "QalcCompilerPins.lean"
    target.write_text("\n".join(declarations))
    print(target.name, "circuits", len(circuit_cases()))


def export(name="smoke", start=0, stop=None, expected_total=None):
    readback.step = shadow.step
    readback.nf_step = shadow.nf_step
    readback_certify.nf_step = shadow.nf_step
    compiled = compile_circuit(circuit_cases()[name])
    cert = compiler_certificate(compiled)
    carrier = readback_certify.composed_carrier(compiled.term, cert)
    cases = []
    for source in sorted(carrier["states"], key=repr):
        if not isinstance(source, (NFRun, NFRunDone, NFDone)):
            raise TypeError(("unsupported carrier source", source))
        rows = shadow.nf_step(compiled.term, source, cert)
        if any(not isinstance(target, (NFRun, NFRunDone, NFDone))
               for *_head, target in rows):
            raise TypeError(("unsupported carrier target", source, rows))
        try:
            source_literal = state(source)
            rows_literal = lean_list(edge(row) for row in rows)
        except (AssertionError, TypeError, ValueError) as error:
            raise RuntimeError(("cannot serialize carrier edge", source, rows)) from error
        cases.append(f"  (({source_literal}), {rows_literal})")
    all_case_count = len(cases)
    if expected_total is not None and all_case_count != expected_total:
        raise AssertionError(("differential carrier size changed",
                              all_case_count, expected_total))
    selected = cases[start:stop]
    content = "\n".join([
        "import QalcComposedMachine",
        "import Gate2PhysicalCompiler",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "namespace QalcComposedDifferential",
        "open QalcComposedMachine QalcRule QalcGate2PhysicalCompiler",
        f"def program : Term := {term(compiled.term)}",
        f"def cert : Certificate := {certificate(cert)}",
        f"def sourceCircuit := QalcGate2PhysicalCompiler."
        f"{lean_source_name(name)}",
        "def compilerTermPinned : Bool := compileTerm? sourceCircuit == some program",
        "theorem compiler_term_pinned : compilerTermPinned = true := by native_decide",
        f"def certPaths : List Path := {lean_list(path(position) for position in cert)}",
        "def compilerCertPinned : Bool :=",
        "  (compilerCertificate sourceCircuit).length == cert.length &&",
        "  certPaths.all fun position =>",
        "    certificateLookup (compilerCertificate sourceCircuit) position ==",
        "      certificateLookup cert position",
        "theorem compiler_cert_pinned : compilerCertPinned = true := by native_decide",
        "def cases : List (NFState × List Edge) := [",
        ",\n".join(selected),
        "]",
        "def checkList : List Bool := cases.map fun case =>",
        "  composedStep program case.1 cert == case.2",
        "def firstFalse : List Bool → Nat → Option Nat",
        "  | [], _ => none",
        "  | false :: _, index => some index",
        "  | true :: rest, index => firstFalse rest (index + 1)",
        "def checks : Bool := checkList.all id",
        "#eval firstFalse checkList 0",
        "def targetDiff : NFState → NFState → String",
        "  | .run actualToken actualZipper, .run expectedToken expectedZipper =>",
        "    reprStr (actualToken.path == expectedToken.path,",
        "      actualToken.direction == expectedToken.direction,",
        "      actualToken.log == expectedToken.log,",
        "      actualToken.tape == expectedToken.tape,",
        "      actualToken.vb == expectedToken.vb,",
        "      actualToken.frames == expectedToken.frames,",
        "      actualToken.storage == expectedToken.storage,",
        "      actualZipper.tree == expectedZipper.tree,",
        "      actualZipper.cursor == expectedZipper.cursor,",
        "      actualZipper.binders == expectedZipper.binders,",
        "      actualZipper.residues == expectedZipper.residues) ++",
        "      (if actualToken.tape == expectedToken.tape then \"\" else",
        "        \" tape=\" ++ reprStr (actualToken.tape, expectedToken.tape))",
        "  | actual, expected => reprStr (actual == expected)",
        "def edgeDiff (actual expected : List Edge) : String :=",
        "  match actual, expected with",
        "  | [a], [e] => reprStr (a.sign == e.sign,",
        "      a.denominatorPower == e.denominatorPower,",
        "      a.omegaPower == e.omegaPower, a.rule == e.rule) ++",
        "      \" target=\" ++ targetDiff a.target e.target",
        "  | _, _ => reprStr (actual.length, expected.length)",
        "def failureDetails : String :=",
        "  match firstFalse checkList 0 with",
        "  | none => \"none\"",
        "  | some index =>",
        "    match cases[index]? with",
        "    | none => \"bad-index\"",
        "    | some case => edgeDiff (composedStep program case.1 cert) case.2",
        "#eval failureDetails",
        "theorem exact_python_edges : checks = true := by native_decide",
        "end QalcComposedDifferential",
        "",
    ])
    suffix = "" if start == 0 and stop is None else f"_{start:04d}_{(stop or all_case_count):04d}"
    target = ROOT / f"QalcComposedDifferential{suffix}.lean"
    target.write_text(content)
    print(target.name, "cases", len(selected), "of", all_case_count,
          "carrier", len(carrier["states"]))


if __name__ == "__main__":
    import sys
    if len(sys.argv) > 1 and sys.argv[1] == "pins":
        export_pins()
    else:
        export(sys.argv[1] if len(sys.argv) > 1 else "smoke",
               int(sys.argv[2]) if len(sys.argv) > 2 else 0,
               int(sys.argv[3]) if len(sys.argv) > 3 else None,
               int(sys.argv[4]) if len(sys.argv) > 4 else None)
