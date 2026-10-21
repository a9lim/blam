#!/usr/bin/env python3
"""Sequentially polish the fixed, checked zoo; one job, at most two workers."""
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', PYTHONUNBUFFERED='1',
           PYTHONPATH=str(LANE / 'runtime'), RAYON_NUM_THREADS='2',
           TMPDIR=str(LANE / 'scratch'))
rows = json.loads((LANE / 'zoo.json').read_text())
outpath = LANE / 'polish.jsonl'
done = set()
if outpath.exists():
    done = {(r['name'], r['frame']) for r in map(json.loads, outpath.read_text().splitlines())}
for row in rows:
    for label, frame in row['frames'].items():
        if (row['name'], label) in done:
            continue
        logfile = LANE / 'logs' / (row['name'] + '_' + label + '.log')
        start = time.monotonic()
        command = [sys.executable, str(ROOT / 'tools/self-interpreter/polish.py'), frame['path']]
        timeout = False
        with logfile.open('w') as log:
            child = subprocess.Popen(command, cwd=ROOT, env=env, stdout=log, stderr=subprocess.STDOUT,
                                     start_new_session=True)
            try:
                code = child.wait(timeout=115)
            except subprocess.TimeoutExpired:
                timeout = True
                os.killpg(child.pid, signal.SIGTERM)
                try:
                    child.wait(timeout=2)
                except subprocess.TimeoutExpired:
                    os.killpg(child.pid, signal.SIGKILL)
                    child.wait()
                code = child.returncode
        text = logfile.read_text()
        sizes = list(map(int, re.findall(r'smallest (\d+)', text)))
        checked = [tuple(map(int, m)) for m in re.findall(r'(\d+) bits\s+ok=(\d+) skip=(\d+) fail=(\d+)', text)]
        item = dict(name=row['name'], frame=label, input_bits=frame['bits'],
                    polished_bits=min([frame['bits'], *sizes]), letopt_sizes=sizes,
                    batteries=checked, timeout=timeout, returncode=code,
                    seconds=round(time.monotonic()-start, 3), log=str(logfile))
        with outpath.open('a') as out:
            out.write(json.dumps(item) + '\n')
        print(json.dumps(item), flush=True)
