r"""Family (e) D_r bodies: R = \s. s (\b. \x y1..yq. x A1) T1..Tq, q >= 1.
(Any other x-headed body is dead: zero r A.. E needs exactly one argument.)
zero A1z = j, unary U_(n-1) A1u = c U_(n-1) N; frame [yq..y1, x, b, s, c].
w = 18 + 5q + |A1|_w + sum|Ti|_w (j in A1 taxed 4(2+q) + own).  Complete.
"""
import sys, time
from dbn import *
Q = int(sys.argv[1]); BUD = 27 - 5 * Q
t0 = time.time()
tn = ['tT%d' % i for i in range(1, Q + 1)]
Us = [U(n) for n in (1, 2, 3)]
Um = [normalize(U(n - 1)) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
def instf(t, b, s, x):
    for v in [Kc(n) for n in reversed(tn)] + [x, b, s, Kc('c')]: t = subst(t, 0, v)
    return t
def csub(t, env):
    tag = t[0]
    if tag == 'k': return env.get(t[1], t)
    if tag == 'v': return t
    if tag == 'l': return ('l', csub(t[1], env))
    return ('a', csub(t[1], env), csub(t[2], env))
Tp = {}
for mode in (None, 'any'):
    for c, t in enum_terms(BUD, 2, mode):
        ms = (safe_nf(inst(t, Z())),) + tuple(safe_nf(inst(t, Us[k])) for k in range(3))
        if None in ms: continue
        key = (ms, mode == 'any')
        if key not in Tp or Tp[key][0] > c: Tp[key] = (c, t)
Tl = sorted(((c, ms, hj, t) for (ms, hj), (c, t) in Tp.items()), key=lambda q: q[0])
hits = 0; caps = 0; n = 0
NFV = 4 + Q
for mode in (None, 'any'):
    base = 4 * (2 + Q) if mode else 0
    for c0, a in enum_terms(BUD - base, NFV, mode):
        c = c0 + base; n += 1
        z = safe_nf(instf(a, K, Z(), Kc('r')))
        us = [safe_nf(A(Um[k], instf(a, F, Us[k], Um[k]))) for k in range(3)]
        if z is None or None in us: caps += 1; continue
        def rec(i, left, nj, ch):
            global hits
            if i == Q:
                if nj + (mode == 'any') != 1: return
                env0 = {nm: it[1][0] for nm, it in zip(tn, ch)}
                if safe_nf(csub(z, env0), 2000) != Kc('j'): return
                for k in range(3):
                    if safe_nf(csub(us[k], {nm: it[1][k + 1] for nm, it in zip(tn, ch)}), 2000) != tgt[k]: return
                hits += 1; print('HIT', c + sum(x[0] for x in ch), show(a), '|', ' | '.join(show(x[3]) for x in ch))
                return
            for it in Tl:
                if it[0] > left: break
                rec(i + 1, left - it[0], nj + it[2], ch + [it])
        rec(0, BUD - c, 0, [])
print(f'q={Q} BUD={BUD}: A1 terms {n}, hits {hits}, caps {caps}, {time.time()-t0:.1f}s')
