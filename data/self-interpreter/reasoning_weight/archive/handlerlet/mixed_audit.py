import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import loop_audit as la
from collections import deque,Counter
import json,time,signal,resource
D=la.d
COUNT=0

def redexes(t,path=()):
 if t[0]=='a':
  if t[1][0]=='l':yield path
  yield from redexes(t[1],path+(1,));yield from redexes(t[2],path+(2,))
 elif t[0]=='l':yield from redexes(t[1],path+(0,))

def at(t,p):
 for i in p:t=t[1] if i!=2 else t[2]
 return t

def rewrite(t,p):
 if not p:return D.beta(t[1][1],t[2])
 h,*r=p
 if h==0:return D.L(rewrite(t[1],r))
 if h==1:return D.A(rewrite(t[1],r),t[2])
 return D.A(t[1],rewrite(t[2],r))

def occurrences(t,i=0):
 if t[0]=='v':return t[1]==i
 if t[0]=='k':return 0
 if t[0]=='l':return occurrences(t[1],i+1)
 return occurrences(t[1],i)+occurrences(t[2],i)

def affine(t):
 ps=[]
 for _ in range(50):
  paths=[p for p in redexes(t) if occurrences(at(t,p)[1][1])<=1]
  if not paths:return t,ps
  p=paths[-1];t=rewrite(t,p);ps.append(p)
 raise RuntimeError('affine cap')

def cycle(core):
 global COUNT
 first=la.old.step(core)
 if first is None:return None
 queue=deque([(first,[])]);seen={first}
 while queue:
  t,ps=queue.popleft();COUNT+=1
  assert COUNT<=100000
  extra=la.prefix(t,core)
  if extra is not None:return dict(core=core,paths=ps,extra=extra)
  if len(ps)>=4:continue
  for p in redexes(t):
   u=rewrite(t,p)
   if D.size(u)<=150 and u not in seen:seen.add(u);queue.append((u,ps+[p]))
 return None

def cert(t):
 prep=[]
 for _ in range(12):
  t,paths=affine(t);prep+=paths
  cores=[];p=t
  while p[0]=='a':cores.append(p);p=p[1]
  for core in reversed(cores):
   c=cycle(core)
   if c:return dict(prep=prep,cycle=c,rest=la.prefix(t,core))
  nxt=la.old.step(t)
  if nxt is None:return None
  # weak-step path is along function children to first lambda redex.
  p=[];h=t
  while h[0]=='a' and h[1][0]!='l':p.append(1);h=h[1]
  assert rewrite(t,p)==nxt
  t=nxt;prep.append(p)
 return None
if __name__=='__main__':
 signal.alarm(110);start=time.monotonic()
 covered={(x['q'],x['index']) for x in json.loads((H/'loop_audit.json').read_text())}
 out=[];opened=[]
 for q in (1,2,3,4):
  r=json.loads((H/f'check{q}.json').read_text())
  for i,e in enumerate(r['exceptions']):
   if (q,i) in covered:continue
   assert e['probe']=='zero'
   Y=la.old.tup(e['body']);c=cert(D.inst(Y,D.Z()))
   if c is None:opened.append((q,i))
   else:out.append(dict(q=q,index=i,certificate=c))
 (H/'mixed_audit.json').write_text(json.dumps(out,indent=2)+'\n')
 print('mixed_certificates',len(out),'open',opened,'expanded_states',COUNT,'seconds',time.monotonic()-start,'rss',resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
