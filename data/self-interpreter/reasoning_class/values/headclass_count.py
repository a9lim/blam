#!/usr/bin/env python3
"""Count shape II/III cells (|D| <= 26, containing a and e) by spine head class.
Counting only (no normalisation)."""
from functools import lru_cache
def make(FREE, ia, ie):
    @lru_cache(None)
    def cnt(n, d):
        res = [0]*4
        i = n - 2
        if 0 <= i < d + FREE:
            res[(1 if i == d+ia else 0) | (2 if i == d+ie else 0)] += 1
        if n >= 4:
            for m, c in enumerate(cnt(n-2, d+1)): res[m] += c
        for k in range(2, n-3):
            A, B = cnt(k, d), cnt(n-2-k, d)
            for m1 in range(4):
                if A[m1]:
                    for m2 in range(4): res[m1|m2] += A[m1]*B[m2]
        return tuple(res)
    @lru_cache(None)
    def spine(n, d, head):   # applications whose spine head is `head` ('lam' or var index)
        res = [0]*4
        # n = size of an application term; split app f a; f is either the head or a smaller spine
        for k in range(2, n-3):
            B = cnt(n-2-k, d)
            # f = head itself
            if head == 'lam':
                F = [0]*4
                if k >= 4:
                    for m, c in enumerate(cnt(k-2, d+1)): F[m] += c
            else:
                F = [0]*4
                if k == head + d + 2:
                    i = head + d
                    F[(1 if i == d+ia else 0) | (2 if i == d+ie else 0)] += 1
            Fs = spine(k, d, head)
            for m1 in range(4):
                tot = F[m1] + Fs[m1]
                if tot:
                    for m2 in range(4): res[m1|m2] += tot*B[m2]
        return tuple(res)
    return cnt, spine
names = ["a","e","exp","bit1","list","cont","intL","x"]
cII, sII = make(9, 1, 2)     # under λu: u=0, a=1, e=2, exp=3, bit1=4, list=5, cont=6, intL=7, x=8
cIII, sIII = make(8, 0, 1)
print("shape II  (D = λu. spine, |spine| <= 24):")
for h, nm in [('lam','redex')] + [(i, nm) for i, nm in enumerate(["u"]+names)]:
    print(f"   head {nm:6s}", sum(sII(n, 0, h)[3] for n in range(2, 25)))
print("shape III (D = spine, |D| <= 26):")
for h, nm in [('lam','redex')] + [(i, nm) for i, nm in enumerate(names)]:
    print(f"   head {nm:6s}", sum(sIII(n, 0, h)[3] for n in range(2, 27)))
