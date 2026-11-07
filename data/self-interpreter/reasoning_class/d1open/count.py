# count terms of exact cost c at depth d over nfree free vars (no j)
import sys
from functools import lru_cache
nfree = int(sys.argv[1]); cmax = int(sys.argv[2])
@lru_cache(None)
def T(c, d):
    if c < 2: return 0
    n = 1 if c - 2 < d + nfree else 0
    n += T(c - 2, d + 1)
    for ca in range(2, c - 3):
        n += T(ca, d) * T(c - 2 - ca, d)
    return n
tot = 0
for c in range(cmax + 1):
    tot += T(c, 0)
    print(c, T(c, 0), tot)
