# Count lambda-rooted readers \s.M (any shape) at hole depth 1 by (L, V, X); j once, not under inner lambda.
# L counts all lambdas incl \s; V leaves incl j; X index sum of non-j leaves (c at its index).
import sys
from functools import lru_cache
@lru_cache(None)
def T(d, j, L, V, X):
    """number of terms with d binders in scope (incl. \s), j count j (j only at inner depth 0 i.e. d==1),
    exactly L lambdas, V leaves, X index sum."""
    if L < 0 or V <= 0 or X < 0: return 0
    t = 0
    if V == 1 and L == 0:
        if j == 0:
            if X < d: t += 1           # bound var with index X
            if X == d: t += 1          # c
        elif d == 1 and X == 0: t += 1 # j at depth 1
    if L >= 1 and not (j == 1):        # j must not be under an inner lambda
        t += T(d + 1, j, L - 1, V, X)
    if V >= 2:
        for La in range(L + 1):
            for Va in range(1, V):
                for Xa in range(X + 1):
                    for ja in range(j + 1):
                        a = T(d, ja, La, Va, Xa)
                        if a: t += a * T(d, j - ja, L - La, V - Va, X - Xa)
    return t
rows = []
for V in range(5, 10):
    for L in range(3, 13):
        for X in range(0, 30):
            w = 2*L + 4*V - 4 + X + 4
            if w > 45: continue
            n = T(1, 1, L - 1, V, X)
            if n: rows.append((V, L, X, w, n))
from collections import defaultdict
agg = defaultdict(int)
for V, L, X, w, n in rows: agg[(V, L)] += n
for k in sorted(agg): print('V=%d L=%d: %d' % (k[0], k[1], agg[k]))
print('total', sum(agg.values()))
