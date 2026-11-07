r"""Recheck specific unresolved c-containing self-application terms with big fuel.
Builds each term by matching show() strings from the enumerator at the given cost."""
import sys, ast, signal, time
from dbn import *
import dbn
dbn.SIZE_CAP = 100000
class TO(Exception): pass
def h(*a): raise TO()
signal.signal(signal.SIGALRM, h)
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
want = {}
for f, mode in [('d24.log', None), ('d26.log', None), ('d27.log', None), ('dj29.log', 'any')]:
    for l in open(f):
        if l.startswith('  UNC') or l.startswith('  TO'):
            c, s = ast.literal_eval(l.strip().split(' ', 1)[1])[:2]
            toks = s.replace('(', ' ').replace(')', ' ').split()
            if 'c' in toks:
                want[(c, s)] = mode
print('terms to recheck', len(want))
found = {}
for mode in (None, 'any'):
    costs = sorted(c for (c, s), m in want.items() if m == mode)
    if not costs: continue
    for c, a in enum_terms(max(costs), 2, mode):
        if c in costs and (c, show(a)) in want: found[(c, show(a))] = a
for key, a in found.items():
    t = inst(a, Zs)
    jout = want[key] is None
    b = A(A(t, t), Kc('j')) if jout else A(t, t)
    signal.setitimer(signal.ITIMER_REAL, 3)
    try:
        z = safe_nf(b, 50000); res = 'cap' if z is None else ('r j!' if z == rj else 'nf!=rj')
        if z == rj:
            us = []
            for k in range(3):
                tu = inst(a, Us[k]); bu = A(A(tu, tu), Kc('j')) if jout else A(tu, tu)
                us.append(safe_nf(bu, 50000) == cU[k])
            res += ' unary ' + str(us)
    except TO:
        res = 'timeout'
    finally:
        signal.setitimer(signal.ITIMER_REAL, 0)
    print(key, res)
