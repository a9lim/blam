# count all terms (any shape) of cost exactly c with d bound vars + free names, j-once option
import sys
from functools import lru_cache
NF = int(sys.argv[1])      # number of free (non-j) names: they sit at indices d..d+NF-1
B = int(sys.argv[2])
JD0 = len(sys.argv) > 3    # j allowed once, only at lambda-depth 0
@lru_cache(None)
def T(c, d, j):
    if c < 0: return 0
    t = 0
    # var
    if j == 0:
        for i in range(d + NF):
            if 2 + i == c: t += 1
    if j == 1 and c == 0 and (d == 0 or not JD0): t += 1
    # lambda
    if c >= 2 and not (JD0 and j == 1): t += T(c - 2, d + 1, j)
    # app
    for ca in range(0, c - 1):
        for ja in range(j + 1):
            a = T(ca, d, ja)
            if a: t += a * T(c - 2 - ca, d, j - ja)
    return t
jj = 1 if JD0 else 0
print(sum(T(c, 0, jj) for c in range(B + 1)))
