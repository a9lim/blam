"""Independently instantiate the written 39-bit templates; no term search.

The reducer and wire parser are separate from the construction/probe lane.
The two-wrapper construction uses multisets of original sites, rather than
the original generator's successive insertions.
"""
import sys
sys.dont_write_bytecode = True
from collections import Counter
from itertools import permutations, combinations_with_replacement
import json
import time
from run_checks import HERE, SRC, lam, app, wire, decode, shift, normal, free, occ, counts, live, width, chain

I = lam(0)
D = lam(app(0, 0))
D3 = [lam(app(app(0, 0), 0)), lam(app(0, app(0, 0)))]

def trees(xs):
    if len(xs) == 1:
        yield xs[0]
        return
    for k in range(1, len(xs)):
        for f in trees(xs[:k]):
            for a in trees(xs[k:]):
                yield app(f, a)

def contexts(xs):
    for p in set(permutations(xs)):
        yield from trees(p)

def lams(k, t):
    for _ in range(k): t = lam(t)
    return t

def nodes(t, p=()):
    yield p, t
    if not isinstance(t, int):
        for i, u in enumerate(t[1:], 1): yield from nodes(u, p + (i,))

def put(t, p, u):
    if not p: return u
    xs = list(t); xs[p[0]] = put(xs[p[0]], p[1:], u)
    return tuple(xs)

def free_leaves(t, d=0):
    if isinstance(t, int): return int(t >= d)
    if t[0] == 'l': return free_leaves(t[1], d + 1)
    return free_leaves(t[1], d) + free_leaves(t[2], d)

def boxes(t, sites, p=()):
    if not isinstance(t, int): t = (t[0], *(boxes(u, sites, p + (i,)) for i, u in enumerate(t[1:], 1)))
    for _ in range(sites[p]): t = lam(shift(t, 1))
    return t

def bases():
    rows = []
    for t in contexts([2, 1, 0]):
        rows += [('outer-before', lam(app(0, lams(2, t)))),
                 ('outer-between', lams(2, app(1, lam(t)))),
                 ('middle-before', lams(2, app(0, lam(t))))]
    for name, xs in [('outer-below', [2, 2, 1, 0]),
                     ('middle-below', [2, 1, 1, 0]), ('inner', [2, 1, 0, 0])]:
        rows.extend((name, lams(3, t)) for t in contexts(xs))
    assert len(rows) == len(set(t for _, t in rows)) == 216
    return rows

def main():
    start = time.monotonic()
    base = bases()
    n0 = [(tag, t) for tag, t in base if len(wire(app(D, t))) == 33]
    assert len(n0) == 84
    linear = [lams(3, t) for t in contexts([2, 1, 0])]
    groups = {'literal': {}, 'four': {}, 'five': {}}
    def add(part, group, t): groups[part].setdefault(group, []).append(t)
    for _, n in n0:
        for body in contexts([0, D, n]): add('literal', 'literal-contexts', lam(body))

    for t in contexts([2, 2, 1, 0]):
        add('four', '4,7,5:a-below+a-above', app(D, lam(app(0, lams(2, t)))))
        add('four', '4,7,5:a-below+b-above', app(D, lams(2, app(0, lam(t)))))
        for i, d in enumerate(D3): add('four', f'4,7,5:triple{i}', app(d, lams(3, t)))
    for t in contexts([2, 2, 1, 0, 0]): add('four', '4,7,5:a-below+c', app(D, lams(3, t)))
    for t in contexts([2, 1, 0]):
        for mid in contexts([1, 1, lam(t)]):
            if normal(mid): add('four', '4,7,5:a-between+a-between', app(D, lams(2, mid)))
    for t in contexts([2, 1, 1, 0]): add('four', '4,7,5:a-between+b-below', app(D, lams(2, app(1, lam(t)))))
    for t in contexts([2, 1, 1, 1, 0]): add('four', '4,7,5:b-below+b-below', app(D, lams(3, t)))

    one_wrapper_sites = Counter()
    for tag, n in base:
        for side, operand in [(1, D), (2, n)]:
            for p, u in nodes(operand):
                t = put(app(D, n), (side,) + p, lam(shift(u, 1)))
                if len(wire(t)) == 39 and normal(t[1]) and normal(t[2]):
                    add('four', f'5,6,7:{tag}:side{side}', t)
                    one_wrapper_sites[(tag, side, free_leaves(u))] += 1
    two_wrapper_sites = Counter()
    for tag, n in n0:
        e = app(D, n)
        sites = []
        for p, u in nodes(e):
            if not p or free_leaves(u) != 1: continue
            one = boxes(e, Counter({p: 1}))
            if normal(one[1]) and normal(one[2]): sites.append(p)
        two_wrapper_sites[(tag, len(sites))] += 1
        for pair in combinations_with_replacement(sites, 2):
            t = boxes(e, Counter(pair))
            assert normal(t[1]) and normal(t[2])
            add('four', '6,6,5:' + tag, t)
        add('four', '5,7,3:closed-wrapper', app(D3[0], lam(n)))

    for s in linear:
        for body in contexts([0, 0, s]):
            if normal(body): add('five', 'A:function-width', app(lam(body), D))
            add('five', 'C:nonlinear-ancestor', app(D, lam(body)))
        for p, u in nodes(s):
            add('five', 'C:Delta-left', app(D, put(s, p, app(D, u))))
            add('five', 'C:Delta-right', app(D, put(s, p, app(u, D))))
        add('five', 'D:two-arguments', app(app(D, s), D))
        add('five', 'D:two-arguments', app(app(D, D), s))
    for _, n in n0:
        for body in contexts([0, 0, I]):
            if normal(body): add('five', 'B:function-I', app(lam(body), n))
        add('five', 'C:affine-ancestor', app(D, lam(app(0, n))))
        for p, u in nodes(n):
            if isinstance(u, int) or u[0] != 'l':
                add('five', 'C:I-argument', app(D, put(n, p, app(u, I))))
        add('five', 'D:two-arguments', app(app(D, n), I))
        add('five', 'D:two-arguments', app(app(D, I), n))
    report = {}
    global_set = set()
    for part, gs in groups.items():
        terms = [t for ts in gs.values() for t in ts]
        ours = set(terms)
        assert len(terms) == len(ours)
        theirs = {decode(r['wire']) for r in json.loads((SRC / f'size39-{part}.json').read_text())['rows']}
        assert ours == theirs, (part, len(ours - theirs), len(theirs - ours))
        assert not global_set & ours; global_set.update(ours)
        for t in terms:
            assert len(wire(t)) == 39 and not free(t) and width(t) >= 3 and not chain(t)
            assert live(t) == (4 if part == 'four' else 5)
        report[part] = dict(count=len(terms), groups={g: len(ts) for g, ts in gs.items()},
            extras=0, missing=0)
    report['one_wrapper_sites'] = {str(k): v for k, v in one_wrapper_sites.items()}
    report['two_wrapper_site_profiles'] = {str(k): v for k, v in two_wrapper_sites.items()}
    report['seconds'] = time.monotonic() - start
    (HERE / 'layout-checks.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report, indent=2))

if __name__ == '__main__': main()
