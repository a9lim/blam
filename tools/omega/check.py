#!/usr/bin/env python3
"""Brute-force cross-check of bound.py (docs/classical/omega.md).

Applies the label functions l and l0 directly to every term of size <= S valid
at depth <= K, with leaf-known terms decided by normalizing them here (not
from the leaf table). It checks that:
  - the counts equal bound.py's DP arrays exactly (T, cN/cO, zN/zO, aN/aO);
  - l0 != X implies l = l0 (the monotonicity the R3/R4 count relies on);
  - every N/O-labelled term actually normalizes, and N-labelled terms have
    neutral normal forms.

usage: check.py LEAVES HL S K
"""

import sys

import bound
import lam


def labeller(hl):
    memo = {}

    def truth(t):
        try:
            v = lam.normalize(t, 4000)
        except (lam.OutOfFuel, RecursionError):
            return None
        return "O" if v[0] == 1 else "N"

    def projection(m):          # lam^r (var r+1): uses only the redex's binder
        r = 0
        while m[0] == 1:
            r += 1
            m = m[1]
        return m == (0, r)

    def lab(t, r3=True):
        key = (t, r3)
        if key in memo:
            return memo[key]
        if lam.size(t) + 2 * lam.maxfree(t) <= hl:
            r = truth(t) or "X"
        elif t[0] == 0:
            r = "N"
        elif t[0] == 1:
            r = "O" if lab(t[1], r3) != "X" else "X"
        elif t[1][0] == 1:                      # (lam M) P
            M, P = t[1][1], t[2]
            lm, lp = lab(M, r3), lab(P, r3)
            if lm != "X" and lp == "N":
                r = lm                          # R4
            elif projection(M) and lp == "O":
                r = "O"                         # projection
            elif r3 and not lam.uses(M, 0) and lab(M, False) != "X":
                r = lab(M, False)               # R3
            else:
                r = "X"
        else:
            lf, lp = lab(t[1], r3), lab(t[2], r3)
            if lf == "N" and lp != "X":
                r = "N"                         # R6
            elif lf == "O" and lp == "N":
                r = "O"                         # R10
            else:
                r = "X"
        memo[key] = r
        return r

    return lab, truth


def run(leaves, hl, S, K):
    _, A, H, _ = bound.read_leaves(leaves)
    arr = bound.certified_counts(hl, A, H, S + 2 * K + 4)
    lab, truth = labeller(hl)
    terms = mismatch = unsound = 0
    for s in range(2, S + 1):
        for k in range(K + 1):
            c = {"N": 0, "O": 0, "X": 0}
            z = {"N": 0, "O": 0, "X": 0}
            a = {"N": [0] * (k + 1), "O": [0] * (k + 1)}
            for t in lam.gen(s, k):
                terms += 1
                lc, lz = lab(t), lab(t, False)
                c[lc] += 1
                z[lz] += 1
                if lz != "X" and lc != lz:
                    mismatch += 1
                    print("NONMONOTONE", lam.encode(t), lc, lz)
                if lz != "X":
                    for j in range(1, k + 1):
                        a[lz][j] += not lam.uses(t, j - 1)
                if lc != "X":
                    tr = truth(t)
                    if tr is None or (lc == "N" and tr != "N"):
                        unsound += 1
                        print("UNSOUND", lam.encode(t), lc, tr)
            got = {"T": arr["T"][s][k], "cN": arr["cN"][s][k], "cO": arr["cO"][s][k],
                   "zN": arr["zN"][s][k], "zO": arr["zO"][s][k],
                   "aN": arr["aN"][s][k][1:], "aO": arr["aO"][s][k][1:]}
            want = {"T": sum(c.values()), "cN": c["N"], "cO": c["O"], "zN": z["N"], "zO": z["O"],
                    "aN": a["N"][1:], "aO": a["O"][1:]}
            for name in got:
                if got[name] != want[name]:
                    mismatch += 1
                    print(f"MISMATCH {name} s={s} k={k}: dp {got[name]} brute {want[name]}")
        print(f"s={s}: {terms} term instances checked", file=sys.stderr, flush=True)
    print(f"HL={hl} S={S} K={K}: {terms} term instances, {mismatch} mismatches, {unsound} unsound")
    return mismatch == 0 and unsound == 0


if __name__ == "__main__":
    leaves, hl, S, K = sys.argv[1], *map(int, sys.argv[2:5])
    ok = lam.run_deep(run, leaves, hl, S, K)
    sys.exit(0 if ok else 1)
