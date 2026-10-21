#!/usr/bin/env python3
"""Reader-theory toolkit for the reader-proof lane.

Named lambda terms over the reader frame [s, next, cont, intL, x] with rigid
globals R, N (and extra rigid names on demand). Sizes use the BLC identity
|M| = 2L + 4A + 2 + X. Normalization is normal-order with fuel (lc.nf).
Nothing here enumerates terms; it checks specific identities and sizes.
"""
import sys
from pathlib import Path
sys.dont_write_bytecode = True
ROOT = Path('/Users/a9lim/Work/blam')
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import lc

# ---------- named AST: ('V', name) | ('L', name, body) | ('A', f, a) ----------
def V(n): return ('V', n)
def A(f, *xs):
    for x in xs: f = ('A', f, x)
    return f
def L(*xs):
    body = xs[-1]
    for n in reversed(xs[:-1]): body = ('L', n, body)
    return body

FRAME = ['s', 'next', 'cont', 'intL', 'x']          # innermost first
RIGID = ['R', 'N', 'T', 'a', 'e', 'f', 'g', 'z', 'beta', 'tau']  # rigid globals beyond the frame

def db(t, frame):
    if t[0] == 'V':
        return ('V', frame.index(t[1]))
    if t[0] == 'L':
        return ('L', db(t[2], [t[1]] + frame))
    return ('A', db(t[1], frame), db(t[2], frame))

def to_db(t, frame=None):
    return db(t, (frame or FRAME) + RIGID)

def counts(t):
    """(L, A, X) of a de Bruijn term; X is the sum of 0-based indices."""
    if t[0] == 'V': return 0, 0, t[1]
    if t[0] == 'L':
        l, a, x = counts(t[1]); return l + 1, a, x
    lf, af, xf = counts(t[1]); la, aa, xa = counts(t[2])
    return lf + la, af + aa + 1, xf + xa

def size(t, frame=None):
    d = to_db(t, frame)
    l, a, x = counts(d)
    assert lc.size(d) == 2 * l + 4 * a + 2 + x
    return lc.size(d)

def nf(t, fuel=20000, frame=None):
    return lc.nf(to_db(t, frame), [fuel])

def eq(a, b, fuel=20000, frame=None):
    return nf(a, fuel, frame) == nf(b, fuel, frame)

# ---------- data ----------
K = L('ka', 'kb', V('ka'))
F = L('fa', 'fb', V('fb'))
I = L('ia', V('ia'))
def cons(b, r): return L('cs', A(V('cs'), b, r))
def zero(tail=V('R')): return cons(K, tail)
def P(n, tail=V('N')):
    t = cons(K, tail)
    for _ in range(n): t = cons(F, t)
    return t
def unary(n, tail=V('N')):   # 1^n 0 ++ tail
    return P(n, tail)

def subst_s(body, stream):
    """body[stream/s] for a named body; stream must be closed or rigid-only."""
    def go(t):
        if t[0] == 'V': return stream if t[1] == 's' else t
        if t[0] == 'L': return ('L', t[1], go(t[2]))
        return ('A', go(t[1]), go(t[2]))
    return go(body)

def laws(body, ns=range(1, 6), fuel=20000, verbose=False):
    """Check the two reader laws on actual streams with rigid next/cont/R/N."""
    ok = True
    z = nf(subst_s(body, zero()), fuel)
    want = nf(A(V('R'), V('next')), fuel)
    if z != want:
        ok = False
        if verbose: print('  zero law fails:', lc.show(z))
    for n in ns:
        v = nf(subst_s(body, P(n)), fuel)
        wantv = nf(A(V('cont'), P(n - 1), V('N')), fuel)
        if v != wantv:
            ok = False
            if verbose: print(f'  var law fails at n={n}:', lc.show(v))
    return ok

def report(name, body, **kw):
    sz = size(body)
    d = to_db(body)
    l, a, x = counts(d)
    try:
        ok = laws(body, **kw)
    except lc.Fuel:
        ok = 'FUEL'
    print(f'{name}: {sz} bits (L={l}, A={a}, X={x}) laws={ok}')
    return sz, ok

# ---------- beta wire delta (Lean: SelfintWireCost.wire_beta_delta) ----------
def occ(j, t):
    if t[0] == 'V': return 1 if t[1] == j else 0
    if t[0] == 'L': return occ(j + 1, t[1])
    return occ(j, t[1]) + occ(j, t[2])
def occ_depth(j, t):
    if t[0] == 'V': return 0
    if t[0] == 'L': return occ_depth(j + 1, t[1]) + occ(j + 1, t[1])
    return occ_depth(j, t[1]) + occ_depth(j, t[2])
def free_leaves(k, t):
    """number of variable leaves with index >= k (free w.r.t. k binders)."""
    if t[0] == 'V': return 1 if t[1] >= k else 0
    if t[0] == 'L': return free_leaves(k + 1, t[1])
    return free_leaves(k, t[1]) + free_leaves(k, t[2])
def delta(b, a):
    """wire(contract b a) - wire((\\.b) a), de Bruijn b (under one binder), a."""
    m = occ(0, b)
    return (m - 1) * lc.size(a) + (free_leaves(0, a) - 1) * occ_depth(0, b) - 2 * m - 4 - free_leaves(1, b)
def check_delta(b, a):
    got = lc.size(lc.beta(('L', b), a)) - lc.size(('A', ('L', b), a))
    assert got == delta(b, a), (got, delta(b, a))
    return got

if __name__ == '__main__':
    s, nx, c = V('s'), V('next'), V('cont')
    Z = L('u', 'r', A(V('r'), nx))
    H165 = L('b', A(V('b'), Z, c))
    B165 = A(s, H165, A(s, s, s))
    report('165 reader body s H (s s s)', B165)
    assert size(B165) == 43
