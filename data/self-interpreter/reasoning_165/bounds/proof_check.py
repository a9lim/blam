#!/usr/bin/env python3
"""Check only the explicitly derived witnesses; no term enumeration.

All BLC compilation is unoptimized. The only complete interpreter checked is
an unchanged copy of the repository's 165-bit reference, at two threads.
"""
import os
from pathlib import Path
import sys

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = Path('/Users/a9lim/Work/blam')
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.path[:0] = [str(ROOT / 'tools/self-interpreter'), str(ROOT / 'tools')]
import lc
import battery


def V(name):
    return ('V', name)


def A(f, *xs):
    for x in xs:
        f = ('A', f, x)
    return f


def L(*xs):
    body = xs[-1]
    for name in reversed(xs[:-1]):
        body = ('L', name, body)
    return body


def db(t, frame):
    if t[0] == 'V':
        return ('V', frame.index(t[1]))
    if t[0] == 'L':
        return ('L', db(t[2], [t[1]] + frame))
    return ('A', db(t[1], frame), db(t[2], frame))


GLOBAL = ['R', 'T', 'N', 's', 'j', 'c', 'p', 'x', 'a', 'e', 'f', 'g']


def normal(t):
    return lc.nf(db(t, GLOBAL), [10000])


def equal(left, right):
    assert normal(left) == normal(right)


def priced(label, t, frame, want):
    term = db(t, frame)
    got = lc.size(term)
    assert got == want, (label, got, want)
    print(f'{label}: {got} bits')
    return got


K = L('ka', 'kb', V('ka'))
F = L('fa', 'fb', V('fb'))


def cons(b, r):
    return L('cs', A(V('cs'), b, r))


def stream(bits, tail):
    for bit in reversed(bits):
        tail = cons(K if bit == '0' else F, tail)
    return tail


s, j, c = map(V, ['s', 'j', 'c'])
R, T, N = map(V, ['R', 'T', 'N'])
frame = ['s', 'j', 'c', 'p', 'x']

Z0 = L('u', 'v', A(V('v'), j))
Z0_first = L('u', 'v', A(V('u'), j))
Z1 = L('t', A(V('t'), j))
Z2 = A(V('t'), j)
priced('two-argument diagonal arm, second copy', Z0,
       ['b'] + frame, 14)
priced('two-argument diagonal arm, first copy', Z0_first,
       ['b'] + frame, 15)
priced('one-argument diagonal arm', Z1,
       ['r', 'b'] + frame, 12)
priced('zero-argument diagonal arm', Z2,
       ['t', 'r', 'b'] + frame, 10)
equal(A(Z0, R, R), A(R, j))
equal(A(Z0_first, R, R), A(R, j))
ZK = A(V('b'), L('v', A(V('v'), j)))
priced('known-K repair arm', ZK, ['b'] + frame, 15)
equal(A(L('b', ZK), K, R, R), A(R, j))

# Six explicitly derived application-only cases in the known-K proof.
b = V('b')
small_K_cases = [A(b, b, j), A(b, j, b), A(j, b, b),
                 A(b, A(b, j)), A(b, A(j, b)), A(j, A(b, b))]
for term in small_K_cases:
    assert normal(A(L('b', term), K, R, R)) != normal(A(R, j))

# The twelve additional cost-13 cases when s is the actual cons K R.
small_K_source_cases = [
    A(b, s, j), A(b, j, s), A(s, b, j), A(s, j, b),
    A(j, b, s), A(j, s, b),
    A(b, A(s, j)), A(b, A(j, s)),
    A(s, A(b, j)), A(s, A(j, b)),
    A(j, A(b, s)), A(j, A(s, b)),
]
for term in small_K_cases + small_K_source_cases:
    assert lc.size(db(term, ['b'] + frame)) <= 13
    probe = A(L('b', 's', term), K, cons(K, R), R, R)
    assert normal(probe) != normal(A(R, j))
print('source-aware zero-arm cases: PASS (18 explicitly derived terms)')

H0 = L('b', A(V('b'), Z0, c))
H1 = L('b', 'r', A(V('b'), Z1, A(c, V('r'))))
H2 = L('b', 'r', 't', A(V('b'), Z2, A(c, V('r'), V('t'))))
for m, h, bits in [(0, H0, 27), (1, H1, 33), (2, H2, 40)]:
    priced(f'handler m={m}', h, frame, bits)
    equal(A(h, K, R, R), A(R, j))
    equal(A(h, F, R, T), A(c, R, T))

skip = A(s, s, s)
priced('skip', skip, frame, 10)
for k in range(8):
    sk = stream('1' * k + '0', N)
    equal(A(sk, sk), L('ignored', N))
    equal(A(sk, sk, sk), N)
priced('reference reader body', A(s, H0, skip), frame, 43)

# The lifted APP has the fully parametric law Lift E = f E (g E).
lift = L('env', A(V('f'), V('env'), A(V('g'), V('env'))))
priced('APP lift', lift, ['g', 'f', 'b', 'c', 'p', 'x'], 19)
equal(A(lift, V('e')), A(V('f'), V('e'), A(V('g'), V('e'))))

# The corresponding one-dispatch cell class has two possible currying cuts.
cell0 = L('b', A(V('b'), L('u', V('a')),
                        L('r', A(V('r'), V('e')))))
cell1 = L('b', 'r', A(V('b'), V('a'), A(V('r'), V('e'))))
for m, cell, bits in [(0, cell0, 25), (1, cell1, 24)]:
    priced(f'cell m={m}', cell, ['a', 'e'], bits)
    equal(A(cell, K, N), V('a'))
    equal(A(cell, F, R), A(R, V('e')))

print('explicit cost and beta-identity checks: PASS (no enumeration)')

if '--identities-only' in sys.argv:
    raise SystemExit(0)

reference = ROOT / 'data/self-interpreter/machines/int165.lam'
copy = HERE / 'reference165.lam'
copy.write_bytes(reference.read_bytes())
E = battery.compile_lam(copy.read_text())
assert len(battery.enc(E)) == 165
ok, skipped, bad = battery.check(E, threads=2)
print(f'{len(battery.enc(E)):5d} bits  ok={ok} skip={skipped} fail={len(bad)}  {copy}')
assert (ok, skipped, len(bad)) == (667, 1, 0)
