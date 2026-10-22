import sys, time, gen2, rowgen
from collections import Counter
from dbn import show, no_beta_eq_cert2, Z, U, Kc, normalize
TGT = ('a', Kc('r'), Kc('j'))
Ds = list(map(int, sys.argv[1].split(',')))
for D in Ds:
    st = Counter(); hits = []; unc = []; t0 = time.time(); n = 0
    for f in range(1, 7):
        for V in range(f + 3, 12):
            for L in range(D, 20):
                for X in range(0, 40):
                    cost = 2*L + 4*V - 4 + X
                    if cost > 39 - D: break
                    for t in gen2.stream_app_root(X, L, V, f, D):
                        if cost + D + gen2.F_S0(t) > 39: continue
                        n += 1
                        R = rowgen.close_c(t); ok, why = rowgen.check(R)
                        st[why] += 1
                        if ok: hits.append(R)
                        elif why == 'zfuel':
                            if not no_beta_eq_cert2(('a', R, Z()), TGT): unc.append((why, R))
                        elif 'fuel' in why:
                            nn = int(why[-1])
                            tg = normalize(('a', ('a', Kc('c'), U(nn-1)), Kc('N')))
                            if not no_beta_eq_cert2(('a', R, U(nn)), tg): unc.append((why, R))
    print(f'D={D}: n={n} {dict(st)} hits={len(hits)} uncertified_caps={len(unc)} {time.time()-t0:.1f}s', flush=True)
    for h in hits: print('  HIT', show(h))
    for w, R in unc[:12]: print('  UNC', w, show(R))
    if len(unc) > 12: print('  ... more uncertified:', len(unc) - 12)
