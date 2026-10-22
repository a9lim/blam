#!/usr/bin/env python3
"""Exhaustive check of the variable arm's size under the 162's frame.

Frame: reader `s I V j` with j (NEXT) rigid, cont rigid, V = \\u. B where B
ranges over ALL de Bruijn terms (normal or not) of at most MAXB bits with free
variables u (0), list (1), cont (2). Law: on every unary stream
s = U_n(N) = 1^n 0 ++ N (n = 1..3, rigid N), `V j = cont U_(n-1)(N) N`.

    python3 vcheck.py MAXB [workers]
"""
import sys, time, functools
from multiprocessing import Pool
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round3/handoff')
from lab import *


@functools.lru_cache(None)
def terms(n, k):
    """All DB terms of exactly n bits with free indices < k."""
    res = []
    if n >= 2 and n - 2 < k:
        res.append(('V', n - 2))
    if n >= 4:
        res += [('L', b) for b in terms(n - 2, k + 1)]
        for i in range(2, n - 3):
            res += [('A', f, a) for f in terms(i, k) for a in terms(n - 2 - i, k)]
    return tuple(res)


def inst(t, env):
    """Substitute free indices 0,1,2 by closed/rigid terms env[0..2]."""
    def go(t, d):
        if t[0] == 'V':
            i = t[1]
            if i >= d:
                return shift(d, 0, env[i - d])
            return t
        if t[0] == 'L':
            return ('L', go(t[1], d + 1))
        if t[0] == 'A':
            return ('A', go(t[1], d), go(t[2], d))
        return t
    return go(t, 0)


NEXT, CONT, N = C('NEXT'), C('cont'), C('N')


def law(B, n):
    s = unary(n, 'N')
    body = inst(B, (NEXT, s, CONT))          # u := NEXT, list := s, cont := cont
    want = app(CONT, unary(n - 1, 'N'), N)
    try:
        return nf(body, 400) == want
    except (Fuel, RecursionError):
        return False


def check(B):
    return law(B, 1) and law(B, 2) and law(B, 3)


def main():
    maxb = int(sys.argv[1])
    workers = int(sys.argv[2]) if len(sys.argv) > 2 else 2
    t0 = time.time()
    allB = [B for n in range(2, maxb + 1) for B in terms(n, 3)]
    # B must mention list (index 1) and cont (index 2): a term without `list`
    # cannot depend on the stream; without `cont` it cannot produce the head.
    def uses(t, i, d=0):
        if t[0] == 'V':
            return t[1] == i + d
        if t[0] == 'L':
            return uses(t[1], i, d + 1)
        return uses(t[1], i, d) or uses(t[2], i, d)
    cand = [B for B in allB if uses(B, 1) and uses(B, 2)]
    print(f"terms <= {maxb} bits: {len(allB)}, candidates: {len(cand)}, "
          f"enumerated in {time.time()-t0:.1f}s", flush=True)
    t1 = time.time()
    with Pool(workers) as pool:
        hits = [B for B, ok in zip(cand, pool.imap(check, cand, chunksize=2000)) if ok]
    print(f"checked in {time.time()-t1:.1f}s; {len(hits)} solutions")
    for B in sorted(hits, key=lambda t: size(('L', ('L', ('L', t))))):
        bits = size(('L', ('L', ('L', B)))) - 4      # |\\u. B| with list, cont free
        print(bits, show(('L', ('L', ('L', B))), [], 0))


if __name__ == '__main__':
    main()
