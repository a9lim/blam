#!/usr/bin/env python3
"""Recheck the two hand-derived interpreters with at most two workers."""
import os
from pathlib import Path
import sys
import tempfile

sys.dont_write_bytecode = True
os.environ["RAYON_NUM_THREADS"] = "2"
OUT = Path(__file__).resolve().parent
ROOT = Path("/Users/a9lim/Work/blam")
tempfile.tempdir = str(OUT)
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
from battery import FALSE, bitlist, check, compile_lam, enc, normalize, shift

V = lambda i: ("V", i)
L = lambda t: ("L", t)
A = lambda f, a: ("A", f, a)

for name, size in (("reparse_selected", 225), ("reparse_shared", 234)):
    path = OUT / (name + ".lam")
    term = compile_lam(path.read_text())
    assert len(enc(term)) == size
    assert enc(term) == path.with_suffix(".blc").read_text().strip()
    ok, skipped, failures = check(term, threads=2)
    print(f"{size:5d} bits  ok={ok} skip={skipped} fail={len(failures)}  {path.name}", flush=True)
    assert (ok, skipped, failures) == (667, 1, [])
    for source in (
        r"(\x.x x) (\x.x x)",
        r"\z.(\x.x x) (\x.x x)",
        r"((\x.x x) (\x.x x)) (\x.x)",
        r"(\x.x) ((\x.x x) (\x.x x))",
    ):
        program = compile_lam(source)
        probe = L(A(A(shift(term, 1), FALSE), bitlist(enc(program), V(0))))
        assert normalize(enc(probe), 1 << 16) == "0010"
    print("  divergent suffix probes: 4/4", flush=True)

term = compile_lam((OUT / "reparse_selected.lam").read_text())
rest = bitlist("10", V(0))
expected = normalize(enc(L(rest)), 1 << 16)
for index in (1, 2):
    code = "1" * index + "0"
    stream = bitlist(code + "10", V(0))
    after_tag = bitlist("1" + code + "10", V(0))
    selected = L(A(A(shift(term, 1), FALSE), stream))
    skipped = L(A(A(after_tag, after_tag), after_tag))
    assert normalize(enc(selected), 1 << 16) == expected
    assert normalize(enc(skipped), 1 << 16) == expected
print("  APP var-1/var-2 selected-result and skip collision: verified", flush=True)
