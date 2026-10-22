"""Check unary wrapper law without imposing any zero-output classification."""
import sys
sys.dont_write_bytecode = True
import runpy
sys.argv = ['r1wrap.py', '0']
m = runpy.run_path('tmp/round4/hole/r1wrap.py')
import dbn as d
X = d.Kc('x')
J = d.Kc('jj')
count = caps = hits = omitted = 0
for cost in range(19):
    for t in m['T'](cost, 0, 1):
        count += 1
        assert count <= 100000
        good = True
        for n in (1, 2, 3):
            v = d.safe_nf(d.A(d.inst(t, d.U(n)), J))
            if v is None:
                caps += 1
                print('CAP', cost, n, d.show(t))
            if v != X:
                good = False
                break
        if not good:
            continue
        hits += 1
        z = d.safe_nf(d.A(d.inst(t, d.Z()), J))
        if z not in m['zt']:
            omitted += 1
            print('OMITTED', cost, d.show(t), 'ZERO', None if z is None else d.show(z))
print('TOTAL', count, 'CAPS', caps, 'UNARY_HITS', hits, 'OMITTED', omitted)
