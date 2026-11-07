r"""Family (a) (q = 1) y-headed bodies: R = \s. s (\b. \x y. y A1..Am) T.
T = j or \x.j give a rigid j head (dead), so T is j-free, j sits in some Ai
under \s \b \x \y (+ own lambdas), and w <= 45 forces
   sum |Ai|_raw + 4*own(j) <= 13 - 2m - |T|.
Direct check of both laws on every (T, A1..Am) in that budget.  Complete.
"""
import time
from dbn import *
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
Tp = {}
for c, t in enum_terms(9, 2, None):
    ms = (safe_nf(inst(t, Z())),) + tuple(safe_nf(inst(t, Us[k])) for k in range(3))
    if None in ms: continue
    if ms not in Tp or Tp[ms][0] > c: Tp[ms] = (c, t)
Tl = sorted(Tp.values(), key=lambda q: q[0])
pool = [(c, t, False) for c, t in enum_terms(11, 5, None)] + [(c, t, True) for c, t in enum_terms(11, 5, 'any')]
pool.sort(key=lambda q: q[0])
print('T', len(Tl), 'pool', len(pool))
def reader(As, T):
    body = V(0)                       # y
    for a in As: body = A(body, a)
    B = L(L(body))                    # \x y. y A1..Am   (frame inside: [y,x,b,s,c])
    return L(A(A(V(0), L(B)), T))     # \s. s (\b. B) T
hits = 0; n = 0; caps = 0
def check(R):
    z = safe_nf(A(R, Z()), 3000)
    if z != rj: return z is None
    for k in range(3):
        u = safe_nf(A(R, Us[k]), 3000)
        if u != tgt[k]: return u is None
    return 'HIT'
for cT, T in Tl:
    for m in range(1, 6):
        bud = 13 - 2 * m - cT
        if bud < 2 * m: continue
        def rec(i, left, nj, As):
            global hits, n, caps
            if i == m:
                if nj != 1: return
                n += 1
                r = check(reader(As, T))
                if r == 'HIT': hits += 1; print('HIT', show(T), [show(a, ['y', 'x', 'b']) for a in As])
                elif r: caps += 1
                return
            for c, a, hj in pool:
                if c > left: break
                if hj and nj: continue
                rec(i + 1, left - c, nj + hj, As + [a])
        rec(0, bud, 0, [])
print(f'readers {n} hits {hits} caps {caps} {time.time()-t0:.1f}s')
