"""Lemma ZD checks.
(1) ZD2: every j-term S over [s,c] with j at S-depth 0 (no lambda above j), cost <= 8:
    classify S[Z] x1..xk (k = 0..3, x rigid): alive iff some k gives a normal form that
    contains j and is neither j-headed nor c-headed (else S dies on zero in any context).
(2) ZD1: M' = s (\\q.c) (s s S0), S0 rigid (stands for any S); insert E W at every position
    W of M' outside S0, E every term of cost <= 8 in W's frame (sigma = |E| + 2 <= 10 covers
    17 - |S| for |S| >= 9); run the zero law with S0 rigid.  Report pairs where S0 reaches
    the head (only those depend on S)."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
t0 = time.time()
def hnf_head(t):
    try:
        v = normalize(t, 3000)
    except (Fuel, RecursionError):
        return None
    return v
def head_of(v):
    while v[0] == 'l': v = v[1]
    while v[0] == 'a': v = v[1]
    return v
# (1)
alive = []; dead = 0; caps = []
for c, S in enum_terms(8, 2, 'top'):
    if 'j' not in consts_of(S): continue
    Sz = inst(S, Z())
    ok = False; capped = False
    for k in range(4):
        t = Sz
        for i in range(k): t = A(t, Kc('x%d' % i))
        v = hnf_head(t)
        if v is None: capped = True; continue
        if 'j' not in consts_of(v): continue
        h = head_of(v)
        if h in (Kc('j'), Kc('c')): continue
        ok = True; break
    if ok: alive.append((c, show(S)))
    elif capped: caps.append((c, show(S)))
    else: dead += 1
print('ZD2: dead', dead, 'alive', len(alive), 'caps', len(caps))
for a in alive: print('  ALIVE', a)
for a in caps: print('  CAP', a)
# (2)
S0 = Kc('S0')
s = V(0); c = V(1)
Mp = A(A(s, L(V(2))), A(A(s, s), S0))
def positions(t, path=(), d=0):
    yield path, t, d
    if t[0] == 'a':
        yield from positions(t[1], path + (1,), d)
        yield from positions(t[2], path + (2,), d)
    elif t[0] == 'l':
        yield from positions(t[1], path + (0,), d + 1)
def replace(t, path, new):
    if not path: return new
    if path[0] == 0: return ('l', replace(t[1], path[1:], new))
    if path[0] == 1: return ('a', replace(t[1], path[1:], new), t[2])
    return ('a', t[1], replace(t[2], path[1:], new))
Eby = {}
for d in range(0, 3):
    Eby[d] = [t for cc, t in enum_terms(8, 2 + d, None)]
npairs = 0; s0head = []; zcaps = 0; heads = {}
for path, w, d in positions(Mp):
    if 'S0' in consts_of(w): continue
    for E in Eby[d]:
        m = replace(Mp, path, A(E, w)); npairs += 1
        try:
            v = normalize(inst(m, Z()), 3000)
        except (Fuel, RecursionError):
            zcaps += 1; continue
        if 'S0' not in consts_of(v): continue
        h = head_of(v)
        if h in (S0, Kc('r')): s0head.append(show(h) + ' :: ' + show(v) + ' :: ' + show(m))
        else: heads[show(h)] = heads.get(show(h), 0) + 1
print('ZD1: pairs', npairs, 'S0 at head or R S0', len(s0head), 'zero caps', zcaps, f'{time.time()-t0:.1f}s')
for x in s0head[:30]: print('  ', x)
print('heads of S0-containing zero nfs', heads)
