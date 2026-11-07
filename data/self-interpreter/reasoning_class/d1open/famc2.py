r"""Family (c) completion: every surviving zero template of famc.py
(X j-free, |X| <= 10, q >= 3) against every tuple of T meanings within the
budget  |X| + |Y| + sum|Ti| <= 27 - 2q  (|Y| >= 2), exactly one source j
among the Ti.  Zero law by substitution into the template; survivors then
need a Y with nf(Y[F][U_n] U_(n-1) T1u .. Tqu) = c U_(n-1) N, |Y| within
the remaining budget (Y j-free, depth 2, frame [b,s,c]).  Complete.
"""
import sys, itertools, time
from dbn import *
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
Um = [U(n - 1) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
def inst3(t, b, s): return subst(subst(subst(t, 0, b), 0, s), 0, Kc('c'))
TB = 14
pool = {}   # (meaning, hasj) -> (cost, term)
for mode in (None, 'any'):
    for c, t in enum_terms(TB, 2, mode):
        z = safe_nf(inst(t, Z()))
        us = tuple(safe_nf(inst(t, Us[k])) for k in range(3))
        if z is None or None in us: continue
        key = ((z,) + us, mode == 'any')
        if key not in pool or pool[key][0] > c: pool[key] = (c, t)
items = sorted(((c, m, hj, t) for (m, hj), (c, t) in pool.items()), key=lambda q: q[0])
print('T meanings', len(items), f'{time.time()-t0:.1f}s', flush=True)
Xs = [(cx, x) for cx, x in enum_terms(10, 3, None)]
QMAX = 5
zs = []
for cx, x in Xs:
    x0 = inst3(x, K, Z())
    for q in range(3, QMAX + 1):
        bud = 25 - 2 * q - cx
        if bud < 2 * (q - 1): continue
        def rec(i, left, nj, chosen):
            if i == q:
                if nj != 1: return
                t = A(x0, Kc('r'))
                for it in chosen: t = A(t, it[1][0])
                v = safe_nf(t, 2000)
                if v == rj: zs.append((cx, q, x, chosen))
                return
            for it in items:
                if it[0] > left: break
                if it[2] and nj: continue
                rec(i + 1, left - it[0], nj + it[2], chosen + [it])
        rec(0, bud, 0, [])
print('zero survivors', len(zs), f'{time.time()-t0:.1f}s', flush=True)
hits = 0
Ypool = list(enum_terms(25 - 6 - 5, 3, None))
for cx, q, x, chosen in zs:
    left = 27 - 2 * q - cx - sum(it[0] for it in chosen)
    for cy, y in Ypool:
        if cy > left: break
        ok = True
        for k in range(3):
            t = A(inst3(y, F, Us[k]), Um[k])
            for it in chosen: t = A(t, it[1][k + 1])
            if safe_nf(t, 2000) != tgt[k]: ok = False; break
        if ok:
            hits += 1
            print('HIT w=%d' % (18 + 2*q + cx + cy + sum(it[0] for it in chosen)),
                  show(x, ['b']), '|', show(y, ['b']), '|', ' | '.join(show(it[3]) for it in chosen))
print('done hits', hits, f'{time.time()-t0:.1f}s')
import collections
lefts = collections.Counter(27 - 2 * q - cx - sum(it[0] for it in ch) for cx, q, x, ch in zs)
print('left distribution', sorted(lefts.items()))
print('Ypool', len(Ypool), 'max cost', Ypool[-1][0])
for cx, q, x, ch in zs[:8]:
    print('  zs', cx, q, show(x, ['b']), '|', ' | '.join(show(it[3]) for it in ch))
