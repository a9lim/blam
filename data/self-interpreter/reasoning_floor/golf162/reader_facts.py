#!/usr/bin/env python3
"""Fixed symbolic identities and finite head traces; no candidate search."""
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
import lc

R = r"(\s. s (\x. x) (\u. s (\dummy. c) (s s u)) q)"
K = r"(\x \y. x)"
F = r"(\x \y. y)"
I = r"(\x. x)"

def cell(bit, rest):
    return rf"(\f. f {bit} {rest})"

u0 = cell(K, "n")
u1 = cell(F, u0)
u2 = cell(F, u1)
cases = [
    ("zero_reader", rf"{R} {cell(K, 'r')}", "r q"),
    ("unary_one", rf"{R} {u1}", rf"c {u0} n"),
    ("unary_two", rf"{R} {u2}", rf"c {u1} n"),
    ("reader_K", rf"{R} {K}", "q"),
    ("reader_F", rf"{R} {F}", "q"),
    ("reader_I", rf"{R} {I}", "c"),
    ("reader_constant", rf"{R} (\unused. a)", r"a (\u. a (a u)) q"),
    ("reader_double_constant", rf"{R} (\u \v. t)", "t q"),
    ("reader_Z", rf"{R} (\u \v. v t)", "t t t q"),
    ("reader_singleton", rf"{R} (\f. f t)", r"t (\u. c (t t u)) q"),
    ("reader_diagonal", rf"(\q. {R} (\u \v. q)) t", "t t"),
    ("reset_F", rf"{R.replace('s s u', 's s c')} {F}", "c"),
]
output = {"identities": [], "head_obstructions": []}
for name, lhs, rhs in cases:
    left = battery.compile_lam(r"\q \c \t \a \r \n. " + lhs)
    right = battery.compile_lam(r"\q \c \t \a \r \n. " + rhs)
    lnf = battery.normalize(battery.enc(left), 4096)
    rnf = battery.normalize(battery.enc(right), 4096)
    assert lnf is not None and lnf == rnf, (name, lnf, rnf)
    output["identities"].append({"name": name, "equal": True})
    print(f"{name}: exact rigid normal forms agree")

def head_trace(t, cap=256):
    """Only left-spine beta contractions on two fixed 0010 probes."""
    args = []
    steps = 0
    while True:
        if t[0] == "A":
            args.append(t[2])
            t = t[1]
        elif t[0] == "L" and args:
            assert steps < cap
            t = lc.beta(t, args.pop())
            steps += 1
        else:
            return t, list(reversed(args)), steps

for name in ("diag161", "handler157"):
    E = battery.compile_lam((LANE / f"{name}.lam").read_text())
    stream = battery.bitlist("0010", ("V", 0))
    probe = ("A", ("A", battery.shift(E, 2), ("V", 1)), stream)
    head, arguments, steps = head_trace(probe)
    assert head == ("V", 0), (name, head)
    row = {"name": name, "program": "0010", "head": "N", "wanted_head": "C", "arguments": len(arguments), "beta_steps": steps}
    output["head_obstructions"].append(row)
    print(f"{name} on 0010: {steps} head contractions -> rigid N with {len(arguments)} arguments; required head is C")

(LANE / "reader_facts.json").write_text(json.dumps(output, indent=2) + "\n")
