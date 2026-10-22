# Count terms with exactly one j at depth >= D, free c, by (V leaves, L lambdas), cost <= B.
# Also require f >= 1 (some c).  Polynomial bookkeeping via dicts.
import sys
from functools import lru_cache
from collections import Counter
D = int(sys.argv[1]); B = int(sys.argv[2])
@lru_cache(None)
def T(k, n, j):
    # returns Counter{(V,L,hasc): count} of terms of cost exactly n
    out = Counter()
    if n < 0: return out
    if j == 1:
        if n == 0 and k >= D: out[(1, 0, 0)] += 1
    else:
        for i in range(k):
            if n == 2 + i: out[(1, 0, 0)] += 1
        if n == 2 + k: out[(1, 0, 1)] += 1
    if n >= 2:
        for (V, L, h), m in T(k+1, n-2, j).items(): out[(V, L+1, h)] += m
        for a in range(n-1):
            b = n - 2 - a
            pairs = [((k,a,1),(k,b,0)), ((k,a,0),(k,b,1))] if j == 1 else [((k,a,0),(k,b,0))]
            for p, q in pairs:
                tp, tq = T(*p), T(*q)
                if not tp or not tq: continue
                for (V1, L1, h1), m1 in tp.items():
                    for (V2, L2, h2), m2 in tq.items():
                        out[(V1+V2, L1+L2, h1 | h2)] += m1*m2
    return out
tot = Counter()
for n in range(B+1):
    for (V, L, h), m in T(0, n, 1).items():
        if h: tot[(V, L)] += m
for key in sorted(tot): print(key, tot[key])
print('total', sum(tot.values()))
