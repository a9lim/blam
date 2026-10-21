import os
from pathlib import Path
import sys
import time
ROOT = Path('/Users/a9lim/Work/blam')
HERE = Path(__file__).resolve().parent
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery as b

base = (ROOT / 'data/self-interpreter/machines/int165.lam').read_text()
base = '\n'.join(line for line in base.splitlines() if not line.startswith('--'))
assert '(list list list)' in base
balanced = base.replace('(list list list)', '((list list) (list list))')
shared = '(\\diag. ' + base.replace('(\\x. x x)', 'diag', 1).replace('(list list list)', '(diag (list list))') + ') (\\x. x x)\n'
for name, src in [('balanced_skip', balanced), ('shared_delta', shared)]:
    src = '-- Correct construction from the 165; exact unoptimized size and battery in battery.log.\n' + src
    path = HERE / (name + '.lam')
    path.write_text(src)
    term = b.compile_lam(src)
    start = time.monotonic()
    ok, skip, bad = b.check(term, threads=2)
    print(f'{len(b.enc(term)):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {path}  {time.monotonic()-start:.3f}s', flush=True)
    for item in bad[:5]:
        print('  ', item, flush=True)
    (HERE / (name + '.blc')).write_text(b.enc(term) + '\n')
