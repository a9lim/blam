#!/usr/bin/env python3
"""Count terms D of size <= 26 in the ABS frame (8 free vars: a=0, e=1, ...)
that contain both a and e. DP over (size, depth) with a 2-bit mask."""
from functools import lru_cache
FRAME = 8
@lru_cache(None)
def cnt(n, d):
    # returns dict mask->count for terms of exact size n at depth d
    res = {0: 0, 1: 0, 2: 0, 3: 0}
    # variables: index i costs i+2; i < d bound; i >= d free frame var i-d
    i = n - 2
    if 0 <= i < d + FRAME:
        m = 0
        if i == d: m = 1          # a
        if i == d + 1: m = 2      # e
        res[m] += 1
    if n >= 4:
        for m, c in cnt(n - 2, d + 1).items(): res[m] += c
    for k in range(2, n - 3):
        A = cnt(k, d); B = cnt(n - 2 - k, d)
        for m1, c1 in A.items():
            if c1:
                for m2, c2 in B.items():
                    res[m1 | m2] += c1 * c2
    return res
tot = 0
for n in range(2, 27):
    c = cnt(n, 0)[3]; tot += c
    print(n, c, tot)
