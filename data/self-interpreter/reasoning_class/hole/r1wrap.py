"""Pinned check (hole lane, R1 steps 1-2).  R = \\s. Y j, Y = Y0[X2] where
X2 is the subterm at the unary output's outer node, under k lambdas of Y0,
and every binder above X2 has only unary-dispensable occurrences in X2.
Then |X2| >= XB(k): XB(0) = 22, XB(1) = 26, XB(k) = 24 + 2k (k >= 2)
(arms.py: the only arms <= 23 bits are s(\\q.c)(s s s) and s(\\q.c)(s s c),
F_need 4; every arm has F_need >= 2).  Black box: X2's values are rigid,
so Y0 has a rigid hole x and  (Y0[x] j)[U_n] = x,
(Y0[x] j)[Z] = r j or x j.  Enumerates Y0 (all shapes, over [s,c], one x
anywhere, x priced XB(k) - 22) with total <= cmax = 15.  Aborts > 100k."""
import sys, time
from functools import lru_cache
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
def charge(k): return 0 if k == 0 else 2 * k + 2
@lru_cache(None)
def T(c, d, h):
    out = []
    if c < 0: return ()
    if h == 0:
        for i in range(d + 2):
            if 2 + i == c: out.append(('v', i))
    elif c == charge(d):
        out.append(('k', 'x'))
    if c >= 2: out.extend(('l', b) for b in T(c - 2, d + 1, h))
    for ca in range(0, c - 1):
        for ha in range(h + 1):
            fs = T(ca, d, ha)
            if not fs: continue
            xs = T(c - 2 - ca, d, h - ha)
            for f in fs:
                for x in xs: out.append(('a', f, x))
    return tuple(out)
ns = (1, 2, 3); Us = {n: U(n) for n in ns}; JJ = Kc('jj'); X = Kc('x')
zt = [A(Kc("r"), JJ), A(X, JJ), X, A(Kc("r"), X)]
tot = caps = 0; hits = []
for c in range(cmax + 1):
    for t in T(c, 0, 1):
        tot += 1
        if tot > 100000: print('ABORT'); sys.exit()
        z = safe_nf(A(inst(t, Z()), JJ))
        if z is None: caps += 1; print('CAPz', c, show(t)); continue
        if z not in zt: continue
        good = True
        for n in ns:
            v = safe_nf(A(inst(t, Us[n]), JJ))
            if v is None: caps += 1; print('CAPu', c, show(t)); good = False; break
            if v != X: good = False; break
        if good:
            def kk(t, d=0):
                if t == ('k','x'): return d
                if t[0] == 'l': return kk(t[1], d+1)
                if t[0] == 'a':
                    a = kk(t[1], d); return a if a is not None else kk(t[2], d)
                return None
            hits.append((c, kk(t), show(t), show(z)))
print(f'Y0 cmax={cmax}: {tot} terms, {caps} caps, {time.time()-t0:.1f}s')
for h in hits: print('  charged cost %d k=%d :: %s   zero: %s' % h)
