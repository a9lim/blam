"""Weak-head walks and one-weak-step/affine-return cycles, no BFS."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as ma
import loop_audit as la
D=ma.D
import json,time,signal,resource,collections
START=time.monotonic();signal.alarm(110)
es=json.loads((H/'boundary_check.json').read_text())['exceptions']
ids=json.loads((H/'boundary_reduced.json').read_text())['opened']
out=[];opened=[];states=0

def affine_cycle(core):
 u=la.old.step(core)
 if u is None:return None
 ps=[]
 for _ in range(35):
  ext=la.prefix(u,core)
  if ext is not None:return dict(core=core,paths=ps,extra=ext)
  paths=[p for p in ma.redexes(u) if ma.occurrences(ma.at(u,p)[1][1])<=1]
  if not paths:return None
  p=paths[-1];u=ma.rewrite(u,p);ps.append(p)
 return None

def find(t):
 prep=[]
 for n in range(100):
  global states
  states+=1
  missing={'r','j'}-D.consts_of(t)
  if missing:return dict(prep=prep,certificate=dict(kind='missing',steps=0,variable=sorted(missing)[0]))
  h=t;args=[];cores=[]
  while h[0]=='a':cores.append(h);args.append(h[2]);h=h[1]
  if h[0]=='k':
   if h!=D.Kc('r') or len(args)!=1:return dict(prep=prep,certificate=dict(kind='head',steps=0,head=h[1],arity=len(args)))
   return None
  for core in reversed(cores):
   if D.size(core)>250:continue
   c=affine_cycle(core)
   if c:return dict(prep=prep,cycle=c,rest=la.prefix(t,core))
  u=la.old.step(t)
  if u is None or D.size(u)>2500:return None
  p=[];h=t
  while h[0]=='a' and h[1][0]!='l':p.append(1);h=h[1]
  assert ma.rewrite(t,p)==u
  t=u;prep.append(p)
 return None

for i in ids:
 R=la.old.tup(es[i]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());c=find(t)
 if c is None:opened.append(i)
 else:out.append(dict(index=i,**c))
rec=dict(certificates=out,opened=opened,states=states,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'boundary_directed.json').write_text(json.dumps(rec)+'\n');print({k:v for k,v in rec.items() if k!='certificates'})
