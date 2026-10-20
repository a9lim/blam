import os
from pathlib import Path
import shutil
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = Path('/Users/a9lim/Work/blam')
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery

binary = HERE / 'blam-frozen'
if not binary.exists():
    shutil.copy2(ROOT / 'target/release/blam', binary)
battery.BLAM = str(binary)

for name in sys.argv[1:]:
    path = HERE / name
    term = battery.compile_lam(path.read_text())
    bits = battery.enc(term)
    path.with_suffix('.blc').write_text(bits + '\n')
    start = time.monotonic()
    ok, skip, bad = battery.check(term, threads=2)
    line = f'{len(bits)} bits  ok={ok} skip={skip} fail={len(bad)}  {path.name}'
    print(line, flush=True)
    print(f'elapsed={time.monotonic()-start:.3f}s', flush=True)
    for b, verdict in bad[:5]:
        print(b, verdict, flush=True)
    path.with_suffix('.battery.txt').write_text(line + '\n' + repr(bad) + '\n')
