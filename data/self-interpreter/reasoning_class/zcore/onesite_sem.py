"""T1 for semantic sites: insert E W into core20/core22/core23 at every position,
E ANY term (all shapes) over the position's frame [q?, s, c] (+ j for the j-free
cores) that is a unary identity there (q := F, s := U_n; E y = y, n = 1..3),
with sigma = |E|_in-place + 2 in [SIGMIN, BUD - |core|].  Test both laws."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
from onesite import core20, core22, core23, cost, has_j, replace, is_reader, Us
BUD = int(sys.argv[1]) if len(sys.argv) > 1 else 39
SIGMIN = int(sys.argv[2]) if len(sys.argv) > 2 else 16
EMAX = int(sys.argv[3]) if len(sys.argv) > 3 else 99
ONLY = sys.argv[4] if len(sys.argv) > 4 else None
y = Kc('y')
def positions(t, path=(), frame=()):
    """frame: tuple of 'q' (handler bit) / 'o' (other binder), innermost first."""
    yield path, t, frame
    if t[0] == 'l':
        yield from positions(t[1], path + (0,), ('o',) + frame)
    elif t[0] == 'a':
        f, x = t[1], t[2]
        yield from positions(f, path + (0,), frame)
        k = len(frame)
        if f == ('v', k) and x[0] == 'l':
            yield path + (1,), x, frame
            yield from positions(x[1], path + (1, 0), ('q',) + frame)
        else:
            yield from positions(x, path + (1,), frame)
def unary_identity(E, frame):
    k = len(frame)
    for U_ in Us:
        t = E
        for b in frame:          # innermost first: index 0 first
            if b != 'q': return False   # non-handler binder: not value-determined
            t = subst(t, 0, F)
        t = inst(t, U_)
        if safe_nf(A(t, y)) != y: return False
    return True
t0 = time.time(); n = 0; idc = 0; hits = []
for name, core in (('core20', core20), ('core22', core22), ('core23', core23)):
    base = cost(core); jm = None if has_j(core) else 'any'
    room = BUD - base
    if room < SIGMIN or (ONLY and name != ONLY): continue
    for path, W, frame in positions(core):
        k = len(frame)
        for ce, E in enum_terms(min(room - 2, EMAX), k + 2, jm):
            sig = ce + (4 * k if (jm and has_j(E)) else 0) + 2
            if sig < SIGMIN or sig > room: continue
            n += 1
            if not unary_identity(E, frame): continue
            idc += 1
            M = replace(core, path, A(E, W))
            if is_reader(M): hits.append((base + sig, name, show(M)))
print('BUD', BUD, 'SIGMIN', SIGMIN, 'E-candidates', n, 'unary identities', idc, 'readers', len(hits), f'{time.time()-t0:.1f}s')
for h in hits[:30]: print(' ', h)
