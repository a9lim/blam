#!/usr/bin/env python3
"""Run and durably record the complete qALC Gate-1 verification battery."""

from __future__ import annotations

from concurrent.futures import ThreadPoolExecutor
import hashlib
import os
from pathlib import Path
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
LOG = ROOT / "out_gate1_final.txt"
LEAN = Path.home() / ".elan" / "bin" / "lean"
ENV = os.environ.copy()
ENV["LEAN_PATH"] = "."


SECTIONS = [
    ("python-compile", [sys.executable, "-m", "py_compile",
     "kernel.py", "wf.py", "readback.py", "readback_checks.py",
     "readback_certify.py", "application_invariant.py", "semantics.py",
     "gate1_programs.py", "controller_invariant.py"]),
    ("kernel-suite", [sys.executable, "suite.py"]),
    ("certificate-selector", [sys.executable, "certify.py"]),
    ("typecheck", [sys.executable, "typecheck.py"]),
    ("conservation", [sys.executable, "conservation.py"]),
    ("polarity", [sys.executable, "polarity.py"]),
    ("well-formedness", [sys.executable, "wf.py"]),
    ("rri-attack", [sys.executable, "rri.py"]),
    ("instance-identity", [sys.executable, "instance_identity.py"]),
    ("exact-dw", [sys.executable, "dw.py"]),
    ("exact-dw-machine", [sys.executable, "dw_machine.py"]),
    ("readback", [sys.executable, "readback_checks.py"]),
    ("composed-certificates", [sys.executable, "readback_certify.py"]),
    ("application-marker", [sys.executable, "application_invariant.py"]),
    ("controller-invariant", [sys.executable, "controller_invariant.py"]),
    ("semantic-objects", [sys.executable, "semantics.py"]),
    ("gram-export", [sys.executable, "QalcReadbackGramExport.py"]),
]


CORE_LEAN = [
    "PredecessorFiber", "RecallEpoch", "DeltaFibers",
    "ReadbackController", "RootClosure", "TerminalAdapters",
    "ApplicationMarker", "ConservativeFallback", "FiniteGram",
    "FiniteMachine", "Gate1Assembly",
]


def record(lines: list[str]) -> None:
    temporary = LOG.with_suffix(".tmp")
    temporary.write_text("\n".join(lines) + "\n")
    temporary.replace(LOG)


def run(label: str, command: list[str], lines: list[str]) -> None:
    rendered = " ".join(map(str, command))
    print(f"[{label}] {rendered}", flush=True)
    completed = subprocess.run(
        command, cwd=ROOT, env=ENV, text=True,
        stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    )
    lines.extend((f"## {label}", f"$ {rendered}", completed.stdout.rstrip(),
                  f"exit={completed.returncode}", ""))
    if completed.returncode:
        record(lines)
        raise SystemExit(completed.returncode)


def compile_lean(stem: str) -> tuple[str, int, str]:
    source = f"{stem}.lean"
    output = f"{stem}.olean"
    completed = subprocess.run(
        [str(LEAN), "-q", "-o", output, source], cwd=ROOT, env=ENV,
        text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    )
    return stem, completed.returncode, completed.stdout


def generated_gram_sources() -> dict[str, bytes]:
    return {path.name: path.read_bytes() for path in sorted(
        ROOT.glob("QalcReadbackGram_p_*.lean"))}


def source_set_digest(sources: dict[str, bytes]) -> str:
    digest = hashlib.sha256()
    for name, content in sources.items():
        digest.update(name.encode())
        digest.update(b"\0")
        digest.update(content)
    return digest.hexdigest()


def main() -> None:
    lines = ["QALC GATE 1 FINAL BATTERY"]
    for label, command in SECTIONS:
        run(label, command, lines)

    first_generation = generated_gram_sources()
    run("gram-export-repeat",
        [sys.executable, "QalcReadbackGramExport.py"], lines)
    second_generation = generated_gram_sources()
    if first_generation != second_generation:
        lines.extend(("## gram-regeneration-stability",
                      "generated Lean sources changed on immediate rerun",
                      "exit=1", ""))
        record(lines)
        raise SystemExit(1)
    lines.extend(("## gram-regeneration-stability",
                  f"files={len(second_generation)}",
                  f"sha256={source_set_digest(second_generation)}",
                  "exit=0", ""))

    lines.extend(("## lean-core",))
    for stem in CORE_LEAN:
        name, code, output = compile_lean(stem)
        lines.append(f"{name}: exit={code}")
        if output:
            lines.append(output.rstrip())
        if code:
            record(lines)
            raise SystemExit(code)
    lines.append("")

    gram_stems = sorted(path.stem for path in ROOT.glob(
        "QalcReadbackGram_p_*.lean"))
    with ThreadPoolExecutor(max_workers=4) as executor:
        gram_results = list(executor.map(compile_lean, gram_stems))
    lines.append("## lean-composed-gram")
    for stem, code, output in gram_results:
        lines.append(f"{stem}: exit={code}")
        if output:
            lines.append(output.rstrip())
        if code:
            record(lines)
            raise SystemExit(code)
    lines.extend((f"compiled={len(gram_results)}", ""))

    run("concrete-lean-replay",
        [sys.executable, "QalcConcreteBuild.py", "--jobs", "4"], lines)

    lines.append("QALC GATE1 FINAL BATTERY: PASS")
    record(lines)
    print("QALC GATE1 FINAL BATTERY: PASS", flush=True)
    print(LOG, flush=True)


if __name__ == "__main__":
    main()
