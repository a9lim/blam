#!/usr/bin/env python3
"""Counts for the three top shapes of a whole-prefix cell D (|D| <= 26) in the
ABS frame [a, e, exp, bit1, list, cont, intL, x]:
 I   D = λu. λr. B           (B <= 22, frame [r,u,a,e,...]: a=2, e=3, 10 vars)
 II  D = λu. M, M not a λ    (M <= 24, frame [u,a,e,...]: a=1, e=2, 9 vars)
 III D not a λ               (D <= 26, frame [a,e,...]:   a=0, e=1, 8 vars)"""
from functools import lru_cache
def make(FREE, ia, ie):
    @lru_cache(None)
    def cnt(n, d):
        res = [0, 0, 0, 0]
        i = n - 2
        if 0 <= i < d + FREE:
            m = (1 if i == d + ia else 0) | (2 if i == d + ie else 0)
            res[m] += 1
        if n >= 4:
            for m, c in enumerate(cnt(n - 2, d + 1)): res[m] += c
        for k in range(2, n - 3):
            A, B = cnt(k, d), cnt(n - 2 - k, d)
            for m1 in range(4):
                if A[m1]:
                    for m2 in range(4): res[m1 | m2] += A[m1] * B[m2]
        return tuple(res)
    @lru_cache(None)
    def cnt_app(n, d):   # applications only at the root
        res = [0, 0, 0, 0]
        for k in range(2, n - 3):
            A, B = cnt(k, d), cnt(n - 2 - k, d)
            for m1 in range(4):
                if A[m1]:
                    for m2 in range(4): res[m1 | m2] += A[m1] * B[m2]
        return tuple(res)
    return cnt, cnt_app
cI, _ = make(10, 2, 3)
cII, aII = make(9, 1, 2)
cIII, aIII = make(8, 0, 1)
print("I  :", sum(cI(n, 0)[3] for n in range(2, 23)))
print("II :", sum(aII(n, 0)[3] for n in range(2, 25)))
print("III:", sum(aIII(n, 0)[3] for n in range(2, 27)))
