# Extra sound refutation certificates for zero-law fuel caps:
#  (E) some head-reduct of R Z(r) lacks r or j  -> nf (if any) lacks it -> not r j
#  (U) the unary instance at n=1..3 has a computed nf different from the target
import dbn
from dbn import Z, U, Kc, normalize, Fuel, consts_of, beta, size
def head_reducts(t, steps=3000):
    spine = []
    for _ in range(steps):
        while t[0] == 'a': spine.append(t[2]); t = t[1]
        if t[0] == 'l' and spine:
            t = beta(t[1], spine.pop())
            full = t
            for x in reversed(spine): full = ('a', full, x)
            yield full
            if size(full) > 20000: return
            t = full; spine = []
        else:
            return
def cert_E(R):
    for red in head_reducts(('a', R, Z())):
        cs = consts_of(red)
        if 'r' not in cs or 'j' not in cs: return True
    return False
def cert_U(R, fuel=20000):
    for n in (1, 2, 3):
        try:
            u = normalize(('a', R, U(n)), fuel)
        except (Fuel, RecursionError):
            continue
        tg = normalize(('a', ('a', Kc('c'), U(n-1)), Kc('N')))
        if u != tg: return True
    return False
