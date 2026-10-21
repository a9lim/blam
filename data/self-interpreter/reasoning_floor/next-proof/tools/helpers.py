#!/usr/bin/env python3
"""Shared helpers: head normal form with fuel, frame substitution, check registry."""
from nt import *

def hnf(d, fuel=100000):
    lam = 0
    while d[0] == 'L':
        lam += 1; d = d[1]
    spine = []
    while True:
        if d[0] == 'A':
            spine.append(d[2]); d = d[1]; continue
        if d[0] == 'L' and spine:
            fuel -= 1
            if fuel < 0: raise lc.Fuel()
            d = lc.beta(d, spine.pop()); continue
        break
    return lam, d, list(reversed(spine))

def whnf(d, fuel=100000):
    """weak head normal form: stop at a lambda or a rigid head."""
    spine = []
    while True:
        if d[0] == 'A':
            spine.append(d[2]); d = d[1]; continue
        if d[0] == 'L' and spine:
            fuel -= 1
            if fuel < 0: raise lc.Fuel()
            d = lc.beta(d, spine.pop()); continue
        break
    return d, list(reversed(spine))

def show_hnf(t, fuel=100000, frame=None):
    lam, h, args = hnf(to_db(t, frame), fuel)
    return lam, lc.show(h), [lc.show(a) for a in args]

def subst_frame(t, m):
    def go(u):
        if u[0] == 'V': return m.get(u[1], u)
        if u[0] == 'L': return ('L', u[1], go(u[2]))
        return ('A', go(u[1]), go(u[2]))
    return go(t)

checks = []
def chk(name, a, b, fuel=200000):
    ok = eq(a, b, fuel)
    checks.append((name, ok)); print(('ok  ' if ok else 'FAIL'), name)
    return ok
