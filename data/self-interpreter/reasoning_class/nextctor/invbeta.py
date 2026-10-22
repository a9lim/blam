# Complete enumeration of single inverse-beta expansions of the canonical Q0:
# every site s (subterm M of Q0), every argument N liftable to s, every
# nonempty subset of N's occurrences in M: source = Q0[s := (\z. M[z/occ]) N].
# Contracting the new redex gives Q0 back by construction (asserted).
import itertools, sys
sys.path.insert(0, '.')
from chk import parse, size, free_leaves, strip, shift, beta
Q0 = strip(parse('\\b. p (\\f. b (c (\\e a. f (\\x y. x a (y e)))) (p (\\g. c (\\e. f e (g e)))))'))
def unshift(t, k, c=0):          # lower free indices >= c by k; None if a var in [c, c+k) occurs
    if t[0] == 'V':
        if t[1] < c: return t
        if t[1] < c + k: return None
        return ('V', t[1] - k)
    if t[0] == 'L':
        b = unshift(t[1], k, c + 1); return None if b is None else ('L', b)
    f = unshift(t[1], k, c); a = unshift(t[2], k, c)
    return None if f is None or a is None else ('A', f, a)
def positions(t, path=()):
    yield path, t
    if t[0] == 'L': yield from positions(t[1], path + (1,))
    elif t[0] == 'A':
        yield from positions(t[1], path + (1,)); yield from positions(t[2], path + (2,))
def get(t, p):
    for i in p: t = t[i]
    return t
def put(t, p, s):
    if not p: return s
    if t[0] == 'L': return ('L', put(t[1], p[1:], s))
    return ('A', put(t[1], p[1:], s), t[2]) if p[0] == 1 else ('A', t[1], put(t[2], p[1:], s))
def binders(p, t):               # number of lambdas on path p inside t
    n = 0
    for i in p:
        if t[0] == 'L': n += 1
        t = t[i]
    return n
def abstract(M, occs, N):        # M with occurrences (paths) replaced by var bound just outside M
    # result lives under one new binder: shift M by 1, replace each occ by var(depth)
    M1 = shift(1, 0, M)
    for p in occs:
        d = binders(p, M)
        M1 = put(M1, p, ('V', d))
    return M1
best = {}
count = 0
for sp, M in positions(Q0):
    sd = binders(sp, Q0)
    cands = {}
    for op, sub in positions(M):
        d = binders(op, M)
        N = unshift(sub, d)       # lifted to site depth
        if N is None: continue
        cands.setdefault(N, []).append(op)
    for N, occs in cands.items():
        # occurrences must not be nested inside each other's chosen set; filter subsets
        for r in range(1, len(occs) + 1):
            for sub in itertools.combinations(occs, r):
                if any(a != b and a[:len(b)] == b for a in sub for b in sub): continue
                src = put(Q0, sp, ('A', ('L', abstract(M, sub, N)), N))
                assert beta(('L', abstract(M, sub, N)), N) == M
                count += 1
                q = size(src); F = free_leaves(src)
                if F not in best or q < best[F][0]: best[F] = (q, src, len(sub))
print('constructions', count)
for F in sorted(best): print('F', F, 'min q', best[F][0], 'occurrences', best[F][2])
