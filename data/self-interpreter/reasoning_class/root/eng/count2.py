# count terms over k free vars (outer frame indices 0..k-1) by size, tracking which outer vars occur
from functools import lru_cache
import sys
K = int(sys.argv[1]); NMAX = int(sys.argv[2])
@lru_cache(None)
def T(n, d):
    # returns dict mask->count for terms of size n under d extra binders (outer var i has index d+i)
    res = {}
    if n < 2: return res
    # variable
    idx = n - 2
    if idx < d: res[0] = res.get(0, 0) + 1
    elif idx - d < K: res[1 << (idx - d)] = res.get(1 << (idx - d), 0) + 1
    # lambda
    for m, c in T(n - 2, d + 1).items(): res[m] = res.get(m, 0) + c
    # app
    for a in range(2, n - 3):
        A = T(a, d); B = T(n - 2 - a, d)
        for m1, c1 in A.items():
            for m2, c2 in B.items():
                res[m1 | m2] = res.get(m1 | m2, 0) + c1 * c2
    return res
full = (1 << K) - 1; cum = 0
for n in range(2, NMAX + 1):
    c = T(n, 0).get(full, 0); cum += c
    print(n, c, cum)
