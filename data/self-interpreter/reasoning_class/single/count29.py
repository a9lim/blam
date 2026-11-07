from functools import lru_cache
nfree=2
@lru_cache(None)
def T(c,d):
    if c<0: return 0
    n = sum(1 for i in range(d+nfree) if 2+i==c)
    if c>=2: n+=T(c-2,d+1)
    for ca in range(0,c-1):
        n+=T(ca,d)*T(c-2-ca,d)
    return n
for c in range(24,31): print(c, T(c,0))
