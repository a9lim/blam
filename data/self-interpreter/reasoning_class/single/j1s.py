"""J1 for semantic sites: E W -> W with j inside E (j at depth 0, lambda-rooted reader).
List every j-term E (j at E-depth 0) of cost <= 15 that is a unary identity on n = 1..3
(E x = x, x rigid) but not a zero identity; then insert each into the three j-free cores
<= 24 at every position (complete for |M'| <= 24)."""
import time
from insert import *
t0 = time.time()
x = Kc('x')
ids = []
n = 0
for c, E in enum_terms(15, 2, 'top'):
    if 'j' not in consts_of(E): continue
    n += 1
    try:
        if all(normalize(A(inst(E, Us[k]), x), 2000) == x for k in range(3)):
            z = normalize(A(inst(E, Z()), x), 2000)
            ids.append((c, show(E), show(z)))
    except (Fuel, RecursionError):
        pass
print('j-terms', n, 'unary identities', len(ids), f'{time.time()-t0:.1f}s')
for i in ids: print('  ', i)
cores = [r'\s. s (\q. c) (s s s)', r'\s. s (\q. c) (s s c)', r'\s. s (\q. c) (s s (\a. a))']
hits = []; tot = 0
for src in cores:
    core = conv_top(rd.parse(src))
    for c, E in enum_terms(15, 2, 'top'):
        if 'j' not in consts_of(E): continue
        for path, w, d in positions(core):
            if d: continue   # j at M-depth 0: E sits at depth 0
            m = replace(core, path, A(E, w))
            if cost(m) > 39: continue
            tot += 1
            if laws(m) == 0: hits.append(show(m))
print('insertions into j-free cores', tot, 'hits', hits, f'{time.time()-t0:.1f}s')
