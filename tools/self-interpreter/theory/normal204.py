#!/usr/bin/env python3
"""Bounded checks for the beta-normal 204. No term or candidate search."""
from pathlib import Path
import json
import re
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery as bt
import db


def stats(t):
    if t[0] == "V":
        return 0, 0, t[1]
    if t[0] == "L":
        l, a, x = stats(t[1])
        return l + 1, a, x
    l1, a1, x1 = stats(t[1])
    l2, a2, x2 = stats(t[2])
    return l1 + l2, a1 + a2 + 1, x1 + x2


def normal(t):
    if t[0] == "V":
        return True
    if t[0] == "L":
        return normal(t[1])
    return t[1][0] != "L" and normal(t[1]) and normal(t[2])


def main():
    start = time.monotonic()
    term = bt.compile_lam((ROOT / "data/self-interpreter/machines/int204_normal.lam").read_text())
    bits = bt.enc(term)
    assert bits == (ROOT / "data/self-interpreter/machines/int204_normal.blc").read_text().strip()
    assert len(bits) == 204 and normal(term)
    proof = (ROOT / "lean/Blc/SelfintNormal.lean").read_text()
    literal = re.search(r"def intL204Wire : List Bool := \[([^]]+)\]", proof)[1]
    proof_bits = "".join("1" if x.strip() == "true" else "0" for x in literal.split(","))
    assert proof_bits == bits
    ok, skipped, bad = bt.check(term, threads=2)
    assert (ok, skipped, len(bad)) == (667, 1, 0), bad
    suffix = {}
    for name, source in [("omega", r"(\1 1) (\1 1)"), ("lambda_omega", r"\(\1 1) (\1 1)")]:
        source_term = db.parse(source)
        # lambda n. E F (<M> ++ n), with F projecting the residual.
        probe = ("L", ("A", ("A", bt.shift(term, 1), bt.FALSE),
                       bt.bitlist(bt.enc(source_term), ("V", 0))))
        result = bt.normalize(bt.enc(probe), 1 << 20)
        assert result == "0010", (name, result)
        suffix[name] = "exact rigid tail"
    report = dict(bits=len(bits), L_A_X=stats(term), beta_normal=True,
                  battery=dict(ok=ok, skipped=skipped, failures=len(bad)),
                  suffix_probes=suffix, seconds=round(time.monotonic()-start, 4))
    (ROOT / "data/self-interpreter/theory/normal204.json").write_text(
        json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
