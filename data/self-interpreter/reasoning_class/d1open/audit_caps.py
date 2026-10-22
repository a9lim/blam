r"""Audit of hole terms whose meaning was capped (excluded from skel pools).
For every frame/j-base used by the a, b, e skeleton runs, enumerate its pool
at the largest cap used and classify each capped term: on each probe where
it has no normal form within fuel, is it certified unsolvable (head cycle)?
A hole whose value is unsolvable on a probe must be erased there."""
import collections
from hskel import handlers
from count_lib import res, count_upto, count_upto_j
import skel
from dbn import *
B3 = ['bit', 's', 'c']; S2 = ['s', 'c']
sks = []; unh = []
for q in range(1, 22):
    for m in range(1, 22):
        As = ['A%d' % i for i in range(2, m + 1)]
        holes = {a: {'frame': B3, 'jbase': 4, 'max': 40} for a in As}
        handlers(B3, 4, ['bit', 'r'] + As + ['r'] + ['T%d' % i for i in range(1, q + 1)], 15 + 2 * q + 2 * m, holes, q, 'a', sks, unh, 0, 8, 8, 8)
for k in range(1, 22):
    for l in range(1, 22):
        Qs = ['Q%d' % i for i in range(2, l + 1)]; As = ['A%d' % i for i in range(2, k + 1)]
        holes = {x: {'frame': S2, 'jbase': 0, 'max': 40} for x in Qs + As}
        handlers(S2, 0, ['bit', 'r'] + Qs + ['bit', 'r'] + As, 10 + 2 * k + 2 * l, holes, 0, 'b', sks, unh, 0, 8, 8, 8)
for q in range(1, 22):
    handlers(B3, 4, ['r'] + ['T%d' % i for i in range(1, q + 1)], 12 + 2 * q, {}, q, 'e', sks, unh, 0, 8, 8, 8)
need = {}
from count_lib import est_skel
for sk in sks:
    if est_skel(sk) > 100000: continue
    bud = 45 - sk['overhead']; holes = sk['holes']; uh, zh = sk['uhead'], sk['zhead']; same = uh == zh
    others = [h for h in holes if h not in (uh, zh)]
    nmin = res(others + ([] if same else [zh]), holes)
    for h in holes:
        if h == uh and not same: continue          # unary heads are not pooled through mkpool
        if same and h == uh: cap = min(holes[h]['max'], bud - nmin)
        elif h == zh: cap = min(sk['zbound'], bud)
        else: cap = min(holes[h]['max'], bud - nmin)
        key = (tuple(holes[h]['frame']), holes[h].get('jbase', 0))
        need[key] = max(need.get(key, -1), cap)
print('distinct frames', len(need))
tot = collections.Counter(); bad = []
for (fr, jb), cap in sorted(need.items(), key=lambda kv: kv[1]):
    n = count_upto(cap, len(fr)) + count_upto_j(cap, len(fr), jb)
    assert n <= 100000, (fr, cap, n)
    for mode in (None, 'any'):
        b0 = jb if mode else 0
        for c0, t in enum_terms(cap - b0, len(fr), mode):
            for i in range(4):
                x = skel.inst_f(t, list(fr), i)
                if safe_nf(x) is None:
                    kind, _ = hnf_or_cycle(x)
                    tot[kind] += 1
                    if kind != 'cycle': bad.append((fr, show(t), i, kind))
print('capped probe instances by certificate:', dict(tot))
print('uncertified:', len(bad)); [print('  ', b) for b in bad[:20]]
