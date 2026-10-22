#!/usr/bin/env python3
"""Pinned complete check: every whole-prefix cell of shape D = λu. λr. B with
|D| <= 26 (|B| <= 22), B any term (redexes allowed) over the actual ABS frame
[a, e, exp, bit1, list, cont, intL, x], fails the index-one or index-two law.
Frame semantics: a, e, exp, cont, intL, x rigid; bit1 = K (ABS's tag);
list = cons K (cons K W), W rigid (the ABS's own stream).
Laws: D F (cons K N) = a ;  D F U_1(N) = e F U_0(N)."""
import sys, json
from lab import *
import lc
sys.setrecursionlimit(100000)
FREE = 10                     # in B's frame: r=0 u=1 a=2 e=3 exp=4 bit1=5 list=6 cont=7 intL=8 x=9
def gen(n, d):
    """all terms of exact size n at depth d, free vars < d+FREE, with mask bits a/e"""
    out = []
    i = n - 2
    if 0 <= i < d + FREE:
        m = (1 if i == d + 2 else 0) | (2 if i == d + 3 else 0)
        out.append((("V", i), m))
    if n >= 4:
        for b, m in G(n - 2, d + 1): out.append((("L", b), m))
    for k in range(2, n - 3):
        for f, m1 in G(k, d):
            for a, m2 in G(n - 2 - k, d):
                out.append((("A", f, a), m1 | m2))
    return out
memo = {}
def G(n, d):
    if (n, d) not in memo: memo[(n, d)] = gen(n, d)
    return memo[(n, d)]
bodies = [b for n in range(2, 23) for b, m in G(n, 0) if m == 3]
print("bodies:", len(bodies))
# probe context (free vars of the test term, innermost first):
#   a=0 e=1 exp=2 cont=3 intL=4 x=5 N=6 W=7
A_, E_, EXP, CONT, INTL, X_, N_, W_ = (("V", i) for i in range(8))
LIST = cons(K, cons(K, W_))
frame = [A_, E_, EXP, K, LIST, CONT, INTL, X_]   # D's root frame order a,e,exp,bit1,list,cont,intL,x
def close(D):
    """substitute D's 8 free frame variables (indices 0..7 at D's root) by frame[]"""
    t = D
    # wrap in 8 lambdas and apply to the frame values (shifted past the wrapper is not needed:
    # frame values live in the probe context, the same context the test is evaluated in)
    for _ in range(8): t = ("L", t)
    # binder order: innermost λ is index 0 = a ... so apply outermost-first: x, intL, ..., a
    for v in reversed(frame): t = ("A", t, v)
    return t
# D's frame indices 0..7 must be rebased: B is under λu λr, so D = λλB has free vars 0..7 = a..x.
res = {"fail1": 0, "fail2": 0, "pass": [], "fuel": []}
for B in bodies:
    D = ("L", ("L", B))
    # shift probe-context vars: close() puts D under 8 λs then applies; the frame values
    # mention probe vars, which inside the applications are at the same depth as the test.
    Dc = close(sh(D, 0)) if False else close(D)
    t1 = app(Dc, F, cons(K, N_))
    r1 = nf(t1, 20000)
    if r1 is None: res["fuel"].append(lc.enc(D)); continue
    if r1 != A_: res["fail1"] += 1; continue
    t2 = app(Dc, F, U(1, N_))
    r2 = nf(t2, 20000)
    want = nf(app(E_, F, U(0, N_)))
    if r2 is None: res["fuel"].append(lc.enc(D)); continue
    if r2 != want: res["fail2"] += 1; continue
    res["pass"].append(lc.enc(D))
print({k: (v if isinstance(v, int) else len(v)) for k, v in res.items()})
json.dump(res, open("shapeI_check.json", "w"), indent=1)
