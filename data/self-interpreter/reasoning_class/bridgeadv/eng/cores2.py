r"""Unary cores (jn's lemma extended): T over [s,c] with one j (top, or taxed
4 per own lambda), all shapes, T[U_n] =b c U_(n-1) N for n = 1..3.
Also counts fuel caps and certifies them with dbn.no_beta_eq_cert2."""
import sys, time
from dbn import *
import dbn
dbn.SIZE_CAP = 4000
cmax = int(sys.argv[1]); FUEL = int(sys.argv[2]) if len(sys.argv) > 2 else 2000
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
hits = []; unc = []; tot = 0
for c, t in enum_terms(cmax, 2, 'any'):
    tot += 1
    ok = True
    for k in range(3):
        v = safe_nf(inst(t, Us[k]), FUEL)
        if v is None:
            if not no_beta_eq_cert2(inst(t, Us[k]), cU[k]):
                unc.append((c, show(t), k + 1))
            ok = False; break
        if v != cU[k]:
            ok = False; break
    if ok:
        zz = safe_nf(inst(t, Z()), FUEL)
        hits.append((c, show(t), 'zero->' + (show(zz) if zz is not None else 'CAP'), 'j' in consts_of(zz) if zz is not None else '?'))
print('unary cores cmax', cmax, 'terms', tot, 'hits', len(hits), 'uncertified caps', len(unc), f'{time.time()-t0:.1f}s')
for h in hits: print('  HIT', h)
for u in unc[:20]: print('  UNC', u)
