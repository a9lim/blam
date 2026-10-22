#!/usr/bin/env python3
"""Bounded serial reproduction. Each Lean child has a 110-second timeout;
Lean uses two threads and no -o output. All writes stay in the lane.
"""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import subprocess
import json
import hashlib
import time
import os
import re
from datetime import datetime, timezone

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
LEAN = ROOT/'lean'
env = dict(os.environ, LEAN_PATH=str(LEAN/'.lake/build/lib/lean'),
           PYTHONDONTWRITEBYTECODE='1')
records = []
start = time.monotonic()
for script in ['regenerate.py', 'combine.py']:
    t = time.monotonic()
    cmd = [sys.executable, str(HERE/script)]
    proc = subprocess.run(cmd, cwd=ROOT, env=env, capture_output=True, text=True, timeout=110)
    (HERE/(script+'.log')).write_text(proc.stdout+proc.stderr)
    records.append(dict(command=cmd, seconds=time.monotonic()-t, returncode=proc.returncode))
    if proc.returncode:
        raise RuntimeError(proc.stdout+proc.stderr)
files = ['Minimum.lean', 'Live.lean', 'All.lean'] + json.loads((HERE/'generated-files.json').read_text())
allowed = {'propext', 'Classical.choice', 'Quot.sound'}
audit_count = 0
for filename in files:
    path = HERE/filename
    src = path.read_bytes()
    if re.search(rb'\b(?:sorry|admit)\b', src):
        raise RuntimeError('Unfinished proof token in '+filename)
    cmd = ['lean', '-j2', str(path)]
    t = time.monotonic()
    proc = subprocess.run(cmd, cwd=LEAN, env=env, capture_output=True, text=True, timeout=110)
    output = proc.stdout+proc.stderr
    (HERE/(filename+'.log')).write_text(output)
    audits = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", output)
    for name, axs in audits:
        names = {a.strip() for a in axs.split(',') if a.strip()}
        if not names <= allowed:
            raise RuntimeError(f'Unexpected axiom set for {name}: {names}')
    if proc.returncode or 'sorryAx' in output or 'error:' in output:
        raise RuntimeError(output)
    audit_count += len(audits)
    records.append(dict(command=cmd, cwd=str(LEAN), seconds=time.monotonic()-t,
                        returncode=proc.returncode, sha256=hashlib.sha256(src).hexdigest(),
                        audited_theorems=len(audits), log=filename+'.log'))
summary = dict(timestamp=datetime.now(timezone.utc).isoformat(),
               seconds=time.monotonic()-start, longest_child=max(r['seconds'] for r in records),
               lean_files=len(files), recorded_refutations=3484, audit_count=audit_count,
               allowed_axioms=sorted(allowed), records=records)
(HERE/'verification.json').write_text(json.dumps(summary, indent=2)+'\n')
print(json.dumps({k:v for k,v in summary.items() if k != 'records'},indent=2))
