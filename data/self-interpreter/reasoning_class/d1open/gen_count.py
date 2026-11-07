import sys, collections
from hskel import *
B3 = ['bit', 's', 'c']
fam = sys.argv[1]
out = []; unh = []
if fam == 'a':
    for q in range(1, 22):
        for m in range(1, 22):
            As = ['A%d' % i for i in range(2, m + 1)]
            holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
            handlers(B3, 4, ['bit', 'r'] + As + ['r'] + ['T%d' % i for i in range(1, q + 1)], 15 + 2 * q + 2 * m, holes, q, f'a q{q} m{m}', out, unh)
else:
    S2 = ['s', 'c']
    for k in range(1, 22):
        for l in range(1, 22):
            Qs = ['Q%d' % i for i in range(2, l + 1)]; As = ['A%d' % i for i in range(2, k + 1)]
            holes = {x: {'frame': S2, 'jbase': 0, 'max': 40} for x in Qs + As}
            handlers(S2, 0, ['bit', 'r'] + Qs + ['bit', 'r'] + As, 10 + 2 * k + 2 * l, holes, 0, f'b k{k} l{l}', out, unh)
print(len(out), 'unh', len(unh))
print(collections.Counter(sk['name'].split(' ')[1] for sk in out))
print('max nest', max(sk['name'].count(' s@') for sk in out))
