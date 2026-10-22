"""Run the actual repository polish command sequentially, two workers max."""
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', PYTHONUNBUFFERED='1',
           PYTHONPATH=str(LANE / 'runtime'), RAYON_NUM_THREADS='2',
           TMPDIR=str(LANE / 'scratch'))
rows = json.loads((LANE / 'candidates.json').read_text())
results = json.loads((LANE / 'results.json').read_text()) if (LANE / 'results.json').exists() else []
done = {r['name'] for r in results}
for row in rows:
    if row['name'] in done:
        continue
    start = time.monotonic()
    logpath = LANE / 'logs' / (row['name'] + '.log')
    with logpath.open('w') as log:
        child = subprocess.Popen(
            [sys.executable, str(ROOT / 'tools/self-interpreter/polish.py'),
             str(LANE / (row['name'] + '.lam'))], cwd=ROOT, env=env,
            stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
        timed_out = False
        try:
            code = child.wait(timeout=115)
        except subprocess.TimeoutExpired:
            timed_out = True
            os.killpg(child.pid, signal.SIGTERM)
            try:
                code = child.wait(timeout=2)
            except subprocess.TimeoutExpired:
                os.killpg(child.pid, signal.SIGKILL)
                code = child.wait()
    log = logpath.read_text()
    line = re.search(r'(\d+ bits\s+ok=\d+ skip=\d+ fail=\d+)', log)
    sizes = list(map(int, re.findall(r'smallest (\d+)', log)))
    passed = bool(line and line.group(1).endswith('fail=0'))
    result = dict(**row, battery=line.group(1) if line else None,
                  polished=min([row['bits'], *sizes]) if passed else None, letopt=sizes,
                  timed_out=timed_out, exit=code,
                  seconds=round(time.monotonic()-start, 3))
    results.append(result)
    (LANE / 'results.json').write_text(json.dumps(results, indent=2) + '\n')
    print(json.dumps(result), flush=True)
