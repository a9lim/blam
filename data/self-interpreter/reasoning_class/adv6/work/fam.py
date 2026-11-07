"""Shared-helper application-tree families F1/F2/F3 (see NOTES §3).
Small pinned checks: A closed over c (or c,j) by exact BLC cost in frame,
T all application trees over a multiset of leaves. Zero law first."""
import sys, itertools, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
from functools import lru_cache
sys.setrecursionlimit(100000)

def terms(n, ctx, free):
    """all terms of exact cost n; ctx = list of bound names innermost first;
    free = list of (name, extra) free vars: free var cost = len(ctx)+idx_in_free+2,
    j priced 0 + 4*depth (handled by caller via 'jfree')."""
    return list(_terms(n, tuple(ctx), tuple(free)))

_ctr = [0]
def _terms(n, ctx, free):
    if n < 0: return
    if n < 2:
        if n == 0 and len(ctx) == 0 and any(k == 'j' for _, k in free):
            yield ('V', 'j')
        return
    # variables
    for i, v in enumerate(ctx):
        if i + 2 == n: yield ('V', v)
    for i, (v, kind) in enumerate(free):
        if kind == 'c' and len(ctx) + 2 == n: yield ('V', v)
        if kind == 'j' and 4 * len(ctx) == n and n >= 2: yield ('V', v)
    # lambda
    if n - 2 >= 2 or (n - 2 == 0 and any(k == 'j' for _, k in free)):
        nm = 'v%d' % len(ctx)
        for b in _terms(n - 2, (nm,) + ctx, free):
            yield ('L', nm, b)
    # application
    for a in range(0, n - 2 + 1):
        b = n - 2 - a
        for f in _terms(a, ctx, free):
            for g in _terms(b, ctx, free):
                yield ('A', f, g)

def trees(leaves):
    """all application trees over the multiset `leaves` (tuple of names)."""
    leaves = tuple(sorted(leaves))
    return _trees(leaves)

@lru_cache(None)
def _trees(leaves):
    if len(leaves) == 1: return [('V', leaves[0])]
    out = []
    seen = set()
    n = len(leaves)
    idx = list(range(n))
    for r in range(1, n):
        for comb in itertools.combinations(idx, r):
            left = tuple(leaves[i] for i in comb)
            right = tuple(leaves[i] for i in idx if i not in comb)
            key = (left, right)
            if key in seen: continue
            seen.add(key)
            for f in _trees(left):
                for g in _trees(right):
                    out.append(('A', f, g))
    return out

def contains(t, v):
    if t[0] == 'V': return t[1] == v
    if t[0] == 'L': return contains(t[2], v)
    return contains(t[1], v) or contains(t[2], v)

def j_ok(t, jn='j'):
    """j is a right child whose sibling contains h."""
    if t[0] == 'V': return t[1] != jn
    f, g = t[1], t[2]
    if g == ('V', jn): return contains(f, 'h')
    if f == ('V', jn): return False
    return (j_ok(f, jn) if contains(f, jn) else True) and (j_ok(g, jn) if contains(g, jn) else True)

ZT = rd.parse('r j')
def law(R, fuel):
    # returns 'ok', 'fail', 'fuel'
    try:
        z = rd.nf(('A', R, rd.Z('r')), [fuel])
    except (rd.Fuel, RecursionError):
        return 'fuel:Z'
    if not rd.alpha_eq(z, ZT): return 'fail'
    for n in (1, 2, 3):
        try:
            v = rd.nf(('A', R, rd.U(n, 'N')), [fuel])
        except (rd.Fuel, RecursionError):
            return 'fuel:U%d' % n
        want = rd.nf(('A', ('A', ('V', 'c'), rd.U(n - 1, 'N')), ('V', 'N')), [fuel])
        if not rd.alpha_eq(v, want): return 'fail'
    return 'ok'
