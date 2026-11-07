import time
from hskel import *
t0 = time.time()
B3 = ['bit', 's', 'c']
out = []; unh = []
for q in range(1, 5):
    for m in range(1, 6):
        As = ['A%d' % i for i in range(2, m + 1)]
        holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
        Ts = ['T%d' % i for i in range(1, q + 1)]
        handlers(B3, 4, ['bit', 'r'] + As + ['r'] + Ts, 15 + 2 * q + 2 * m, holes, q, f'(a/e) p0 q{q} m{m}', out, unh)
print('skeletons', len(out), 'unhandled', len(unh), f'{time.time()-t0:.1f}s', flush=True)
for u in unh[:10]: print('  UNH', u)
hits, mx = run_all(out)
print('hits', len(hits), 'max pool', mx, f'{time.time()-t0:.1f}s')
