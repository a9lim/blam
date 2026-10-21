#!/usr/bin/env python3
"""Fixed constructions and residual checks; no candidate enumeration."""
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
from functools import lru_cache
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import time
sys.dont_write_bytecode = True
from check import HERE, ROOT, CANDIDATES, parse, lc, stats, probes, check

signal.alarm(110)
A = lambda f, a: ('A', f, a)
L = lambda b: ('L', b)
V = lambda i: ('V', i)
I = parse(r'\x.x')
S = parse(r'\x\y\z.x z (y z)')


@lru_cache(None)
def fv(t):
    if t[0] == 'v':
        return frozenset([t[1]])
    if t[0] == 'a':
        return fv(t[1]) | fv(t[2])
    return frozenset()


def abstract(x, t):
    if t == ('v', x):
        return ('i',)
    if x not in fv(t):
        return ('a', ('k',), t)
    assert t[0] == 'a'
    return ('a', ('a', ('s',), abstract(x, t[1])), abstract(x, t[2]))


def ski(t, env=(), serial=None):
    if serial is None:
        serial = [0]
    if t[0] == 'V':
        return ('v', env[t[1]])
    if t[0] == 'A':
        return ('a', ski(t[1], env, serial), ski(t[2], env, serial))
    x = serial[0]
    serial[0] += 1
    return abstract(x, ski(t[1], (x,) + env, serial))


def shared_s_body(t):
    if t[0] == 's':
        return V(0)
    if t[0] == 'k':
        return lc.TRUE
    if t[0] == 'i':
        return I
    assert t[0] == 'a'
    return A(shared_s_body(t[1]), shared_s_body(t[2]))


def structural(t):
    result = {'live': 0, 'nonlinear': 0, 'live_capturing': 0, 'width': 0}
    triples = set()
    serial = [0]
    def walk(t, env):
        if t[0] == 'V':
            c = Counter({env[t[1]]: 1})
        elif t[0] == 'A':
            c = walk(t[1], env) + walk(t[2], env)
        else:
            x = serial[0]
            serial[0] += 1
            c = walk(t[1], (x,) + env)
            n = c.pop(x, 0)
            result['live'] += n > 0
            result['nonlinear'] += n > 1
            result['live_capturing'] += n > 0 and bool(c)
        result['width'] = max(result['width'], len(c))
        if len(c) >= 3:
            triples.add(tuple(sorted(c)))
        return c
    assert not walk(t, ())
    result['distinct_width_ge3_variable_sets'] = len(triples)
    return result


def save(name, term):
    (HERE / (name + '.blc')).write_text(lc.enc(term) + '\n')
    (HERE / (name + '.lam')).write_text(lc.show(term) + '\n')


def retry_shared(record):
    """Retry only a capped deep case, preserving the original counts."""
    start = time.monotonic()
    term = parse((HERE / 'shared_s_remainder.lam').read_text())
    cases = {label: source for label, source, _ in probes()}
    retries = []
    for row in record['failures']:
        if row['verdict'] != 'capped-or-error':
            continue
        source = cases[row['label']]
        test = L(A(term, lc.bitlist(lc.enc(source), V(0))))
        run = subprocess.run([str(ROOT / 'target/release/blam'), 'normalize', lc.enc(test),
                              '--beta', '50000'], capture_output=True, text=True,
                             timeout=3, env={**os.environ, 'RAYON_NUM_THREADS': '1'})
        words = run.stdout.split()
        assert run.returncode == 0 and words and words[0] == '0010', (row, run.stdout)
        retries.append({'label': row['label'], 'beta_budget': 50000, 'verdict': 'pass'})
    record['initial_counts'] = record['counts'].copy()
    record['retries'] = retries
    record['retry_elapsed_s'] = time.monotonic() - start
    passed = {r['label'] for r in retries}
    record['failures'] = [r for r in record['failures'] if r['label'] not in passed]
    record['counts']['pass'] += len(retries)
    record['counts']['capped-or-error'] -= len(retries)
    return record


def main():
    started = time.monotonic()
    reference = parse(CANDIDATES['reference70'][0])
    shared = A(L(shared_s_body(ski(reference))), S)
    # This is a beta-exact SKI compilation, with one shared S. No eta rule.
    assert lc.nf(shared, [20000]) == lc.nf(reference, [20000])
    assert structural(shared)['nonlinear'] == 2
    assert structural(shared)['live_capturing'] == 2
    assert structural(shared)['distinct_width_ge3_variable_sets'] == 1
    ref584 = parse((ROOT / 'data/self-interpreter/machines/int584_two_nonlinear.lam').read_text())
    candidates = {
        name: parse(CANDIDATES[name][0]) for name in
        ['reference70', 'tower45', 'tower51', 'drop_second_skip_failed', 'int165_projection']
    }
    candidates['shared_s_remainder'] = shared
    candidates['int584_projection'] = A(ref584, lc.FALSE)
    # Two reasoning-derived ways of packing the pending D pair into one
    # argument. The tail-operand variant must lose that information when
    # the first child is a variable and erases its unary-skip operand.
    candidates['pack_tail65'] = parse(
        r'\s.(\d.s d d) (\b\r.r (b (\t\u\d.u d (t d (d d))) r))')
    candidates['pack_handler65'] = parse(
        r'\s.(\d.s d d) (\b\r.r (b (\t\u\d.u (t d (d d)) d) r))')
    extra = []
    for depth in [0, 1, 4, 12]:
        left = I
        for _ in range(depth):
            left = L(left)
        source = left
        for k in range(5):
            extra.append((f'left-depth-{depth}-pending-{k}', source, 'pending-combs'))
            source = A(source, I)
    # The near miss's exact K N failure uses an open right child under a
    # closing source lambda. Its closed-child residual is different.
    extra.append(('closed-wrap-right-variable', parse(r'\x.(\y.y) x'), 'pending-combs'))
    cases = probes() + extra
    records = []
    with ThreadPoolExecutor(max_workers=2) as pool:
        for name, term in candidates.items():
            if name not in CANDIDATES:
                save(name, term)
            checked = list(pool.map(check, [(*p, term) for p in cases]))
            counts = Counter(row['verdict'] for row in checked)
            record = {'name': name, 'bits': lc.size(term), 'LAX': stats(term),
                      'structural': structural(term), 'tested': len(checked),
                      'counts': dict(counts),
                      'failures': [c for c in checked if c['verdict'] != 'pass']}
            if name == 'shared_s_remainder' and counts.get('capped-or-error', 0):
                retry_shared(record)
            records.append(record)
            print(f'{name}: {lc.size(term)} bits {record["counts"]} tested={len(checked)} '
                  f'structure={record["structural"]}', flush=True)
    result = {'elapsed_s': time.monotonic() - started, 'threads': 2,
              'shared_s_normal_form_matches_rem70': True,
              'results': records}
    (HERE / 'residual-checks.json').write_text(json.dumps(result, indent=2) + '\n')
    print(f'elapsed={result["elapsed_s"]:.3f}s', flush=True)


if __name__ == '__main__':
    if sys.argv[1:] == ['--retry-shared']:
        result = json.loads((HERE / 'residual-checks.json').read_text())
        record = next(r for r in result['results'] if r['name'] == 'shared_s_remainder')
        retry_shared(record)
        (HERE / 'residual-checks.json').write_text(json.dumps(result, indent=2) + '\n')
        print(record['counts'], 'retry elapsed', record['retry_elapsed_s'])
    else:
        main()
