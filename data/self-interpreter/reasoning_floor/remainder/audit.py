#!/usr/bin/env python3
"""Replay fixed equations in the handwritten <=26-bit exclusion.

This is a proof-equation audit, not a candidate generator or size census.
Divergence claims are checked by finite recurrence identities, never by caps.
"""
import json
from pathlib import Path
import signal
import sys
import time
sys.dont_write_bytecode = True
from check import HERE, CANDIDATES, parse, lc, stats

signal.alarm(100)
start = time.monotonic()
A = lambda f, a: ('A', f, a)
V = lambda n: ('V', n)
L = lambda b: ('L', b)
S = lc.bitlist('0010', V(0))
r = lc.bitlist('010', V(0))
u = lc.bitlist('10', V(0))
Dsrc = r'\x.x x'
Jsrc = rf'\z.({Dsrc})'
D = parse(Dsrc)
J = parse(Jsrc)
K = lc.TRUE
I = parse(r'\x.x')
rows = []

def equal_nf(label, left, right):
    ln = lc.nf(left, [4000])
    rn = lc.nf(right, [4000])
    assert ln == rn, (label, lc.show(ln), lc.show(rn))
    rows.append({'label': label, 'kind': 'beta-normal-forms', 'pass': True})

def source_at_I(src):
    return L(A(parse(src), S))

def head_step(t):
    if t[0] != 'A':
        raise AssertionError('not a weak-head redex')
    if t[1][0] == 'L':
        return lc.beta(t[1], t[2])
    return A(head_step(t[1]), t[2])

def head_eq(label, left, count, right):
    for _ in range(count):
        left = head_step(left)
    assert left == right, (label, lc.show(left), lc.show(right))
    rows.append({'label': label, 'kind': 'head-steps', 'steps': count, 'pass': True})

# The four terminating layouts with leaves s,D,D. The other two contain
# the unchanged head-divergent Omega after invocation.
for label, body, expected in [
    ('24-sDD', f's ({Dsrc}) ({Dsrc})', A(K, D)),
    ('24-DsD', f'({Dsrc}) s ({Dsrc})', r),
    ('24-D-sD', f'({Dsrc}) (s ({Dsrc}))', A(K, K)),
    ('24-D-Ds', f'({Dsrc}) (({Dsrc}) s)', r),
]:
    equal_nf(label, source_at_I('\\s.' + body), L(expected))

# Ten terminating layouts of s,D,J with J=K D. The other two reduce to Omega.
for label, body, expected in [
    ('26-sDJ', f's ({Dsrc}) ({Jsrc})', A(K, J)),
    ('26-sJD', f's ({Jsrc}) ({Dsrc})', u),
    ('26-DsJ', f'({Dsrc}) s ({Jsrc})', r),
    ('26-DJs', f'({Dsrc}) ({Jsrc}) s', A(K, r)),
    ('26-JDs', f'({Jsrc}) ({Dsrc}) s', A(K, r)),
    ('26-s-DJ', f's (({Dsrc}) ({Jsrc}))', K),
    ('26-s-JD', f's (({Jsrc}) ({Dsrc}))', K),
    ('26-D-sJ', f'({Dsrc}) (s ({Jsrc}))', u),
    ('26-J-sD', f'({Jsrc}) (s ({Dsrc}))', D),
    ('26-J-Ds', f'({Jsrc}) (({Dsrc}) s)', D),
]:
    equal_nf(label, source_at_I('\\s.' + body), L(expected))

# The dependent helper H_s=λx.T(x,x,s), in λs.Δ H_s.
for label, body, expected in [
    ('25-dependent-xyx', 'x s x', I),
    ('25-dependent-yxx', 's x x', None),
    ('25-dependent-xxy', 'x (x s)', u),
    ('25-dependent-xyx-right', 'x (s x)', A(K, K)),
]:
    H = lc.beta(parse(r'\s.\x.' + body), S)
    if expected is None:
        expected = A(K, H)
    equal_nf(label, L(A(H, H)), L(expected))

H = lc.beta(parse(r'\s\x.x x s'), S)
X = A(H, H)
head_eq('25-dependent-xxs-loop', X, 1, A(X, S))
H = lc.beta(parse(r'\s\x.s (x x)'), S)
X = A(H, H)
head_eq('25-dependent-sxx-loop', X, 2, A(A(X, K), r))

# Closed N=λx y.T(x,x,y), in Δ N.
N = parse(r'\x\y.x x y')
X = A(N, N)
head_eq('26-closed-xxy-loop', A(X, S), 2, A(X, S))
N = parse(r'\x\y.x y x')
expected = parse(r'\y.y (\x\y.x y x) y')
equal_nf('26-closed-xyx-one-internal-nonlinear', A(N, N), expected)
N = parse(r'\x\y.y x x')
equal_nf('26-closed-yxx', L(A(A(N, N), S)), L(K))
N = parse(r'\x\y.y (x x)')
X = A(N, N)
head_eq('26-closed-yxx-right-returns-reader', A(X, S), 7, X)

# The two nonleading affine helpers, with J(A)=λy.A y or λy.y A.
Neta = parse(r'\x.x (\y.x y)')
def eta(t):
    return L(A(lc.shift(1, 0, t), V(0)))
Jdelta = eta(D)
head_eq('25-Neta-Delta-enters-loop', A(Neta, D), 1, A(D, Jdelta))
head_eq('25-Neta-Delta-loop', A(D, Jdelta), 2, A(D, Jdelta))
for k in [0, 1, 3]:
    arg = Neta
    for _ in range(k):
        arg = eta(arg)
    head_eq('25-Neta-growing-loop-' + str(k), A(Neta, arg), k + 1, A(Neta, eta(arg)))

Nflip = parse(r'\x.x (\y.y x)')
def flip(t):
    return L(A(V(0), lc.shift(1, 0, t)))
Jn = flip(Nflip)
head_eq('25-Nflip-Delta-to-Omega', A(Nflip, D), 4, A(D, D))
head_eq('25-Nflip-self-cycle', A(Nflip, Jn), 3, A(Nflip, Jn))

# The capped 67-bit bootstrap is analytically divergent, not merely slow.
# QQQQ, and every all-Q head spine with at least three arguments, stays
# head-reducible forever: Q t u d supplies four fresh all-Q arguments to t.
Q70 = parse(r'\t\u\d.t u (u d d) d d')
D70 = parse(r'\b\r.r (b (\t\u\d.t u (u d d) d d) r)')
def apps(head, *args):
    for arg in args:
        head = A(head, arg)
    return head
X = apps(Q70, Q70, D70)
Y = apps(X, Q70, Q70)
H = apps(D70, Q70, D70)
AA = apps(D70, Q70, Q70)
BB = apps(AA, Q70, Q70)
CC = apps(AA, Q70, BB)
qqq = apps(Q70, Q70, Q70)
head_eq('67-triple-first-zero', apps(D70, D70, D70, S), 12,
        apps(Y, S, apps(S, K, K), K, K, r))
head_eq('67-triple-all-Q-divergent-prefix', Y, 13,
        apps(Q70, Q70, Q70, Q70, qqq, Q70, Q70, CC,
             Q70, Q70, Q70, Q70))

def occ(t, index=0):
    if t[0] == 'V':
        return int(t[1] == index)
    if t[0] == 'L':
        return occ(t[1], index + 1)
    return occ(t[1], index) + occ(t[2], index)

def binding_inventory(t):
    live = []
    nonlinear = []
    def go(t, path):
        if t[0] == 'L':
            count = occ(t[1])
            if count:
                live.append(path)
            if count > 1:
                nonlinear.append(path)
            go(t[1], path + 'b')
        elif t[0] == 'A':
            go(t[1], path + 'f')
            go(t[2], path + 'a')
    go(t, '')
    return {'live': len(live), 'nonlinear': len(nonlinear),
            'incomparable_nonlinear': any(not a.startswith(b) and not b.startswith(a)
                for a in nonlinear for b in nonlinear), 'nonlinear_paths': nonlinear}

inventory = {}
for name in ['reference70', 'int165_projection', 'tower45',
             'drop_second_skip_failed', 'diagonal63_failed', 'triple67_capped']:
    t = parse(CANDIDATES[name][0])
    inventory[name] = {'bits': lc.size(t), 'LAX': stats(t), **binding_inventory(t)}

elapsed = time.monotonic() - start
out = {'checks': rows, 'inventory': inventory, 'elapsed_s': elapsed,
       'scope': 'Fixed handwritten proof equations; no extractor enumeration.'}
(HERE / 'audit.json').write_text(json.dumps(out, indent=2) + '\n')
print(f"fixed-equation checks={len(rows)} pass={len(rows)} elapsed={elapsed:.4f}s")
print(json.dumps(inventory, indent=2))
