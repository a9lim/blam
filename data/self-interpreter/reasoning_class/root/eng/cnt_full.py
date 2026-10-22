# count the x-headed full-chain inventory: R = (λx. x B1..Bk) (λz1..zk y1..yt s. Σ) C1..Ct, j = C_i
# w = 8 + 4k + 4t + Σ|B| + Σ|C≠j| + |Σ| <= 45
from functools import lru_cache
import itertools, sys
W = int(sys.argv[1]) if len(sys.argv) > 1 else 45
@lru_cache(None)
def T(n, d, K):
    """dict mask->count, terms of size n at depth d over K outer vars"""
    res = {}
    if n < 2: return res
    idx = n - 2
    if idx < d: res[0] = 1
    elif idx - d < K: res[1 << (idx - d)] = 1
    for m, c in T(n - 2, d + 1, K).items(): res[m] = res.get(m, 0) + c
    for a in range(2, n - 3):
        A = T(a, d, K); B = T(n - 2 - a, d, K)
        for m1, c1 in A.items():
            for m2, c2 in B.items():
                res[m1 | m2] = res.get(m1 | m2, 0) + c1 * c2
    return res
@lru_cache(None)
def cum(nmax, K, need, forbid_nothing=True):
    tot = 0
    for n in range(2, nmax + 1):
        for m, c in T(n, 0, K).items():
            if m & need == need: tot += c
    return tot
def main():
    grand = 0
    for k in range(1, 8):
        for t in range(1, 8):
            budget = W - 8 - 4*k - 4*t   # for Σ|B| + Σ|C≠j| + |Σ|
            if budget < 2*k + 7: continue
            K = 1 + t + k + 1   # s, y_t..y_1, z_k..z_1, c ; a = some y
            # crude upper count: B's over [x,c] any (size>=2), C's over [c] any, Σ needs s and a only
            sub = 0
            for i in range(1, t + 1):
                a_bit = 1 << (t - i + 1)   # y_i index: s=0, y_t=1, ..., y_1=t
                # distribute sizes
                def bsum(nb):  # number of B-tuples with total size nb (k terms over [x,c])
                    pass
                # Σ pool by size
                spool = [0] * (budget + 1)
                for n in range(2, budget + 1):
                    spool[n] = sum(c for m, c in T(n, 0, K).items() if m & (1 | a_bit) == (1 | a_bit))
                # B/C pools by size (any term)
                bp = [0] * (budget + 1); cp = [0] * (budget + 1)
                for n in range(2, budget + 1):
                    bp[n] = sum(T(n, 0, 2).values()); cp[n] = sum(T(n, 0, 1).values())
                # convolution of k B's and (t-1) C's
                conv = [0] * (budget + 1); conv[0] = 1
                for _ in range(k):
                    conv = [sum(conv[a] * bp[n - a] for a in range(n + 1)) for n in range(budget + 1)]
                for _ in range(t - 1):
                    conv = [sum(conv[a] * cp[n - a] for a in range(n + 1)) for n in range(budget + 1)]
                sub += sum(conv[a] * spool[n] for a in range(budget + 1) for n in range(budget + 1 - a))
            grand += sub
            print(f'k={k} t={t} budget={budget} crude={sub}')
    print('crude total', grand)
if __name__ == "__main__": main()
