"""Deterministic certificate discovery for the unresolved normalizer sources.
No breadth-first search. Finite contractions are recorded at exact paths.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as ma
import loop_audit as la
import json,time,signal,resource,collections
D=ma.D
START=time.monotonic();signal.alarm(110)
es=json.loads((H/'boundary_check.json').read_text())['exceptions']
ids=json.loads((H/'boundary_audit.json').read_text())['opened']
out=[];opened=[];states=0

def direct(t):
 # la.cert follows weak reductions only; all returned certificates are sound.
 req={'r','j'}-D.consts_of(t)
 if req:return dict(kind='missing',steps=0,variable=sorted(req)[0])
 sp=[];h=t
 while h[0]=='a':sp.append(h[2]);h=h[1]
 if h[0]=='k' and (h!=D.Kc('r') or len(sp)!=1):return dict(kind='head',steps=0,head=h[1],arity=len(sp))
 if h[0]=='l' and not sp:return dict(kind='lambda',steps=0)
 if D.size(t)<150:
  ll=la.loop(t)
  if ll:return dict(kind='loop',steps=0,loop=ll)
 return None

for i in ids:
 R=la.old.tup(es[i]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());prep=[];seen=set();c=None
 for step in range(200):
  states+=1
  assert states<=100000
  c=direct(t)
  if c is not None:break
  paths=list(ma.redexes(t))
  if not paths:break
  # Prefer strict shrinkage; otherwise innermost leftmost contraction.
  choices=[]
  for p in paths:
   red=ma.at(t,p);u=D.beta(red[1][1],red[2]);delta=D.size(u)-D.size(red)
   choices.append((min(delta,0),-len(p),p))
  _,_,p=min(choices)
  u=ma.rewrite(t,p)
  if D.size(u)>2000 or u in seen:break
  seen.add(t);t=u;prep.append(p)
 if c is None:opened.append(i)
 else:out.append(dict(index=i,prep=prep,certificate=c))
rec=dict(certificates=out,opened=opened,states=states,kinds=dict(collections.Counter(x['certificate']['kind'] for x in out)),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'boundary_reduced.json').write_text(json.dumps(rec)+'\n');print({k:v for k,v in rec.items() if k!='certificates'})
