#!/usr/bin/env python3
"""Let-float (beta-expansion) neighborhood of a compiled .lam interpreter.

A move picks a node N and a set of occurrences of one subterm S inside N
whose free variables all point above N, and rewrites N to
(\\v. N[S := v]) S.  Single occurrences and the all-occurrences (CSE) set
are both tried.  Beta-expansion preserves beta-equivalence, so every
neighbor is correct by construction; improving neighbors are still run
through harness.py's battery.  Sean Palmer's 168-bit int.lam is the unique
improving one-step neighbor of the 170-bit one.

Usage: float_out.py FILE.lam [--steps K]   (K-step pure expansions, K <= 2
is seconds; the neighborhood is ~200 moves wide)
"""

from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(HERE.parent))

import blcc
from harness import check
from lc import decode

size, encode = blcc.size, blcc.encode


def shift(t, d, c=0):
    k = t[0]
    if k == "V":
        return ("V", t[1] + d) if t[1] >= c else t
    if k == "L":
        return ("L", shift(t[1], d, c + 1))
    return ("A", shift(t[1], d, c), shift(t[2], d, c))


def minfree(t, c=0):
    """Smallest free index of t as seen from t's own position (inf if closed)."""
    k = t[0]
    if k == "V":
        return t[1] - c if t[1] >= c else float("inf")
    if k == "L":
        return minfree(t[1], c + 1)
    return min(minfree(t[1], c), minfree(t[2], c))


def positions(t, path=(), depth=0):
    yield path, t, depth
    if t[0] == "L":
        yield from positions(t[1], path + (1,), depth + 1)
    elif t[0] == "A":
        yield from positions(t[1], path + (1,), depth)
        yield from positions(t[2], path + (2,), depth)


def put(t, p, new):
    if not p:
        return new
    parts = list(t)
    parts[p[0]] = put(t[p[0]], p[1:], new)
    return tuple(parts)


def moves(T):
    for q, N, _ in positions(T):
        liftable = {}
        for p, S, k in positions(N):
            # k binders sit between N and S; S must not reference any of them.
            if p and minfree(S) >= k:
                liftable.setdefault(shift(S, -k), []).append((p, k))
        for lifted, occ in liftable.items():
            sets = [[o] for o in occ]
            paths = [p for p, _ in occ]
            nested = any(a != b and b[: len(a)] == a for a in paths for b in paths)
            if len(occ) > 1 and not nested:
                sets.append(occ)
            for chosen in sets:
                body = shift(N, 1)
                for p, k in chosen:
                    body = put(body, p, ("V", k))
                yield put(T, q, ("A", ("L", body), lifted)), (lifted, len(chosen))


def show(t, d=0):
    names = "abcdefghijklmnopqrstuvwxyz"
    k = t[0]
    if k == "V":
        return names[d - 1 - t[1]] if t[1] < d else f"#{t[1] - d}"
    if k == "L":
        return "\\" + names[d] + "." + show(t[1], d + 1)
    f, a = show(t[1], d), show(t[2], d)
    if t[1][0] == "L":
        f = "(" + f + ")"
    if t[2][0] != "V":
        a = "(" + a + ")"
    return f + " " + a


def main():
    args = sys.argv[1:]
    steps = 1
    if "--steps" in args:
        i = args.index("--steps")
        steps = int(args[i + 1])
        del args[i : i + 2]
    for path in args:
        _, _, T = blcc.compile_lam(path)
        base = size(T)
        print(f"{path}: {base} bits")
        frontier = [T]
        for step in range(1, steps + 1):
            nxt, hist = [], {}
            for t in frontier:
                for t2, info in moves(t):
                    nxt.append((t2, info))
                    delta = size(t2) - base
                    hist[delta] = hist.get(delta, 0) + 1
            print(f"  step {step}: {len(nxt)} neighbors, delta histogram "
                  f"{dict(sorted(hist.items()))}")
            for t2, (lifted, m) in sorted(nxt, key=lambda x: size(x[0])):
                if size(t2) >= base:
                    break
                ok = check(decode(encode(t2), 0)[0])
                print(f"    {size(t2)}  battery={ok}  float {m}x {show(lifted)}")
                print(f"      {show(t2)}")
            frontier = [t2 for t2, _ in nxt]


if __name__ == "__main__":
    main()
