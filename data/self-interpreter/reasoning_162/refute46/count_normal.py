#!/usr/bin/env python3
"""Count beta-normal readers  \\s. B  with cost <= CMAX, j exactly once at
depth 1 (directly under \\s), free names s, c only, at most LMAX inner lambdas.
B's head must be s (c/j heads cannot meet the laws).  Pure counting DP.
"""
import sys
from functools import lru_cache
sys.setrecursionlimit(10000)
CMAX = int(sys.argv[1]) if len(sys.argv) > 1 else 41
LMAX = int(sys.argv[2]) if len(sys.argv) > 2 else 3

# depth = number of lambdas enclosing (s is index depth-1; c index depth)
# j allowed only when depth == 1 and not yet used (jflag 0 -> 1)
@lru_cache(maxsize=None)
def normal(size, depth, lam, juse):
    """# normal terms of exactly `size` bits at `depth`, using exactly `lam`
    inner lambdas, and `juse` (0/1) j occurrences (j priced 0, only depth 1)."""
    if size < 0 or lam < 0 or juse < 0: return 0
    total = 0
    # lambda
    if size >= 2 and lam >= 1 and juse == 0:
        total += normal(size - 2, depth + 1, lam - 1, 0)
    # application spine: head var then >= 0 normal args
    total += spine(size, depth, lam, juse, True)
    return total

@lru_cache(maxsize=None)
def spine(size, depth, lam, juse, allow_head):
    """# terms  h a1 ... ak  (k>=0, head var h) of exactly size, where if
    allow_head then k may be 0 (bare variable)."""
    if size < 0 or lam < 0 or juse < 0: return 0
    total = 0
    # bare head variable
    # bound vars at index i cost 2+i, i in 0..depth-1 ; c costs 2+depth ; j costs 0
    heads = []
    for i in range(depth): heads.append((2 + i, 0))
    heads.append((2 + depth, 0))  # c
    if depth == 1: heads.append((0, 1))  # j
    for hc, hj in heads:
        if size == hc and lam == 0 and juse == hj and allow_head:
            total += 1
    # application: (spine of size a) applied to (normal arg of size b), size = a + b + 2
    for a in range(2, size - 2 + 1):
        b = size - 2 - a
        if b < 0: continue
        for la in range(lam + 1):
            for ja in range(juse + 1):
                left = spine(a, depth, la, ja, True)
                if left == 0: continue
                right = normal(b, depth, lam - la, juse - ja)
                total += left * right
    return total

def count_readers(cmax):
    # R = \s. B, B has head s (index 0 at depth 1), and j exactly once
    tot = 0
    bysz = {}
    for b in range(0, cmax - 2 + 1):
        n = 0
        for lam in range(LMAX + 1):
            # spine with head s: s a1 ... ak : handled by counting spine with head restricted
            n += spine_head_s(b, lam)
        bysz[b + 2] = n
        tot += n
    return tot, bysz

@lru_cache(maxsize=None)
def spine_head_s(size, lam, juse=1):
    """# terms  s a1 ... ak  of exactly size at depth 1, k>=1."""
    if size < 0: return 0
    total = 0
    if size == 2 and lam == 0 and juse == 0: return 1  # bare s
    for a in range(2, size - 2 + 1):
        b = size - 2 - a
        if b < 0: continue
        for la in range(lam + 1):
            for ja in range(juse + 1):
                left = spine_head_s(a, la, ja)
                if left == 0: continue
                total += left * normal(b, 1, lam - la, juse - ja)
    return total

if __name__ == '__main__':
    tot, bysz = count_readers(CMAX)
    print('total normal readers with cost <=', CMAX, 'and <=', LMAX, 'inner lambdas:', tot)
    acc = 0
    for k in sorted(bysz):
        acc += bysz[k]
        if bysz[k]: print(f'cost {k:3d}: {bysz[k]:>12,}   cumulative {acc:>14,}')
