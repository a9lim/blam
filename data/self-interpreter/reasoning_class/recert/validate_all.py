import sys,subprocess,json,hashlib,collections
from pathlib import Path
H=Path(__file__).resolve().parent;rows=json.loads((H/'inventory.json').read_text());manifest=[]
for r in rows:
 label=r['label'];p=H/(label+'.certificate.json')
 if p.exists():
  subprocess.run([sys.executable,'-B',str(H/'validate_one.py'),label],check=True,timeout=110)
  v=json.loads((H/(label+'.validation.json')).read_text())
  opts=[json.loads(q.read_text()) for q in H.glob(label+'.discover_*.json')]
  d=next(x for x in opts if x.get('ok') and x['sha256']==v['sha256'])
  r.update(status='recertified',certificate=p.name,sha256=v['sha256'],states=d['states'],work=d['work'],portable_states=v['states'],mode=d['mode'],k=d['k'],seconds=d['seconds'],peak_rss_bytes=d['peak_rss_bytes'])
 else:assert label=='R322';r.update(status='C2 mismatch, not divergence',direct='Direct322.json')
 if label=='A030':r['adv6_class']='new-base, also s-absent'
 q=H/(label+'.resources.json')
 if q.exists():
  lean=json.loads(q.read_text());r['lean_replayed']=lean['code']==0 and lean['limit'] is None
 manifest.append(r)
(H/'MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
summary=dict(rows=len(rows),statuses=dict(collections.Counter(r['status'] for r in manifest)),max_states=max(r.get('states',0) for r in manifest),max_work=max(r.get('work',0) for r in manifest),max_portable_states=max(r.get('portable_states',0) for r in manifest),max_seconds=max(r.get('seconds',0) for r in manifest),max_rss=max(r.get('peak_rss_bytes',0) for r in manifest),lean_instances=sum(r.get('lean_replayed',False) for r in manifest))
(H/'VALIDATION.json').write_text(json.dumps(summary,indent=2)+'\n');print(summary)
