from functools import lru_cache
@lru_cache(None)
def T(n, k):
    if n < 2: return 0
    c = 1 if n - 2 < k else 0
    c += T(n - 2, k + 1)
    for a in range(2, n - 3):
        c += T(a, k) * T(n - 2 - a, k)
    return c
import sys
k = int(sys.argv[1])
cum = 0
for n in range(2, int(sys.argv[2]) + 1):
    cum += T(n, k)
    print(n, T(n, k), cum)
