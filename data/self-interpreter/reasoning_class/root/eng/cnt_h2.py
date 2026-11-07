# count Δ-root hand-off h=2: Σ2 = z M1..Mp over [a,z,c] (a 0, z 1, c 2), |Σ2| <= 29, M1 not a variable,
# a and c occur in Σ2 (N2, N3)
from cnt_full import T
import itertools
B = 29
# size of z M1..Mp = 2p + 3 + Σ|Mi|
def pool(n):  # dict mask->count over 3 vars at depth 0
    return T(n, 0, 3)
tot = 0
for p in range(1, 8):
    rem = B - 3 - 2*p
    if rem < 2*p: break
    # DP over masks for the M tuple: first element non-variable
    dp = {}  # (size, mask) -> count
    for n1 in range(4, rem + 1):
        for m, c in pool(n1).items():
            # exclude variables at size n1: variables have size 2,3,4 (a,z,c) -> n1=4 is c (var). exclude var c:
            dp[(n1, m)] = dp.get((n1, m), 0) + c
    # remove variable c of size 4 (mask 4) contribution 1
    dp[(4, 4)] -= 1
    for _ in range(p - 1):
        nd = {}
        for (s, m), c in dp.items():
            for n in range(2, rem - s + 1):
                for m2, c2 in pool(n).items():
                    nd[(s + n, m | m2)] = nd.get((s + n, m | m2), 0) + c * c2
        dp = nd
    sub = sum(c for (s, m), c in dp.items() if s <= rem and m & 1 and m & 4)
    tot += sub; print(p, sub)
print('total', tot)
