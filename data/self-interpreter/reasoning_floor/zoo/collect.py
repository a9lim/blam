#!/usr/bin/env python3
"""Materialize reported minima and check any newly rendered wire artifacts."""
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
sys.dont_write_bytecode = True
sys.path.insert(0, str(LANE))
from zoo import parse
import lc
env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', PYTHONPATH=str(LANE / 'runtime'),
           TMPDIR=str(LANE / 'scratch'), RAYON_NUM_THREADS='2')
rows = json.loads((LANE / 'zoo.json').read_text())
results = list(map(json.loads, (LANE / 'polish.jsonl').read_text().splitlines()))
bykey = {(r['name'], r['frame']): r for r in results}
assert len(bykey) == sum(len(r['frames']) for r in rows), 'Polishing is not finished'
assert all(r['returncode'] == 0 and not r['timeout'] and r['batteries'] for r in results)
assert all(b[1:] == [667, 1, 0] for r in results for b in r['batteries'])
checked_wires = {f['wire']: bykey[(r['name'], label)]['log']
                 for r in rows for label, f in r['frames'].items()}
destination = LANE / 'optimized'
destination.mkdir(exist_ok=True)
artifacts = []
for row in rows:
    start = time.monotonic()
    available = [bykey[(row['name'], label)] for label in row['frames']]
    best = min(r['polished_bits'] for r in available)
    source = next((f for f in row['frames'].values() if f['bits'] == best), None)
    retrieval = None
    if source:
        wire = source['wire']
    else:
        result = min(available, key=lambda r: r['polished_bits'])
        source = row['frames'][result['frame']]
        command = [str(LANE / 'blam-frozen'), 'golf', 'letopt', '--bits', source['wire'],
                   '--report-le', str(best), '--max-cuts', '2', '--threads', '2']
        run = subprocess.run(command, capture_output=True, text=True, env=env, timeout=100)
        retrieval = str(LANE / 'logs' / (row['name'] + '_materialize.log'))
        Path(retrieval).write_text(run.stdout + run.stderr)
        assert run.returncode == 0, (row['name'], run.returncode)
        found = re.search(r'^best (\d+) ([01]+)$', run.stdout, re.M)
        assert found and int(found[1]) <= best, (row['name'], best, run.stdout)
        best, wire = int(found[1]), found[2]
    assert len(wire) == best
    term, end = lc.decode(wire)
    assert end == len(wire)
    src = lc.show(term)
    assert parse(src) == term
    bitpath = destination / (row['name'] + '.blc')
    lampath = destination / (row['name'] + '.lam')
    bitpath.write_text(wire + '\n')
    lampath.write_text(src + '\n')
    recheck = wire not in checked_wires
    if recheck:
        command = [sys.executable, str(ROOT / 'tools/self-interpreter/battery.py'), '--bits', wire]
        run = subprocess.run(command, capture_output=True, text=True, env=env, timeout=100)
        batterylog = str(LANE / 'logs' / (row['name'] + '_optimized_battery.log'))
        Path(batterylog).write_text(run.stdout + run.stderr)
        line = run.stdout.strip()
        assert run.returncode == 0 and 'ok=667 skip=1 fail=0' in line, (row['name'], line)
        checked_wires[wire] = batterylog
    else:
        batterylog = checked_wires[wire]
        line = f'{best} bits  ok=667 skip=1 fail=0'
    artifact = dict(name=row['name'], bits=best, wire=wire, blc=str(bitpath), lam=str(lampath),
                    battery_line=line, battery_log=batterylog, rechecked=recheck,
                    materialize_log=retrieval, seconds=round(time.monotonic()-start, 3))
    artifacts.append(artifact)
    print(json.dumps({k:v for k,v in artifact.items() if k != 'wire'}), flush=True)
(LANE / 'artifacts.json').write_text(json.dumps(artifacts, indent=2) + '\n')
