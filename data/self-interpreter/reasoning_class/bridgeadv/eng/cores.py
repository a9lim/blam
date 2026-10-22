"""Unary core: T over [s,c] + one j (top or taxed 4/lambda), T[U_n] = c U_(n-1) N (j erased).
Zero core: T over [s,c] + one j, T[Z(r)] = r j.  Report minima and the minimizers."""
import sys, time
from dbn import *
which = sys.argv[1]; cmax = int(sys.argv[2])
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
best = None; hits = []
for c, t in enum_terms(cmax, 2, 'any'):
    if which == 'unary':
        ok = all(safe_nf(inst(t, Us[k])) == cU[k] for k in range(3))
    else:
        ok = safe_nf(inst(t, Z())) == rj
    if ok:
        hits.append((c, show(t)))
print(which, 'cmax', cmax, 'hits', len(hits), f'{time.time()-t0:.1f}s')
for h in hits[:12]: print(' ', h)
