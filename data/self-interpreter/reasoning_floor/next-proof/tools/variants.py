#!/usr/bin/env python3
"""Build complete interpreters for the NEXT variants discussed, measure, run the
exact battery (2 threads) on each.  Writes v_*.lam-equivalent bit strings."""
import sys, json
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
from nt import *
import battery
def run(name, Nx):
    E = E_db(Nx)
    bits = lc.enc(E)
    ok, skip, bad = battery.check(E, False, 18, threads=2)
    line = f'{len(bits):5d} bits  ok={ok} skip={skip} fail={len(bad)}'
    print(f'{name:28s} |N|={size(Nx):3d}  {line}')
    return line
cell = lambda: L('zx', 'zy', A(V('zx'), V('arg'), A(V('zy'), V('args'))))
VABS = lambda e: L('args', 'arg', A(e, cell()))
LIFT = lambda e, e2: L('args', A(e, V('args'), A(e2, V('args'))))
K2 = lambda e: L('exp2', A(V('cont'), LIFT(e, V('exp2'))))
out = {}
out['165'] = run('165 (control)', N165)
# select-first: A = b KA KB  (m = 0)
Nsf = L('bit1', A(V('intL'), A(V('bit1'), L('exp', A(V('cont'), VABS(V('exp')))), L('exp', A(V('intL'), K2(V('exp')))))))
out['select_first'] = run('select-first (A-i, m=0)', Nsf)
# m = 2: A = \e \r. b (cont VABS r) (intL K2 r)
Nm2 = L('bit1', A(V('intL'), L('exp', 'r', A(V('bit1'), A(V('cont'), VABS(V('exp')), V('r')), A(V('intL'), K2(V('exp')), V('r'))))))
out['m2'] = run('A-i with m=2 (rest bound)', Nm2)
# double dispatch with shared heads: A = \e. b cont intL (b VABS K2)
Ndd = L('bit1', A(V('intL'), L('exp', A(V('bit1'), V('cont'), V('intL'), A(V('bit1'), VABS(V('exp')), K2(V('exp')))))))
out['double_dispatch'] = run('shared heads, 2nd dispatch', Ndd)
# A-c2 (continuation-headed A): \e \r. cont (b VABS (\z. e z (intL K r z))) (b r (intL F r))
Nc2 = L('bit1', A(V('intL'), L('exp', 'r', A(V('cont'),
        A(V('bit1'), VABS(V('exp')), L('z', A(V('exp'), V('z'), A(V('intL'), K, V('r'), V('z'))))),
        A(V('bit1'), V('r'), A(V('intL'), F, V('r')))))))
out['A_c2_lazy'] = run('A-c2: lazy 2nd parse', Nc2)
# eta-expanded APP continuation: \exp2 \r. cont LIFT r
Neta = L('bit1', A(V('intL'), L('exp', A(V('bit1'), A(V('cont'), VABS(V('exp'))),
        A(V('intL'), L('exp2', 'r', A(V('cont'), LIFT(V('exp'), V('exp2')), V('r'))))))))
out['eta_app_cont'] = run('eta-expanded APP continuation', Neta)
# curried cell (25): \zx. zx (\n. arg) (\r. r args)
Ncur = L('bit1', A(V('intL'), L('exp', A(V('bit1'),
        A(V('cont'), L('args', 'arg', A(V('exp'), L('zx', A(V('zx'), L('n', V('arg')), L('r', A(V('r'), V('args')))))))),
        A(V('intL'), K2(V('exp')))))))
out['curried_cell'] = run('curried cell (25)', Ncur)
json.dump(out, open('/Users/a9lim/Work/blam/tmp/overnight/next-proof/variants.json', 'w'), indent=1)
