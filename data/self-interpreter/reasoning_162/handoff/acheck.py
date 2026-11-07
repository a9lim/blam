#!/usr/bin/env python3
"""Middle operand A of `s I A j` (j rigid, cont rigid), A over [list, cont] only,
any shape (not only \\u. B): law A j = cont U_(n-1)(N) N on U_n(N), n=1..3."""
import sys, time
from multiprocessing import Pool
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round3/handoff')
from lab import *
from vcheck import terms, inst, NEXT, CONT, N

def law(A, n):
    s = unary(n, 'N')
    body = app(inst(A, (s, CONT)), NEXT)         # list := s, cont := cont
    want = app(CONT, unary(n - 1, 'N'), N)
    try:
        return nf(body, 150) == want
    except (Fuel, RecursionError):
        return False

def check(A):
    return law(A, 1) and law(A, 2) and law(A, 3)

if __name__ == '__main__':
    maxb = int(sys.argv[1]); t0 = time.time()
    def uses(t, i, d=0):
        if t[0] == 'V': return t[1] == i + d
        if t[0] == 'L': return uses(t[1], i, d + 1)
        return uses(t[1], i, d) or uses(t[2], i, d)
    allA = [A for n in range(2, maxb + 1) for A in terms(n, 2) if uses(A, 0) and uses(A, 1)]
    print(f"A <= {maxb} bits: {len(allA)}", flush=True)
    with Pool(2) as pool:
        hits = [A for A, ok in zip(allA, pool.imap(check, allA, chunksize=2000)) if ok]
    print(f"checked in {time.time()-t0:.1f}s; {len(hits)} solutions")
    for A in sorted(hits, key=lambda t: size(('L', ('L', t)))):
        print(size(('L', ('L', A))) - 4, show(('L', ('L', A))))
