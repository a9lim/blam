#!/usr/bin/env python3
"""Fixed constructions only; at most two workers, 45-second letopt calls."""
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
os.environ['TMPDIR'] = str(LANE)
os.environ['PYTHONDONTWRITEBYTECODE'] = '1'
os.environ['RAYON_NUM_THREADS'] = '2'
tempfile.tempdir = str(LANE)
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery
import lc

def check(path):
    term = battery.compile_lam(path.read_text())
    bits = battery.enc(term)
    (LANE / (path.stem + '.blc')).write_text(bits + '\n')
    started = time.monotonic()
    ok, skip, bad = battery.check(term, threads=2)
    line = f'{len(bits)} bits  ok={ok} skip={skip} fail={len(bad)}  {path.name}'
    print(line, flush=True)
    out = {'source': path.name, 'bits': len(bits), 'battery': line,
           'failures': bad[:5], 'seconds': time.monotonic()-started,
           'polish': []}
    if not bad:
        configs = [['--max-cuts', '3'], ['--no-inline', '--max-cuts', '2']] \
            if len(bits) <= 175 else [['--max-cuts', '2']]
        for i, flags in enumerate(configs):
            cmd = [battery.BLAM, 'golf', 'letopt', '--bits', bits,
                   '--report-le', '1000', '--threads', '2', *flags]
            try:
                run = subprocess.run(cmd, text=True, capture_output=True, timeout=45)
                log = run.stdout + run.stderr
                if 'inlining the lets does not finish' in log and '--no-inline' not in flags:
                    configs.append(['--no-inline', '--max-cuts', '2'])
            except subprocess.TimeoutExpired:
                log = 'TIMEOUT after 45 seconds; no minimum claimed.\n'
            (LANE / f'{path.stem}.letopt{i}.log').write_text(log)
            match = re.search(r'smallest rendering over .*?: (\d+) bits', log)
            best = re.search(r'best (\d+) ([01]+)', log)
            item = {'flags': flags, 'minimum': int(match[1]) if match else None}
            if best:
                outpath = LANE / f'{path.stem}.polished{i}.blc'
                outpath.write_text(best[2] + '\n')
                polished, end = lc.decode(best[2])
                assert end == len(best[2])
                a, b, failures = battery.check(polished, threads=2)
                item['battery'] = f'{best[1]} bits  ok={a} skip={b} fail={len(failures)}  {outpath.name}'
                item['source'] = outpath.name
                assert not failures, failures[:5]
            print(item, flush=True)
            out['polish'].append(item)
    (LANE / (path.stem + '.checks.json')).write_text(json.dumps(out, indent=2)+'\n')
    return out

if __name__ == '__main__':
    for name in sys.argv[1:]:
        check(LANE / name)
