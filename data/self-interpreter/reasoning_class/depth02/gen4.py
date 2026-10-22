r"""Let-bound j at depth 0 (section 7c): R* = C'[(\a. B) j], a used k>=2 times.
Copy lemma => one surviving copy at depth D>=3, k-1 'dummy' copies at depth 0
(erased in every run).  Generate R'' = C'[B[j/a]] with ALL copies as rigid j:
one j at depth exactly D plus dm dummies at depth 0.  Filters exactly as
gen2 (F1/F2 on every copy; Fd in R*'s frame, exempt on depth-0 j-paths)."""
from functools import lru_cache
from gen import has_j, head
from gen2 import ok_app, F_S0 as _F_S0, ccount

@lru_cache(None)
def T(k, X, L, V, f, j, dm, D):
    out = []
    if V == 1 and L == 0:
        if j == 1 and dm == 0:
            if X == 0 and f == 0 and k == D: out.append(('k', 'j'))
        elif j == 0 and dm == 1:
            if X == 0 and f == 0 and k == 0: out.append(('k', 'j'))
        elif j == 0 and dm == 0:
            if f == 0 and X < k: out.append(('v', X))
            if f == 1 and X == k: out.append(('v', k))
    if L >= 1 and dm == 0:
        out.extend(('l', b) for b in T(k+1, X, L-1, V, f, j, 0, D))
    if V >= 2:
        for V1 in range(1, V):
            for L1 in range(L+1):
                for f1 in range(f+1):
                    for X1 in range(X+1):
                        for j1 in range(j+1):
                            for d1 in range(dm+1):
                                fs = T(k, X1, L1, V1, f1, j1, d1, D)
                                if not fs: continue
                                xs = T(k, X-X1, L-L1, V-V1, f-f1, j-j1, dm-d1, D)
                                for a in fs:
                                    for b in xs:
                                        if ok_app(k, a, b): out.append(('a', a, b))
    return tuple(out)

def deep_path_S0(t, D):
    """c-count of the first lambda on the deep j's path."""
    def find(t, dep):
        if t[0] == 'k': return dep == D
        if t[0] == 'l': return find(t[1], dep + 1)
        if t[0] == 'a': return find(t[1], dep) or find(t[2], dep)
        return False
    while t[0] == 'a':
        t = t[1] if find(t[1], 0) else t[2]
    return ccount(t, 0)

def stream_app_root(X, L, V, f, D, dm):
    for V1 in range(1, V):
        for L1 in range(L+1):
            for f1 in range(f+1):
                for X1 in range(X+1):
                    for j1 in (0, 1):
                        for d1 in range(dm+1):
                            fs = T(0, X1, L1, V1, f1, j1, d1, D)
                            if not fs: continue
                            xs = T(0, X-X1, L-L1, V-V1, f-f1, 1-j1, dm-d1, D)
                            for a in fs:
                                if a[0] != 'l' and head(a)[0] != 'l': continue
                                for b in xs:
                                    if ok_app(0, a, b): yield ('a', a, b)
