import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,time,signal,resource
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as la
import mixed_audit as ma
start=time.monotonic();signal.alarm(110)
certs=[];opened=[]
for name in ('linear0','shared0','1','2','3','4','pending1','pending2','pending3','pending4','stream1','stream2','stream3','stream4'):
 r=json.loads((H/f'check_{name}.json').read_text())
 for i,e in enumerate(r['exceptions']):
  body=la.old.tup(e['body']);z=e['probe']=='zero';t=la.d.inst(body,la.d.Z() if z else la.d.U(1))
  target=la.d.A(la.d.Kc('r'),la.d.Kc('j')) if z else la.d.A(la.d.A(la.d.Kc('c'),la.d.U(0)),la.d.Kc('N'))
  c=la.cert(t,target)
  if c and c['kind'] in ('missing','head','loop'):certs.append(dict(name=name,index=i,certificate=c));continue
  c=ma.cert(t)
  if c:certs.append(dict(name=name,index=i,certificate=dict(kind='mixed',**c)))
  else:opened.append(dict(name=name,index=i))
rec=dict(certificates=certs,open=opened,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,mixed_states=ma.COUNT)
(H/'audit.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k!='certificates'},indent=2));print('certificates',len(certs))
