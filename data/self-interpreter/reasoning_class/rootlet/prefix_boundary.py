import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a,dbn as d
import json,time,resource,signal
signal.alarm(110);start=time.monotonic()
es=json.loads((H/'boundary_check.json').read_text())['exceptions'];ids=json.loads((H/'boundary_longhead.json').read_text())['opened']
rows=[];op=[]

def find(t):
 spine=[];hist=[];seen={};terms=[]
 for n in range(501):
  while t[0]=='a':spine.append(t[2]);t=t[1]
  if t[0]!='l' or not spine:return None
  core=d.A(t,spine[-1]);depth=len(spine)
  if core in seen:
   n0,d0,rest0=seen[core]
   if depth>=d0 and min(hist[n0:])>=d0-1:
    # Original core alone executes the same steps until returning at this prefix.
    u=core
    for _ in range(n-n0):
     u=a.step(u)
     if u is None:break
    if u is not None:
     extra=[];h=u
     while h!=core and h[0]=='a':extra.append(h[2]);h=h[1]
     if h==core:return dict(kind='loop',steps=n0,loop=dict(core=core,steps=n-n0,extra=extra[::-1],rest=rest0))
  seen[core]=(n,depth,spine[:-1][::-1])
  t=d.beta(t[1],spine.pop());hist.append(len(spine))
  if d.size(t)+sum(d.size(x) for x in spine)>5000:return None
 return None

for i in ids:
 R=a.tup(es[i]['source']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z());c=find(t)
 if c:rows.append(dict(index=i,certificate=c))
 else:op.append(i)
rec=dict(certificates=rows,opened=op,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'boundary_prefix.json').write_text(json.dumps(rec)+'\n');print('certificates',len(rows),'open',len(op),'seconds',rec['seconds'])
