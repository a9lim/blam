# terms over K outer vars (outer var i at depth d has index d+i), exact size n, mask must contain `need`
from functools import lru_cache
import sys
K = 4
def lb(need, d):
    if not need: return 2
    bits = [i for i in range(K) if need >> i & 1]
    return sum(d + i + 2 for i in bits) + 2 * (len(bits) - 1)
@lru_cache(None)
def gen(n, d, need):
    out = []
    if n < lb(need, d): return out
    idx = n - 2
    if idx < d:
        if not need: out.append((('v', idx), 0))
    elif idx - d < K:
        m = 1 << (idx - d)
        if need & ~m == 0: out.append((('v', idx), m))
    for b, mb in gen(n - 2, d + 1, need): out.append((('l', b), mb))
    for a in range(2, n - 3):
        for f, mf in gen(a, d, 0):
            rest = need & ~mf
            bsz = n - 2 - a
            if bsz < lb(rest, d): continue
            for x, mx in gen(bsz, d, rest):
                out.append((('a', f, x), mf | mx))
    return out
if __name__ == '__main__':
    import time; t0 = time.time(); tot = 0
    for n in range(2, int(sys.argv[1]) + 1):
        c = len(gen(n, 0, 15)); tot += c; print(n, c, tot, f'{time.time()-t0:.1f}s', flush=True)
