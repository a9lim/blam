"""Pinned check (hole lane): context-free operands X over [s, c] plus one j
(jn's 'any' mode: j anywhere, taxed 4 per lambda of X above it; the
reader's own depth-1 tax is NOT included), all shapes, through cmax, with
X[Z(r)] = r j and X[U_n(N)] = target_n for n = 1..3, for each target."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
Zr = Z(); rj = A(Kc('r'), Kc('j'))
Us = [U(n) for n in (1, 2, 3)]
targets = {
  'N':   [Kc('N')] * 3,
  'cU':  [normalize(A(Kc('c'), U(n - 1))) for n in (1, 2, 3)],
  'c':   [Kc('c')] * 3,
  'U':   [normalize(U(n - 1)) for n in (1, 2, 3)],
  'cUN': [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)],
}
best = {k: [] for k in targets}
tot = zc = caps = 0
for c, t in enum_terms(cmax, 2, 'any'):
    tot += 1
    v = safe_nf(inst(t, Zr))
    if v is None: caps += 1; print("CAPz", c, show(t)); continue
    if v != rj: continue
    zc += 1
    vs = [safe_nf(inst(t, Us[k])) for k in range(3)]
    if any(x is None for x in vs): caps += 1; print('CAPu', c, show(t)); continue
    for k, tg in targets.items():
        if vs == tg: best[k].append((c, show(t)))
print(f'cmax={cmax}: {tot} terms, {zc} with X[Z] = r j, {caps} caps, {time.time()-t0:.1f}s')
for k, L in best.items():
    m = min((c for c, _ in L), default=None)
    print(f'  target {k}: {len(L)} hits, min {m}:', [s for c, s in L if c == m][:6])
