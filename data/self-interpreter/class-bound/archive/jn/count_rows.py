# Count ALL readers \s.M (any shape) by leaves V, with weight w = cost + 4*depth(j) <= W.
# frame: inside \s: bound vars + c (c at index d). j once, priced 4*depth.
import sys
from functools import lru_cache
W = int(sys.argv[1]); VMAX = int(sys.argv[2])
@lru_cache(None)
def T(c, d, j, v):
    # terms of exact weight c, d binders in scope (incl. \s), j count j, exactly v leaves
    if c < 0 or v <= 0: return 0
    t = 0
    if v == 1:
        if j == 0:
            for i in range(d + 1):           # bound 0..d-1, c at d
                if 2 + i == c: t += 1
        elif c == 4 * d: t += 1
    if c >= 2: t += T(c - 2, d + 1, j, v)
    if v >= 2:
        for ca in range(0, c - 1):
            for ja in range(j + 1):
                for va in range(1, v):
                    a = T(ca, d, ja, va)
                    if a: t += a * T(c - 2 - ca, d, j - ja, v - va)
    return t
for v in range(1, VMAX + 1):
    n = sum(T(c, 1, 1, v) for c in range(0, W - 1))   # body under \s: weight W-2
    print('V=%d readers with w<=%d: %d' % (v, W, n))
