r"""gen.py variant for app-rooted R' in the hoisted family.
Fd applies only to redexes that are j-free or lie at depth >= 1 (inside the
first lambda S0 on j's path, hence inside R*'s B); redexes on j's depth-0 path
are exempt (their delta in R*'s frame differs).  F1, F2 as in gen.py."""
from functools import lru_cache
from dbn import subst
from gen import has_j, cost_star, nlam, head

def ok_app(k, f, x):
    h = head(f)
    if h[0] == 'k': return False
    if h == ('v', k) and (has_j(f) or has_j(x)): return False
    if f[0] == 'l' and (k >= 1 or not (has_j(f) or has_j(x))):
        red = ('a', f, x); con = subst(f[1], 0, x)
        dlt = cost_star(con) - cost_star(red)
        if dlt < 0: return False
        if dlt == 0 and nlam(con) < nlam(red): return False
    return True

@lru_cache(None)
def T(k, X, L, V, f, j, D):
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
                                for b in xs:
                                    if ok_app(k, a, b): out.append(('a', a, b))
    return tuple(out)

def F_S0(t):
    """c-count of the first lambda node on j's path (t app-rooted, depth 0)."""
    while t[0] == 'a':
        t = t[1] if has_j(t[1]) else t[2]
    assert t[0] == 'l'
    return ccount(t, 0)

def ccount(t, k):
    tag = t[0]
    if tag == 'v': return 1 if t[1] == k else 0
    if tag == 'l': return ccount(t[1], k + 1)
    if tag == 'a': return ccount(t[1], k) + ccount(t[2], k)
    return 0

def stream_app_root(X, L, V, f, D):
    for V1 in range(1, V):
        for L1 in range(L+1):
            for f1 in range(f+1):
                for X1 in range(X+1):
                    for j1 in (0, 1):
                        fs = T(0, X1, L1, V1, f1, j1, D)
                        if not fs: continue
                        xs = T(0, X-X1, L-L1, V-V1, f-f1, 1-j1, D)
                        for a in fs:
                            if a[0] != 'l' and head(a)[0] != 'l': continue   # root head must be a lambda
                            for b in xs:
                                if ok_app(0, a, b): yield ('a', a, b)
