"""Bound every allowed external check and cap its worker count."""
import os
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent
REPO = ROOT.parents[2]
env = os.environ.copy()
env.update(RAYON_NUM_THREADS='2', OMP_NUM_THREADS='2', OPENBLAS_NUM_THREADS='2')
for source in sys.argv[1:]:
    path = ROOT / source
    for label, script in [('battery', 'tools/self-interpreter/battery.py'), ('polish', 'tmp/overnight/self/polish.py')]:
        start = time.monotonic()
        try:
            result = subprocess.run(['python3', script, str(path)], cwd=REPO, env=env, text=True,
                                    stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=110)
            output = result.stdout
            status = result.returncode
        except subprocess.TimeoutExpired as exc:
            output = (exc.stdout or b'').decode() if isinstance(exc.stdout, bytes) else (exc.stdout or '')
            output += '\nTIMEOUT after 110 seconds\n'
            status = 124
        elapsed = time.monotonic() - start
        record = f'{label} {source}: exit={status} seconds={elapsed:.3f}\n{output}'
        print(record, flush=True)
        (ROOT / (path.stem + '.' + label + '.log')).write_text(record)
        if label == 'battery' and (status or 'fail=0' not in output):
            break
