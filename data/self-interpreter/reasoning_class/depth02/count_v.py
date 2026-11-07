# Count terms with one j, free c (f>=1), weight w = cost + 4 depth(j) <= W, by (depth, V).
import sys
from functools import lru_cache
from collections import Counter
W = int(sys.argv[1]); VMAX = int(sys.argv[2])
@lru_cache(None)
def T(k, n, j):
    # Counter{(V, hasc, d)} of terms with weighted cost exactly n (j tax 4*depth included)
    out = Counter()
    if n < 0: return out
    if j == 1:
        if n == 4*k: out[(1, 0, k)] += 1
    else:
        for i in range(k):
            if n == 2 + i: out[(1, 0, -1)] += 1
        if n == 2 + k: out[(1, 1, -1)] += 1
    if n >= 2:
        for key, m in T(k+1, n-2, j).items(): out[key] += m
        for a in range(n-1):
            b = n - 2 - a
            pairs = [((k,a,1),(k,b,0)), ((k,a,0),(k,b,1))] if j == 1 else [((k,a,0),(k,b,0))]
            for p, q in pairs:
                tp, tq = T(*p), T(*q)
                if not tp or not tq: continue
                for (V1, h1, d1), m1 in tp.items():
                    for (V2, h2, d2), m2 in tq.items():
                        V = V1 + V2
                        if V > VMAX: continue
                        out[(V, h1 | h2, max(d1, d2))] += m1*m2
    return out
tot = Counter()
for n in range(W+1):
    for (V, h, d), m in T(0, n, 1).items():
        if h: tot[(d, V)] += m
for key in sorted(tot): print(key, tot[key])
print('total', sum(tot.values()))
