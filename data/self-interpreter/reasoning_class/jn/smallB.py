r"""Window |B| <= 9, |T| >= 22 of R = \s. s (\b. B) T.  The six viable B
(printed by the template scan) need T to be one of:
 (a) a second-cell handler: T[U_n] b' r' = c U_(n-1) N with (b', r') the
     second cell (K, N) at n = 1, (F, U_(n-2)) at n >= 2;      (B = \x.x, b s, b I, s I)
 (b) a one-operand dispatcher: T[Z] K r = r j, T[U_n] F U_(n-1) = c U_(n-1) N  (B = \x. s)
 (c) a whole reader body (B = \x y. y): excluded by w >= 30.
Check every T (all shapes, j optional/taxed) through 31 - |B| bits."""
import sys, time
from dbn import *
import dbn
dbn.SIZE_CAP = 4000
FUEL = 600
which = sys.argv[1]; cmax = int(sys.argv[2])
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
second = [(K, Kc('N')), (F, U(0)), (F, U(1))]
hits = []; caps = 0; tot = 0
for mode in ('any', None):
    for c, t in enum_terms(cmax, 2, mode):
        tot += 1
        if tot % 100000 == 0: print('  ', tot, c, f'{time.time()-t0:.1f}s', flush=True)
        ok = True
        for k in range(3):
            if which == 'a':
                b2, r2 = second[k]
                v = safe_nf(A(A(inst(t, Us[k]), b2), r2), FUEL)
            else:
                v = safe_nf(A(A(inst(t, Us[k]), F), U(k)), FUEL)
            if v is None:
                if not no_beta_eq_cert2(A(A(inst(t, Us[k]), *(second[k][:1])), second[k][1]) if which == 'a' else A(A(inst(t, Us[k]), F), U(k)), tgt[k]):
                    caps += 1; print('UNCERT', c, show(t), 'n=%d' % (k + 1), flush=True)
                ok = False; break
            if v != tgt[k]:
                ok = False; break
        if ok and which == 'b':
            ok = safe_nf(A(A(inst(t, Z()), K), Kc('r'))) == A(Kc('r'), Kc('j'))
        if ok:
            hits.append((c, show(t))); print('HIT', c, show(t), flush=True)
print(which, 'cmax', cmax, 'terms', tot, 'hits', len(hits), 'uncertified caps', caps, f'{time.time()-t0:.1f}s')
