#!/usr/bin/env python3
"""Certify narrowing cut-offs: a law fails for EVERY filling of the open holes.
Erased semantics (NOTES §2): holes are opaque constants; beta steps anywhere lift to every
filling. C1: S ->+ S e.. with >=1 head step (S an application) => no hnf. C2: hnf root
(lambda count, head, arity) differs from target => fail.  Arguments are normalized
opportunistically (beta-conversion, sound by postponement)."""
import sys
sys.setrecursionlimit(100000)
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd

FAILWHY = []
class Need(Exception): pass
class Fuel(Exception): pass

def todb(t, env=()):
    if t[0] == 'V':
        if t[1] in env: return ('V', env.index(t[1]))
        return ('C', t[1])
    if t[0] == 'L': return ('L', todb(t[2], (t[1],) + env))
    return ('A', todb(t[1], env), todb(t[2], env))

def shift(t, d, c=0):
    k = t[0]
    if k == 'V': return ('V', t[1] + d) if t[1] >= c else t
    if k == 'L': return ('L', shift(t[1], d, c + 1))
    if k == 'A': return ('A', shift(t[1], d, c), shift(t[2], d, c))
    return t
def subst(t, s, j=0):
    k = t[0]
    if k == 'V':
        if t[1] == j: return shift(s, j)
        return ('V', t[1] - 1) if t[1] > j else t
    if k == 'L': return ('L', subst(t[1], s, j + 1))
    if k == 'A': return ('A', subst(t[1], s, j), subst(t[2], s, j))
    return t
def beta(lam, arg): return subst(lam[1], arg)

def size(t):
    k = t[0]
    if k == 'L': return 1 + size(t[1])
    if k == 'A': return 1 + size(t[1]) + size(t[2])
    return 1

def spine(t):
    args = []
    while t[0] == 'A': args.append(t[2]); t = t[1]
    return t, args[::-1]
def mk(h, args):
    for a in args: h = ('A', h, a)
    return h

def try_nf(t, fuel):
    """normal-order nf with fuel; None if not found. Holes are constants (erased)."""
    f = [fuel]
    def nf(t):
        while True:
            h, args = spine(t)
            if h[0] == 'L' and args:
                f[0] -= 1
                if f[0] < 0 or size(t) > 3000: raise Fuel()
                t = mk(beta(h, args[0]), args[1:]); continue
            if h[0] == 'L': return ('L', nf(h[1]))
            return mk(h, [nf(a) for a in args])
    try: return nf(t)
    except (Fuel, RecursionError): return None

def whnf(t, fuel, argfuel=300):
    """Krivine-style head reduction on erased terms, stack bottom->top (top = next arg).
    Arguments are normalized opportunistically (internal steps).  Cycle (criterion C1, with
    the low-water refinement of types/narrow.py): a snapshot (head, stack, m) where m is the
    lowest stack height since the snapshot; if now the head is the same and the stack above m
    ends (on top) with the snapshot's stack above m, then (head P1) ->+ (head P1) Y: no hnf."""
    snaps = []
    head = t; stack = []
    steps = 0
    while True:
        while head[0] == 'A': stack.append(head[2]); head = head[1]
        if head[0] == 'L' and not stack: return ('lam', head[1])
        if head[0] == 'V': return ('neu', head, stack[::-1])
        if head[0] == 'C':
            if head[1].startswith('_'): raise Need()
            return ('neu', head, stack[::-1])
        for i in range(len(stack)):
            n = try_nf(stack[i], argfuel)
            if n is not None: stack[i] = n
        for h1, s1, m in snaps:
            if h1 == head:
                p1 = s1[m:]; p2 = stack[m:]
                if len(p2) >= len(p1) and p2[len(p2) - len(p1):] == p1: return ('cycle',)
        snaps.append([head, list(stack), len(stack)])
        if len(snaps) > 600: snaps.pop(0)
        steps += 1
        if steps > fuel or size(head) + sum(map(size, stack)) > 20000: raise Fuel()
        a = stack.pop()
        nl = len(stack)
        for sn in snaps:
            if sn[2] > nl: sn[2] = nl
        head = beta(head, a)

def compare(t, tgt, fuel):
    """'fail' certified for every filling, 'ok', 'need', 'fuel'"""
    try: r = whnf(t, fuel)
    except Need: return 'need'
    except (Fuel, RecursionError): return 'fuel'
    if r[0] == 'cycle': FAILWHY.append('cycle'); return 'fail'
    if r[0] == 'lam':
        if tgt[0] != 'L': FAILWHY.append('lam-vs-neu'); return 'fail'
        return compare(r[1], tgt[1], fuel)
    if tgt[0] == 'L': FAILWHY.append('neu-vs-lam'); return 'fail'
    th, targs = spine(tgt)
    if r[1] != th or len(r[2]) != len(targs): FAILWHY.append('head %s/%d vs %s/%d' % (r[1], len(r[2]), th, len(targs))); return 'fail'
    worst = 'ok'
    for a, ta in zip(r[2], targs):
        c = compare(a, ta, fuel)
        if c == 'fail': return 'fail'
        if c != 'ok': worst = c
    return worst

def cons(b, rr): return ('L', ('A', ('A', ('V', 0), shift(b, 1)), shift(rr, 1)))
K = ('L', ('L', ('V', 1))); Fb = ('L', ('L', ('V', 0)))
def U(n):
    t = cons(K, ('C', 'N'))
    for _ in range(n): t = cons(Fb, t)
    return t
def law_io(law):
    if law == 0: return cons(K, ('C', 'r')), ('A', ('C', 'r'), ('C', 'j'))
    return U(law), ('A', ('A', ('C', 'c'), U(law - 1)), ('C', 'N'))

def parse_show(s):
    """narrow.py show() output -> de Bruijn with each '_' a distinct hole constant _k"""
    cnt = [0]
    def rep(m):
        cnt[0] += 1; return ' _%d ' % cnt[0]
    import re
    s2 = re.sub(r'(?<![A-Za-z0-9_])_(?![A-Za-z0-9_])', rep, s)
    return todb(rd.parse(s2))

def certify(src, laws=(0, 1, 2), fuel=5000):
    R = parse_show(src)
    out = {}
    for law in laws:
        inp, tgt = law_io(law)
        out[law] = compare(('A', R, inp), tgt, fuel)
    return out

if __name__ == '__main__':
    import json
    d = json.load(open(sys.argv[1]))
    bad = 0
    for lb, s in d['cut']:
        res = certify(s)
        okc = any(v == 'fail' for v in res.values())
        if not okc: bad += 1; print('UNCERT', lb, s, res)
    print(f"{len(d['cut'])} cut-offs, {len(d['cut']) - bad} certified, {bad} uncertified")
