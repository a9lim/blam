"""Independent fixed-certificate audit; all output is confined to review40.

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
ROOT = HERE.parents[2]
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
def invocation(e): return app(app(e, 1), stream('0010', 0))

def paths(s):
    return ast.literal_eval(re.sub(r'\.(under|left|right)', r'"\1"', s))

def w(t, marked=frozenset()):
    if isinstance(t, int): return t in marked
    return t[0] == 'l' and b(t[1], {0} | {x + 1 for x in marked})
def b(t, marked=frozenset()):
    if isinstance(t, int): return False
    if t[0] == 'l': return b(t[1], {x + 1 for x in marked})
    return b(t[1], marked) or (w(t[1], marked) and (w(t[2], marked) or b(t[2], marked)))

def counts(t):
    if isinstance(t, int): return (0, 1, t)
    if t[0] == 'l':
        l, v, x = counts(t[1]); return (l + 1, v, x)
    return tuple(x + y for x, y in zip(counts(t[1]), counts(t[2])))

def live(t):
    if isinstance(t, int): return 0
    if t[0] == 'l': return int(occ(t[1]) > 0) + live(t[1])
    return live(t[1]) + live(t[2])

def width(t):
    if isinstance(t, int): return 1
    return max(len(free(t)), *(width(u) for u in t[1:]))

def audit():
    start = time.monotonic()
    ledger = json.loads((SRC / 'size39-ledger.json').read_text())
    positives = {(r['part'], r['id']): r for r in json.loads((SRC / 'size39-positive-checks.json').read_text())}
    residuals = {(r['part'], r['id']): r for r in json.loads((SRC / 'size39-residuals-excluded.json').read_text())}
    assert len(positives) == 4663 and len(residuals) == 9
    assert not positives.keys() & residuals.keys()
    lrows = {(r['part'], r['id']): r for r in ledger['rows']}
    all_wires = set(); all_keys = set(); report = {}; literal_all = {}
    adapters = ['import Finite39Literal', 'import Finite39Four', 'import Finite39Five',
                'import Residuals39', 'namespace Review40',
                'open Blc Blc.SelfintSharp Blc.Round3Floor38.Size39Finite',
                'set_option maxRecDepth 100000', 'set_option maxHeartbeats 20000000']
    total_steps = 0; max_payload_steps = 0
    for part, want in [('literal', 1008), ('four', 2248), ('five', 1416)]:
        pn = part.title()
        rows = json.loads((SRC / f'size39-{part}.json').read_text())['rows']
        assert len(rows) == want and [r['id'] for r in rows] == list(range(want))
        src = (SRC / f'Sources39{pn}.lean').read_text()
        terms = {int(i): lean_term(s) for i, s in re.findall(r'^def e(\d+) : Term := (.*)$', src, re.M)}
        assert set(terms) == set(range(want))
        literal_all[part] = terms
        triples = Counter(); kinds = Counter(); flags = Counter()
        for r in rows:
            i = r['id']; key = (part, i); e = terms[i]; all_keys.add(key)
            assert wire(e) == r['wire'] == lrows[key]['wire']
            assert lrows[key]['family'] == r['family']
            assert lrows[key]['proof'] == (positives[key] if key in positives else residuals[key])
            assert r['wire'] not in all_wires; all_wires.add(r['wire'])
            assert not free(e) and len(wire(e)) == 39
            assert width(e) >= 3 and not chain(e)
            assert live(e) == (4 if part == 'four' else 5)
            assert e[0] == ('l' if part == 'literal' else 'a')
            if part == 'four': assert normal(e[1]) and normal(e[2])
            triples[counts(e)] += 1
        ftext = (SRC / f'Finite39{pn}.lean').read_text()
        predicates = re.findall(r'^theorem positive(\d+) : (check(?:Payload)? .*?) := by decide$', ftext, re.M)
        full = re.findall(r'^theorem positive(\d+) : ¬ IsSelfInterpreter e(\d+) :=', ftext, re.M)
        pred_ids = {int(i) for i, _ in predicates}; full_ids = {int(i) for i, _ in full}
        assert not pred_ids & full_ids
        assert pred_ids | full_ids == {i for p, i in positives if p == part}
        for ids, claim in predicates:
            i = int(ids); key = (part, i); e = terms[i]; r = rows[i]; cert = positives[key]
            explicit = re.sub(r'\be(\d+)\b', fr'Blc.Round3Floor38.Size39{pn}.e\1', claim)
            adapters.append(f'example : {explicit} := Blc.Round3Floor38.Size39Finite.{pn}.positive{i}')
            assert cert['strength'] == 'certificate_predicate'
            if claim.startswith('checkPayload'):
                m = re.fullmatch(r'checkPayload e(\d+) (\[.*\]) ([01]) (\[.*\]) = true', claim)
                assert m and int(m[1]) == i
                ps, j, qs = paths(m[2]), int(m[3]), paths(m[4])
                assert ps == r['paths'] and j == r['payload'] and qs == cert['payload_paths']
                t = replay(invocation(e), ps)
                assert wire(t) == r['final']
                l, h, args = spine(t); assert (l, h, len(args)) == (0, 1, 2)
                u = replay(args[j], qs)
                assert normal(u) and u != (FALSE if j == 0 else 0) and wire(u) == r['nf']
                total_steps += len(ps) + len(qs); max_payload_steps = max(max_payload_steps, len(qs))
            else:
                m = re.fullmatch(r'check e(\d+) (\[.*\]) \.(\w+) (true|false) = true', claim)
                assert m and int(m[1]) == i
                ps, k, identity = paths(m[2]), m[3], m[4] == 'true'
                assert ps == r['paths'] and identity == (k == 'identityHead')
                flags[(k, identity)] += 1
                t = replay(invocation(e) if identity else e, ps)
                assert wire(t) == r['final']
                if not identity: assert not free(t)
                else: assert free(t) <= {0, 1}
                l, h, args = spine(t)
                if k == 'three': assert l >= 3
                elif k == 'chain': assert chain(t)
                elif k == 'smaller': assert len(wire(t)) < 39
                elif k == 'sourceHead': assert isinstance(h, int) and (l != 2 or (h == 1 and len(args) != 2))
                elif k == 'identityHead': assert isinstance(h, int) and (l, h, len(args)) != (0, 1, 2)
                else: raise AssertionError(k)
                total_steps += len(ps)
            kinds[r['kind']] += 1
        for ids, termid in full:
            i = int(ids); assert i == int(termid)
            key = (part, i); r = rows[i]; cert = positives[key]; e = terms[i]
            assert cert['strength'] == 'complete_not_IsSelfInterpreter'
            adapters.append(f'example : ¬ Blc.IsSelfInterpreter Blc.Round3Floor38.Size39{pn}.e{i} := Blc.Round3Floor38.Size39Finite.{pn}.positive{i}')
            if r['kind'] == 'W_grammar': assert b(e)
            elif r['kind'] in ['W_grammar_reduct', 'W_identity_reduct']:
                ident = r['kind'] == 'W_identity_reduct'
                t = replay(invocation(e) if ident else e, r['paths'])
                assert wire(t) == r['final'] and b(t)
                total_steps += len(r['paths'])
            elif r['kind'] == 'identity_cycle':
                p, q = cert['prefix_steps'], cert['period']
                assert q > 0 and p == r['prefix'] and p + q == len(r['paths'])
                t = head_steps(invocation(e), p)
                assert wire(t) == r['final'] and head_steps(t, q) == t
                total_steps += p + q
            else: raise AssertionError(r['kind'])
            kinds[r['kind']] += 1
        report[part] = dict(layouts=want, triples={str(k): v for k, v in triples.items()},
            kinds=dict(kinds), predicate_flags={str(k): v for k, v in flags.items()},
            finite=len(predicates), full_before_residuals=len(full))
    assert all_keys == positives.keys() | residuals.keys() == lrows.keys()
    assert len(all_wires) == 4672
    rtext = (SRC / 'Residuals39.lean').read_text()
    terms_in_collected = re.findall(r'Size39(Literal|Four|Five)\.e(\d+)',
        re.search(r'^def initialResiduals : List Term := (.*)$', rtext, re.M)[1])
    assert {(p.lower(), int(i)) for p, i in terms_in_collected} == residuals.keys()
    for (part, i), r in residuals.items():
        adapters.append(f'example : ¬ Blc.IsSelfInterpreter Blc.Round3Floor38.Size39{part.title()}.e{i} := Blc.Round3Floor38.Size39Residuals.excluded{part}{i}')
    adapters.append('end Review40')
    (OUT / 'ExplicitBindings.lean').write_text('\n'.join(adapters) + '\n')
    report.update(total_layouts=4672, finite=sum(r['finite'] for r in report.values()),
        full=158 + len(residuals), replayed_beta_steps=total_steps, max_payload_steps=max_payload_steps,
        residuals=sorted([f'{p}:{i}' for p, i in residuals]), seconds=time.monotonic() - start)
    (HERE / 'independent-audit.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report, indent=2))

if __name__ == '__main__':
    audit()

