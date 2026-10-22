import sys
from hskel import *
from count_lib import est_skel
B3 = ['bit', 's', 'c']; S2 = ['s', 'c']
fam = sys.argv[1]; out = []; unh = []
if fam == 'a':
    for q in range(1, 22):
        for m in range(1, 22):
            As = ['A%d' % i for i in range(2, m + 1)]
            holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
            handlers(B3, 4, ['bit', 'r'] + As + ['r'] + ['T%d' % i for i in range(1, q + 1)], 15 + 2 * q + 2 * m, holes, q, f'a q{q} m{m}', out, unh)
else:
    for k in range(1, 22):
        for l in range(1, 22):
            Qs = ['Q%d' % i for i in range(2, l + 1)]; As = ['A%d' % i for i in range(2, k + 1)]
            holes = {x: {'frame': S2, 'jbase': 0, 'max': 40} for x in Qs + As}
            handlers(S2, 0, ['bit', 'r'] + Qs + ['bit', 'r'] + As, 10 + 2 * k + 2 * l, holes, 0, f'b k{k} l{l}', out, unh)
big = [(est_skel(sk), sk['name']) for sk in out]
big.sort()
print(len(out), 'over 100k:', sum(1 for e, n in big if e > 100000))
for e, n in big[-8:]: print(e, n)
print('UNH sample', unh[:6])
