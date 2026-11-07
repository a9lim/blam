r"""TL-I(ii): R = \s. (\x. s I B2 B3) A, j in A (one source j, taxed 4 per
own lambda of A), A over [s,c]; B2, B3 over [x,s,c] j-free.
w = 23 + |A| + |B2| + |B3|.  Zero law <=> B3[A/x][Z/s] = j.
Unary law <=> (B2 B3)[A/x][U_n/s] = c U_(n-1) N, n = 1..3.
Exhaustive over all shapes with |A|+|B2|+|B3| <= BUD (default 22, i.e. w <= 45)."""
import sys, time
from dbn import *
import dbn
dbn.SIZE_CAP = 6000
BUD = int(sys.argv[1]) if len(sys.argv) > 1 else 22
FUEL = 2000
t0 = time.time()
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
J = Kc('j')
# B over [x,s,c]: index 0 = x, 1 = s, 2 = c
def instB(b, a, s):
    # b[x:=a, s:=s, c:=c]; a is a term over [s,c] closed after inst
    t = subst(b, 0, a)          # now over [s,c] with a placed (a must be over [s,c])
    return subst(subst(t, 0, s), 0, Kc('c'))
As = [(c, t) for c, t in enum_terms(BUD - 4, 2, 'any')]
Bs = [(c, t) for c, t in enum_terms(BUD - 2, 3, None)]
print('pools A', len(As), 'B', len(Bs), f'{time.time()-t0:.1f}s', flush=True)
hits = []; caps = 0; zero_ok = 0; pairs = 0
for ca, a in As:
    for cb3, b3 in Bs:
        if ca + cb3 + 2 > BUD: break
        pairs += 1
        z = safe_nf(instB(b3, a, Zs), FUEL)
        if z is None:
            caps += 1; print("ZCAP", ca, cb3, show(a), "|", show(b3, ["x"]), flush=True); continue
        if z != J: continue
        zero_ok += 1
        u3 = [instB(b3, a, Us[k]) for k in range(3)]
        for cb2, b2 in Bs:
            if ca + cb3 + cb2 > BUD: break
            ok = True
            for k in range(3):
                v = safe_nf(A(instB(b2, a, Us[k]), u3[k]), FUEL)
                if v != cU[k]:
                    ok = False; break
            if ok:
                hits.append((23 + ca + cb2 + cb3, show(a), show(b2, ['x']), show(b3, ['x'])))
                print('HIT', hits[-1], flush=True)
print('BUD', BUD, 'pairs', pairs, 'zero-ok', zero_ok, 'zero caps', caps, 'hits', len(hits), f'{time.time()-t0:.1f}s')
