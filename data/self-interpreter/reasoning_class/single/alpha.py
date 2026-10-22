"""(alpha) j a non-last root operand: the unary cores \\s. X j E.. with w <= 37 found by
narrow.py (p = 1: 45,196 states; p = 2: 16,693; p >= 3: none), fillers expanded within the
slack, then every single-site insertion E W with |M| <= 39; both laws tested."""
import time
from insert import *
t0 = time.time()
T = [r'\s. (\u. s (\q. c)) j (s s _)', r'\s. (\u. s) j (\q. c) (s s _)',
     r'\s. (\u. s) j (\q. c) (s (\x. s s))']
tot = 0; hits = []; caps = 0
for src in T:
    tm = conv_top(rd.parse(src))
    b0 = cost(tm)
    for core, left in expand(tm, 39 - 8 - b0):
        if laws_u := None: pass
        cc = cost(core)
        emax = 39 - cc - 2
        for m in insert_sites(core, emax, 39):
            tot += 1
            r = laws(m)
            if r == 0: hits.append(show(m))
            elif r == 'cap': caps += 1
print('insertions', tot, 'hits', len(hits), 'caps', caps, f'{time.time()-t0:.1f}s')
for h in hits: print('  HIT', h)
