# count terms in the T3 family: reader-shaped counts with cost + d + f <= 39, d >= 3
from validate_rowgen import count
tot = 0
for d in range(3, 12):
    for f in range(1, 6):
        cmax = 39 - d - f
        sub = 0; byV = {}
        for V in range(f + 3, 12):
            for L in range(d, 20):
                for X in range(0, 40):
                    cost = 2*L + 4*V - 4 + X
                    if cost > cmax: break
                    for root in ('lam', 'app'):
                        if root == 'lam' and X < f: continue
                        n = count(d, L, V, X, f, root)
                        sub += n; byV[V] = byV.get(V, 0) + n
        if sub: print('d=%d f=%d cost<=%d terms=%d byV=%s' % (d, f, cmax, sub, byV))
        tot += sub
print('total', tot)
