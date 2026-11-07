"""All one-j unary cores of cost exactly C (default 23) over [s,c] (j taxed 4/lambda).
Completeness: jn's enum_terms (all shapes, redexes included) restricted to cost == C;
54,424 terms at C = 23. Caps reported separately (fuel/recursion)."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
C = int(sys.argv[1]) if len(sys.argv) > 1 else 23
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
hits = []; caps = []; n = 0
for c, t in enum_terms(C, 2, 'any'):
    if c != C: continue
    n += 1
    ok = True
    for k in range(3):
        v = safe_nf(inst(t, Us[k]))
        if v is None:
            caps.append(show(t)); ok = False; break
        if v != cU[k]: ok = False; break
    if ok: hits.append(show(t))
print('cost', C, 'terms', n, 'hits', len(hits), 'caps', len(caps), f'{time.time()-t0:.1f}s')
for h in hits: print('  HIT', h)
for h in caps[:40]: print('  CAP', h)
