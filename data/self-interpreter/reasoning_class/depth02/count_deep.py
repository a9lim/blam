# Count terms (not generate): free c, exactly one j at depth >= D, cost <= B.
# cost: lam 2, app 2, bound var 2+idx, c at 2+k (k = binders above), j 0.
import sys
from functools import lru_cache
D = int(sys.argv[1]); B = int(sys.argv[2])
@lru_cache(None)
def T(k, n, j):
    # number of terms of cost exactly n under k binders; j in {0,1} j-count
    if n < 0: return 0
    tot = 0
    # leaves
    if j == 1:
        if n == 0 and k >= D: tot += 1
    else:
        # bound vars idx 0..k-1 cost 2+idx ; c cost 2+k
        for i in range(k+1):
            if n == 2 + i: tot += 1
    # lambda
    if n >= 2: tot += T(k+1, n-2, j)
    # app
    if n >= 2:
        for a in range(n-1):
            b = n - 2 - a
            if j == 1:
                tot += T(k, a, 1)*T(k, b, 0) + T(k, a, 0)*T(k, b, 1)
            else:
                tot += T(k, a, 0)*T(k, b, 0)
    return tot
s = 0
for n in range(B+1):
    s += T(0, n, 1)
    print(n, T(0, n, 1), s)
