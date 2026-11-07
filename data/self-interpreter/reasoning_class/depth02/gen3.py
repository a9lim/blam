r"""Generator for a minimum counterexample in its OWN frame (w = cost + 4d):
Fd uses the true weight change, j taxed 4 per binder above it.  F1, F2 as gen.py.
Valid for: R is the minimum counterexample (order w, L, d) itself."""
from functools import lru_cache
from dbn import subst
from gen import has_j, nlam, head

def cost_w(t, dep=0):
    tag = t[0]
    if tag == 'v': return 2 + t[1]
    if tag == 'k': return 4 * dep
    if tag == 'l': return 2 + cost_w(t[1], dep + 1)
    return 2 + cost_w(t[1], dep) + cost_w(t[2], dep)

def ok_app(k, f, x):
    h = head(f)
    if h[0] == 'k': return False
    if h == ('v', k) and (has_j(f) or has_j(x)): return False
    if f[0] == 'l':
        red = ('a', f, x); con = subst(f[1], 0, x)
        dlt = cost_w(con) - cost_w(red)
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

def stream_root(X, L, V, f, D, root):
    if root == 'lam':
        k = 1
        for V1 in range(1, V):
            for L1 in range(L):
                for f1 in range(f+1):
                    for X1 in range(X+1):
                        for j1 in (0, 1):
                            fs = T(k, X1, L1, V1, f1, j1, D)
                            if not fs: continue
                            xs = T(k, X-X1, L-1-L1, V-V1, f-f1, 1-j1, D)
                            for a in fs:
                                for b in xs:
                                    if ok_app(k, a, b): yield ('l', ('a', a, b))
    else:
        for V1 in range(1, V):
            for L1 in range(L+1):
                for f1 in range(f+1):
                    for X1 in range(X+1):
                        for j1 in (0, 1):
                            fs = T(0, X1, L1, V1, f1, j1, D)
                            if not fs: continue
                            xs = T(0, X-X1, L-L1, V-V1, f-f1, 1-j1, D)
                            for a in fs:
                                if a[0] != 'l' and head(a)[0] != 'l': continue
                                for b in xs:
                                    if ok_app(0, a, b): yield ('a', a, b)
