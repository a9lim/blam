"""Read-only audit of the supplied fixed inventory; no candidate generation."""
import importlib.util
import json
import re
import sys
import time
from collections import Counter
from pathlib import Path

sys.dont_write_bytecode = True
ROOT = Path('/Users/a9lim/Work/blam')
SOURCE = ROOT / 'tmp/round3/floor'
HERE = Path(__file__).resolve().parent


def load(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


lc = load('audit_lc', ROOT / 'tools/self-interpreter/lc.py')
V = lambda n: ('V', n)
L = lambda b: ('L', b)
A = lambda f, a: ('A', f, a)


def lean(t):
    if t[0] == 'V':
        return f'(.var {t[1]})'
    if t[0] == 'L':
        return f'(.lam {lean(t[1])})'
    return f'(.app {lean(t[1])} {lean(t[2])})'


def decode(bits):
    t, end = lc.decode(bits)
    assert end == len(bits)
    return t


def normal(t):
    if t[0] == 'V':
        return True
    if t[0] == 'L':
        return normal(t[1])
    return t[1][0] != 'L' and normal(t[1]) and normal(t[2])


def head(t):
    while t[0] == 'A':
        t = t[1]
    return t


def stats(t):
    counts = dict(lambdas=0, leaves=0, x=0, cs=0, holes=0)
    uses = []
    depths = []

    def visit(t, binders):
        h = len(binders)
        if t[0] == 'V':
            counts['leaves'] += 1
            n = t[1]
            assert 0 <= n < h + 2
            if n == h + 1:
                counts['holes'] += 1
                depths.append(h)
            else:
                counts['x'] += n
                if n == h:
                    counts['cs'] += 1
                else:
                    uses[binders[n]] += 1
        elif t[0] == 'L':
            i = len(uses)
            uses.append(0)
            counts['lambdas'] += 1
            visit(t[1], [i] + binders)
        else:
            visit(t[1], binders)
            visit(t[2], binders)

    visit(t, [])
    assert counts['holes'] == 1
    counts['depth'] = depths[0]
    counts['live'] = sum(n > 0 for n in uses)
    counts['nonlinear'] = sum(n > 1 for n in uses)
    counts['weight'] = 2 * counts['lambdas'] + 4 * counts['leaves'] - 4 + counts['x'] + 4 * counts['depth']
    return counts


start = time.monotonic()
data = json.loads((SOURCE / 'reader29.json').read_text())
checked = (SOURCE / 'ReaderChecks.lean').read_text()
statements = re.findall(r'^theorem reader29_reject_(\d+) : (.*) :=$', checked, re.M)
assert [int(i) for i, _ in statements] == list(range(3484))
cases = Counter()
probes = Counter()
seen = set()
for i, row in enumerate(data['rows']):
    r, nf = decode(row['reader']), decode(row['nf'])
    assert r not in seen
    seen.add(r)
    s = stats(r)
    kind, l, v, xmax, d, f = row['case']
    assert kind == 'lambda' and r[0] == 'L' and head(r[1]) == V(0)
    assert (s['lambdas'], s['leaves'], s['depth'], s['cs']) == (l, v, d, f)
    assert s['x'] <= xmax and s['live'] >= 2 and s['nonlinear'] >= 1
    assert s['weight'] == row['weight'] <= 29
    assert normal(r) and normal(nf)
    assert row['probe'] in ('zero', 'one')
    if row['probe'] == 'zero':
        inp, want = lc.pair(lc.TRUE, V(3)), A(V(3), V(1))
    else:
        inp = lc.bitlist('10', V(2))
        want = A(A(V(0), lc.bitlist('0', V(2))), V(2))
    term = A(r, inp)
    assert statements[i][1] == f'¬ BetaJoin {lean(term)} {lean(want)}'
    proof = f'  reject_by_nf (normalSteps_sound (by decide : normalSteps {row["steps"]} {lean(term)} = some {lean(nf)}))\n    (by decide) (by decide) (by decide)'
    assert proof in checked
    assert nf != want and normal(want)
    assert lc.nf(term, [300]) == nf
    cases[tuple(row['case'])] += 1
    probes[row['probe']] += 1
assert len(seen) == data['count'] == 3484
assert dict(probes) == data['outcomes'] == {'zero': 3450, 'one': 34}
assert max(row['steps'] for row in data['rows']) == data['max_steps'] == 15

# Aggregate symbolic grammar counts only. Never call emit() or candidates().
grammar = load('audit_reader29', SOURCE / 'reader29.py')
aggregate = {}
for case in grammar.CASES:
    kind, l, v, b, d, f = case
    n = 0
    for x in range(b + 1):
        for (u, h, live, nl), k in grammar.states(l - 1, v, x, 1, 1, f, d).items():
            if h == 0 and live + int(u[0] > 0) >= 2 and nl + int(u[0] > 1) >= 1:
                n += k
    aggregate[tuple(case)] = n
assert aggregate == dict(cases)


def callback_body(src):
    tokens = re.findall(r'[()csxj]', src)
    pos = 0

    def parse():
        nonlocal pos
        token = tokens[pos]
        pos += 1
        if token != '(':
            return V({'x': 0, 's': 1, 'c': 2, 'j': 3}[token])
        f, a = parse(), parse()
        assert tokens[pos] == ')'
        pos += 1
        return A(f, a)

    t = parse()
    assert pos == len(tokens)
    return t


callbacks = json.loads((SOURCE / 'depth2-cases.json').read_text())
callback_lean = (SOURCE / 'Depth2Cases.lean').read_text()
callback_counts = Counter()
callback_seen = set()
labels = ['linear', 'binary', 'capture_c', 'capture_s', 'capture_c_binary']
multisets = ['xj', 'xxj', 'cxj', 'sxj', 'xxcj']
for i, row in enumerate(callbacks):
    k = labels.index(row['case'])
    body = callback_body(row['body'])
    assert Counter(re.findall('[csxj]', row['body'])) == Counter(multisets[k])
    assert (k, body) not in callback_seen
    callback_seen.add((k, body))
    term = A(L(A(V(0), L(body))), lc.pair(lc.TRUE, V(2)))
    nf = decode(row['nf'])
    assert normal(nf) and lc.nf(term, [100]) == nf
    theorem = f'theorem depth2_four_c_{i} : Betas {lean(term)} {lean(nf)} ∧ NFt {lean(nf)} ∧ callbackOutcome {k} {lean(nf)} :='
    assert theorem in callback_lean
    trace = f'normalSteps_sound (by decide : normalSteps {row["steps"]} {lean(term)} = some {lean(nf)})'
    assert trace in callback_lean
    callback_counts[row['case']] += 1
assert dict(callback_counts) == dict(zip(labels, [2, 6, 12, 12, 60]))
assert len(callbacks) == 92
assert max(row['steps'] for row in callbacks) == 8

result = dict(
    inventory_size=len(seen),
    rows=[dict(case=list(c), count=n) for c, n in cases.items()],
    outcomes=dict(probes),
    max_refutation_steps=15,
    symbolic_counts_match=True,
    lean_statements_and_traces_match=True,
    callback_counts=dict(callback_counts),
    callback_max_steps=8,
    seconds=round(time.monotonic() - start, 3),
)
(HERE / 'audit.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
