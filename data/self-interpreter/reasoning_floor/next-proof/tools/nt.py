#!/usr/bin/env python3
"""NEXT-theory toolkit for the next-proof lane.

Named lambda terms over the NEXT frame [cont, intL, x] (innermost first) with
rigid globals (C, T, v, R, N, ...).  Sizes use |M| = 2L + 4A + 2 + X.
Normalization is normal-order with fuel (tools/self-interpreter/lc.py).

E_N is assembled from a NEXT body N exactly as in the 165:
    (\\x. x x) (\\x. (\\intL. \\cont. (\\next. \\list.
        list (\\bit0. bit0 (\\u \\r. r next) cont) (list list list)) N) (x x))
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

FRAME = ['cont', 'intL', 'x']                         # innermost first
RIGID = ['C', 'T', 'v', 'w', 'R', 'N', 'a', 'y', 'e', 'f', 'g', 'z', 'k', 'q', 'beta', 'tau', 'PR', 'GR', 'XR']

def db(t, frame):
    if t[0] == 'V':
        if t[1] not in frame:
            raise KeyError(f'unbound name {t[1]!r}; frame={frame}')
        return ('V', frame.index(t[1]))
    if t[0] == 'L':
        return ('L', db(t[2], [t[1]] + frame))
    return ('A', db(t[1], frame), db(t[2], frame))

def to_db(t, frame=None):
    return db(t, (frame if frame is not None else FRAME) + RIGID)

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

def nf(t, fuel=200000, frame=None):
    return lc.nf(to_db(t, frame), [fuel])

def nf_db(d, fuel=200000):
    return lc.nf(d, [fuel])

def show(d): return lc.show(d)

def eq(a, b, fuel=200000, frame=None):
    return nf(a, fuel, frame) == nf(b, fuel, frame)

# ---------- data ----------
K = L('ka', 'kb', V('ka'))
F = L('fa', 'fb', V('fb'))
I = L('ia', V('ia'))
OMEGA1 = L('oa', A(V('oa'), V('oa')))
OMEGA = A(OMEGA1, OMEGA1)
def cons(b, r): return L('cs', A(V('cs'), b, r))
def stream(bits, tail):
    t = tail
    for b in reversed(bits):
        t = cons(K if b == '0' else F, t)
    return t
def unary(n, tail):   # 1^n 0 ++ tail
    return stream('1' * n + '0', tail)

# ---------- quotation of named closed programs (de Bruijn code) ----------
def quote_db(d):
    if d[0] == 'V': return '1' * (d[1] + 1) + '0'
    if d[0] == 'L': return '00' + quote_db(d[1])
    return '01' + quote_db(d[1]) + quote_db(d[2])

def quote(t, frame=()):
    """BLC code of a named term with the given (possibly empty) frame."""
    return quote_db(db(t, list(frame)))

# ---------- the 165's NEXT and the E_N assembly ----------
def abs_value(exp):
    cell = L('zx', 'zy', A(V('zx'), V('arg'), A(V('zy'), V('args'))))
    return L('args', 'arg', A(exp, cell))
def lift(exp, exp2):
    return L('args', A(exp, V('args'), A(exp2, V('args'))))
N165 = L('bit1', A(V('intL'), L('exp', A(V('bit1'),
            A(V('cont'), abs_value(V('exp'))),
            A(V('intL'), L('exp2', A(V('cont'), lift(V('exp'), V('exp2')))))))))

def reader_body(next_name='next', list_name='list'):
    Z = L('u', 'r', A(V('r'), V(next_name)))
    H = L('bit0', A(V('bit0'), Z, V('cont')))
    s = V(list_name)
    return A(s, H, A(s, s, s))

def E_of(N):
    """E_N as a named closed term (N is over [cont, intL, x])."""
    inner = L('next', 'list', reader_body())
    body = L('intL', 'cont', A(inner, N))
    G = L('x', A(body, A(V('x'), V('x'))))
    return A(L('x', A(V('x'), V('x'))), G)

def E_db(N):
    return db(E_of(N), [])

def contract_ok(N, M, fuel=400000, frame=None):
    """E_N C (<M> ++ T) =? C (\\z. M) T for a named closed program M."""
    E = E_of(N)
    code = quote(M)
    lhs = A(E, V('C'), stream(code, V('T')))
    rhs = A(V('C'), L('z', M), V('T'))
    return nf(lhs, fuel, frame) == nf(rhs, fuel, frame)

# the actual intL value P = G G, and N^[k] = N[k/cont, P/intL, G/x]
def G_of(N):
    inner = L('next', 'list', reader_body())
    body = L('intL', 'cont', A(inner, N))
    return L('x', A(body, A(V('x'), V('x'))))
def P_of(N):
    G = G_of(N)
    return A(G, G)
def Nhat(N, k):
    """N with cont := k, intL := P, x := G (named, closed except for k's free names)."""
    G = G_of(N); P = A(G, G)
    def go(t):
        if t[0] == 'V':
            return {'cont': k, 'intL': P, 'x': G}.get(t[1], t)
        if t[0] == 'L': return ('L', t[1], go(t[2]))
        return ('A', go(t[1]), go(t[2]))
    return go(N)

def intL_call(N, k, s):
    """P k s with the actual P for this N."""
    return A(P_of(N), k, s)

# ---------- one-level unfolding with RIGID inner recursion ----------
# P_one = \c \s. s H_c (s s s) with next := N[c/cont, PR/intL, GR/x]; PR, GR rigid.
# Exact for identities needing one tag level; inner calls appear as PR ... .
def Nhat_rigid(N, k):
    def go(t):
        if t[0] == 'V':
            return {'cont': k, 'intL': V('PR'), 'x': V('GR')}.get(t[1], t)
        if t[0] == 'L': return ('L', t[1], go(t[2]))
        return ('A', go(t[1]), go(t[2]))
    return go(N)
def P_one(N):
    inner = L('next', 'list', reader_body())
    return L('cont', A(inner, Nhat_rigid(N, V('cont'))))
def P_depth(N, d):
    """d-level unfolding of the actual intL; inner calls beyond depth d are the rigid PR."""
    if d == 0:
        return V('PR')
    inner_P = P_depth(N, d - 1)
    def go(t):
        if t[0] == 'V':
            return {'intL': inner_P, 'x': V('GR')}.get(t[1], t)
        if t[0] == 'L': return ('L', t[1], go(t[2]))
        return ('A', go(t[1]), go(t[2]))
    inner = L('next', 'list', reader_body())
    return L('cont', A(inner, go(N)))
def Z_rigid(N, k):
    return L('r', A(V('r'), Nhat_rigid(N, k)))
def H_rigid(N, k):
    return L('b', A(V('b'), L('u', 'r', A(V('r'), Nhat_rigid(N, k))), k))

# a few closed programs, named
PROGS = {
    'I': I,
    'K': K,
    'F': F,
    'omega': OMEGA1,
    'II': A(I, I),
    'KI': A(K, I),
    'S': L('a', 'b', 'c', A(V('a'), V('c'), A(V('b'), V('c')))),
    'l1_1': L('a', A(V('a'), V('a'))),
    'll21': L('a', 'b', A(V('a'), V('b'))),
    'll1_2': L('a', 'b', A(V('b'), V('a'))),
    'lll312': L('a', 'b', 'c', A(V('a'), V('b'), V('c'))),
    'omega_omega': OMEGA,
}

if __name__ == '__main__':
    print('|N165| =', size(N165), 'LAX =', counts(to_db(N165)))
    assert size(N165) == 92
    E = E_db(N165)
    print('|E_165| =', lc.size(E))
    assert lc.size(E) == 165
    for name, M in PROGS.items():
        if name == 'omega_omega':
            continue  # no normal form; checked separately below
        print(name, contract_ok(N165, M))
    # divergent program: compare head normal forms by a bounded reduction
    code = quote(OMEGA)
    lhs = A(E_of(N165), V('C'), stream(code, V('T')))
    try:
        nf(lhs, 2000)
    except lc.Fuel:
        print('omega omega: no nf within fuel (expected)')
