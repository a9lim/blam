#!/usr/bin/env python3
"""Small symbolic scan: what do application-only terms over s (and K,F,I)
compute on the four stream shapes ABS=00r, APP=01r, V1=10N, V2=110N, with
rigid r / N?  Light computation: a few thousand terms at most."""
import itertools, sys
from lab import *

RIG = ["r", "N", "X", "Y"]          # rigid names, innermost first
# free indices: s is bound by an outer lambda, then rigid names follow.

def shapes():
    r = ("V", 1); N = ("V", 2)   # inside \s. body : s=0, r=1, N=2, X=3, Y=4
    # Actually we substitute s directly, so build terms with s at index 0.
    return {
        "ABS": bits("00", ("V", 0)),   # r at index 0 after substitution
        "APP": bits("01", ("V", 0)),
        "V1": bits("10", ("V", 1)),
        "V2": bits("110", ("V", 1)),
    }

def terms(n, leaves):
    """All application trees with n leaves from `leaves` (names)."""
    if n == 1:
        for l in leaves:
            yield l
        return
    for k in range(1, n):
        for a in terms(k, leaves):
            for b in terms(n - k, leaves):
                yield ("A", a, b)

def build(t, env):
    if isinstance(t, str):
        return env[t]
    return ("A", build(t[1], env), build(t[2], env))

def showt(t):
    if isinstance(t, str):
        return t
    l = showt(t[1]); r = showt(t[2])
    if not isinstance(t[2], str): r = "(" + r + ")"
    return l + " " + r

def main():
    maxleaves = int(sys.argv[1]) if len(sys.argv) > 1 else 4
    extra = sys.argv[2:] if len(sys.argv) > 2 else []
    names = ["s"] + extra
    consts = {"K": K, "F": F, "I": I}
    sh = shapes()
    for n in range(1, maxleaves + 1):
        for t in terms(n, names):
            if "s" not in showt(t):
                continue
            row = []
            for name, s in sh.items():
                env = {"s": s}
                for e in extra:
                    env[e] = consts[e] if e in consts else ("V", {"X": 2, "Y": 3}[e])
                v = nf(build(t, env), 2000)
                row.append(None if v is None else pretty(v, ["r", "N", "X", "Y"]))
            print(f"{showt(t):22s} | " + " | ".join("⊥" if x is None else x for x in row))

if __name__ == "__main__":
    main()
