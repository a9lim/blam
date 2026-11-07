"""T1 finite part: a reader body M with ONE syntactic site of sigma >= SIGMIN whose
deletion leaves a unary core M' of cost <= 23, i.e. M' in {core20, core22,
core23} (core23.py / core23free.py).  Re-insert one site of type (b) x A W
(x a handler binder above W) or (c) s K A W into each core, every position,
every arm A (all shapes, jn's enum_terms) within budget |M| <= BUD, and test
both laws (n = 1..3).  Type (a) s I W has sigma <= 11 here and is skipped
when SIGMIN > 11."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
BUD = int(sys.argv[1]) if len(sys.argv) > 1 else 39
SIGMIN = int(sys.argv[2]) if len(sys.argv) > 2 else 16
s0 = V(0); c1 = V(1); j = Kc('j')
core20 = A(A(s0, L(V(2))), A(A(s0, s0), j))
core22 = A(A(s0, L(V(2))), A(A(s0, s0), s0))
core23 = A(A(s0, L(V(2))), A(A(s0, s0), c1))
def cost(t, d=0):
    tag = t[0]
    if tag == 'v': return 2 + t[1]
    if tag == 'k': return 4 * d          # j: 4 per lambda above it inside M
    if tag == 'l': return 2 + cost(t[1], d + 1)
    return 2 + cost(t[1], d) + cost(t[2], d)
def has_j(t):
    tag = t[0]
    if tag == 'k': return True
    if tag == 'v': return False
    if tag == 'l': return has_j(t[1])
    return has_j(t[1]) or has_j(t[2])
def positions(t, path=(), k=0, handlers=()):
    """yield (path, subterm, k = binders above, handler binder depths)."""
    yield path, t, k, handlers
    if t[0] == 'l':
        yield from positions(t[1], path + (0,), k + 1, handlers)
    elif t[0] == 'a':
        f, x = t[1], t[2]
        yield from positions(f, path + (0,), k, handlers)
        # x is a handler if f is the stream variable (index k) and x is a lambda
        if f == ('v', k) and x[0] == 'l':
            yield path + (1,), x, k, handlers
            yield from positions(x[1], path + (1, 0), k + 1, handlers + (k + 1,))
        else:
            yield from positions(x, path + (1,), k, handlers)
def replace(t, path, new):
    if not path: return new
    if t[0] == 'l': return ('l', replace(t[1], path[1:], new))
    if path[0] == 0: return ('a', replace(t[1], path[1:], new), t[2])
    return ('a', t[1], replace(t[2], path[1:], new))
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
def is_reader(M):
    if safe_nf(inst(M, Z())) != rj: return False
    return all(safe_nf(inst(M, Us[i])) == cU[i] for i in range(3))
t0 = time.time(); n = 0; hits = []
for name, core in (('core20', core20), ('core22', core22), ('core23', core23)):
    base = cost(core); jm = None if has_j(core) else 'any'
    room = BUD - base               # sigma budget
    if room < SIGMIN: continue
    seen = set()
    for path, W, k, handlers in positions(core):
        # arm frame: k binders + s, c ; extra j tax 4k for j inside A
        heads = []
        for hd in handlers:          # binder introduced at depth hd-1 ... index at W = k - hd
            heads.append(('b', V(k - hd)))
        heads.append(('c', A(V(k), K)))
        for kind, Ehead in heads:
            hc = cost(Ehead, k)
            amax = room - 4 - hc     # sigma = |head| + |A| + 4
            if amax < 0: continue
            for ca, Aterm in enum_terms(amax, k + 2, jm):
                aj = 4 * k if (jm and has_j(Aterm)) else 0
                sig = hc + ca + aj + 4
                if sig < SIGMIN or sig > room: continue
                M = replace(core, path, A(A(Ehead, Aterm), W))
                key = show(M)
                if key in seen: continue
                seen.add(key); n += 1
                if is_reader(M): hits.append((base + sig, name, key))
print('BUD', BUD, 'SIGMIN', SIGMIN, 'candidates', n, 'readers', len(hits), f'{time.time()-t0:.1f}s')
for h in hits: print(' ', h)
