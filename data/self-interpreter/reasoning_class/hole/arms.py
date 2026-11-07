"""Pinned check (hole lane, R1 step 2): j-free context-free arms T over
[s, c] at depth 1 with T[U_n] = c U_(n-1) N (n = 1..3), all shapes,
through cmax; for each, F_need = number of s/c leaves that are
unary-needed (Omega-replacement), and the zero value.  Aborts > 100k."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
cmax = int(sys.argv[1]); t0 = time.time()
ns = (1, 2, 3); Us = {n: U(n) for n in ns}
cUN = {n: normalize(A(A(Kc('c'), U(n-1)), Kc('N'))) for n in ns}
OM = A(L(A(V(0), V(0))), L(A(V(0), V(0))))
def ok(t):
    for n in ns:
        if safe_nf(inst(t, Us[n])) != cUN[n]: return False
    return True
def leaves(t, d=0, path=()):
    if t[0] == 'v':
        if t[1] >= d: yield path          # free: s (d) or c (d+1)
    elif t[0] == 'l': yield from leaves(t[1], d + 1, path + (0,))
    elif t[0] == 'a':
        yield from leaves(t[1], d, path + (0,)); yield from leaves(t[2], d, path + (1,))
def repl(t, path, s):
    if not path: return s
    if t[0] == 'l': return ('l', repl(t[1], path[1:], s))
    return ('a', repl(t[1], path[1:], s), t[2]) if path[0] == 0 else ('a', t[1], repl(t[2], path[1:], s))
tot = 0; hits = []
for c, t in enum_terms(cmax, 2, None):
    tot += 1
    if tot > 100000: print('ABORT over 100k at cost', c); break
    if ok(t):
        F = list(leaves(t)); Fn = sum(1 for p in F if not ok(repl(t, p, OM)))
        z = safe_nf(inst(t, Z()))
        hits.append((c, Fn, len(F), show(t), None if z is None else show(z)))
print(f'arms cmax={cmax}: {tot} terms, {len(hits)} arms, {time.time()-t0:.1f}s')
for h in sorted(hits): print('  cost %d F_need %d F %d :: %s   zero: %s' % h)
