r"""The two (b) skeletons whose full-budget pools exceed 100k terms, rerun
with handwritten zero-head bounds:
 1. \s. s (s (\u. u X1 X2)): source dispatch u X1 X2 (u = 2 bits), deletion
    lemma (M' = s (s (\u. X2)) has one operand, not a core): |X1|_w <= 10.
 2. \s. s (s (\u. u X1) Q2): on unary s (\u. u X1) = F X1 r' = r' = s F, so
    replacing it by s F (10 bits) is a unary core with savings |X1|
    (M' = s (s F Q2), one operand, not a core): |X1|_w <= 16.
"""
from hskel import *
from skel import run
from count_lib import est_skel
S2 = ['s', 'c']
for (k, l, tag, zb) in ((1, 1, 'ph1 bit@0 l2', 10), (1, 2, 'ph1 bit@0 l1', 16)):
    out = []; unh = []
    Qs = ['Q%d' % i for i in range(2, l + 1)]; As = ['A%d' % i for i in range(2, k + 1)]
    holes = {x: {'frame': S2, 'jbase': 0, 'max': 40} for x in Qs + As}
    handlers(S2, 0, ['bit', 'r'] + Qs + ['bit', 'r'] + As, 10 + 2 * k + 2 * l, holes, 0, f'b k{k} l{l}', out, unh)
    for sk in out:
        if sk['name'].endswith(tag) and sk['name'].count('|') == 1:
            sk['zbound'] = zb
            e = est_skel(sk); print('est', e)
            if e > 100000: print('OVER CAP, not run'); continue
            h, us, nt = run(sk)
            print(sk['name'], 'zhead', sk['zhead'], 'pool terms', nt, 'hits', len(h))
