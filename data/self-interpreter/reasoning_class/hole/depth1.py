"""Pinned check (hole lane) for readers whose zero output node is at depth 1.
R = \\s. C'[X]:  X over [s,c] + one j (taxed, jn 'any' mode), X[Z] = r j;
C' over [s,c] with one hole x at depth 1 ('top' mode, x priced 0),
C'[x] Z = x.  Per n = 1..3 we record X's unary value class and C''s
output shape; a pair is consistent iff for every n the shape places x
where X's value goes.  Complete through cmax for each side (all shapes).
w = 2 + cost(C') + cost(X) + 4."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
Zr = Z(); rj = A(Kc('r'), Kc('j')); x = Kc('j'); Nn = Kc('N'); cc = Kc('c')
ns = (1, 2, 3); Us = {n: U(n) for n in ns}
def Ux(n):
    t = cons(K, x)
    for _ in range(n): t = cons(F, t)
    return t
nf_ = lambda t: normalize(t)
XV = {n: {'N': Nn, 'cU': nf_(A(cc, U(n-1))), 'c': cc, 'U': nf_(U(n-1)),
          'cUN': nf_(A(A(cc, U(n-1)), Nn))} for n in ns}
CS = {n: {'N': [nf_(A(A(cc, U(n-1)), x)), nf_(A(A(cc, Ux(n-1)), Nn)), nf_(A(A(cc, Ux(n-1)), x))],
          'cU': [A(x, Nn)], 'c': [nf_(A(A(x, U(n-1)), Nn))], 'U': [A(A(cc, x), Nn)],
          'cUN': [x]} for n in ns}
def sig(vals, table):
    out = []
    for n, v in zip(ns, vals):
        ks = [k for k, w in table[n].items() if (v in w if isinstance(w, list) else v == w)]
        out.append(ks[0] if ks else None)
    return tuple(out)
Xs = {}; Cs = {}; caps = 0
for c, t in enum_terms(cmax, 2, 'any'):
    v = safe_nf(inst(t, Zr))
    if v is None: caps += 1; continue
    if v != rj: continue
    vals = [safe_nf(inst(t, Us[n])) for n in ns]
    if None in vals: caps += 1; print('CAP X', c, show(t)); continue
    s = sig(vals, XV)
    if None in s: continue
    Xs.setdefault(s, []).append((c, show(t)))
for c, t in enum_terms(cmax, 2, 'top'):
    v = safe_nf(inst(t, Zr))
    if v is None: caps += 1; continue
    if v != x: continue
    vals = [safe_nf(inst(t, Us[n])) for n in ns]
    if None in vals: caps += 1; print('CAP C', c, show(t)); continue
    s = sig(vals, CS)
    if None in s: continue
    Cs.setdefault(s, []).append((c, show(t)))
print(f'cmax={cmax}: caps={caps} {time.time()-t0:.1f}s')
for nm, D in (('X', Xs), ('C', Cs)):
    for s, L in sorted(D.items(), key=lambda kv: min(c for c, _ in kv[1])):
        m = min(c for c, _ in L)
        print(f'  {nm} sig {s}: {len(L)} terms, min {m}: {[q for c, q in L if c == m][:3]}')
best = None
for s, L in Xs.items():
    if s == ('cUN',) * 3: continue
    if s in Cs:
        v = min(c for c, _ in L) + min(c for c, _ in Cs[s])
        if best is None or v < best[0]: best = (v, s)
print('min matched non-whole cost(C\')+cost(X):', best, '-> w >=', None if best is None else best[0] + 6)
