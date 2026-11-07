"""Independent fixed-certificate audit; all output is confined to review39.

No candidate search or bounded normalization is performed. Stored reduction
paths are replayed, and the supplied literal Lean sources are rebuilt with -j2.
"""
import ast
from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
SRC = ROOT / 'tmp/round3/floor38'
OUT = HERE / 'lean'
OUT.mkdir(exist_ok=True)

def lam(b): return ('l', b)
def app(f, a): return ('a', f, a)

def wire(t):
    if isinstance(t, int): return '1' * (t + 1) + '0'
    if t[0] == 'l': return '00' + wire(t[1])
    return '01' + wire(t[1]) + wire(t[2])

def decode(s):
    def go(i):
        if s[i] == '1':
            j = i
            while s[j] == '1': j += 1
            return j - i - 1, j + 1
        if s[i + 1] == '0':
            b, j = go(i + 2)
            return lam(b), j
        f, j = go(i + 2)
        a, k = go(j)
        return app(f, a), k
    t, n = go(0)
    assert n == len(s)
    return t

def lean_term(s):
    ts = re.findall(r'\(|\)|\.var|\.lam|\.app|\d+', s)
    def go(i):
        if ts[i] == '(':
            t, j = go(i + 1)
            assert ts[j] == ')'
            return t, j + 1
        if ts[i] == '.var': return int(ts[i + 1]), i + 2
        if ts[i] == '.lam':
            t, j = go(i + 1)
            return lam(t), j
        assert ts[i] == '.app', ts[i]
        f, j = go(i + 1)
        a, k = go(j)
        return app(f, a), k
    t, n = go(0)
    assert n == len(ts), (n, len(ts))
    return t

def shift(t, k, c=0):
    if isinstance(t, int): return t + k if t >= c else t
    if t[0] == 'l': return lam(shift(t[1], k, c + 1))
    return app(shift(t[1], k, c), shift(t[2], k, c))

def beta(b, a, d=0):
    if isinstance(b, int):
        return shift(a, d) if b == d else b - 1 if b > d else b
    if b[0] == 'l': return lam(beta(b[1], a, d + 1))
    return app(beta(b[1], a, d), beta(b[2], a, d))

def reduce_at(t, p):
    if not p:
        assert not isinstance(t, int) and t[0] == 'a' and t[1][0] == 'l'
        return beta(t[1][1], t[2])
    d, *q = p
    if d == 'under':
        assert t[0] == 'l'
        return lam(reduce_at(t[1], q))
    assert t[0] == 'a'
    if d == 'left': return app(reduce_at(t[1], q), t[2])
    assert d == 'right'
    return app(t[1], reduce_at(t[2], q))

def replay(t, ps):
    for p in ps: t = reduce_at(t, p)
    return t

def hp(t):
    if isinstance(t, int): return None
    if t[0] == 'l':
        p = hp(t[1])
        return None if p is None else ['under'] + p
    if not isinstance(t[1], int) and t[1][0] == 'l': return []
    p = hp(t[1])
    return None if p is None else ['left'] + p

def head_steps(t, n):
    for _ in range(n):
        p = hp(t)
        assert p is not None
        t = reduce_at(t, p)
    return t

def normal(t):
    if isinstance(t, int): return True
    if t[0] == 'l': return normal(t[1])
    return (isinstance(t[1], int) or t[1][0] != 'l') and normal(t[1]) and normal(t[2])

def free(t, d=0):
    if isinstance(t, int): return {t - d} if t >= d else set()
    if t[0] == 'l': return free(t[1], d + 1)
    return free(t[1], d) | free(t[2], d)

def occ(t, d=0):
    if isinstance(t, int): return int(t == d)
    if t[0] == 'l': return occ(t[1], d + 1)
    return occ(t[1], d) + occ(t[2], d)

def nonlinear_paths(t, p=()):
    if isinstance(t, int): return []
    if t[0] == 'l':
        return ([p] if occ(t[1]) >= 2 else []) + nonlinear_paths(t[1], p + (0,))
    return nonlinear_paths(t[1], p + (1,)) + nonlinear_paths(t[2], p + (2,))

def chain(t):
    ps = nonlinear_paths(t)
    return all(p[:len(q)] == q or q[:len(p)] == p for p in ps for q in ps)

def spine(t):
    n = 0
    while not isinstance(t, int) and t[0] == 'l': n += 1; t = t[1]
    args = []
    while not isinstance(t, int) and t[0] == 'a': args.append(t[2]); t = t[1]
    return n, t, args[::-1]

FALSE = lam(lam(0))
TRUE = lam(lam(1))
def stream(bits, r):
    for bit in reversed(bits):
        r = lam(app(app(0, TRUE if bit == '0' else FALSE), shift(r, 1)))
    return r
def invocation(e): return lam(lam(app(app(e, 1), stream('0010', 0))))

def paths(s):
    return ast.literal_eval(re.sub(r'\.(under|left|right)', r'"\1"', s))

def w(t, marked=frozenset()):
    if isinstance(t, int): return t in marked
    return t[0] == 'l' and b(t[1], {0} | {x + 1 for x in marked})
def b(t, marked=frozenset()):
    if isinstance(t, int): return False
    if t[0] == 'l': return b(t[1], {x + 1 for x in marked})
    return b(t[1], marked) or (w(t[1], marked) and (w(t[2], marked) or b(t[2], marked)))

def audit():
    start = time.monotonic()
    rows = json.loads((SRC / 'size38.json').read_text())['rows']
    ledger = json.loads((SRC / 'size38-ledger.json').read_text())
    certificates = {r['id']: r for r in json.loads((SRC / 'size38-finite-checks.json').read_text())}
    residuals = {r['id']: r for r in json.loads((SRC / 'size38-residuals-excluded.json').read_text())}
    literal = {int(i): lean_term(s) for i, s in re.findall(r'^def e(\d+) : Term := (.*)$',
        (SRC / 'Size38Sources.lean').read_text(), re.M)}
    assert set(literal) == set(range(1206))
    assert len(set(literal.values())) == 1206
    for r, lr in zip(rows, ledger['rows'], strict=True):
        i = r['id']; t = literal[i]
        assert r['wire'] == lr['wire'] == wire(t) and len(wire(t)) == 38
        assert decode(r['wire']) == t and not free(t)
        assert t[0] == 'a' and normal(t[1]) and normal(t[2])
        assert lr['id'] == i and lr['family'] == r['family']

    ftext = (SRC / 'Size38Finite.lean').read_text()
    fs = re.findall(r'^theorem finite(\d+) : (.*?) := by decide$', ftext, re.M)
    assert len(fs) == len(certificates) == 1143
    adapter = ['import Size38Finite', 'set_option pp.fullNames true',
               'namespace Review39', 'open Blc Blc.SelfintSharp Blc.Round3Floor38.Size38Finite']
    positive = Counter(); steps = 0; max_payload_steps = 0
    for id_s, expr in fs:
        i = int(id_s); e = literal[i]; r = rows[i]; c = certificates[i]
        assert c['kind'] == r['kind']
        # Fully qualified terms guard against e448/e572 etc. in the parent namespace.
        explicit = re.sub(r'\be(\d+)\b', r'Blc.Round3Floor38.Size38.e\1', expr)
        adapter.append(f'example : {explicit} := Blc.Round3Floor38.Size38Finite.finite{i}')
        if expr.startswith('checkCycle '):
            m = re.fullmatch(r'checkCycle e(\d+) (\d+) (\d+) = true', expr)
            assert int(m[1]) == i
            p, q = int(m[2]), int(m[3])
            assert q > 0 and (p, q) == (c['prefix_steps'], c['period'])
            t = head_steps(invocation(e), p)
            assert head_steps(t, q) == t
            steps += p + q
        elif expr.startswith('checkPayload '):
            m = re.fullmatch(r'checkPayload e(\d+) (\[.*\]) ([01]) (\[.*\]) = true', expr)
            assert int(m[1]) == i
            ps, j, qs = paths(m[2]), int(m[3]), paths(m[4])
            assert ps == r['paths'] and j == r['payload'] and qs == c['payload_paths']
            t = replay(invocation(e), ps)
            assert wire(t) == r['final']
            l, h, args = spine(t)
            assert (l, h, len(args)) == (2, 1, 2)
            u = replay(args[j], qs)
            assert normal(u) and u != (FALSE if j == 0 else 0) and wire(u) == r['nf']
            steps += len(ps) + len(qs); max_payload_steps = max(max_payload_steps, len(qs))
        else:
            m = re.fullmatch(r'check e(\d+) (\[.*\]) \.(\w+) (true|false) = true', expr)
            assert int(m[1]) == i
            ps, k, identity = paths(m[2]), m[3], m[4] == 'true'
            assert ps == r['paths']
            assert identity == (k == 'identityHead')
            t = replay(invocation(e) if identity else e, ps)
            assert wire(t) == r['final'] and not free(t)
            l, h, args = spine(t)
            if k == 'three': assert l >= 3
            elif k == 'chain': assert chain(t)
            elif k == 'smaller': assert len(wire(t)) < 38
            elif k == 'sourceHead': assert isinstance(h, int) and (l != 2 or (h == 1 and len(args) != 2))
            elif k == 'identityHead': assert isinstance(h, int) and (l, h, len(args)) != (2, 1, 2)
            else: raise AssertionError(k)
            steps += len(ps)
        positive[r['kind']] += 1
    adapter.append('end Review39')
    (OUT / 'ExplicitBindings.lean').write_text('\n'.join(adapter) + '\n')

    rtext = (SRC / 'Size38Residuals.lean').read_text()
    ws = [int(i) for i in re.findall(r'^theorem w(\d+) : WGrammar38.B WGrammar38.empty e\d+ := by decide$', rtext, re.M)]
    assert len(ws) == 57 and all(b(literal[i]) for i in ws)
    assert set(residuals) == set(ws) | {723, 124, 129, 214, 224, 690}
    ids = [int(i) for i in re.findall(r'e(\d+)', re.search(r'^def initialResiduals : List Term := (.*)$', rtext, re.M)[1])]
    assert len(ids) == 63 and set(ids) == set(residuals)
    assert not set(certificates) & set(residuals)
    assert set(certificates) | set(residuals) == set(literal)
    assert set(residuals) == {r['id'] for r in rows if r['kind'].startswith('unresolved')}
    for lr in ledger['rows']:
        i = lr['id']
        if i in certificates:
            assert lr['proof']['certificate'] == certificates[i]
            assert lr['proof']['theorem'] == f'Blc.Round3Floor38.Size38Finite.finite{i}'
        else:
            assert lr['proof']['theorem'] == f'Blc.Round3Floor38.Size38.residual{i}'

    kept = [r for r in rows if r['id'] < 828 or r['family'] in {'D_arg_outer_below', 'N_box_outer_below'}
            or (r['family'] == 'N_box_outer_between' and r['insertion_path'] == ['under','under','right','under','right'])]
    removed = [r for r in rows if r not in kept]
    assert len(kept) == 1014 and len(removed) == 192 and all(r['id'] in certificates for r in removed)
    report = dict(raw=1206, finite=dict(positive), residuals=63, grammar=57, pump=1, payloads=5,
        replayed_beta_steps=steps, max_payload_steps=max_payload_steps,
        families=dict(Counter(r['family'] for r in rows)),
        preliminary=dict(Counter(r['kind'] for r in removed)), seconds=time.monotonic()-start)
    (HERE / 'independent-audit.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report, indent=2), flush=True)

def build():
    names = ['Proofs', 'Checks', 'RankRealization', 'Protected461', 'Residuals',
        'OneArgument38', 'Families38', 'Size38Sources', 'Size38Pumps', 'WGrammar38',
        'Payload38', 'Size38Residuals', 'Finite38Base', 'Size38Finite', 'AxiomAudit']
    hashes = {}
    for n in names:
        data = (SRC / (n + '.lean')).read_bytes()
        hashes[n] = hashlib.sha256(data).hexdigest()
        (OUT / (n + '.lean')).write_bytes(data)
    (HERE / 'source-hashes.json').write_text(json.dumps(hashes, indent=2) + '\n')
    tc = (ROOT / 'lean/lean-toolchain').read_text().strip().replace('/', '--').replace(':', '---')
    prefix = Path.home() / '.elan/toolchains' / tc
    env = os.environ.copy()
    env['LEAN_PATH'] = ':'.join(map(str, [OUT, ROOT / 'lean/.lake/build/lib/lean', prefix / 'lib/lean']))
    env['LEAN_NUM_THREADS'] = '2'
    rows = []; deadline = time.monotonic() + 110
    for n in names + ['ExplicitBindings']:
        start = time.monotonic()
        p = subprocess.run([str(prefix / 'bin/lean'), '-j2', '--root=' + str(OUT),
            str(OUT / (n + '.lean')), '-o', str(OUT / (n + '.olean'))],
            cwd=OUT, env=env, capture_output=True, text=True, timeout=max(0.1, deadline-start))
        (HERE / (n + '-build.log')).write_text(p.stdout + p.stderr)
        rows.append(dict(module=n, exit_code=p.returncode, seconds=time.monotonic()-start))
        print(n, p.returncode, round(rows[-1]['seconds'], 3), flush=True)
        if p.returncode: raise RuntimeError(p.stdout + p.stderr)
    (HERE / 'lean-rebuild.json').write_text(json.dumps(rows, indent=2) + '\n')
    for n, h in hashes.items():
        assert hashlib.sha256((SRC / (n + '.lean')).read_bytes()).hexdigest() == h

if __name__ == '__main__':
    audit()
    build()
