"""Final artifact/partition/axiom audit; no re-normalization or source sweep."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import json,hashlib,collections
from export import ad
man=[]
for name in ('manifest','more_manifest','mixed_manifest','strict_manifest'):man+=json.loads((H/f'{name}.json').read_text())
proved={};mods=set();sourcecache={};logcache={}
for row in man:
 key=(row['file'],row['index']);assert key not in proved;proved[key]=row;mods.add(row['module'])
 if row['file'] not in sourcecache:sourcecache[row['file']]=json.loads((H/row['file']).read_text())['exceptions']
 es=sourcecache[row['file']];R=ad.tup(es[row['index']]['source'])
 assert hashlib.sha256(repr(R).encode()).hexdigest()==row['source_sha256']
 if row['module'] not in logcache:logcache[row['module']]=(H/(row['module']+'.log')).read_text()
 log=logcache[row['module']]
 assert "'"+row['theorem']+"' depends on axioms:" in log
pending=json.loads((H/'SURVIVORS.json').read_text());opens={(r['file'],r['exception_index']) for r in pending};assert len(opens)==len(pending)
assert not opens & proved.keys()
rows=[];allkeys=set()
for p in sorted(H.glob('check_4_0_*.json')):
 r=json.loads(p.read_text());assert r['total']<=100000 and r['seconds']<120 and r['rss_bytes']<1_000_000_000 and not r['hits']
 es=r['exceptions'];keys={(p.name,i) for i in range(len(es))};allkeys|=keys
 assert keys<=proved.keys()|opens
 finite=sum(r['finite_failures'].values());assert finite+len(es)==r['total']
 rows.append(dict(cell=r['cell'],sources=r['total'],finite=finite,kernel=len(keys & proved.keys()),open=len(keys & opens),seconds=r['seconds'],rss_bytes=r['rss_bytes']))
assert allkeys==proved.keys()|opens
libraries=['Prices','Certificates','Extras','Replicator','Special','Grow','Recursor','Lark','Church','Owl','Strict']
resources=[]
for m in sorted(mods|set(libraries)):
 p=H/(m+'.lean');r=json.loads((H/(m+'.resources.json')).read_text());log=(H/(m+'.log')).read_text()
 assert r['code']==0 and r['limit'] is None and r['seconds']<120 and r['peak_rss_bytes']<2_000_000_000
 assert r['sha256']==hashlib.sha256(p.read_bytes()).hexdigest()
 assert 'sorryAx' not in log and 'error:' not in log and 'axiom ' not in p.read_text() and 'sorry' not in p.read_text()
 resources.append(r)
counts=[];over=[]
for k,d in ((4,0),(3,1),(3,0),(2,1),(2,0)):
 r=json.loads((H/f'boundary_{k}_{d}.json').read_text());assert r['seconds']<120 and r['rss_bytes']<1_000_000_000
 counts.append(dict(k=k,depth=d,total=r['total'],baseline=r['baseline'],cuts=r['cuts']))
 for cell,n in r['cells'].items():
  if n>100000:over.append(dict(k=k,depth=d,cell=cell,count=n,reason='source hand-off still unpriced; no source construction or probe'))
summary=dict(sources=sum(x['sources'] for x in rows),finite=sum(x['finite'] for x in rows),kernel=len(man),open=len(pending),cells=rows,count_only_boundary=counts,over_cap_cells=over,lean_files=len(resources),max_lean_seconds=max(r['seconds'] for r in resources),max_lean_rss=max(r['peak_rss_bytes'] for r in resources),max_source_seconds=max(r['seconds'] for r in rows),max_source_rss=max(r['rss_bytes'] for r in rows),resources=resources)
(H/'verification.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps({k:v for k,v in summary.items() if k not in ('cells','resources')},indent=2))
