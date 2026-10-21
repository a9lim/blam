#!/usr/bin/env python3
"""Fixed, reasoning-derived remainder candidates; no candidate enumeration.

Every checked input is closed as a lambda term by binding the rigid suffix n.
The encoded source is not evaluated, so divergent sources have no skip case.
All writes stay beside this script. At most two blam children run together.
"""
from concurrent.futures import ThreadPoolExecutor
from functools import lru_cache
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.dont_write_bytecode = True
sys.path[:0] = [str(ROOT / 'tools'), str(ROOT / 'tools/self-interpreter')]
import blcc
import lc

def parse(src):
    src = blcc.strip_comments(src)
    p = blcc.P(src)
    term = blcc.to_db(blcc.p_lc(p))
    p.ws()
    assert p.i == len(src)
    return term

@lru_cache(None)
def sources(n, depth=0):
    out = []
    if n >= 2 and n - 2 < depth:
        out.append(('V', n - 2))
    if n >= 4:
        out.extend(('L', b) for b in sources(n - 2, depth + 1))
        for i in range(2, n - 3):
            out.extend(('A', f, a) for f in sources(i, depth)
                       for a in sources(n - 2 - i, depth))
    return tuple(out)

def bind(n, t):
    for _ in range(n):
        t = ('L', t)
    return t

def probes():
    cases = [('closed-' + lc.enc(t), t, 'closed16')
             for n in range(4, 17) for t in sources(n)]
    omega = parse(r'(\x.x x) (\x.x x)')
    ident = parse(r'\x.x')
    extras = [('Omega', omega), ('lambda-Omega', ('L', omega)),
              ('Omega-I', ('A', omega, ident)), ('I-Omega', ('A', ident, omega)),
              ('deep-16', bind(16, ('V', 15))),
              ('deep-40', bind(40, ('V', 39))),
              ('tower-48', bind(48, ident)),
              ('deep-app', bind(16, ('A', ('V', 15), ('V', 0))))]
    cases.extend((label, t, 'closed-extra') for label, t in extras)
    cases.extend(('open-var-' + str(i + 1), ('V', i), 'open-extra')
                 for i in [0, 1, 4, 15, 39])
    cases.extend([('open-app', parse(r'\x.x'), 'open-extra')])
    cases[-1] = ('open-app', ('A', ('V', 4), ('L', ('V', 2))), 'open-extra')
    return cases

Q = r'\t\u\d.t u (u d d) d d'
D = rf'\b\r.r (b ({Q}) r)'
CANDIDATES = {
    'reference70': (rf'\s.(\d.s d d) ({D})', 'all sources'),
    'floated71': (rf'(\d\s.s d d) ({D})', 'all sources'),
    'diagonal63_failed': (rf'(\d.d d) ({D})', 'hypothesis'),
    'triple67_capped': (rf'(\d.d d d) ({D})', 'hypothesis'),
    'right_diagonal67': (rf'(\d.d (d d)) ({D})', 'hypothesis'),
    'partial_diagonal69': (rf'\s.(\x.x x) (s ({D}))', 'hypothesis'),
    'drop_second_skip_failed':
        (r'\s.(\d.s d d) (\b\r.r (b (\t\u\d.t u (u d) d d) r))', 'hypothesis'),
    'unary_only': (r'\s.s s s', 'variable sources only'),
    'zero_tower_only': (r'(\x.x x) (\x\s.s (\b\r.b (r (\t\u.x x u)) (r r r)))',
                        'lambda towers ending in a variable only'),
    'tower45': (r'\s.(\d.s d d) (\b\r\d.r (b d r) d)',
                'all zero prefixes followed by a unary variable code; not applications'),
    'tower51': (r'\s.(\d.s d d) (\b\r.r (b (\t\u\d.u d d) r))',
                'lambda towers ending in a variable only; not applications'),
    'fixedpoint_direct':
        (r'(\x.x x) (\x.(\p\s.s (\b\r.b (r (\t\u.p (t u (p u)))) (r r r))) (x x))',
         'all sources'),
    'fixedpoint_select_after':
        (r'(\x.x x) (\x.(\p\s.s (\b\r.b (r (\t\u.t (p u) (p (p u)))) (r r r))) (x x))',
         'all sources'),
    'int165_projection':
        ('(' + (ROOT / 'data/self-interpreter/machines/int165.lam').read_text()
         + r') (\v\r.r)', 'closed sources (the internal parser also covers open syntax)'),
}

def stats(t):
    if t[0] == 'V':
        return (0, 0, t[1])
    if t[0] == 'L':
        l, a, x = stats(t[1])
        return l + 1, a, x
    x, y = stats(t[1]), stats(t[2])
    return x[0] + y[0], x[1] + y[1] + 1, x[2] + y[2]

def check(probe):
    label, m, group, r = probe
    term = ('L', ('A', r, lc.bitlist(lc.enc(m), ('V', 0))))
    try:
        run = subprocess.run([str(ROOT / 'target/release/blam'), 'normalize',
                              lc.enc(term), '--beta', '12000'],
                             capture_output=True, text=True, timeout=3,
                             env={**os.environ, 'RAYON_NUM_THREADS': '1'})
    except subprocess.TimeoutExpired:
        return {'label': label, 'group': group, 'verdict': 'timeout'}
    words = run.stdout.split()
    if run.returncode or not words or not set(words[0]) <= {'0', '1'}:
        return {'label': label, 'group': group, 'verdict': 'capped-or-error',
                'returncode': run.returncode, 'stdout': run.stdout[:200],
                'stderr': run.stderr[:200]}
    return {'label': label, 'group': group,
            'verdict': 'pass' if words[0] == '0010' else 'fail',
            **({} if words[0] == '0010' else {'normal_form': words[0][:500]})}

def main():
    signal.alarm(110)
    start = time.monotonic()
    all_probes = probes()
    wanted = sys.argv[1:] or list(CANDIDATES)
    results = []
    with ThreadPoolExecutor(max_workers=2) as pool:
        for name in wanted:
            src, contract = CANDIDATES[name]
            t = parse(src)
            (HERE / (name + '.lam')).write_text(src + '\n')
            (HERE / (name + '.blc')).write_text(lc.enc(t) + '\n')
            run_probes = all_probes
            checked = list(pool.map(check, [(*p, t) for p in run_probes]))
            counts = {v: sum(c['verdict'] == v for c in checked)
                      for v in ['pass', 'fail', 'capped-or-error', 'timeout']}
            record = {'name': name, 'bits': lc.size(t), 'LAX': stats(t),
                      'intended_contract': contract, 'counts': counts,
                      'tested': len(checked), 'groups': {},
                      'failures': [c for c in checked if c['verdict'] != 'pass']}
            for group in ['closed16', 'closed-extra', 'open-extra']:
                relevant = [c for c in checked if c['group'] == group]
                record['groups'][group] = {v: sum(c['verdict'] == v for c in relevant)
                                          for v in counts}
            results.append(record)
            print(f"{name}: {lc.size(t)} bits pass={counts['pass']} fail={counts['fail']} "
                  f"capped={counts['capped-or-error']} timeout={counts['timeout']} "
                  f"tested={len(checked)}", flush=True)
    elapsed = time.monotonic() - start
    (HERE / 'checks.json').write_text(json.dumps({'elapsed_s': elapsed,
        'threads': 2, 'source_cases': len(all_probes), 'results': results}, indent=2) + '\n')
    print(f'elapsed={elapsed:.3f}s', flush=True)

if __name__ == '__main__':
    main()
