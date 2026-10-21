"""Capture letopt's actual output (the supplied polish wrapper prints '?')."""
import os
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
REPO = ROOT.parents[2]
for name in sys.argv[1:]:
    path = ROOT / name
    code = path.with_suffix('.blc').read_text().strip()
    start = time.monotonic()
    env = dict(os.environ, RAYON_NUM_THREADS='2')
    try:
        result = subprocess.run(['target/release/blam', 'golf', 'letopt', '--bits', code,
                                 '--no-inline', '--max-cuts', '2', '--threads', '2', '--report-le', str(len(code))],
                                cwd=REPO, env=env, stdout=subprocess.PIPE,
                                stderr=subprocess.STDOUT, text=True, timeout=110)
        output, status = result.stdout, result.returncode
    except subprocess.TimeoutExpired as exc:
        output = (exc.stdout or b'').decode() if isinstance(exc.stdout, bytes) else (exc.stdout or '')
        output += '\nTIMEOUT after 110 seconds\n'
        status = 124
    record = f'{name}: exit={status} seconds={time.monotonic()-start:.3f}\n{output}'
    (ROOT / (path.stem + '.letopt-no-inline.log')).write_text(record)
    lines = record.splitlines()
    print('\n'.join(lines[:4] + lines[-2:]), flush=True)
