# Lambda-level check (lam.py: 1-indexed de Bruijn head reducer, copied from ../combs).
# Free c, j, r are bound by outer lambdas \c j r. (head reduction goes under them).
import sys, time
sys.path.insert(0, '.')
from lam import *
P = r'\c j r. '
Adef = r'(\u v. v (u v) c)'
Z = r'(\f. f (\x y. x) r)'
def a(n):                     # Lean index: a 0 = A, a (n+1) = A (a n)
    s = Adef
    for _ in range(n): s = '(' + Adef + ' ' + s + ')'
    return s
srcs = {1: r'(\x. x x (x (x x)))', 2: r'(\x. x (x x) (x x))', 3: r'(\x. x x (x x) x)'}
def probe(i): return parse(P + srcs[i] + ' ' + Adef + ' j ' + Z)
def X(m, rest): return parse(P + Adef + ' ' + a(m) + ' ' + a(m + 2) + ' ' + rest)
def is_X(t):
    """t = lam c j r. A (a m) (a (m+2)) rest...  ->  m or None"""
    body = t
    for _ in range(3):
        if body.k != 'l': return None
        body = body.a
    h, args = spine(body)
    A0 = parse(P + Adef).a.a.a
    if not eq(h, A0) or len(args) < 2: return None
    def chain(u):
        n = 0
        while not eq(u, A0):
            if u.k != 'a' or not eq(u.a, A0): return None
            u = u.b; n += 1
        return n
    m = chain(args[0]); m2 = chain(args[1])
    return m if m is not None and m2 == m + 2 else None
t0 = time.time()
# 1. base: S_i Z reaches X 0 (with its predicted stack) in the predicted number of head steps
base = {1: (1, 'j ' + Z), 2: (7, 'c (' + Adef + ' (' + a(1) + ' ' + a(1) + ')) c c j ' + Z),
        3: (3, 'c ' + a(0) + ' j ' + Z)}
for i, (n, rest) in base.items():
    k = run_to(probe(i), X(0, rest), 50)
    print('S%d Z ->h X_0 in' % i, k, 'steps (predicted %d)' % n); assert k == n
# 2. advance: X m rs reaches some X (m+1) rs' after exactly 4m+2 head steps, and no member earlier
for i in (1, 2, 3):
    t = probe(i); steps = 0; seen = []
    while steps < 3000:
        m = is_X(t)
        if m is not None: seen.append((m, steps))
        t2 = hstep(t)
        assert t2 is not None, 'hnf reached'
        t = t2; steps += 1
    gaps = [(seen[q][0], seen[q + 1][1] - seen[q][1]) for q in range(len(seen) - 1)]
    assert all(seen[q + 1][0] == seen[q][0] + 1 for q in range(len(seen) - 1))
    assert all(g == 4 * m + 2 for m, g in gaps), gaps
    h, args = spine(t.a.a.a)
    print('S%d Z: 3000 head steps, no hnf; family members m=%d..%d at gaps 4m+2; final stack %d, size %d'
          % (i, seen[0][0], seen[-1][0], len(args), t.sz))
print('time %.2fs' % (time.time() - t0))
