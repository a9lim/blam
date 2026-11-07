r"""\s. (\x. x x) (s W) j, W over [s,c] all shapes, w = 22 + |W|."""
import sys, time
from dbn import *
import dbn
dbn.SIZE_CAP = 3000
BUD = int(sys.argv[1]); FUEL = 600
t0 = time.time()
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
n = 0; hits = 0; zok = 0; unc = 0
for c, w in enum_terms(BUD, 2, None):
    n += 1
    tt = time.time()
    a = A(V(0), w)
    def body(s):
        t = inst(a, s); return A(A(t, t), Kc('j'))
    zb = body(Zs)
    z = safe_nf(zb, FUEL)
    if z is None:
        if not no_beta_eq_cert2(zb, rj): unc += 1
        continue
    dt = time.time() - tt
    if dt > 2: print('SLOW', c, round(dt,1), show(w), flush=True)
    if z != rj: continue
    zok += 1
    if all(safe_nf(body(Us[k]), FUEL) == cU[k] for k in range(3)):
        hits += 1; print('HIT', 22 + c, show(w), flush=True)
print('BUD', BUD, 'W', n, 'zero-ok', zok, 'uncert zero caps', unc, 'hits', hits, f'{time.time()-t0:.1f}s')
