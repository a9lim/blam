"""Pinned check (hole lane): the root-node absorber family R = \\s. P Q
(P over [s,c], Q over [s,c] + one j taxed), P[Z] = r, Q[Z] = j,
P[U_n] lambda-valued, (P Q)[U_n] = c U_(n-1) N for n = 1..3.
Complete for all pairs with cost(P) <= cmax and cost(Q) <= cmax and
cost(P) + cost(Q) <= 37 (w = 2 + 2 + P + Q + 4 <= 45)."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
Zr = Z(); ns = (1, 2, 3); Us = {n: U(n) for n in ns}
cUN = {n: normalize(A(A(Kc('c'), U(n-1)), Kc('N'))) for n in ns}
Ps = []
for c, t in enum_terms(cmax, 2, None):
    v = safe_nf(inst(t, Zr))
    if v != Kc('r'): continue
    vs = [safe_nf(inst(t, Us[n])) for n in ns]
    if any(x is None or x[0] != 'l' for x in vs): continue
    Ps.append((c, t))
Qs = []
for c, t in enum_terms(cmax, 2, 'any'):
    v = safe_nf(inst(t, Zr))
    if v == Kc('j'): Qs.append((c, t))
print(f'{len(Ps)} P (min {min(c for c,_ in Ps)}), {len(Qs)} Q (min {min(c for c,_ in Qs)}), {time.time()-t0:.1f}s')
print('cheapest P:', [show(t) for c, t in Ps if c <= min(c for c,_ in Ps) + 4][:8])
hits = 0; tested = 0
for cp, p in Ps:
    for cq, q in Qs:
        if cp + cq > 37: continue
        tested += 1
        ok = True
        for n in ns:
            v = safe_nf(inst(A(p, q), Us[n]))
            if v != cUN[n]: ok = False; break
        if ok: hits += 1; print('HIT', cp + cq, show(p), '|', show(q))
print(f'pairs tested {tested}, hits {hits}, {time.time()-t0:.1f}s')
