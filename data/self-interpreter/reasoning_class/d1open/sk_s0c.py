r"""uv1 / uvb1 with m = 1: R = \s. s (\b. s (\u v. u Z)) T1..Tq (or b Z):
zero Z T1..Tq = r j; unary r' T1 T2.. = T1 b' r'' T2..Tq (T1 = second-cell
handler).  T1 is made a hole of frame [s, c] (depth 1), T2..Tq stay T's."""
from skel import *
B3 = ['bit', 's', 'c']
tot = 0; hits = []
for shape, extra in (('uv1', 9), ('uvb1', 10)):
    for q in range(1, 6):
        Ts = ['T%d' % i for i in range(2, q + 1)]
        holes = {'Z': {'frame': ['r', 'bit'] + B3, 'jbase': 12, 'max': 40},
                 'H1': {'frame': ['s', 'c'], 'jbase': 0, 'max': 40}}
        sk = {'name': f'{shape} m1 q{q}', 'q': q - 1, 'overhead': 15 + 2 * q + 2 + extra, 'zbound': 40,
              'holes': holes, 'zhead': 'Z', 'zargs': ['H1'] + ['T%d' % i for i in range(1, q)],
              'uhead': 'H1', 'uargs': ['bit2', 'r2'] + ['T%d' % i for i in range(1, q)]}
        if 45 - sk['overhead'] - 4 < 0: continue
        h, us, nt = run(sk); hits += h; tot += 1
print('skeletons', tot, 'hits', len(hits))
