# Certify every fuel cap of t3all: zero instance R Z has no nf / is not r j.
import sys, gen, rowgen
from dbn import no_beta_eq_cert2, Z, Kc, show
gen.MODE[0] = 'star'
TGT = ('a', Kc('r'), Kc('j'))
def caps_of_lam(Dlist):
    for D in Dlist:
        for f in range(1, 5):
            cmax = 39 - D - f
            for V in range(f + 3, 10):
                for L in range(D, 20):
                    for X in range(f, 40):
                        if 2*L + 4*V - 4 + X > cmax: break
                        for t in gen.stream_lam_root(X, L, V, f, D):
                            R = rowgen.close_c(t); ok, why = rowgen.check(R)
                            if 'fuel' in why: yield why, R
n = 0; bad = []
for why, R in caps_of_lam(range(3, 9)):
    n += 1
    probe = ('a', R, Z()) if why == 'zfuel' else None
    if probe is None or not no_beta_eq_cert2(probe, TGT): bad.append((why, R))
print('caps', n, 'uncertified', len(bad))
for w, R in bad[:10]: print(' ', w, show(R))
