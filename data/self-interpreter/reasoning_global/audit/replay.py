#!/usr/bin/env python3
"""Independent replay of the floor lane's finite certificates.

usage: replay.py WIRES CERTS.json BITS
For every wire, recompute the head reduction with this file's own reducer
for the number of steps the certificate records, and test the claimed
predicate with this file's own code. Nothing here is imported from the lane.
A bound reached is reported as "could not replay", never as a pass.

Predicates (each needs a theorem that an interpreter cannot satisfy it;
the lane's report says which are kernel-checked):
  smaller       the reduct has fewer than BITS bits
  three         the reduct has three leading lambdas
  chain         below its leading lambdas, all nonlinear binders lie on one chain
  width         below its leading lambdas, no subterm has three distinct free
                variables bound below them
  sourceHead    the reduct is a head normal form with other than two leading
                lambdas, or headed by the continuation with other than two arguments
  identityHead  on the source I, the head normal form is not `c A B`
  payload       on the source I, argument j is normal and is not K I / the suffix
  Wsource, Widentity   a divergence grammar proved in Lean; only counted here
"""
import json, sys
from collections import Counter
sys.setrecursionlimit(200000)

def parse(w, i=0):
    if w[i] == '1':
        j = i
        while w[j] == '1':
            j += 1
        return ('v', j - i - 1), j + 1
    if w[i:i+2] == '00':
        b, j = parse(w, i + 2)
        return ('l', b), j
    f, j = parse(w, i + 2)
    x, k = parse(w, j)
    return ('a', f, x), k

def shift(t, by, cut=0):
    k = t[0]
    if k == 'v': return ('v', t[1] + by) if t[1] >= cut else t
    if k == 'l': return ('l', shift(t[1], by, cut + 1))
    return ('a', shift(t[1], by, cut), shift(t[2], by, cut))

def subst(t, s, d=0):
    k = t[0]
    if k == 'v':
        if t[1] == d: return shift(s, d)
        return ('v', t[1] - 1) if t[1] > d else t
    if k == 'l': return ('l', subst(t[1], s, d + 1))
    return ('a', subst(t[1], s, d), subst(t[2], s, d))

def size(t):
    k = t[0]
    if k == 'v': return t[1] + 2
    if k == 'l': return 2 + size(t[1])
    return 2 + size(t[1]) + size(t[2])

def spine_step(t):
    if t[0] != 'a': return None
    if t[1][0] == 'l': return subst(t[1][1], t[2])
    r = spine_step(t[1])
    return None if r is None else ('a', r, t[2])

def head_step(t):
    if t[0] == 'l':
        r = head_step(t[1])
        return None if r is None else ('l', r)
    return spine_step(t)

def normal_step(t):
    """leftmost-outermost step"""
    k = t[0]
    if k == 'v': return None
    if k == 'l':
        r = normal_step(t[1])
        return None if r is None else ('l', r)
    if t[1][0] == 'l': return subst(t[1][1], t[2])
    r = normal_step(t[1])
    if r is not None: return ('a', r, t[2])
    r = normal_step(t[2])
    return None if r is None else ('a', t[1], r)

def strip(t):
    n = 0
    while t[0] == 'l':
        t = t[1]; n += 1
    return n, t

def unspine(t):
    args = []
    while t[0] == 'a':
        args.append(t[2]); t = t[1]
    return t, args[::-1]

def occ(t, i):
    k = t[0]
    if k == 'v': return int(t[1] == i)
    if k == 'l': return occ(t[1], i + 1)
    return occ(t[1], i) + occ(t[2], i)

def nonlinear(t):
    k = t[0]
    if k == 'v': return 0
    if k == 'l': return nonlinear(t[1]) + (occ(t[1], 0) >= 2)
    return nonlinear(t[1]) + nonlinear(t[2])

def chain(t):
    k = t[0]
    if k == 'v': return True
    if k == 'l': return chain(t[1])
    return chain(t[1]) and chain(t[2]) and (nonlinear(t[1]) == 0 or nonlinear(t[2]) == 0)

def inner_fv(t, d):
    """free variables of t that are bound within the body (index < d), as levels"""
    k = t[0]
    if k == 'v': return {d - 1 - t[1]} if t[1] < d else set()
    if k == 'l': return inner_fv(t[1], d + 1) - {d}
    return inner_fv(t[1], d) | inner_fv(t[2], d)

def inner_width(t, d=0):
    k = t[0]
    w = len(inner_fv(t, d))
    if k == 'l': return max(w, inner_width(t[1], d + 1))
    if k == 'a': return max(w, inner_width(t[1], d), inner_width(t[2], d))
    return w

K0 = ('l', ('l', ('v', 1)))        # the bit 0
K1 = ('l', ('l', ('v', 0)))        # the bit 1
def cons(b, r): return ('l', ('a', ('a', ('v', 0), b), shift(r, 1)))
def stream(bits, tail):
    t = tail
    for ch in reversed(bits):
        t = cons(K0 if ch == '0' else K1, t)
    return t
KI = ('l', ('l', ('v', 0)))

CAP = 4000
def run(t, n, step):
    for _ in range(n):
        t = step(t)
        if t is None or size(t) > CAP: return None
    return t

def check(w, cert, BITS):
    kind = cert[0]
    e, j = parse(w)
    assert j == len(w) and size(e) == BITS
    if kind in ('Wsource', 'Widentity', 'open'):
        return 'lean' if kind != 'open' else 'open'
    ps = cert[1]
    if kind in ('smaller', 'three', 'chain', 'width', 'sourceHead'):
        t = run(e, len(ps), head_step)
        if t is None: return 'could not replay'
        lead, body = strip(t)
        if kind == 'smaller': return size(t) < BITS
        if kind == 'three': return lead >= 3
        if kind == 'chain': return chain(body)
        if kind == 'width': return lead <= 2 and inner_width(body) < 3
        if kind == 'sourceHead':
            if head_step(t) is not None: return False
            h, args = unspine(body)
            if h[0] != 'v': return False
            return lead != 2 or (h == ('v', 1) and len(args) != 2)
    # identity source: e c <0010> n with c = var 1, n = var 0
    q = ('a', ('a', e, ('v', 1)), stream('0010', ('v', 0)))
    t = run(q, len(ps), head_step)
    if t is None: return 'could not replay'
    if head_step(t) is not None: return False
    lead, body = strip(t)
    h, args = unspine(body)
    if kind == 'identityHead':
        return h[0] == 'v' and (lead, h, len(args)) != (0, ('v', 1), 2)
    if kind == 'payload':
        if (lead, h, len(args)) != (0, ('v', 1), 2): return False
        jarg, qs = cert[2], cert[3]
        u = run(args[jarg], len(qs), normal_step)
        if u is None: return 'could not replay'
        if normal_step(u) is not None: return False
        return u != [KI, ('v', 0)][jarg]
    return False

wires = [l.split()[0] for l in open(sys.argv[1]) if l.strip()]
certs = json.load(open(sys.argv[2]))
BITS = int(sys.argv[3])
res = Counter(); bad = []
for w in wires:
    if w not in certs:
        res[('MISSING', '')] += 1; bad.append((w, 'missing')); continue
    r = check(w, certs[w], BITS)
    res[(certs[w][0], str(r))] += 1
    if r is not True and r not in ('lean', 'open'):
        bad.append((w, certs[w][0], r))
for k in sorted(res): print(k, res[k])
print("wires", len(wires), "certificates", len(certs), "not confirmed", len(bad))
for b in bad[:10]: print("  ", b)
