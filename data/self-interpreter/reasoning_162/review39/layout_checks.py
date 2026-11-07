"""Instantiate only the handwritten finite templates, without evaluating them.

This is a correspondence/count check, not an independent completeness proof.
"""
from collections import Counter
from functools import lru_cache
from itertools import permutations
import json
import time
from run_checks import HERE, SRC, lam, app, normal, shift, wire

@lru_cache(None)
def ordered_trees(xs):
    if len(xs) == 1: return frozenset(xs)
    return frozenset(app(f, a) for j in range(1, len(xs))
        for f in ordered_trees(xs[:j]) for a in ordered_trees(xs[j:]))

def bodies(xs):
    return {t for p in set(permutations(xs)) for t in ordered_trees(p) if normal(t)}

def chain_arguments(outer, middle, bottom):
    # Bottom sees a,b,c; the next two layers respectively see a,b and a.
    for t in bodies(tuple({'a':2, 'b':1, 'c':0}[x] for x in bottom)):
        for u in bodies(tuple({'a':1, 'b':0}[x] for x in middle) + (lam(t),)):
            for v in bodies(tuple(0 for x in outer) + (lam(u),)):
                yield lam(v)

def positions(t, p=()):
    yield p, t
    if isinstance(t, int): return
    if t[0] == 'l': yield from positions(t[1], p + (1,))
    else:
        yield from positions(t[1], p + (1,))
        yield from positions(t[2], p + (2,))

def replace(t, p, u):
    if not p: return u
    k, *q = p
    if t[0] == 'l': return lam(replace(t[1], q, u))
    return app(replace(t[1], q, u), t[2]) if k == 1 else app(t[1], replace(t[2], q, u))

start = time.monotonic()
delta = lam(app(0, 0))
d3 = [lam(app(app(0, 0), 0)), lam(app(0, app(0, 0)))]
four = [
    ('one_a_zero_a', 'a', 'a', 'abc'),
    ('one_a_zero_b', '', 'ab', 'abc'),
    ('one_a_zero_c', '', 'a', 'abcc'),
    ('one_b_zero_a', 'a', '', 'abbc'),
    ('one_b_zero_b', '', 'b', 'abbc'),
    ('one_b_zero_c', '', '', 'abbcc'),
]
generated = {}
def insert(family, t):
    s = wire(t)
    assert len(s) == 38 and s not in generated, (family, s)
    generated[s] = family

for family, x, y, z in four:
    for n in chain_arguments(x, y, z): insert(family, app(delta, n))
for i, d in enumerate(d3):
    for family, x, y, z in [('outer_between', '', 'a', 'abc'), ('middle_below', '', '', 'abbc')]:
        for n in chain_arguments(x, y, z): insert(f'triple{i}_{family}', app(d, n))
assert len(generated) == 828

bases = [('outer_before', 'a', '', 'abc'), ('outer_between', '', 'a', 'abc'),
         ('outer_below', '', '', 'aabc'), ('middle_before', '', 'b', 'abc'),
         ('middle_below', '', '', 'abbc'), ('inner', '', '', 'abcc')]
base_counts = Counter()
for family, x, y, z in bases:
    for n in chain_arguments(x, y, z):
        base_counts[family] += 1
        for which, operand in [('D', delta), ('N', n)]:
            for path, subterm in positions(operand):
                boxed = replace(operand, path, lam(shift(subterm, 1)))
                if not normal(boxed): continue
                e = app(boxed, n) if which == 'D' else app(delta, boxed)
                if len(wire(e)) != 38: continue
                if which == 'D':
                    site = {(): 'outer', (1,): 'body', (1,2): 'arg'}[path]
                    label = f'D_{site}_{family}'
                else: label = f'N_box_{family}'
                insert(label, e)

rows = json.loads((SRC / 'size38.json').read_text())['rows']
expected = {r['wire']: r['family'] for r in rows}
assert generated == expected
report = dict(base_counts=dict(base_counts), template_counts=dict(Counter(generated.values())),
              total=len(generated), four_lambdas=828, one_vacuous=len(generated)-828,
              exact_wire_family_match=True, seconds=time.monotonic()-start)
(HERE / 'layout-checks.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps(report, indent=2))
