# Count beta-normal readers \s. M with cost(M) <= B (frame: bound vars + c; j priced 0, exactly once)
# Normal terms: lambda x. N | h N1..Nk (h variable).  cost: lambda 2, app 2, var (2+idx), j 0.
# Count by (cost, depth, jcount) to see how big an exhaustive normal enumeration is.
import sys
from functools import lru_cache
sys.setrecursionlimit(10000)
B = int(sys.argv[1]) if len(sys.argv) > 1 else 41

@lru_cache(None)
def nf(c, d, j):
    # number of normal terms of exact cost c, d bound vars in scope (c at index d), j occurrences j in {0,1}
    if c < 0: return 0
    tot = 0
    # lambda
    if c >= 2: tot += nf(c-2, d+1, j)
    # neutral: head applied to k args; count spines via sp
    tot += spine(c, d, j)
    return tot

@lru_cache(None)
def heads(c, d, j):
    # cost-c head leaves: bound vars idx 0..d-1 cost 2+idx, c cost 2+d, j cost 0
    t = 0
    if j == 1 and c == 0: t += 1
    if j == 0:
        for i in range(d):
            if 2 + i == c: t += 1
        if 2 + d == c: t += 1
    return t

@lru_cache(None)
def spine(c, d, j):
    # neutral terms h A1..Ak of exact cost c with j-count j (k>=0)
    # spine = head | spine' A  (app cost 2)
    t = heads(c, d, j)
    for ca in range(0, c - 2 + 1):
        for ja in range(0, j + 1):
            a = nf(ca, d, ja)
            if a == 0: continue
            s = spine(c - 2 - ca, d, j - ja)
            t += a * s
    return t

tot = 0
for c in range(0, B - 1):
    tot += nf(c, 1, 1)  # body under \s (d=1); full cost = 2 + c
print('normal readers with cost <=', B, '(j once, any depth):', tot)
