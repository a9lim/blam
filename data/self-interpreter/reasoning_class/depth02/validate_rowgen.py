# (1) independent count of a row via polynomial DP over cost; (2) recover known readers.
import sys
from functools import lru_cache
from collections import Counter
import rowgen
from dbn import show
@lru_cache(None)
def C(k, n, j, D):
    # Counter{(V,L,f,X,root)} of terms of cost exactly n (j priced 0, at depth exactly D)
    out = Counter()
    if n < 0: return out
    if j == 1:
        if n == 0 and k == D: out[(1,0,0,0,'v')] += 1
    else:
        for i in range(k):
            if n == 2+i: out[(1,0,0,i,'v')] += 1
        if n == 2+k: out[(1,0,1,k,'v')] += 1
    if n >= 2:
        for (V,L,f,X,r), m in C(k+1, n-2, j, D).items(): out[(V,L+1,f,X,'l')] += m
        for a in range(n-1):
            for ja in range(j+1):
                A = C(k, a, ja, D); B = C(k, n-2-a, j-ja, D)
                for (V1,L1,f1,X1,_), m1 in A.items():
                    for (V2,L2,f2,X2,_), m2 in B.items():
                        out[(V1+V2,L1+L2,f1+f2,X1+X2,'a')] += m1*m2
    return out
def count(d, L, V, X, f, root):
    n = 2*L + 4*V - 4 + X
    return C(0, n, 1, d)[(V, L, f, X, 'l' if root == 'lam' else 'a')]
if __name__ == '__main__':
  for row in [(3,3,7,3,3,'lam'), (1,4,8,6,1,'lam'), (3,3,9,4,1,'lam'), (4,4,8,2,1,'lam')]:
    gen = [t for t in rowgen.T(0, row[3], row[1], row[2], row[4], 1, row[0]) if (t[0]=='l') == (row[5]=='lam')]
    print(row, 'generated', len(gen), 'counted', count(*row))
