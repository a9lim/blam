"""Pinned check (hole lane), zero shape B: j's parent subterm X has
X[Z] = j and the wrapper supplies r: C'[x] Z = r x.  Side 'X': X over
[s,c] + one j (taxed), X[Z] = j, unary value class per n.  Side 'C':
C' over [s,c] with top-level hole x, C'[x] Z = r x, unary shape per n
(including 'E': x erased, output c U N).  Aborts above 100,000 terms."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
side = sys.argv[1]; cmax = int(sys.argv[2]); t0 = time.time()
Zr = Z(); x = Kc('j'); Nn = Kc('N'); cc = Kc('c'); ns = (1, 2, 3)
Us = {n: U(n) for n in ns}
def Ux(n):
    t = cons(K, x)
    for _ in range(n): t = cons(F, t)
    return t
nf_ = normalize
XV = {n: {'N': [Nn], 'cU': [nf_(A(cc, U(n-1)))], 'c': [cc], 'U': [nf_(U(n-1))],
          'cUN': [nf_(A(A(cc, U(n-1)), Nn))]} for n in ns}
CS = {n: {'N': [nf_(A(A(cc, U(n-1)), x)), nf_(A(A(cc, Ux(n-1)), Nn)), nf_(A(A(cc, Ux(n-1)), x))],
          'cU': [A(x, Nn)], 'c': [nf_(A(A(x, U(n-1)), Nn))], 'U': [A(A(cc, x), Nn)],
          'cUN': [x], 'E': [nf_(A(A(cc, U(n-1)), Nn))]} for n in ns}
ztarget = x if side == 'X' else A(Kc('r'), x)
table = XV if side == 'X' else CS
D = {}; tot = caps = 0
for c, t in enum_terms(cmax, 2, 'any' if side == 'X' else 'top'):
    tot += 1
    if tot > 100000: print('ABORT: over 100k terms at cost', c); break
    v = safe_nf(inst(t, Zr))
    if v is None: caps += 1; print('CAPz', c, show(t)); continue
    if v != ztarget: continue
    vals = [safe_nf(inst(t, Us[n])) for n in ns]
    if None in vals: caps += 1; print('CAPu', c, show(t)); continue
    s = []
    for n, v in zip(ns, vals):
        ks = [k for k, w in table[n].items() if v in w]
        s.append(ks[0] if ks else None)
    if None in s: continue
    D.setdefault(tuple(s), []).append((c, show(t)))
print(f'side {side} cmax={cmax}: {tot} terms, {caps} caps, {time.time()-t0:.1f}s')
for s, L in sorted(D.items(), key=lambda kv: min(c for c, _ in kv[1])):
    m = min(c for c, _ in L)
    print(f'  sig {s}: {len(L)} terms, min {m}: {[q for c, q in L if c == m][:3]}')
