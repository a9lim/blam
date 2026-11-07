import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as mx
import loop_audit as au
import json,time,signal,resource
signal.alarm(110);start=time.monotonic();D=au.d;count=0

def rw(t,p):
 global count
 count+=1
 assert count<=99000
 return mx.rewrite(t,p)
def flat(t):
 xs=[]
 while t[0]=='a':xs.append(t[2]);t=t[1]
 return t,xs[::-1]
def normal(t):
 ps=[]
 for _ in range(100):
  p=next(mx.redexes(t),None)
  if p is None:return t,ps
  t=rw(t,p);ps.append(p)
  if D.size(t)>500:return None
 return None
def parts(t):
 h,xs=flat(t);ps=[]
 paths=[(1,)*len(xs)]+[(1,)*(len(xs)-i-1)+(2,) for i in range(len(xs))]
 for p in paths:
  old=mx.at(t,p)
  if old[0]!='l':continue
  nf=normal(old)
  if nf:
   for q in nf[1]:r=p+q;t=rw(t,r);ps.append(r)
 return t,ps
def weakpath(t):
 p=[]
 while t[0]=='a' and t[1][0]!='l':p.append(1);t=t[1]
 return tuple(p) if t[0]=='a' else None
def lower(t,n):
 u=D.shift(t,-n)
 def valid(u):
  if u[0]=='v':return u[1]>=0
  if u[0]=='k':return True
  if u[0]=='l':return valid(u[1])
  return valid(u[1]) and valid(u[2])
 return u if valid(u) else None
def form(t):
 if t[0]!='l':return None
 h,xs=flat(t[1])
 if h!=D.V(0) or not xs or xs[0][0]!='l':return None
 gh,ys=flat(xs[0][1])
 if gh!=D.V(1) or not ys or ys[0]!=D.V(0):return None
 ws=[lower(t,2) for t in ys[1:]];ts=[lower(t,1) for t in xs[1:]]
 if None in ws or None in ts:return None
 return ws,ts
records=json.loads((H/'spine_open.json').read_text());sources={r['file']:json.loads((H/r['file']).read_text()) for r in records};out=[];opened=[]
for rec in records:
 Y=au.old.tup(sources[rec['file']]['exceptions'][rec['index']]['body']);t=D.inst(Y,D.Z());prep=[];done=False
 for _ in range(25):
  t,qs=parts(t);prep+=qs
  h,xs=flat(t);f1=form(h);f2=form(xs[0]) if xs else None
  if f1 and f2 and f1[0]==f2[0]:
   out.append(dict(**rec,kind='grow',prep=prep,ws=f1[0],ts=f1[1],ss=f2[1],rest=xs[1:]));done=True;break
  # Try a long weak-head cycle with normalization only in lambda spine components.
  core=t;u=core;qs=[]
  for _ in range(80):
   p=weakpath(u)
   if p is None:break
   u=rw(u,p);qs.append(p)
   if D.size(u)>3000:break
   u,rs=parts(u);qs+=rs
   extra=au.prefix(u,core)
   if extra is not None:
    first=weakpath(core);assert qs[0]==first
    out.append(dict(**rec,kind='mixed',prep=prep,paths=qs[1:],core=core,extra=extra,rest=[]));done=True;break
  if done:break
  p=weakpath(t)
  if p is None:break
  t=rw(t,p);prep.append(p)
 if not done:opened.append(rec)
(H/'residual.json').write_text(json.dumps(out,indent=2)+'\n');(H/'residual_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=opened,states=count,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))
