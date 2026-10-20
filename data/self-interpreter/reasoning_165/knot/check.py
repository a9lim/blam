#!/usr/bin/env python3
"""Small, single-candidate checks; two subprocess workers at most."""
import os
from pathlib import Path
import sys
import tempfile
import time

HERE = Path(__file__).resolve().parent
REPO = Path('/Users/a9lim/Work/blam')
sys.dont_write_bytecode = True
sys.path.insert(0, str(REPO / 'tools/self-interpreter'))
tempfile.tempdir = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'

import battery

for name in sys.argv[1:]:
    path = HERE / name
    e = battery.compile_lam(path.read_text())
    bits = battery.enc(e)
    (path.with_suffix('.blc')).write_text(bits + '\n')
    start = time.monotonic()
    ok, skip, bad = battery.check(e, threads=2)
    print(f'{len(bits):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {path.name}', flush=True)
    print(f'elapsed={time.monotonic()-start:.3f}s threads=2', flush=True)
    for term, verdict in bad[:5]:
        print(term, verdict, flush=True)
