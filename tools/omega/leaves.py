#!/usr/bin/env python3
"""Leaf tables for the Omega lower bound (docs/classical/omega.md).

Enumerates every closed term of size <= HL, normalizes it (normal order,
bounded fuel), and tabulates witnessed normalization for the open subterms
that closures expose. A closed term lambda^L m with L leading binders yields,
for every k <= L, the body M_k (strip k binders): a term of size n - 2k valid
under k binders. Rows:

  A t s k c      c terms of size s valid at depth k normalize, NF type t
  H t s k j c    ... of which c also avoid free variable j (1-based)
  halt n c       closed terms of size n witnessed normalizing

where t = 0 for a neutral normal form and 1 for an abstraction. A term that
runs out of fuel is simply not counted, which keeps every row a sound
lower count. The halt rows must equal data/classical/census_table.txt.

usage: leaves.py HL OUT [--fuel F]
"""

import sys
from collections import Counter

import lam


def build(hl, fuel):
    A, H, halt = Counter(), Counter(), Counter()
    for n in range(4, hl + 1):
        for t in lam.gen(n, 0):
            try:
                v = lam.normalize(t, fuel)
            except (lam.OutOfFuel, RecursionError):
                continue
            halt[n] += 1
            nflead, u = 0, v
            while u[0] == 1:
                nflead += 1
                u = u[1]
            L, m = 0, t
            while m[0] == 1:
                L += 1
                m = m[1]
            used = lam.free_vars(m)
            # binder p (1 = outermost) is vacuous iff index L - p is unused in m
            vac = [None] + [(L - p) not in used for p in range(1, L + 1)]
            for k in range(L + 1):
                s, ty = n - 2 * k, 1 if nflead > k else 0
                A[ty, s, k] += 1
                for j in range(1, k + 1):
                    if vac[k - j + 1]:   # free var j of M_k is binder k - j + 1
                        H[ty, s, k, j] += 1
        print(f"n={n}: halt {halt[n]}", file=sys.stderr, flush=True)
    return A, H, halt


def main():
    args = sys.argv[1:]
    fuel = 1000
    if "--fuel" in args:
        i = args.index("--fuel")
        fuel = int(args[i + 1])
        del args[i:i + 2]
    hl, out = int(args[0]), args[1]
    A, H, halt = lam.run_deep(build, hl, fuel)
    with open(out, "w") as f:
        f.write(f"# blam omega leaves v1: HL={hl} fuel={fuel} cap=50000\n")
        f.write("# A t s k count | H t s k j count | halt n count; t: 0 neutral NF, 1 abstraction NF\n")
        for n in sorted(halt):
            f.write(f"halt {n} {halt[n]}\n")
        for key in sorted(A):
            f.write("A " + " ".join(map(str, key)) + f" {A[key]}\n")
        for key in sorted(H):
            f.write("H " + " ".join(map(str, key)) + f" {H[key]}\n")


if __name__ == "__main__":
    main()
