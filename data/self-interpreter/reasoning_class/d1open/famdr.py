r"""Family (a), D_r bodies: R = \s. s (\b. \x y. x A1) T  (frame of A1:
[y, x, b, s, c]).  zero: r A1z = r j  <=>  A1z = j;  unary: U_(n-1) A1u =
c U_(n-1) N.  w = 23 + |A1|_w + |T|_w (j in A1 taxed 12 + own).  All A1 with
|A1|_w <= 22 - |T|, all T <= TMAX (meanings).  Complete.
"""
import sys, time
from dbn import *
TMAX = int(sys.argv[1]) if len(sys.argv) > 1 else 9
BUD = 22
t0 = time.time()
tT = Kc('tT')
Us = [U(n) for n in (1, 2, 3)]
Um = [normalize(U(n - 1)) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
def instf(t, b, s, x, y):
    for v in (y, x, b, s, Kc('c')): t = subst(t, 0, v)
    return t
def csub(t, env):
    tag = t[0]
    if tag == 'k': return env.get(t[1], t)
    if tag == 'v': return t
    if tag == 'l': return ('l', csub(t[1], env))
    return ('a', csub(t[1], env), csub(t[2], env))
Tl = {}
for mode in (None, 'any'):
    for c, t in enum_terms(TMAX, 2, mode):
        ms = (safe_nf(inst(t, Z())),) + tuple(safe_nf(inst(t, Us[k])) for k in range(3))
        if None in ms: continue
        key = (ms, mode == 'any')
        if key not in Tl or Tl[key][0] > c: Tl[key] = (c, t)
Tl = sorted(((c, ms, hj, t) for (ms, hj), (c, t) in Tl.items()), key=lambda q: q[0])
hits = 0; caps = []; n = 0
for mode in (None, 'any'):
    base = 12 if mode else 0
    for c0, a in enum_terms(BUD - base, 5, mode):
        c = c0 + base; n += 1
        z = safe_nf(instf(a, K, Z(), Kc('r'), tT))
        if z is None: caps.append(('z', show(a, ['y', 'x', 'b']))); continue
        us = []
        for k in range(3):
            u = safe_nf(A(Um[k], instf(a, F, Us[k], Um[k], tT)))
            if u is None: caps.append(('u', show(a, ['y', 'x', 'b']))); break
            us.append(u)
        if len(us) < 3: continue
        for ct, ms, hj, t in Tl:
            if c + ct > BUD: break
            if hj == (mode == 'any'): continue          # exactly one j
            if safe_nf(csub(z, {'tT': ms[0]}), 2000) != Kc('j'): continue
            if all(safe_nf(csub(us[k], {'tT': ms[k + 1]}), 2000) == tgt[k] for k in range(3)):
                hits += 1; print('HIT w=%d' % (23 + c + ct), show(a, ['y', 'x', 'b']), '| T =', show(t))
print('A1 terms', n, 'hits', hits, 'caps', len(caps), f'{time.time()-t0:.1f}s')
for x in caps[:20]: print('  CAP', x)
