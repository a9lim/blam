"""L1 / L2' finite checks (complete within stated bounds; all term shapes)."""
import sys, time
from dbn import *
mode = sys.argv[1]; cmax = int(sys.argv[2])
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
Nn = Kc('N'); Jj = Kc('j')
hits = []; tot = 0; caps = 0
if mode == 'L2':     # T over [s,c] with T[U_n] = c U_(n-1) N
    gen = enum_terms(cmax, 2, None)
    def ok(t):
        for k in range(3):
            v = safe_nf(inst(t, Us[k]))
            if v is None: return 'cap'
            if v != cU[k]: return False
        return True
else:                # L1: Y over [s,c] + j: Y[Z] = j, Y[U_n] = N
    gen = enum_terms(cmax, 2, 'top' if mode == 'L1' else 'any')
    Zr = Z()
    def ok(t):
        v = safe_nf(inst(t, Zr))
        if v is None: return 'cap'
        if v != Jj: return False
        for k in range(3):
            v = safe_nf(inst(t, Us[k]))
            if v is None: return 'cap'
            if v != Nn: return False
        return True
for c, t in gen:
    tot += 1
    r = ok(t)
    if r == 'cap': caps += 1; print('CAP', c, show(t))
    elif r: hits.append((c, t)); print('HIT', c, show(t))
print(f'{mode} cmax={cmax}: {tot} terms, {len(hits)} hits, {caps} capped, {time.time()-t0:.1f}s')
