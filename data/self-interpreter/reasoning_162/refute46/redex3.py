#!/usr/bin/env python3
"""Complete check of the L=3 non-normal row:  R = \\s. (\\x. M) (\\y. A)
with M, A application-only (no lambdas), x occurring >= 2 times in M, j
exactly once in M (d=1, cost <= 41) or in A (d=2, cost <= 37).
Leaves: in M  x:2 s:3 c:4 j:0 ; in A  y:2 s:3 c:4 j:0.
usage: redex3.py [count]
"""
import sys, time
from functools import lru_cache
sys.setrecursionlimit(100000)
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round3/refute46')
import rd

LEAVES_M = {'x': 2, 's': 3, 'c': 4, 'j': 0}
LEAVES_A = {'y': 2, 's': 3, 'c': 4, 'j': 0}

@lru_cache(maxsize=None)
def trees(size, lv, jmax):
    leaves = dict(lv)
    """application trees of exact size over `leaves` with <= jmax j's; returns tuple of (term, njx) where njx = (#j, #x-or-y)."""
    out = []
    for name, cost in leaves.items():
        if cost == size:
            if name == 'j' and jmax < 1: continue
            out.append((('V', name), (1 if name == 'j' else 0, 1 if name in ('x', 'y') else 0)))
    for a in range(0, size - 2 + 1):
        b = size - 2 - a
        if b < 0: continue
        for ja in range(jmax + 1):
            for l, (jl, xl) in trees(a, lv, ja):
                if jl != ja: continue
                for r, (jr, xr) in trees(b, lv, jmax - ja):
                    out.append((('A', l, r), (jl + jr, xl + xr)))
    return tuple(out)

LM = tuple(sorted(LEAVES_M.items())); LA = tuple(sorted(LEAVES_A.items()))
def trees_d(size, lv, jmax): return trees(size, lv, jmax)

def head(t):
    while t[0] == 'A': t = t[1]
    return t[1]
def hasc(t):
    if t[0] == 'V': return t[1] == 'c'
    return hasc(t[1]) or hasc(t[2])

def main():
    t0 = time.time(); total = 0; found = []
    budget_M_plus_A = {1: 41 - 8, 2: 37 - 8}   # j in M -> d=1 ; j in A -> d=2 (cost = 8 + |M| + |A|)
    for where in (1, 2):
        for ma in range(0, budget_M_plus_A[where] + 1):
            for msz in range(0, ma + 1):
                asz = ma - msz
                if len(sys.argv) > 2 and msz % 2 != int(sys.argv[2]): continue   # parity split
                Ms = [(m, jx) for m, jx in trees_d(msz, LM, 1 if where == 1 else 0)
                      if jx[1] >= 2 and jx[0] == (1 if where == 1 else 0) and head(m) in ('s', 'x')]
                if not Ms: continue
                As = [(a, jx) for a, jx in trees_d(asz, LA, 1 if where == 2 else 0) if jx[0] == (1 if where == 2 else 0)]
                if not As: continue
                for m, _ in Ms:
                    mc = hasc(m)
                    for a, _ in As:
                        if not mc and not hasc(a): continue      # unary output needs c
                        total += 1
                        R = ('L', 's', ('A', ('L', 'x', m), ('L', 'y', a)))
                        if len(sys.argv) > 1 and sys.argv[1] == 'count': continue
                        try:
                            z = rd.nf(('A', R, rd.Z('r')), [400])
                        except (rd.Fuel, RecursionError): continue
                        if not rd.alpha_eq(z, rd.parse('r j')): continue
                        ok = True
                        for n in (1, 2, 3):
                            try:
                                v = rd.nf(('A', R, rd.U(n, 'N')), [2000])
                                want = rd.nf(('A', ('A', ('V', 'c'), rd.U(n - 1, 'N')), ('V', 'N')), [100])
                                if not rd.alpha_eq(v, want): ok = False; break
                            except (rd.Fuel, RecursionError): ok = False; break
                        if ok: found.append(rd.show(R))
        print(f'where={where}: cumulative pairs {total} ({time.time()-t0:.1f}s)', flush=True)
    for f in found: print('FOUND', f); rd.check(f, nmax=4)
    print('done', total, 'pairs', f'{time.time()-t0:.1f}s')

if __name__ == '__main__':
    main()
