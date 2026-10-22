"""Pinned check (hole lane): wrappers C' over [s, c] with one hole x at
depth 1 (not under any lambda of C'; x priced 0; jn's 'top' mode with j as
the hole), all shapes, through cmax, with C'[x] Z(r) = x and
C'[x] U_n(N) = O_n(x) for n = 1..3, for each output shape O."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
x = Kc('j'); Zr = Z()
Us = [U(n) for n in (1, 2, 3)]
def Ux(n):  # U_n with its terminal N replaced by x
    t = cons(K, x)
    for _ in range(n): t = cons(F, t)
    return t
shapes = {
  'N-outer (c U x)': [normalize(A(A(Kc('c'), U(n - 1)), x)) for n in (1, 2, 3)],
  'cU (x N)':        [A(x, Kc('N'))] * 3,
  'c (x U N)':       [normalize(A(A(x, U(n - 1)), Kc('N'))) for n in (1, 2, 3)],
  'N-inner (c U[x] N)': [normalize(A(A(Kc('c'), Ux(n - 1)), Kc('N'))) for n in (1, 2, 3)],
  'U (c x N)':       [A(A(Kc('c'), x), Kc('N'))] * 3,
  'whole (x)':       [x] * 3,
}
best = {k: [] for k in shapes}
tot = zc = caps = 0
for c, t in enum_terms(cmax, 2, 'top'):
    tot += 1
    v = safe_nf(inst(t, Zr))
    if v is None: caps += 1; print("CAPz", c, show(t)); continue
    if v != x: continue
    zc += 1
    vs = [safe_nf(inst(t, Us[k])) for k in range(3)]
    if any(y is None for y in vs): caps += 1; print('CAPu', c, show(t)); continue
    for k, tg in shapes.items():
        if vs == tg: best[k].append((c, show(t)))
print(f'cmax={cmax}: {tot} terms, {zc} with C[x] Z = x, {caps} caps, {time.time()-t0:.1f}s')
for k, L in best.items():
    m = min((c for c, _ in L), default=None)
    print(f'  {k}: {len(L)} hits, min {m}:', [s for c, s in L if c == m][:4])
