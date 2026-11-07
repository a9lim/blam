#!/usr/bin/env python3
"""Lane helper: named terms with rigid free names, fuelled normal-order nf."""
import sys
from pathlib import Path
ROOT = Path("/Users/a9lim/Work/blam")
sys.path.insert(0, str(ROOT / "tools"))
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
sys.setrecursionlimit(1000000)
import blcc, lc

K = ("L", ("L", ("V", 1))); F = ("L", ("L", ("V", 0)))

def parse(src, free=()):
    p = blcc.P(blcc.strip_comments(src)); e = blcc.p_lc(p); p.ws()
    assert p.i == len(p.t), p.t[p.i:p.i+40]
    return blcc.to_db(e, tuple(free))

def nf(t, fuel=200000):
    try: return lc.nf(t, [fuel])
    except lc.Fuel: return None

def app(*ts):
    t = ts[0]
    for x in ts[1:]: t = ("A", t, x)
    return t

def sh(t, d=1): return lc.shift(d, 0, t)

def cons(b, r): return ("L", app(("V", 0), sh(b), sh(r)))

def U(n, tail):            # 1^n 0 ++ tail
    t = cons(K, tail)
    for _ in range(n): t = cons(F, t)
    return t

def eq(a, b, fuel=200000):
    x, y = nf(a, fuel), nf(b, fuel)
    return x is not None and x == y

size = lc.size
