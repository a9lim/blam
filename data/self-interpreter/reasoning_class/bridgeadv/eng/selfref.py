r"""Self-reference subfamilies of \s. (\x. x x) A j  (w = 18 + |A|):
 (a) A = \y. s I W, W over [y,s,c]  (w = 30 + |W|)
 (b) A = \y. s W1 W2, W1,W2 over [y,s,c] (w = 26 + |W1| + |W2|)"""
import sys, time
from dbn import *
import dbn
dbn.SIZE_CAP = 3000
BUD = int(sys.argv[1]); FUEL = 600
t0 = time.time()
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
def test(a):
    def body(s):
        t = inst(a, s); return A(A(t, t), Kc('j'))
    z = safe_nf(body(Zs), FUEL)
    if z != rj: return False
    return all(safe_nf(body(Us[k]), FUEL) == cU[k] for k in range(3))
pool = list(enum_terms(BUD, 3, None))
hits = 0; n = 0
# (a) W at most BUD - 12  (30 + |W| <= 18 + BUD + ... ) -> use w <= 45: |W| <= 15
for c, w in pool:
    if c > 15: break
    n += 1
    a = L(A(A(V(1), I), w))        # \y. s I W  ; under \y: y=0, s=1, c=2
    if test(a): hits += 1; print('HIT a', 30 + c, show(w, ['y']), flush=True)
print('(a) W pool', n, 'hits', hits, f'{time.time()-t0:.1f}s', flush=True)
# (b) \y. s W1 W2 with |W1| + |W2| <= 19
n = 0
small = [(c, t) for c, t in pool if c <= 17]
for c1, w1 in small:
    for c2, w2 in small:
        if c1 + c2 > 19: break
        n += 1
        a = L(A(A(V(1), w1), w2))
        if test(a): hits += 1; print('HIT b', 26 + c1 + c2, show(w1, ['y']), '|', show(w2, ['y']), flush=True)
print('(b) pairs', n, 'hits', hits, f'{time.time()-t0:.1f}s')
