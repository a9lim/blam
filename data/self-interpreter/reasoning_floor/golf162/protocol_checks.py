#!/usr/bin/env python3
"""Fixed shifted-cell equations and divergent-source suffix checks."""
import json
import os
from pathlib import Path
import sys
import tempfile

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
os.environ["TMPDIR"] = str(LANE)
os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
os.environ["RAYON_NUM_THREADS"] = "2"
sys.dont_write_bytecode = True
tempfile.tempdir = str(LANE)
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery

K = r"(\x \y. x)"
F = r"(\x \y. y)"
D = r"(\u \r. r (\b. b (\discard. a) (e b)))"

def cell(bit, rest):
    return rf"(\f. f {bit} {rest})"

u0 = cell(K, "n")
u1 = cell(F, u0)
u2 = cell(F, u1)
u3 = cell(F, u2)
checks = [
    ("shifted_cell_one", rf"{u1} {D}", "a"),
    ("shifted_cell_two", rf"{u2} {D}", rf"{u1} e"),
    ("shifted_cell_three", rf"{u3} {D}", rf"{u2} e"),
]
results = {"cell": [], "suffix": []}
for name, lhs, rhs in checks:
    ln = battery.normalize(battery.enc(battery.compile_lam(r"\a \e \n. " + lhs)), 4096)
    rn = battery.normalize(battery.enc(battery.compile_lam(r"\a \e \n. " + rhs)), 4096)
    assert ln is not None and ln == rn, name
    results["cell"].append({"name": name, "equal": True})
    print(f"{name}: rigid normal forms agree")

omega = battery.compile_lam(r"(\x. x x) (\x. x x)")
programs = {
    "Omega": omega,
    "lambda_Omega": ("L", battery.shift(omega, 1)),
    "Omega_Omega": ("A", omega, omega),
}
continuation = battery.compile_lam(r"\value \tail. tail")
machines = [
    ROOT / "tmp/overnight/self/int162.lam",
    *[LANE / (s + ".lam") for s in (
        "reset_cont164", "shared_return", "direct_dispatch", "whole_prefix",
        "continuation_last", "constant_stream_knot")],
]
for path in machines:
    E = battery.compile_lam(path.read_text())
    for label, M in programs.items():
        stream = battery.bitlist(battery.enc(M), ("V", 0))
        probe = ("L", ("A", ("A", battery.shift(E, 1), battery.shift(continuation, 1)), stream))
        result = battery.normalize(battery.enc(probe), 1 << 16)
        assert result == "0010", (path.name, label, result)
        results["suffix"].append({"machine": path.name, "program": label, "suffix_exact": True})
    print(f"{path.name}: suffix exact on Omega, lambda_Omega, Omega_Omega")

(LANE / "protocol_checks.json").write_text(json.dumps(results, indent=2) + "\n")
