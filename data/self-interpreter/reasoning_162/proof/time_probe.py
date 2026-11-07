import sys, time
sys.path.insert(0,'.')
from lab import *
SRC = open('/Users/a9lim/Work/blam/data/self-interpreter/machines/int162.lam').read()
E = parse(SRC)
print('size', size(E))
def probe_py(E, Msrc, fuel=200000):
    M = parse(Msrc)
    want = ('L', ('L', ('A', ('A', ('V', 1), ('L', shift(3, 0, M))), ('V', 0))))
    got = ('L', ('L', ('A', ('A', shift(2, 0, E), ('V', 1)), bits(code(M), ('V', 0)))))
    t=time.time(); g = nf(got, fuel); dt=time.time()-t
    return g == nf(want), dt
for Msrc in [r'\x. x', r'\x. x x', r'\x \y. x', r'(\x. x) (\x. x)', r'\x \y \z. x z (y z)']:
    print(Msrc, probe_py(E, Msrc))
