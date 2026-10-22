# count BLC terms by size in a context with `free` free vars (de Bruijn), cost: lam 2, app 2, var idx i -> i+2
from functools import lru_cache
@lru_cache(None)
def cnt(n, ctx):
    # number of terms of size exactly n with ctx variables in scope
    if n < 2: return 0
    t = 0
    if n - 2 < ctx: t += 1  # variable idx n-2
    t += cnt(n-2, ctx+1)  # lambda
    for a in range(2, n-2+1):
        b = n - 2 - a
        if b >= 2: t += cnt(a, ctx) * cnt(b, ctx)
    return t
tot = 0
for n in range(2, 23):
    tot += cnt(n, 1)
    print(n, cnt(n,1), tot)
