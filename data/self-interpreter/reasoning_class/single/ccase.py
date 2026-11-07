"""(c) site s K j W below 46: complete check.
Handwritten reduction (NOTES §1): a (c) site with sigma <= 15 is exactly s K j W at
M-depth 0 (sigma = 15), the core M' = M[s K j W -> W] is a j-FREE unary core with
|M'| = |M| - 15 <= 24; j-free unary cores need >= 22 bits.  So: enumerate every j-free
term over [s, c] of cost 22..24 (jn's complete enum_terms, redexes included), keep the
unary cores (n = 1, 2, 3; capped terms certified non-cores or reported), and insert
s K j W at every subterm position W reachable from M's root through application nodes
only (lambda-depth 0); test the zero law.  Terms: 13,332 + 23,746 + 43,898 = 80,976."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
t0 = time.time()
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
zero_target = A(Kc('r'), Kc('j'))
s_ = V(0)
def sKj(w):  # s K j W at depth 0: s is index 0, K closed
    return A(A(A(s_, K), Kc('j')), w)
def depth0_positions(t, path=()):
    yield path, t
    if t[0] == 'a':
        yield from depth0_positions(t[1], path + (1,))
        yield from depth0_positions(t[2], path + (2,))
def replace(t, path, new):
    if not path: return new
    if path[0] == 1: return ('a', replace(t[1], path[1:], new), t[2])
    return ('a', t[1], replace(t[2], path[1:], new))
cores = []; caps = []; n = 0
for c, t in enum_terms(24, 2, None):
    if c < 22: continue
    n += 1
    ok = True
    for k in range(3):
        v = safe_nf(inst(t, Us[k]))
        if v is None:
            if not no_beta_eq_cert2(inst(t, Us[k]), cU[k]):
                caps.append(show(t))
            ok = False; break
        if v != cU[k]: ok = False; break
    if ok: cores.append((c, t))
print('terms', n, 'cores', len(cores), 'uncertified caps', len(caps), f'{time.time()-t0:.1f}s')
for c, t in cores: print('  CORE', c, show(t))
for h in caps: print('  CAP', h)
cand = 0; hits = []; zcaps = []
for c, t in cores:
    for path, w in depth0_positions(t):
        m = replace(t, path, sKj(w)); cand += 1
        z = safe_nf(inst(m, Z()))
        if z is None:
            if not no_beta_eq_cert2(inst(m, Z()), zero_target): zcaps.append(show(m))
            continue
        if z == zero_target: hits.append(show(m))
print('site insertions', cand, 'zero hits', len(hits), 'uncertified zero caps', len(zcaps), f'{time.time()-t0:.1f}s')
for h in hits: print('  HIT', h)
for h in zcaps: print('  ZCAP', h)
