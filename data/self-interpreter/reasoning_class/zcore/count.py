from functools import lru_cache
import sys
nfree=2
@lru_cache(None)
def T(c,d,j):
    if c<0: return 0
    n=0
    if j==0:
        n += sum(1 for i in range(d+nfree) if 2+i==c)
    else:
        if c==4*d: n+=1
    if c>=2: n+=T(c-2,d+1,j)
    for ca in range(0,c-1):
        for ja in range(j+1):
            a=T(ca,d,ja)
            if a: n+=a*T(c-2-ca,d,j-ja)
    return n
for c in range(18,26):
    print(c, T(c,0,1), sum(T(k,0,1) for k in range(c+1)), ' jfree', T(c,0,0))
