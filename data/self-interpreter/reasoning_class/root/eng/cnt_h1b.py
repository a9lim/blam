# Δ-root h=1: Σ1 = z M1..Mp over [z,c], |Σ1| <= 31; split by M1's λ-chain length r (M1 = λ^r E, E not λ)
from cnt_full import T
from functools import lru_cache
B = 31
def notlam(n, d, K):  # dict mask->count of terms of size n at depth d over K outer vars that are NOT λ-rooted
    res = dict(T(n, d, K))
    for m, c in T(n - 2, d + 1, K).items(): res[m] = res.get(m, 0) - c
    return res
rows = {}
for p in range(1, 9):
    rem = B - 2 - 2*p
    if rem < 2*p: break
    # tuple M2..Mp sizes/masks
    dp = {(0, 0): 1}
    for _ in range(p - 1):
        nd = {}
        for (s, m), c in dp.items():
            for n in range(2, rem - s + 1):
                for m2, c2 in T(n, 0, 2).items(): nd[(s + n, m | m2)] = nd.get((s + n, m | m2), 0) + c * c2
        dp = nd
    for r in range(1, 12):
        for nE in range(2, rem - 2*r + 1):
            # E at depth r over [z, c] (outer vars z idx r, c idx r+1); count via K = r + 2 with no requirement except c overall
            E = notlam(nE, 0, r + 2)
            cE = sum(c for m, c in E.items() if m >> (r + 1) & 1); allE = sum(E.values())
            for (s, m), c in dp.items():
                if s + 2*r + nE > rem: continue
                k = (allE if m & 2 else cE) * c
                rows[(p, r)] = rows.get((p, r), 0) + k
tot = 0
for (p, r), c in sorted(rows.items()):
    if c: print(p, r, c, 'spine', 2*p + 1, 'FULL' if r == 2*p + 1 else ('DEAD' if r > 2*p + 1 else 'partial')); tot += c
print('total λ-headed M1', tot)
