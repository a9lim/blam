"""Export the Rust Phase-3 native-CNOT differential fixture.

The mixed width-two compiler image is the accepted 917-state Python/Lean
carrier.  This exporter installs the Gate-2 table explicitly, then writes its
entire BFS carrier, every ordered unmerged row, the column commitment, dynamic
trace, absorption finals, and the expanded PyReprKey corpus in the common qfx
wire format. It also emits exact term/certificate byte commitments for the
five compiler cases independently pinned by `QalcCompilerPins.lean`.

Usage, from the repository root:
    python qalc/export_gate2_fixtures.py
    python qalc/export_gate2_fixtures.py --check
"""

import hashlib
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import export_composed_fixtures as base
import gate2_admission
import gate2_cnot_shadow as shadow
from gate2_compiler import (Circuit, Kind, Op, compile_circuit,
                            compiler_certificate)


OUT_DIR = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
    "tests", "qalc", "gate2")


PIN_CIRCUITS = {
    "empty1": Circuit(1),
    "h1": Circuit(1, (Op(Kind.H, 0),)),
    "t1": Circuit(1, (Op(Kind.T, 0),)),
    "cx2": Circuit(2, (Op(Kind.CX, 0, 1),)),
    "mixed2": Circuit(2, (
        Op(Kind.H, 0), Op(Kind.T, 1), Op(Kind.CX, 0, 1))),
}


def export_compiler_pins():
    """Cross-language byte commitments for QalcCompilerPins.lean's cases."""
    lines = ["qalc-compiler-pins v1"]
    for name, circuit in PIN_CIRCUITS.items():
        compiled = compile_circuit(circuit)
        certificate = compiler_certificate(compiled)
        cert_payload = "".join(
            "".join(position) + ":"
            + ",".join(sorted(base.w_kd_key(key) for key in keys)) + "\n"
            for position, keys in sorted(
                certificate.items(), key=lambda item: "".join(item[0])))
        term_digest = hashlib.sha256(
            base.w_term(compiled.term).encode()).hexdigest()
        cert_digest = hashlib.sha256(cert_payload.encode()).hexdigest()
        lines.append("%s %s %s" % (name, term_digest, cert_digest))
    return "\n".join(lines) + "\n"


def export_corpus(frames, kdkeys):
    # Pin the expanded repr domain even when the selected carrier happens not
    # to capture a C-gamma in RS.  CP/CH themselves are not repr-sorted; their
    # nested logged positions can become frame/key instances later.
    invoked = ("L", ("f",), ())
    cgam = ("G", "c", 1, invoked, ("f",), ("f", "a"),
            ("a",), ("b",))
    lp = ("L", ("b",), (cgam,))
    frame = base.FRAME("c1", lp, 1, ("F",))
    frames[repr(frame)] = frame
    kdkeys[repr(("c2", lp))] = ("c2", lp)
    lines = [base.HEADER, "begin corpus"]
    for rendered in sorted(frames):
        lines.append("pair frame " + base.w_frame(frames[rendered]))
        lines.append("repr " + rendered)
    for rendered in sorted(kdkeys):
        lines.append("pair kdkey " + base.w_kd_key(kdkeys[rendered]))
        lines.append("repr " + rendered)
    lines.append("end corpus")
    return "\n".join(lines) + "\n"


def generate():
    # Both the composed carrier oracle and the exporter's locally imported
    # transition name must point at the shadow table.  No ambient Gate-1
    # dispatcher state may silently produce a width-two support of two.
    gate2_admission.configure()
    base.nf_step = shadow.nf_step

    compiled = compile_circuit(Circuit(2, (
        Op(Kind.H, 0), Op(Kind.T, 1), Op(Kind.CX, 0, 1))))
    certificate = compiler_certificate(compiled)
    text, order, columns, rules = base.export_core(
        "mixed", compiled.term, certificate)
    if len(order) != 917 or columns != 913:
        base.die("Gate-2 mixed manifest drift", len(order), columns)
    required = {
        "call-c", "park-c-1", "park-c-2", "deliver-c-1",
        "deliver-c-2", "fire-c-1", "fire-c-2", "return-c",
        "deliver-c-output", "answer-c-port-1", "answer-c-port-2",
    }
    if not required <= rules:
        base.die("Gate-2 rule inventory lost native-CNOT rows",
                 sorted(required - rules))

    frames, kdkeys = {}, {}
    base.check_placement_and_harvest("mixed", order, frames, kdkeys)
    return {
        "mixed.qfx": text,
        "corpus.qfx": export_corpus(frames, kdkeys),
        "compiler_pins.txt": export_compiler_pins(),
    }


def main():
    check = "--check" in sys.argv[1:]
    files = generate()
    if generate() != files:
        base.die("Gate-2 generation is not deterministic")
    os.makedirs(OUT_DIR, exist_ok=True)
    stale = ({name for name in os.listdir(OUT_DIR)
              if os.path.isfile(os.path.join(OUT_DIR, name))} - set(files))
    drift = []
    for name, text in sorted(files.items()):
        path = os.path.join(OUT_DIR, name)
        old = open(path, encoding="utf-8").read() \
            if os.path.exists(path) else None
        if check:
            if old != text:
                drift.append(name)
        elif old != text:
            with open(path, "w", encoding="utf-8") as handle:
                handle.write(text)
            print("wrote", name, "(%d bytes)" % len(text))
        else:
            print("unchanged", name)
    if stale:
        base.die("stale Gate-2 fixture files", sorted(stale))
    if check:
        if drift:
            base.die("Gate-2 fixture drift", drift)
        print("CHECK OK: %d Gate-2 files byte-identical" % len(files))


if __name__ == "__main__":
    main()
