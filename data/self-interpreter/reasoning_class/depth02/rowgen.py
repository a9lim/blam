"""Complete generator for one pinned count row, plus law check.

Row (d, L, V, X, f, root): every term R with free c (frame [c]), exactly one
rigid j at depth exactly d, L lambdas, V leaves (incl. j), f occurrences of c,
index sum X over non-j leaves, root 'lam' or 'app'.  Weight is then
w = 2L + 4V - 4 + X + 4d.  Generation is exhaustive by construction (every
binary tree with lambda runs and every leaf index), memoised on
(depth, X, L, V, f, j).  dbn.py is jn's engine (copied, unmodified).
"""
import sys
from functools import lru_cache
from dbn import normalize, Fuel, Z, U, Kc, shift, subst, show, no_beta_eq_cert2
import dbn

@lru_cache(None)
def T(k, X, L, V, f, j, D):
    """terms under k binders (c is free index k), j-count j, exact counts."""
    out = []
    if V == 1 and L == 0:
        if j == 1:
            if X == 0 and f == 0 and k == D: out.append(('k', 'j'))
        else:
            if f == 0 and X < k: out.append(('v', X))
            if f == 1 and X == k: out.append(('v', k))
    if L >= 1:
        out.extend(('l', b) for b in T(k+1, X, L-1, V, f, j, D))
    if V >= 2:
        for V1 in range(1, V):
            for L1 in range(L+1):
                for f1 in range(f+1):
                    for X1 in range(X+1):
                        for j1 in range(j+1):
                            fs = T(k, X1, L1, V1, f1, j1, D)
                            if not fs: continue
                            xs = T(k, X-X1, L-L1, V-V1, f-f1, j-j1, D)
                            for a in fs:
                                for b in xs: out.append(('a', a, b))
    return tuple(out)

def close_c(t):
    # replace free index 0 (at top) by rigid c
    return subst(t, 0, Kc('c'))

def cons_(b, r): return ('l', ('a', ('a', ('v', 0), shift(b, 1)), shift(r, 1)))
TGT_Z = ('a', Kc('r'), Kc('j'))
def tgt_U(n):
    return normalize(('a', ('a', Kc('c'), U(n-1)), Kc('N')))

def check(R, fuel=3000):
    """R closed over rigid c,j.  returns (ok, failure stage)."""
    try:
        z = normalize(('a', R, Z()), fuel)
    except (Fuel, RecursionError):
        return False, 'zfuel'
    if z != TGT_Z: return False, 'z'
    for n in (1, 2, 3):
        try:
            u = normalize(('a', R, U(n)), fuel)
        except (Fuel, RecursionError):
            return False, 'ufuel%d' % n
        if u != tgt_U(n): return False, 'u%d' % n
    return True, 'PASS'

def run(d, L, V, X, f, root):
    terms = T(0, X, L, V, f, 1, d)
    terms = [t for t in terms if (t[0] == 'l') == (root == 'lam')]
    from collections import Counter
    st = Counter(); hits = []; caps = []
    for t in terms:
        R = close_c(t)
        ok, why = check(R)
        st[why] += 1
        if ok: hits.append(t)
        elif 'fuel' in why: caps.append(t)
    return len(terms), st, hits, caps

if __name__ == '__main__':
    d, L, V, X, f = map(int, sys.argv[1:6]); root = sys.argv[6]
    n, st, hits, caps = run(d, L, V, X, f, root)
    w = 2*L + 4*V - 4 + X + 4*d
    print(f'row d={d} L={L} V={V} X={X} f={f} root={root} w={w}: {n} terms; {dict(st)}')
    for h in hits: print('  HIT', show(close_c(h)))
    for c in caps[:20]: print('  cap', show(close_c(c)))
