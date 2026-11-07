# Verify the rigid laws for every level-1 and level-2 spine source of spine.py.
import sys; sys.path.insert(0, '.')
import io, contextlib
with contextlib.redirect_stdout(io.StringIO()):
    import spine
from chk import nf, ctx, T0, T1, shift
from spine import *
K = ('L', ('L', ('V', 1))); Fb = ('L', ('L', ('V', 0)))
tg0 = nf(ctx(T0), [10**5]); tg1 = nf(ctx(T1), [10**5])
def laws(Q):
    Qs = Q                       # frame [c, p, t]: t is index 2, as in ctx()
    a = nf(('A', ('A', Qs, K), ('V', 2)), [10**5]); b = nf(('A', ('A', Qs, Fb), ('V', 2)), [10**5])
    return a == tg0 and b == tg1
ok = bad = 0
for name, s in bases.items():
    B = strip(parse(s)); dp, X, Y = find_dispatch(B); bvar = get(B, dp)[1][1]
    for X1, Y1, Z in extend(X, Y):
        Q = put(B, dp, ('A', ('A', ('A', bvar, X1), Y1), Z))
        if laws(Q): ok += 1
        else: bad += 1
        for X2, Y2, Z2 in extend(X1[1], Y1[1]):
            Z2u = unshift(Z2, 1)
            if Z2u is None: continue
            Q2 = put(B, dp, ('A', ('A', ('A', ('A', bvar, ('L', X2)), ('L', Y2)), Z), Z2u))
            if laws(Q2): ok += 1
            else: bad += 1
print('laws ok', ok, 'bad', bad)
