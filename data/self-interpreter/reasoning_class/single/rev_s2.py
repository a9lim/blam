r"""Reverse of zcore's S2 edit for let-shared dispatchers with selector calls ((R-b)).
S2: in (\g. B) (\y. P), D = y A W in P, every selector call g Y (Y = K on every input) is
replaced by a copy of A and D is deleted; the result is a unary core M' with
|M'| = |M| - sigma_total.  When sigma_total >= 8, M' is an expanded core of cores37.txt.
Reverse: for every expanded core, every redex (\g. B') (\y. W') in it, every position q in W'
(the W of D), every position p in B' whose subterm A_p mentions no binder of B' at or below
the let (so it can be A, re-indexed to q's frame), build M with D = y A W at q and the call
g Y at p (Y every closed term <= 9 bits: K is the only unary selector there, but all are
tried), |M| <= 39, and test both laws.  ONE selector call only, A free of y and of the let
body's binders (Codex review: this is the restricted case; y-dependent A, a dispatch below
the dispatcher's root and multiple or aliased selector calls are not covered)."""
import json, glob, time, itertools
from insert import *
from convany import conv_any
t0 = time.time()
files = sorted(glob.glob('path_*.json')) + ['beta1.json']
cores = []
for f in files:
    for lb, src in json.load(open(f))['sol']:
        tm = conv_any(src)
        for core, left in expand(tm, 31 - cost(tm)):
            if unary_ok(core): cores.append(core)
def lam_redexes(t, path=(), d=0):
    if t[0] == 'a':
        if t[1][0] == 'l' and t[2][0] == 'l': yield path, d
        yield from lam_redexes(t[1], path + (1,), d); yield from lam_redexes(t[2], path + (2,), d)
    elif t[0] == 'l': yield from lam_redexes(t[1], path + (0,), d + 1)
def free_min(t, k=0):
    """minimum free index (relative) of t, or None"""
    if t[0] == 'v': return t[1] - k if t[1] >= k else None
    if t[0] in ('k', 'h'): return None
    if t[0] == 'l': return free_min(t[1], k + 1)
    a, b = free_min(t[1], k), free_min(t[2], k)
    return a if b is None else b if a is None else min(a, b)
def reindex(t, delta, k=0):
    if t[0] == 'v': return ('v', t[1] + delta) if t[1] >= k else t
    if t[0] in ('k', 'h'): return t
    if t[0] == 'l': return ('l', reindex(t[1], delta, k + 1))
    return ('a', reindex(t[1], delta, k), reindex(t[2], delta, k))
Ys = [t for t in terms_upto(9, 0)]   # closed selectors candidates
tot = 0; hits = []; caps = []
for core in cores:
    for rp, rd_ in lam_redexes(core):
        red = get(core, rp)
        Bp, Hp = red[1][1], red[2]          # B' under \g ; H' = \y. W'
        Wbody = Hp[1]
        bpos = [(p, t, d) for p, t, d in positions(Bp)]
        qpos = [(q, t, d) for q, t, d in positions(Wbody)]
        for (p, Ap, dp) in bpos:
            if Ap[0] == 'v' and Ap[1] == dp: continue      # A_p = g itself
            fm = free_min(Ap)
            if fm is not None and fm < dp + 1: continue     # uses B'-local binders or g
            for (q, Wq, dq) in qpos:
                Aq = reindex(Ap, dq - dp)                   # outer refs: +(dq+1) - (dp+1)
                Dq = A(A(V(dq), Aq), Wq)
                newH = L(replace(Wbody, q, Dq))
                for Y in Ys:
                    newB = replace(Bp, p, A(V(dp), Y))
                    m = replace(core, rp, A(L(newB), newH))
                    if cost(m) > 39: continue
                    tot += 1
                    r = laws(m)
                    if r == 0: hits.append(show(m))
                    elif r == 'cap' and not zero_cert_fail(m): caps.append(show(m))
print('cores', len(cores), 'S2-reverse candidates', tot, 'hits', len(hits), 'uncertified caps', len(caps), f'{time.time()-t0:.1f}s')
for h in hits + caps: print('  ', h)
