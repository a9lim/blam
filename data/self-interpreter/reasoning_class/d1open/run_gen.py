import sys, time
from hskel import *
from skel import run
from count_lib import est_skel, ufeed
import os
ONLYFEED = os.environ.get('ONLYFEED') == '1'
B3 = ['bit', 's', 'c']
fam, ci, nc = sys.argv[1], int(sys.argv[2]), int(sys.argv[3])
out = []; unh = []
if fam == 'a':
    for q in range(1, 22):
        for m in range(1, 22):
            As = ['A%d' % i for i in range(2, m + 1)]
            holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
            handlers(B3, 4, ['bit', 'r'] + As + ['r'] + ['T%d' % i for i in range(1, q + 1)], 15 + 2 * q + 2 * m, holes, q, f'a q{q} m{m}', out, unh, 0, 8, 8, 8)
elif fam == 'e':
    # every redex-free lambda-dispatcher body: B is a handler of the stack r T1..Tq
    for q in range(1, 22):
        handlers(B3, 4, ['r'] + ['T%d' % i for i in range(1, q + 1)], 12 + 2 * q, {}, q, f'e q{q}', out, unh, 0, 8, 8, 8)
else:
    S2 = ['s', 'c']
    for k in range(1, 22):
        for l in range(1, 22):
            Qs = ['Q%d' % i for i in range(2, l + 1)]; As = ['A%d' % i for i in range(2, k + 1)]
            holes = {x: {'frame': S2, 'jbase': 0, 'max': 40} for x in Qs + As}
            handlers(S2, 0, ['bit', 'r'] + Qs + ['bit', 'r'] + As, 10 + 2 * k + 2 * l, holes, 0, f'b k{k} l{l}', out, unh, 0, 8, 8, 8)
t0 = time.time(); hits = []; mx = 0; n = 0
for idx, sk in enumerate(out):
    if idx % nc != ci: continue
    if ONLYFEED and not (ufeed(sk) and sk['uhead'] != sk['zhead']): continue
    if est_skel(sk) > 100000: print('SKIP over cap', sk['name'], est_skel(sk)); continue
    h, us, nt = run(sk, False); n += 1; mx = max(mx, nt)
    if h: print('HITS', sk['name'], h[:3], flush=True); hits += h
import skel as _sk
print('UNCERT', len(_sk.UNCERT), _sk.UNCERT[:8])
print(f'fam {fam} chunk {ci}/{nc}: skeletons {n} hits {len(hits)} max pool {mx} {time.time()-t0:.1f}s unh {len(unh)}')
