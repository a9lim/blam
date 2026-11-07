"""Every reader body T (any shape, j once, taxed) of cost <= CMAX with both laws:
T[Z(r)] = r j and T[U_n] = c U_(n-1) N (n = 1..3).  Reader \s. T has w = 2 + cost + 4."""
import sys, time
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j')); hits = 0; unc = 0; tot = 0
for c, t in enum_terms(cmax, 2, 'any'):
    tot += 1
    v = safe_nf(inst(t, Z()))
    if v is None:
        if not no_beta_eq_cert2(inst(t, Z()), rj): unc += 1; print('UNCERT', show(t))
        continue
    if v != rj: continue
    ok = True
    for k in range(3):
        u = safe_nf(inst(t, Us[k]))
        if u != tgt[k]:
            if u is None and not no_beta_eq_cert2(inst(t, Us[k]), tgt[k]): unc += 1; print('UNCERT', show(t))
            ok = False; break
    if ok: hits += 1; print('HIT', c, show(t))
print('bodies cmax', cmax, 'terms', tot, 'hits', hits, 'uncertified caps', unc, f'{time.time()-t0:.1f}s')
