# Level statistics for inverse-beta expansions above Q0: minimum size
# increment per step, and a 3-step sweep restricted to sources with q <= 97
# at every level is NOT sound unless increments are >= 0, so we first
# measure increments, then run level 3 only from level-2 sources.
import sys, time
sys.path.insert(0, '.')
from chk import size, free_leaves
from invbeta import Q0
from invbeta2 import expansions
t0 = time.time()
one = list(expansions(Q0))
inc1 = min(size(x) - size(Q0) for x in one)
two = []
inc2 = 10**9
for Q1 in one:
    for Q2 in expansions(Q1):
        inc2 = min(inc2, size(Q2) - size(Q1)); two.append(Q2)
print('min increment level1', inc1, 'level2', inc2, 'n2', len(two), round(time.time()-t0,1))
best = {}; n3 = 0; inc3 = 10**9
for Q2 in two:
    s2 = size(Q2)
    for Q3 in expansions(Q2):
        n3 += 1; q = size(Q3); F = free_leaves(Q3)
        inc3 = min(inc3, q - s2)
        if F not in best or q < best[F]: best[F] = q
    if time.time() - t0 > 100: print('TIMEOUT partial'); break
print('n3', n3, 'min increment level3', inc3, 'secs', round(time.time()-t0,1))
for F in sorted(best): print('level3 F', F, 'min q', best[F])
