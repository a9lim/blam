# Δ-root hand-off h=1: A = λz. z M1..Mp over [z,c] (z 0, c 1), |Σ1| <= 31 (w = 14 + |Σ1|), M1 not a variable, c occurs
from cnt_full import T
B = 31; tot = 0
for p in range(1, 9):
    rem = B - 2 - 2*p
    if rem < 2*p: break
    dp = {}
    for n1 in range(4, rem + 1):
        for m, c in T(n1, 0, 2).items(): dp[(n1, m)] = dp.get((n1, m), 0) + c
    for _ in range(p - 1):
        nd = {}
        for (s, m), c in dp.items():
            for n in range(2, rem - s + 1):
                for m2, c2 in T(n, 0, 2).items():
                    nd[(s + n, m | m2)] = nd.get((s + n, m | m2), 0) + c * c2
        dp = nd
    sub = sum(c for (s, m), c in dp.items() if s <= rem and m & 2)
    tot += sub; print(p, sub)
print('total', tot)
