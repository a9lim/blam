"""Independent small-syntax check of exact feature DP and its guided generator."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from collections import defaultdict
import json,time,signal,resource
import nonlinear_check as nc
D=nc.D;H=Path(__file__).resolve().parent;START=time.monotonic()

def features(t,nf):
 cs=[0]*nf;ds=[0]*nf;L=0
 def walk(t,dep):
  nonlocal L
  if t[0]=='v':
   if t[1]>=dep:cs[t[1]-dep]+=1;ds[t[1]-dep]+=dep
  elif t[0]=='l':L+=1;walk(t[1],dep+1)
  else:walk(t[1],dep);walk(t[2],dep)
 walk(t,0);hd=t
 while hd[0]=='a':hd=hd[1]
 head='L' if t[0]=='l' else 'R' if hd[0]=='l' else hd[1]
 m=M=0
 if t[0]=='l':
  f=features(t[1],nf+1);m=f[1][0];M=f[2][0]
 return L,tuple(cs),tuple(ds),head,m,M

def admissible(t):
 if t[0]=='v':return True
 if t[0]=='l':return admissible(t[1])
 f,a=t[1:]
 if not admissible(f) or not admissible(a):return False
 if f[0]!='l':return True
 def count(b,dep=0):
  if b[0]=='v':return int(b[1]==dep)
  if b[0]=='l':return count(b[1],dep+1)
  return count(b[1],dep)+count(b[2],dep)
 m=count(f[1]);delta=nc.gen.cost(D.beta(f[1],a))-nc.gen.cost(t)
 def lambdas(t):return int(t[0]=='l')+sum(lambdas(x) for x in t[1:] if isinstance(x,tuple))
 return 2<=m<=5 and(delta>0 or(delta==0 and lambdas(a)>0))

from functools import lru_cache
@lru_cache(None)
def rawcount(n,nf):
 if n<2:return 0
 return sum(n==i+2 for i in range(nf))+rawcount(n-2,nf+1)+sum(rawcount(a,nf)*rawcount(n-2-a,nf) for a in range(2,n-3))
assert sum(rawcount(n,nf) for nf in(2,3,4) for n in range(2,21))<=100000
signal.alarm(110);total=kept=0
for nf in(2,3,4):
 counts=defaultdict(lambda:defaultdict(int));trees=defaultdict(set)
 for n,t in D.enum_terms(20,nf,None):
  total+=1;assert total<=100000
  if admissible(t):
   kept+=1;k=features(t,nf);counts[n][k]+=1;trees[n,k].add(t)
 for n in range(2,21):
  assert dict(counts[n])==nc.ct.T(n,nf),(n,nf)
  for k in nc.ct.T(n,nf):assert set(nc.G(n,nf,k))==trees[n,k]
rec=dict(raw_terms=total,admissible=kept,seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,frames=[2,3,4],max_wire=20)
(H/'validate_admissible.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec))
