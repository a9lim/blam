"""Pinned check (hole lane): operands P over [s, c] at reader depth 1
(any shape, redexes included) with P[Z(r)] = r and P[U_n(N)] = c U_(n-1)(N)
for n = 1..3.  Complete through cmax: every term of every shape is
enumerated (jn's dbn.enum_terms, exact class cost model)."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
Zr = Z(); R_ = Kc('r')
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(Kc('c'), U(n - 1))) for n in (1, 2, 3)]
tot = hits = caps = 0
for c, t in enum_terms(cmax, 2, None):
    tot += 1
    v = safe_nf(inst(t, Zr))
    if v is None: caps += 1; print('CAPz', c, show(t)); continue
    if v != R_: continue
    bad = False
    for k in range(3):
        v = safe_nf(inst(t, Us[k]))
        if v is None: caps += 1; print('CAPu', c, show(t)); bad = True; break
        if v != cU[k]: bad = True; break
    if not bad: hits += 1; print('HIT', c, show(t))
print(f'P-lemma cmax={cmax}: {tot} terms, {hits} hits, {caps} caps, {time.time()-t0:.1f}s')
