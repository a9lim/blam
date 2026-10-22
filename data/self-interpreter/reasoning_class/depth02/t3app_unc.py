# re-derive the D=3 app-rooted uncertified caps and apply cert2
import gen2, rowgen, time, dbn
from dbn import show, no_beta_eq_cert2, Z, Kc
from cert2 import cert_E, cert_U
TGT = ('a', Kc('r'), Kc('j'))
D = 3; t0 = time.time(); left = []; tot = 0
for f in range(1, 7):
    for V in range(f + 3, 12):
        for L in range(D, 20):
            for X in range(0, 40):
                cost = 2*L + 4*V - 4 + X
                if cost > 39 - D: break
                for t in gen2.stream_app_root(X, L, V, f, D):
                    if cost + D + gen2.F_S0(t) > 39: continue
                    R = rowgen.close_c(t)
                    try:
                        z = dbn.normalize(('a', R, Z()), 3000) if False else None
                    except Exception: pass
                    ok, why = rowgen.check(R, fuel=1500)
                    if why != 'zfuel': continue
                    tot += 1
                    if cert_E(R) or cert_U(R): continue
                    if no_beta_eq_cert2(('a', R, Z()), TGT): continue
                    left.append(R)
print('zfuel caps (fuel 1500)', tot, 'left after E/U/cycle certs', len(left), '%.1fs' % (time.time()-t0))
for R in left: print('  LEFT', show(R))
