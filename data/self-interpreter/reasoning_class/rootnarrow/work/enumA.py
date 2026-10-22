r"""Enumerate complete root-level arguments A (depth 0, free c/j only) whose head is a redex:
A = (\y. P) Q1 .. Qt, t >= 1, exactly one j at depth <= JMAX, weight <= WMAX, passing every
local minimality filter of minfilt (erase, eta, lin0, lin, share, share0) on A itself.
Usage: enumA.py WMAX [JMAX]"""
import sys
from functools import lru_cache
sys.path.insert(0, '.')
import minfilt as M

M.JARG[0] = '--jarg' in sys.argv
M.NF[0] = '--nf' in sys.argv
WMAX = int(sys.argv[1]); JMAX = int(sys.argv[2]) if len(sys.argv) > 2 else 1

@lru_cache(None)
def terms(d, w, nj):
    """all terms at depth d of weight exactly w with exactly nj (0/1) j's; j only at depth <= JMAX"""
    out = []
    if w < 2 and not (nj == 1 and w == 0): return ()
    # leaves
    if nj == 0:
        for i in range(d):
            if 2 + i == w: out.append(('V', i))
        if 2 + d == w: out.append(('C', 'c'))
    elif d <= JMAX and 4 * d == w:
        out.append(('C', 'j'))
    if w >= 4:
        for b in terms(d + 1, w - 2, nj): out.append(('L', b))
        for w1 in range(0, w - 2 + 1):
            w2 = w - 2 - w1
            for n1 in range(nj + 1):
                for f in terms(d, w1, n1):
                    for a in terms(d, w2, nj - n1):
                        out.append(('A', f, a))
    return tuple(out)

def ok(t):
    try:
        M.summ(t, 0, None); return True
    except M.Prune:
        return False

cnt = {}
keep = []
for w in range(0, WMAX + 1):
    for t in terms(0, w, 1):
        h, args = M.spine(t)
        if h[0] != 'L' or not args: continue
        if ok(t):
            cnt[w] = cnt.get(w, 0) + 1; keep.append((w, t))
print('by weight', cnt, 'total', len(keep))
if '--show' in sys.argv:
    for w, t in keep[:int(sys.argv[sys.argv.index('--show') + 1])]: print(w, t)
