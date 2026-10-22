"""List every operand T <= TMAX (frame [s,c], j none or once anywhere, taxed)
with its zero / unary(n=1..3) normal forms, grouped by meaning."""
import sys
from dbn import *
TMAX = int(sys.argv[1]) if len(sys.argv) > 1 else 9
Us = [U(n) for n in (1, 2, 3)]
groups = {}
for mode in (None, 'any'):
    for c, t in enum_terms(TMAX, 2, mode):
        z = safe_nf(inst(t, Z()))
        us = tuple(safe_nf(inst(t, Us[k])) for k in range(3))
        key = (z,) + us
        groups.setdefault(key, []).append((c, show(t)))
print(len(groups), 'meanings')
for key, L_ in sorted(groups.items(), key=lambda kv: min(x[0] for x in kv[1])):
    z = key[0]; u1 = key[1]
    L_.sort()
    print(f'{L_[0][0]:2d}  zero={show(z) if z else "CAP"}  u1={show(u1) if u1 else "CAP"}  :: ' + ' | '.join(s for _, s in L_[:4]) + (f' (+{len(L_)-4})' if len(L_) > 4 else ''))
