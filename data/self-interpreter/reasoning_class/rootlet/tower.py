"""Recognize existing Lean BB35Spine positive towers after finite beta steps."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a,dbn as d
import json,time,resource,signal
signal.alarm(110);start=time.monotonic()
name=sys.argv[1]
if name=='5':es=json.loads((H/'boundary_check.json').read_text())['exceptions'];ids=json.loads((H/'grid5.json').read_text())['opened']
else:es=json.loads((H/f'check{name}.json').read_text())['exceptions'];ids=json.loads((H/f'audit{name}.json').read_text())['opened']
T=d.L(d.L(d.A(d.V(0),d.A(d.V(1),d.V(0)))))
def rank(t):
 n=0
 while t!=T:
  if t[0]!='a' or t[1]!=T:return None
  n+=1;t=t[2]
 return n
rows=[];op=[]
for i in ids:
 R=a.tup(es[i]['source']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z());hit=None
 for step in range(60):
  h=t;args=[]
  while h[0]=='a':
   n=rank(h[1]);k=rank(h[2])
   if n and k:hit=dict(index=i,steps=step,n=n,k=k,rest=args[::-1]);break
   args.append(h[2]);h=h[1]
  if hit:break
  u=a.step(t)
  if u is None or d.size(u)>1000:break
  t=u
 if hit:rows.append(hit)
 else:op.append(i)
rec=dict(certificates=rows,opened=op,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/f'tower{name}.json').write_text(json.dumps(rec)+'\n');print('certificates',len(rows),'open',len(op),'seconds',rec['seconds'])
