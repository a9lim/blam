#!/usr/bin/env python3
"""Run and durably record the authoritative qALC Gate-1 runtime battery."""

from __future__ import annotations

from pathlib import Path
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
LOG = ROOT / "out_gate1_runtime.txt"


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
]


def record(lines: list[str]) -> None:
    temporary = LOG.with_suffix(".tmp")
    temporary.write_text("\n".join(lines) + "\n")
    temporary.replace(LOG)


def run(label: str, command: list[str], lines: list[str]) -> None:
    rendered = " ".join(map(str, command))
    print(f"[{label}] {rendered}", flush=True)
    completed = subprocess.run(
        command, cwd=ROOT, text=True,
        stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    )
    lines.extend((f"## {label}", f"$ {rendered}", completed.stdout.rstrip(),
                  f"exit={completed.returncode}", ""))
    if completed.returncode:
        record(lines)
        raise SystemExit(completed.returncode)


def main() -> None:
    lines = ["QALC GATE 1 RUNTIME BATTERY"]
    for label, command in SECTIONS:
        run(label, command, lines)

    lines.append("QALC GATE1 RUNTIME BATTERY: PASS")
    record(lines)
    print("QALC GATE1 RUNTIME BATTERY: PASS", flush=True)
    print(LOG, flush=True)


if __name__ == "__main__":
    main()
