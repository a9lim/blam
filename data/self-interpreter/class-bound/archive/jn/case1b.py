r"""Case 1b of the s I family: R = \s. s I A2 A3, A3 != j contains j at top,
A3[zero] = j, (A2 A3)[unary] = c U_(n-1) N.  Budget |A2|+|A3| <= 27 (w <= 45).
Complete: every term of each shape (dbn.enum_terms)."""
import time
from dbn import *
t0 = time.time()
import sys
MODE = sys.argv[1] if len(sys.argv) > 1 else 'top'
B = 27
Zr = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
A3s = []
for c, t in enum_terms(B - 2, 2, MODE):
    if t == ('k', 'j'): continue
    v = safe_nf(inst(t, Zr))
    if v != ('k', 'j'): continue
    A3s.append((c, t))
print('A3 candidates (zero law, != j):', len(A3s), 'min cost', min(c for c, _ in A3s), f'{time.time()-t0:.1f}s')
from collections import Counter
print(Counter(c for c, _ in A3s))
A2s = list(enum_terms(B - min(c for c, _ in A3s), 2, None))
print('A2 pool', len(A2s), f'{time.time()-t0:.1f}s')
hits = 0
caps = []
for c3, t3 in A3s:
    for c2, t2 in A2s:
        if c2 + c3 > B: break
        ok = True
        for k in range(3):
            v = safe_nf(A(inst(t2, Us[k]), inst(t3, Us[k])), 2000)
            if v is None: caps.append((c2+c3, show(t2), show(t3))); ok = False; break
            if v != cU[k]: ok = False; break
        if ok:
            hits += 1; print('HIT', c2 + c3, show(t2), '|', show(t3))
print('caps', len(caps), caps[:12]); print('done hits', hits, f'{time.time()-t0:.1f}s')
