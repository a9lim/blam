"""Materialize reported minima above polish.py's fixed 164 reporting limit."""
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
sys.dont_write_bytecode = True
sys.path[:0] = [str(ROOT / 'tools'), str(ROOT / 'tools/self-interpreter')]
import battery
import lc

battery.BLAM = str(LANE / 'blam-frozen')
os.environ['TMPDIR'] = str(LANE / 'scratch')
os.environ['RAYON_NUM_THREADS'] = '2'
rows = json.loads((LANE / 'results.json').read_text())
artifacts = json.loads((LANE / 'artifacts.json').read_text()) if (LANE / 'artifacts.json').exists() else []
done = {r['name'] for r in artifacts}
for row in rows:
    if row['name'] in done:
        continue
    if not row['battery'] or not row['battery'].endswith('fail=0'):
        continue
    source = (LANE / (row['name'] + '.blc')).read_text().strip()
    bits = source
    start = time.monotonic()
    if row['polished'] < row['bits']:
        for cuts in [2, 3]:
            r = subprocess.run(
                [battery.BLAM, 'golf', 'letopt', '--bits', source,
                 '--report-le', str(row['polished']), '--max-cuts', str(cuts),
                 '--threads', '2'], capture_output=True, text=True, timeout=100)
            (LANE / 'logs' / (row['name'] + f'.materialize{cuts}.log')).write_text(r.stdout + r.stderr)
            found = re.search(r'best (\d+) ([01]+)', r.stdout)
            if found and int(found.group(1)) == row['polished']:
                bits = found.group(2)
                break
        assert len(bits) == row['polished'], (row['name'], len(bits), row['polished'])
        ok, skip, bad = battery.check(lc.decode(bits)[0], threads=2)
        line = f'{len(bits)} bits  ok={ok} skip={skip} fail={len(bad)}'
        assert not bad, (row['name'], bad[:3])
    else:
        line = row['battery']
    path = LANE / 'optimized' / row['name']
    path.with_suffix('.blc').write_text(bits + '\n')
    path.with_suffix('.lam').write_text(lc.show(lc.decode(bits)[0]) + '\n')
    item = dict(name=row['name'], written=row['bits'], polished=len(bits),
                battery=line, wire=str(path.with_suffix('.blc')),
                seconds=round(time.monotonic()-start, 3))
    artifacts.append(item)
    (LANE / 'artifacts.json').write_text(json.dumps(artifacts, indent=2) + '\n')
    print(json.dumps(item), flush=True)
