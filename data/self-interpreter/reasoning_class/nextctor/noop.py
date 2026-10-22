# complete check: every term N of size <= 9 over frame [c,p] (free c,p allowed),
# is N k t =beta k X t (rigid k,t, any X)?  Prints the minimal ones.
import sys; sys.path.insert(0, '.')
from chk import nf, Fuel, size
def terms(n, d):  # terms of size exactly n with d bound vars + 2 frame vars
    out = []
    # var i costs i+2
    i = n - 2
    if 0 <= i < d + 2: out.append(('V', i))
    if n >= 4:
        out += [('L', b) for b in terms(n - 2, d + 1)]
    for a in range(2, n - 3):
        for f in terms(a, d):
            for x in terms(n - 2 - a, d):
                out.append(('A', f, x))
    return out
def shiftf(t, k, c=0):
    if t[0] == 'V': return ('V', t[1] + k) if t[1] >= c else t
    if t[0] == 'L': return ('L', shiftf(t[1], k, c + 1))
    return ('A', shiftf(t[1], k, c), shiftf(t[2], k, c))
hits = []
for n in range(2, 10):
    for N in terms(n, 0):
        # frame for test: [k, t, c, p]? put k=0,t=1 above c,p: shift N by 2
        T = ('A', ('A', shiftf(N, 2), ('V', 0)), ('V', 1))
        try: r = nf(T, [2000])
        except Fuel: continue
        except RecursionError: continue
        if r[0] == 'A' and r[2] == ('V', 1) and r[1][0] == 'A' and r[1][1] == ('V', 0):
            hits.append((n, N))
for h in hits[:10]: print(h)
print('min size', min(h[0] for h in hits) if hits else None, 'count', len(hits))
