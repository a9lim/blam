#!/usr/bin/env python3
"""Count bodies B (|B| <= 22) over free vars r=0,u=1,a=2,e=3 containing a and e
(shape I: D = λu r. B, |D| = |B| + 4 <= 26)."""
from functools import lru_cache
FREE = 4
@lru_cache(None)
def cnt(n, d):
    res = [0, 0, 0, 0]
    i = n - 2
    if 0 <= i < d + FREE:
        m = (1 if i == d + 2 else 0) | (2 if i == d + 3 else 0)
        res[m] += 1
    if n >= 4:
        for m, c in enumerate(cnt(n - 2, d + 1)): res[m] += c
    for k in range(2, n - 3):
        A, B = cnt(k, d), cnt(n - 2 - k, d)
        for m1 in range(4):
            if A[m1]:
                for m2 in range(4):
                    res[m1 | m2] += A[m1] * B[m2]
    return tuple(res)
tot = 0
for n in range(2, 23):
    tot += cnt(n, 0)[3]
print("bodies <= 22 with a and e:", tot)
