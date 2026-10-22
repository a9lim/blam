# Complete enumeration of all sources two non-erasing inverse-beta steps
# above the canonical Q0 (expand Q0 once, then expand the result once more,
# at any site, any liftable argument, any nonempty occurrence subset).
# Erasing expansions only add |N| + 4 and are omitted. Reports min q per F.
import itertools, sys, time
sys.path.insert(0, '.')
from chk import size, free_leaves, beta
from invbeta import Q0, positions, unshift, put, binders, abstract
def expansions(T):
    seen = set()
    for sp, M in positions(T):
        cands = {}
        for op, sub in positions(M):
            N = unshift(sub, binders(op, M))
            if N is None: continue
            cands.setdefault(N, []).append(op)
        for N, occs in cands.items():
            for r in range(1, len(occs) + 1):
                for sub in itertools.combinations(occs, r):
                    if any(a != b and a[:len(b)] == b for a in sub for b in sub): continue
                    src = put(T, sp, ('A', ('L', abstract(M, sub, N)), N))
                    if src not in seen:
                        seen.add(src); yield src
t0 = time.time()
one = list(expansions(Q0))
best = {}; n2 = 0
for Q1 in one:
    for Q2 in expansions(Q1):
        n2 += 1
        q = size(Q2); F = free_leaves(Q2)
        if F not in best or q < best[F][0]: best[F] = (q, Q2)
print('level1', len(one), 'level2', n2, 'secs', round(time.time() - t0, 1))
for F in sorted(best): print('F', F, 'min q', best[F][0])
