#!/usr/bin/env python3
"""Run the repository battery on hand-selected splices, two workers."""
import json
import shutil
import sys
import tempfile
import time
from pathlib import Path

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery

ledger = HERE / 'vreader_codex_battery.json'
rows = {r['file']: r for r in json.loads(ledger.read_text())} if ledger.exists() else {}
requested = set(sys.argv[1:])
with tempfile.TemporaryDirectory(prefix='vreader-codex-') as tmp:
    frozen = Path(tmp) / 'blam'
    shutil.copy2(ROOT / 'target/release/blam', frozen)
    battery.BLAM = str(frozen)
    for p in sorted((HERE / 'vreader_codex_splice').glob('*.lam')):
        if requested and p.stem not in requested:
            continue
        start = time.perf_counter()
        E = battery.compile_lam(p.read_text())
        ok, skip, bad = battery.check(E, threads=2)
        row = {'file': p.name, 'bits': len(battery.enc(E)), 'ok': ok, 'skip': skip,
               'failures': bad, 'seconds': round(time.perf_counter()-start, 3)}
        rows[p.name] = row
        print(json.dumps(row), flush=True)
        assert not bad
ledger.write_text(json.dumps([rows[k] for k in sorted(rows)], indent=2)+'\n')
