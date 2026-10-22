"""Materialize the single hand-derived source witness; no term enumeration."""
from pathlib import Path
import json
import os
import sys

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
os.environ['TMPDIR'] = str(LANE / 'scratch')
sys.path.insert(0, str(ROOT / 'tools'))
import blcc

q = r'\b.p (\f.b (c (\e\a.f (\d\r.d a (r e)))) (p (\g.c (\e.f e (g e)))))'
shared = r'(\p\c.' + q + ') p c'
padded = shared
for _ in range(6):
    padded = r'(\unused.' + padded + r') (\i.i)'
h = r'\p\c\s.s (\i.i) (\u.s (\q.c) (s s u)) (' + padded + ')'
source = r'(\x.x x) (\x.(' + h + ') (x x))'
path = LANE / 'deep_shared_233.lam'
path.write_text(source + '\n')
parser = blcc.P(source)
parsed = blcc.p_lc(parser)
raw = blcc.to_db(parsed)
bits = blcc.encode(raw)
assert len(bits) == 233, len(bits)
(LANE / 'deep_shared_233.blc').write_text(bits + '\n')
(LANE / 'source.json').write_text(json.dumps({'name': path.name, 'bits': len(bits), 'wire': bits}, indent=2) + '\n')
print(f'{path.name}: {len(bits)} bits')
