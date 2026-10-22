# completeness of gen4 (dummy copies) against an independent unfiltered generator + accepts()
from functools import lru_cache
import gen2, gen4
from genval import accepts
from gen import head
@lru_cache(None)
def U(k, X, L, V, f, j, dm, D):
    out = []
    if V == 1 and L == 0:
        if j == 1 and dm == 0 and X == 0 and f == 0 and k == D: out.append(('k', 'j'))
        if j == 0 and dm == 1 and X == 0 and f == 0 and k == 0: out.append(('k', 'j'))
        if j == 0 and dm == 0:
            if f == 0 and X < k: out.append(('v', X))
            if f == 1 and X == k: out.append(('v', k))
    if L >= 1: out += [('l', b) for b in U(k+1, X, L-1, V, f, j, dm, D)]
    for V1 in range(1, V):
        for L1 in range(L+1):
            for f1 in range(f+1):
                for X1 in range(X+1):
                    for j1 in range(j+1):
                        for d1 in range(dm+1):
                            for a in U(k, X1, L1, V1, f1, j1, d1, D):
                                for b in U(k, X-X1, L-L1, V-V1, f-f1, j-j1, dm-d1, D):
                                    out.append(('a', a, b))
    return tuple(out)
for (X, L, V, f, D, dm) in [(1, 3, 6, 1, 3, 1), (0, 4, 6, 1, 3, 1), (2, 3, 7, 1, 3, 2)]:
    allt = [t for t in U(0, X, L, V, f, 1, dm, D) if t[0] == 'a' and head(t)[0] == 'l']
    want = sorted(map(repr, (t for t in allt if accepts(t, gen2))))
    got = sorted(map(repr, gen4.stream_app_root(X, L, V, f, D, dm)))
    print((X, L, V, f, D, dm), 'unfiltered', len(allt), 'accepted', len(want), 'generated', len(got), 'equal', want == got)
