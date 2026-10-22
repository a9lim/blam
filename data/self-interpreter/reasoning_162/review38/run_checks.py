"""Read-only replay of the supplied ledgers and a redirected Lean rebuild.

Only this review directory is written. No search and no engine invocation.
"""
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time
from collections import Counter

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
FLOOR = ROOT / 'tmp/round3/floor'
LANE = ROOT / 'tmp/round3/floor38'
sys.path.insert(0, str(FLOOR))
import analyze37 as a


def hashfile(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()


def replay():
    start = time.monotonic()
    four = json.loads((FLOOR / 'four_lambda.json').read_text())
    five = json.loads((FLOOR / 'five_lambda.json').read_text())
    generated = []
    for family, e, src in a.four_lambda():
        assert a.normal(e[1]) and a.normal(e[2])
        assert a.lc.size(e) == 37 and not a.free(e)
        generated.append(dict(family=family, src=src, wire=a.lc.enc(e), **a.assess(e)))
    assert generated == four

    # Execute just the two supplied finite layout loops, without their write.
    code = (FLOOR / 'analyze37_vacuous.py').read_text().split("Path(__file__).with_name")[0]
    ns = {'__file__': str(FLOOR / 'analyze37_vacuous.py')}
    exec(compile(code, str(FLOOR / 'analyze37_vacuous.py'), 'exec'), ns)
    assert ns['rows'] == five
    assert len({r['wire'] for r in four + five}) == 676

    # Execute the existing fixed macros, stopping before its output write.
    code = (FLOOR / 'macro_checks.py').read_text().split("(p/'macro_checks.json').write_text")[0]
    ns = {'__file__': str(FLOOR / 'macro_checks.py')}
    exec(compile(code, str(FLOOR / 'macro_checks.py'), 'exec'), ns)
    macro = [dict(name=n, steps=k) for n, _, k, _ in ns['FACTS']]
    assert macro == json.loads((FLOOR / 'macro_checks.json').read_text())
    # Confirm these replay paths use head steps, rather than only normal steps.
    for name, t, k, u in ns['FACTS']:
        for _ in range(k):
            t = a.head_step(t)
            assert t is not None, name
        assert t == u, name

    four_unresolved = {i for i, r in enumerate(four) if r['kind'].startswith('unresolved')}
    five_unresolved = {i for i, r in enumerate(five) if r['kind'].startswith('unresolved')}
    ids = [448, 449, 454, 455, 460, 461, 466, 467, 472, 473, 478, 479, 572]
    hand = {378, 380, 393, 395} | set(range(436, 448)) | set(range(450, 484, 3))
    hand |= {451, 452, 457, 458, 463, 464, 469, 470, 475, 476, 481, 482}
    hand |= {486, 490, 506, 570, 574, 590}
    assert len(hand) == 46 and not (hand & set(ids))
    assert four_unresolved == hand | set(ids)
    assert five_unresolved == {9, 19}
    progress = json.loads((FLOOR / 'progress.json').read_text())
    assert [r['id'] for r in progress['remaining']] == ids
    assert all(r['source'] == four[r['id']]['src'] for r in progress['remaining'])

    # Parse the literal Lean Term definitions independently of the generator.
    lean_text = (LANE / 'Checks.lean').read_text()
    lean_e = {}
    for m in re.finditer(r'^def e(\d+) : Term := (.+)$', lean_text, re.M):
        tokens = re.findall(r'\(|\)|\.var|\.lam|\.app|\d+', m[2])
        def term(j):
            assert tokens[j] == '('
            op = tokens[j + 1]
            if op == '.var':
                t, j = ('V', int(tokens[j + 2])), j + 3
            elif op == '.lam':
                b, j = term(j + 2)
                t = ('L', b)
            else:
                assert op == '.app'
                f, j = term(j + 2)
                b, j = term(j)
                t = ('A', f, b)
            assert tokens[j] == ')'
            return t, j + 1
        t, j = term(0)
        assert j == len(tokens)
        i = int(m[1])
        assert a.lc.enc(t) == four[i]['wire']
        assert len(a.lc.enc(t)) == 37 and not a.free(t)
        lean_e[i] = t
    assert set(lean_e) == set(ids)

    result = {
        'four_rows': len(four), 'five_rows': len(five),
        'unique_wires': 676,
        'four_kinds': dict(Counter(r['kind'] for r in four)),
        'five_kinds': dict(Counter(r['kind'] for r in five)),
        'finite': 676 - len(four_unresolved) - len(five_unresolved),
        'handwritten_invariants': len(hand) + len(five_unresolved),
        'residual_ids': ids,
        'macro_head_replays': len(macro),
        'literal_lean_sources_match_ledger': True,
        'seconds': time.monotonic() - start,
    }
    (HERE / 'ledger-replay.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2), flush=True)


def rebuild():
    dest = HERE / 'lean'
    dest.mkdir(exist_ok=True)
    modules = ['Proofs', 'Checks', 'RankRealization', 'Protected461', 'Residuals']
    for name in modules:
        (dest / (name + '.lean')).write_bytes((LANE / (name + '.lean')).read_bytes())
    tc = (ROOT / 'lean/lean-toolchain').read_text().strip().replace('/', '--').replace(':', '---')
    prefix = Path.home() / '.elan/toolchains' / tc
    env = os.environ.copy()
    env['LEAN_PATH'] = ':'.join(map(str, [dest, ROOT / 'lean/.lake/build/lib/lean', prefix / 'lib/lean']))
    env['LEAN_NUM_THREADS'] = '2'
    rows = []
    for name in modules:
        start = time.monotonic()
        p = subprocess.run([str(prefix / 'bin/lean'), '-j2', '--root=' + str(dest),
                            str(dest / (name + '.lean')), '-o', str(dest / (name + '.olean'))],
                           cwd=ROOT, env=env, text=True, capture_output=True, timeout=60)
        log = p.stdout + p.stderr
        (HERE / (name + '-build.log')).write_text(log)
        row = dict(module=name, exit_code=p.returncode, seconds=time.monotonic() - start,
                   sha256=hashfile(dest / (name + '.lean')))
        rows.append(row)
        print(json.dumps(row), flush=True)
        assert p.returncode == 0, log
        assert not re.search(r'\bsorryAx\b|declaration uses .sorry.', log), log
    (HERE / 'lean-rebuild.json').write_text(json.dumps(rows, indent=2) + '\n')
    print((HERE / 'Residuals-build.log').read_text(), flush=True)


if __name__ == '__main__':
    paths = list(FLOOR.glob('*.py')) + [FLOOR / n for n in [
        'floor37-progress.md', 'literal-interface.md', 'four_lambda.json', 'five_lambda.json',
        'progress.json', 'macro_checks.json']]
    paths += list(LANE.glob('*.lean')) + [LANE / 'proof.md', LANE / 'inventory-audit.md']
    original = {str(p.relative_to(ROOT)): hashfile(p) for p in paths}
    replay()
    rebuild()
    assert all(hashfile(ROOT / p) == h for p, h in original.items()), 'Source changed during review'
    (HERE / 'source-hashes.json').write_text(json.dumps(original, indent=2) + '\n')
