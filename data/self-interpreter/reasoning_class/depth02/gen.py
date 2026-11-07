r"""Filtered exhaustive generator for pinned count rows (depth02 lane).

Same row semantics as rowgen.py (free c = index k under k binders, one rigid j
at depth exactly D, exact L, V, X, f), plus rigorous local filters:
 F1  no application whose spine head is j            (any reader)
 F2  no c-headed application containing j            (any reader)
 Fd  every redex (\x.P) Q has delta > 0, or delta == 0 with no lambda loss,
     delta = exact cost change of contracting it, j priced as an ordinary
     bound leaf of an outer binder (the hoisted frame R* = (\a. R[a/j]) j).
     Valid when R* must be minimum under (w, L, d).  mode 'star'.
     mode 'none' disables Fd (then only F1/F2).
"""
from functools import lru_cache
from dbn import subst

def has_j(t):
    st = [t]
    while st:
        x = st.pop()
        if x[0] == 'k': return True
        if x[0] == 'l': st.append(x[1])
        elif x[0] == 'a': st.append(x[1]); st.append(x[2])
    return False

def cost_star(t, dep=0):
    tag = t[0]
    if tag == 'v': return 2 + t[1]
    if tag == 'k': return 2 + dep
    if tag == 'l': return 2 + cost_star(t[1], dep + 1)
    return 2 + cost_star(t[1], dep) + cost_star(t[2], dep)

def nlam(t):
    tag = t[0]
    if tag == 'l': return 1 + nlam(t[1])
    if tag == 'a': return nlam(t[1]) + nlam(t[2])
    return 0

def head(t):
    while t[0] == 'a': t = t[1]
    return t

MODE = ['star']

def ok_app(k, f, x):
    h = head(f)
    if h[0] == 'k': return False                       # F1
    if h == ('v', k) and (has_j(f) or has_j(x)): return False   # F2 (c = index k)
    if f[0] == 'l' and MODE[0] == 'star':
        red = ('a', f, x)
        con = subst(f[1], 0, x)
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

def stream_lam_root(X, L, V, f, D):
    """yield lambda-rooted terms of the row without materialising the top list:
    root = ('l', M), M non-lambda (F12), M = ('a', P, Q) streamed."""
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
