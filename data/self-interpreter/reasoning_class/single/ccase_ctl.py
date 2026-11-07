# positive control for ccase.py's insertion step: the 169's core s I (s (\q.c)) (s s s)
import sys; sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
exec(open('ccase.py').read().split('cores = []')[0].split('t0 = time.time()')[1])
s=V(0); c=V(1)
core = A(A(A(s, I), A(s, L(V(2)))), A(A(s, s), s))
print('core unary', [safe_nf(inst(core, Us[k])) == cU[k] for k in range(3)])
for path, w in depth0_positions(core):
    m = replace(core, path, sKj(w))
    z = safe_nf(inst(m, Z()))
    print(show(m), '| zero ok' if z == zero_target else '')
