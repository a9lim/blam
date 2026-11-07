#!/usr/bin/env python3
"""Lane scratch harness: named-lambda parsing with rigid free names, a fuelled
normal-order normalizer, sizes, and the exact contract probe on one program.

    from lab import *
    t = parse(r"\b. b Z c", free=["Z", "c"])     # free names become rigid
    print(show(nf(t)))                            # named normal form
    print(size(parse(SRC)))                       # BLC size of a closed term
    probe(E_src, M_src)                            # contract check via blam
"""
import sys
from pathlib import Path

ROOT = Path("/Users/a9lim/Work/blam")
sys.path.insert(0, str(ROOT / "tools"))
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
sys.setrecursionlimit(1000000)

import blcc
import lc

K = ("L", ("L", ("V", 1)))
F = ("L", ("L", ("V", 0)))
I = ("L", ("V", 0))


def parse(src, free=()):
    """Parse blcc .lam syntax; names in `free` (innermost first) become free
    de Bruijn indices beyond the bound ones, i.e. rigid variables."""
    p = blcc.P(blcc.strip_comments(src))
    e = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t), p.t[p.i:p.i + 40]
    return blcc.to_db(e, tuple(free))


def size(t):
    return lc.size(t)


def enc(t):
    return lc.enc(t)


def shift(d, c, t):
    return lc.shift(d, c, t)


def nf(t, fuel=200000):
    try:
        return lc.nf(t, [fuel])
    except lc.Fuel:
        return None


def whnf(t, fuel=200000):
    f = [fuel]
    while True:
        if t[0] == "A":
            h = whnf(t[1], f[0])
            if h is None:
                return None
            if h[0] == "L":
                f[0] -= 1
                if f[0] < 0:
                    return None
                t = lc.beta(h, t[2])
                continue
            return ("A", h, t[2])
        return t


def show(t, free=()):
    """Named display; free indices beyond the binders print as the given
    names (innermost first), else #k."""
    names = list(free)

    def go(t, depth, prec):
        if t[0] == "V":
            i = t[1]
            if i < depth:
                return "v%d" % (depth - 1 - i)
            j = i - depth
            return names[j] if j < len(names) else "#%d" % j
        if t[0] == "L":
            vs = []
            b = t
            while b[0] == "L":
                vs.append("v%d" % (depth + len(vs)))
                b = b[1]
            s = "\\" + " ".join(vs) + ". " + go(b, depth + len(vs), 0)
            return "(" + s + ")" if prec > 0 else s
        s = go(t[1], depth, 1) + " " + go(t[2], depth, 2)
        return "(" + s + ")" if prec > 1 else s

    return go(t, 0, 0)


def cons(b, r):
    return ("L", ("A", ("A", ("V", 0), shift(1, 0, b)), shift(1, 0, r)))


def bits(s, tail):
    """Scott stream of the bit string s (ASCII 0/1) ending in `tail`."""
    t = tail
    for ch in reversed(s):
        t = cons(K if ch == "0" else F, t)
    return t


def code(t):
    return lc.enc(t)


def app(*ts):
    r = ts[0]
    for x in ts[1:]:
        r = ("A", r, x)
    return r


def closed_size(src):
    return size(parse(src))


def eq(a, b, fuel=200000):
    na, nb = nf(a, fuel), nf(b, fuel)
    return na is not None and na == nb


def blam_nf(t, beta=1 << 20):
    import subprocess
    r = subprocess.run([str(ROOT / "target/release/blam"), "normalize", enc(t),
                        "--beta", str(beta)], capture_output=True, text=True)
    out = r.stdout.split()
    if r.returncode or not out or not set(out[0]) <= {"0", "1"}:
        return None
    return out[0]


def probe(E, M, beta=1 << 20):
    """Exact contract on one program: \\c \\n. E c (<M> ++ n) vs \\c \\n. c (\\z.M) n."""
    want = ("L", ("L", ("A", ("A", ("V", 1), ("L", shift(3, 0, M))), ("V", 0))))
    got = ("L", ("L", ("A", ("A", shift(2, 0, E), ("V", 1)),
                         bits(code(M), ("V", 0)))))
    w = blam_nf(want, 1 << 16)
    g = blam_nf(got, beta)
    if w is None:
        return "skip"
    if g is None:
        return "fuel"
    return "ok" if g == w else "WRONG"


def db(src):
    """Parse Tromp 1-based de Bruijn notation."""
    import db as dbp
    return dbp.parse(src)


if __name__ == "__main__":
    for a in sys.argv[1:]:
        t = parse(a)
        print(size(t), show(t))


def pretty(t, free=()):
    """Like show, but prints Scott cons cells as [b]tail, K/F/I by name."""
    names = list(free)

    def is_cons(t, depth):
        # \f. f B R  with f = index 0 not free in B, R
        if t[0] == "L" and t[1][0] == "A" and t[1][1][0] == "A" and t[1][1][1] == ("V", 0):
            B, R = t[1][1][2], t[1][2]
            if not occ(0, B) and not occ(0, R):
                return shift(-1, 0, B), shift(-1, 0, R)
        return None

    def occ(i, t):
        if t[0] == "V":
            return t[1] == i
        if t[0] == "L":
            return occ(i + 1, t[1])
        return occ(i, t[1]) or occ(i, t[2])

    def go(t, depth, prec):
        if t == K:
            return "K"
        if t == F:
            return "F"
        if t == I:
            return "I"
        c = is_cons(t, depth)
        if c:
            b, r = c
            bs = go(b, depth, 2)
            bs = {"K": "0", "F": "1"}.get(bs, bs)
            return "[" + bs + "]" + go(r, depth, 2)
        if t[0] == "V":
            i = t[1]
            if i < depth:
                return "v%d" % (depth - 1 - i)
            j = i - depth
            return names[j] if j < len(names) else "#%d" % j
        if t[0] == "L":
            vs = []
            b = t
            while b[0] == "L":
                vs.append("v%d" % (depth + len(vs)))
                b = b[1]
            s = "\\" + " ".join(vs) + ". " + go(b, depth + len(vs), 0)
            return "(" + s + ")" if prec > 0 else s
        s = go(t[1], depth, 1) + " " + go(t[2], depth, 2)
        return "(" + s + ")" if prec > 1 else s

    return go(t, 0, 0)
