import sys,json,collections
from pathlib import Path
H=Path(__file__).resolve().parent;sys.path.insert(0,str(H.parent/'shared'));import cert
rows=json.loads((H/'inventory.json').read_text())
def dep(t,d=0):
 if t[0]=='C':return t[1].startswith('_')
 if t[0]=='V':return t[1]==d
 if t[0]=='L':return dep(t[1],d+1)
 return dep(t[1],d) or dep(t[2],d)
for r in rows:
 if r['id'].startswith('adv6/'):
  h,args=cert.spine(cert.parse_show(r['source']))
  for _ in args:assert h[0]=='L';h=h[1]
  assert h[0]=='L'
  r['adv6_class']='SF/new-base' if dep(h[1]) else 's-absent'
  if r['label']=='A030':r['adv6_class']='new-base, also s-absent'
  if r['adv6_class']=='SF/new-base':print(r['label'],r['id'],'log',r['log_index'])
 else:
  p=H/(r['label']+'.legacy.json')
  if p.exists():r['legacy']=json.loads(p.read_text()).get('legacy')
(H/'inventory.json').write_text(json.dumps(rows,indent=2)+'\n')
print('adv',collections.Counter(r.get('adv6_class') for r in rows));print('root legacy',collections.Counter(r.get('legacy') for r in rows[75:]))
for r in rows:
 p=H/(r['label']+'.discover_site_2.json')
 if p.exists() and not any(json.loads(q.read_text()).get('ok') for q in H.glob(r['label']+'.discover_*.json')):print('NOT DIVERGENCE-CERTIFIED',r['label'],r['id'],r.get('legacy'),r.get('adv6_class'),r['source'])
