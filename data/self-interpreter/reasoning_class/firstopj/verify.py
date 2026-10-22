import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,hashlib,re
from collections import Counter
H=Path(__file__).resolve().parent
cells=['linear0','shared0','1','2','3','4','pending1','pending2','pending3','pending4','stream1','stream2','stream3','stream4']
assert not json.loads((H/'audit.json').read_text())['open']
certs=json.loads((H/'certificates.json').read_text());indices={(c['cell'],c['index']) for c in certs};assert len(indices)==len(certs)
rows=[];expected=set()
for name in cells:
 r=json.loads((H/f'check_{name}.json').read_text());assert r['markings']<=100000 and r['seconds']<120 and r['rss']<1_000_000_000 and not r['hits']
 counts=Counter()
 for row in r['rows'].values():counts.update(row)
 assert counts['unique']==r['unique'];assert counts['wrong_zero']+counts['wrong_unary']+counts['exceptions']==r['unique']
 expected|={(name,i) for i in range(len(r['exceptions']))}
 rows.append(dict(cell=name,**{k:r[k] for k in ('markings','unique','seconds','rss')},wrong_zero=counts['wrong_zero'],wrong_unary=counts['wrong_unary'],exceptions=counts['exceptions']))
assert indices==expected
modules=json.loads((H/'modules.json').read_text());lean=[]
for f in modules+['FirstopJPrices.lean','Selective.lean']:
 stem=Path(f).stem;r=json.loads((H/f'{stem}.resources.json').read_text());assert r['code']==0 and r['limit'] is None and r['seconds']<120 and r['peak_rss_bytes']<2_000_000_000 and r['threads']==2
 log=(H/f'{stem}.log').read_text();assert 'sorryAx' not in log and 'error:' not in log and 'native_decide' not in log
 if f in modules:
  names=[c['theorem'] for c in certs if c['module']==stem]
  assert len(names)==log.count('depends on axioms:')
  for name in names:assert f"'{name}' depends on axioms: [propext, Quot.sound]" in log,name
 lean.append(r)
paths=[p for p in H.iterdir() if p.suffix in('.py','.lean','.json') and p.name!='verification.json']
hashes={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)}
rec=dict(cells=rows,sources=sum(x['unique'] for x in rows),exceptions=len(certs),certificate_kinds=dict(Counter(c['kind'] for c in certs)),lean=lean,hashes=hashes)
(H/'verification.json').write_text(json.dumps(rec,indent=2)+'\n')
print(json.dumps({k:v for k,v in rec.items() if k in('sources','exceptions','certificate_kinds')},indent=2));print('Lean max time',max(x['seconds'] for x in lean),'max RSS',max(x['peak_rss_bytes'] for x in lean))
