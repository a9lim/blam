#!/usr/bin/env python3
"""Dispatch-first NEXT (shape D1) measured."""
import sys, json
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
from nt import *
import battery
cell = lambda: L('zx', 'zy', A(V('zx'), V('arg'), A(V('zy'), V('args'))))
VABS = lambda e: L('args', 'arg', A(e, cell()))
LIFT = lambda e, e2: L('args', A(e, V('args'), A(e2, V('args'))))
K2 = lambda e: L('exp2', A(V('cont'), LIFT(e, V('exp2'))))
KA = L('exp', A(V('cont'), VABS(V('exp'))))
KB = L('exp', A(V('intL'), K2(V('exp'))))
Nd1 = L('bit1', A(V('bit1'), A(V('intL'), KA), A(V('intL'), KB)))
E = E_db(Nd1); bits = lc.enc(E)
ok, skip, bad = battery.check(E, False, 18, threads=2)
print(f'dispatch-first D1: |N|={size(Nd1)}  {len(bits)} bits  ok={ok} skip={skip} fail={len(bad)}')
