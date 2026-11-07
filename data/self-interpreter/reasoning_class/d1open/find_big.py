import sys
from hskel import *
import skel
B3 = ['bit', 's', 'c']; S2 = ['s', 'c']
out = []; unh = []
for k in range(1, 22):
    for l in range(1, 22):
        Qs = ['Q%d' % i for i in range(2, l + 1)]; As = ['A%d' % i for i in range(2, k + 1)]
        holes = {x: {'frame': S2, 'jbase': 0, 'max': 40} for x in Qs + As}
        handlers(S2, 0, ['bit', 'r'] + Qs + ['bit', 'r'] + As, 10 + 2 * k + 2 * l, holes, 0, f'b k{k} l{l}', out, unh)
# estimate pool sizes cheaply: Y pool + Z pool + other pools by counting terms
from count_lib import count_upto
for sk in out:
    bud = 45 - sk['overhead']; holes = sk['holes']
    nmin = 2 * len([h for h in holes if h not in (sk['uhead'], sk['zhead'])]) + 2
    est = 0
    for h in holes:
        fr = len(holes[h]['frame'])
        if h == sk['uhead']: cap = bud - nmin + (2 if sk['uhead'] == sk['zhead'] else 0)
        elif h == sk['zhead']: cap = bud
        else: cap = bud - nmin
        est += count_upto(cap, fr)
    if est > 90000: print(est, sk['name'], sk['zhead'], sk['uhead'], bud)
