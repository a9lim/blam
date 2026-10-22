#!/usr/bin/env python3
"""Lane harness: named-lambda terms with rigid free names, a fuelled
normal-order normalizer, stream builders, size, and a 2-thread battery.

    from lab import *
    t = T("s I V NEXT", s=stream("0010", "N"))   # free names are rigid
    print(show(nf(t)))

Terms: ('L', b) | ('A', f, a) | ('V', i) | ('C', name).
"""
import os
import sys
from pathlib import Path

ROOT = Path("/Users/a9lim/Work/blam")
sys.path.insert(0, str(ROOT / "tools"))
sys.path.insert(0, str(ROOT / "tools" / "self-interpreter"))
sys.setrecursionlimit(1000000)

import blcc  # noqa: E402

# ---------------- parsing ----------------

def _to_db(e, vs, free):
    if e[0] == 'var':
        if e[1] in vs:
            return ('V', vs.index(e[1]))
        if e[1] in free:
            return free[e[1]]
        return ('C', e[1])
    if e[0] == 'lam':
        return ('L', _to_db(e[2], (e[1],) + vs, free))
    return ('A', _to_db(e[1], vs, free), _to_db(e[2], vs, free))


def T(src, **free):
    """Parse named-lambda source. Keyword args substitute closed terms for
    names; any other free name becomes a rigid constant ('C', name)."""
    src = blcc.strip_comments(src)
    p = blcc.P(src)
    e = blcc.p_lc(p)
    p.ws()
    if p.i != len(src):
        raise SyntaxError(f"trailing input at {p.i}: {src[p.i:p.i+40]!r}")
    return _to_db(e, (), free)


# ---------------- reduction ----------------

def shift(d, c, t):
    k = t[0]
    if k == 'V':
        return ('V', t[1] + d) if t[1] >= c else t
    if k == 'L':
        return ('L', shift(d, c + 1, t[1]))
    if k == 'A':
        return ('A', shift(d, c, t[1]), shift(d, c, t[2]))
    return t


def subst(j, s, t):
    k = t[0]
    if k == 'V':
        return s if t[1] == j else t
    if k == 'L':
        return ('L', subst(j + 1, shift(1, 0, s), t[1]))
    if k == 'A':
        return ('A', subst(j, s, t[1]), subst(j, s, t[2]))
    return t


def beta(f, a):
    return shift(-1, 0, subst(0, shift(1, 0, a), f[1]))


class Fuel(Exception):
    pass


def whnf(t, fuel):
    while t[0] == 'A':
        f = whnf(t[1], fuel)
        if f[0] == 'L':
            fuel[0] -= 1
            if fuel[0] < 0:
                raise Fuel()
            t = beta(f, t[2])
        else:
            return ('A', f, t[2])
    return t


def nf(t, fuel=20000):
    """Normal form with a beta budget; raises Fuel."""
    box = [fuel] if isinstance(fuel, int) else fuel
    return _nf(t, box)


def _nf(t, box):
    t = whnf(t, box)
    if t[0] == 'L':
        return ('L', _nf(t[1], box))
    if t[0] == 'A':
        return ('A', _nf(t[1], box), _nf(t[2], box))
    return t


def hnf(t, fuel=20000):
    """Head normal form: whnf, then under lambdas, head spine only."""
    box = [fuel]
    t = whnf(t, box)
    while t[0] == 'L':
        pass
    return t


def try_nf(t, fuel=20000):
    try:
        return nf(t, fuel)
    except Fuel:
        return None


# ---------------- printing ----------------

NAMES = "abcdefghijklmnopqrstuvwxyz"


def show(t, names=None, prec=0):
    names = names or []
    k = t[0]
    if k == 'V':
        return names[t[1]] if t[1] < len(names) else f"#{t[1]}"
    if k == 'C':
        return t[1]
    if k == 'L':
        vs = []
        b = t
        while b[0] == 'L':
            n = len(names) + len(vs)
            vs.append(NAMES[n % 26] + ("" if n < 26 else str(n // 26)))
            b = b[1]
        s = "\\" + " ".join(vs) + ". " + show(b, list(reversed(vs)) + names, 0)
        return "(" + s + ")" if prec > 0 else s
    s = show(t[1], names, 1) + " " + show(t[2], names, 2)
    return "(" + s + ")" if prec > 1 else s


# ---------------- constructors ----------------

K = ('L', ('L', ('V', 1)))      # bit 0
F = ('L', ('L', ('V', 0)))      # bit 1
I = ('L', ('V', 0))


def app(*ts):
    t = ts[0]
    for u in ts[1:]:
        t = ('A', t, u)
    return t


def cons(b, r):
    return ('L', app(('V', 0), shift(1, 0, b), shift(1, 0, r)))


def C(name):
    return ('C', name)


def stream(bits, tail="N"):
    """cons cells for an ASCII bit string, ending in a rigid name (or term)."""
    t = C(tail) if isinstance(tail, str) else tail
    for b in reversed(bits):
        t = cons(K if b == '0' else F, t)
    return t


def unary(n, tail="N"):
    """U_n(N) = 1^n 0 ++ N."""
    return stream("1" * n + "0", tail)


def encode_term(t):
    """BLC bits of a closed (constant-free) term."""
    return blcc.encode(t)


def size(t):
    return len(encode_term(t))


def quote(t):
    """<M> for a closed DB term (lists of ASCII bits)."""
    if t[0] == 'V':
        return '1' * (t[1] + 1) + '0'
    if t[0] == 'L':
        return '00' + quote(t[1])
    return '01' + quote(t[1]) + quote(t[2])


def eq(a, b, fuel=20000):
    """Beta-equality by normal forms (both must normalize)."""
    return nf(a, fuel) == nf(b, fuel)


# ---------------- files ----------------

def compile_file(path):
    """DB term of a .lam file as written (lets as redexes)."""
    src = blcc.strip_comments(Path(path).read_text())
    p = blcc.P(src)
    e = blcc.p_lc(p)
    p.ws()
    if p.i != len(src):
        raise SyntaxError(f"trailing input at {p.i}")
    return blcc.to_db(e)


def battery(path, threads=2, max_bits=18):
    """Run the exact battery with a thread cap. Returns the printed line."""
    import battery as B
    E = B.compile_lam(Path(path).read_text())
    ok, skip, bad = B.check(E, False, max_bits, threads=threads)
    line = f"{len(B.enc(E)):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {path}"
    return line, bad[:5]


def probe(E, M_src, cont="C", tail="N", fuel=200000):
    """E C (<M> ++ N) vs C (\\z. M) N for a closed program M (Tromp 1-based
    notation or a DB term). Returns (ok, got, want)."""
    import db as dbparse
    M = dbparse.parse(M_src) if isinstance(M_src, str) else M_src
    got = app(E, C(cont), stream(quote(M), tail))
    want = app(C(cont), ('L', shift(1, 0, M)), C(tail))
    g = try_nf(got, fuel)
    w = try_nf(want, fuel)
    return (g is not None and g == w), g, w


if __name__ == "__main__":
    # smoke test: the 162 on a few programs
    E = compile_file(ROOT / "data/self-interpreter/machines/int162.lam")
    print(size(E), "bits")
    for m in ["\\1", "\\\\1", "\\\\2", "(\\1)(\\1)", "\\(\\1 2) 1", "\\\\\\3 1 (2 1)"]:
        ok, g, w = probe(E, m)
        print(m, ok, show(g) if g else None)
