import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as ma
import audit as a,dbn as d
import json,time,resource,signal
signal.alarm(110);start=time.monotonic()
inputs=json.loads((H/'ground_inputs.json').read_text());rows=[];op=[]
class Deadline(Exception):pass
def timeout(*_):raise Deadline
signal.signal(signal.SIGALRM,timeout)
allowed=set(json.loads((H/'boundary_prefix.json').read_text())['opened'])
def find(t):
 prep=[]
 for _ in range(30):
  t,pp=ma.affine(t);prep+=pp
  cores=[];h=t
  while h[0]=='a':cores.append(h);h=h[1]
  for core in reversed(cores):
   u=a.step(core)
   if u is None:continue
   ps=[]
   for repeat in range(8):
    u,qs=ma.affine(u);ps+=qs
    ext=ma.la.prefix(u,core)
    if ext is not None:return dict(prep=prep,cycle=dict(core=core,paths=ps,extra=ext),rest=ma.la.prefix(t,core))
    v=a.step(u)
    if v is None or d.size(v)>1000:break
    q=[];v0=u
    while v0[0]=='a' and v0[1][0]!='l':q.append(1);v0=v0[1]
    ps.append(q);u=v
  u=a.step(t)
  if u is None or d.size(u)>2500:return None
  p=[];h=t
  while h[0]=='a' and h[1][0]!='l':p.append(1);h=h[1]
  prep.append(p);t=u
 return None
for x in inputs:
 if x['index'] not in allowed:continue
 signal.setitimer(signal.ITIMER_REAL,.12)
 try:c=find(a.tup(x['term']))
 except (Deadline,RuntimeError,RecursionError):c=None
 finally:signal.setitimer(signal.ITIMER_REAL,0)
 if c:rows.append(dict(index=x['index'],**c))
 else:op.append(x['index'])
rec=dict(certificates=rows,opened=op,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'boundary_ground8.json').write_text(json.dumps(rec)+'\n');print('certificates',len(rows),'open',len(op),'seconds',rec['seconds'])
