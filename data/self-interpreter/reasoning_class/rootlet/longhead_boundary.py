import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a
import dbn as d
import json,time,resource,signal
signal.alarm(110);start=time.monotonic()
es=json.loads((H/'boundary_check.json').read_text())['exceptions'];ids=json.loads((H/'boundary_directed.json').read_text())['opened']
rows=[];op=[]
for i in ids:
 t=d.A(d.subst(a.tup(es[i]['source']),0,d.Kc('c')),d.Z())
 for n in range(2001):
  missing={'r','j'}-d.consts_of(t)
  if missing:rows.append(dict(index=i,certificate=dict(kind='missing',steps=n,variable=sorted(missing)[0])));break
  h=t;arity=0
  while h[0]=='a':arity+=1;h=h[1]
  if h[0]=='k' and (h!=d.Kc('r') or arity!=1):rows.append(dict(index=i,certificate=dict(kind='head',steps=n,head=h[1],arity=arity)));break
  if d.size(t)>4000:op.append(i);break
  u=a.step(t)
  if u is None or n==2000:op.append(i);break
  t=u
rec=dict(certificates=rows,opened=op,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'boundary_longhead.json').write_text(json.dumps(rec)+'\n');print({k:v for k,v in rec.items() if k!='certificates'})
