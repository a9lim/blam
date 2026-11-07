r"""Reverse check for the replacement E -> I (under-applied dispatch x A with x = F on unary:
F A ->beta I).  If a reader \s.M (w <= 45, j at M-depth 0, j not in E) has a subterm E with
|E| >= 12 such that M[E -> I] keeps U1,U2, then M' = M[E -> I] is a unary core with |M'| <= 31,
hence one of the expanded cores of cores37.txt (all R-ending paths + path R).  So: for every
expanded core, every position holding I, every j-free E of cost 12..(39 - |M'| + 4) in that
frame, test both laws on M = M'[I -> E]."""
import json, glob, time
from insert import *
from convany import conv_any
t0 = time.time()
files = sorted(glob.glob('path_*.json')) + ['beta1.json']
import sys
SMALL = {'I': (L(V(0)), 4), 'F': (L(L(V(0))), 6), 'K': (L(L(V(1))), 7)}
I_, SC = SMALL[sys.argv[1] if len(sys.argv) > 1 else 'I']
cores = []
for f in files:
    for lb, src in json.load(open(f))['sol']:
        tm = conv_any(src)
        for core, left in expand(tm, 31 - cost(tm)):
            if unary_ok(core): cores.append(core)
for src in [r'\s. (\u. s (\q. c) (s s u)) j', r'\s. (\u. s (\q. c) (s s s)) j', r'\s. (\u. s (\q. c)) j (s s _)',
            r'\s. (\u. s) j (\q. c) (s s _)', r'\s. (\u. s) j (\q. c) (s (\x. s s))']:
    tm = conv_top(rd.parse(src))
    for core, left in expand(tm, 31 - cost(tm)):
        if unary_ok(core): cores.append(core)
tot = 0; hits = []; caps = []
for core in cores:
    for path, w, d in positions(core):
        if w != I_: continue
        room = 39 - cost(core) + SC
        for E in terms_upto(room, d + 2):
            if cost(E) < SC + 8: continue
            m = replace(core, path, E)
            if cost(m) > 39: continue
            tot += 1
            r = laws(m)
            if r == 0: hits.append(show(m))
            elif r == 'cap' and not zero_cert_fail(m): caps.append(show(m))
print('cores', len(cores), 'replacements', tot, 'hits', len(hits), 'uncertified caps', len(caps), f'{time.time()-t0:.1f}s')
for h in hits + caps: print('  ', h)
