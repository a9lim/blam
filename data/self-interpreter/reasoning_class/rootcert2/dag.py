"""Hash-consed finite beta traces, preserving explicit source paths."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from probe import d,ad
import json,time,signal,resource
from functools import lru_cache
N=[];M={};STEPS=0;START=time.monotonic()
class Cap(Exception):pass

def mk(x):
 if x in M:return M[x]
 if len(N)>90000 or time.monotonic()-START>105 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>850_000_000:raise Cap()
 i=len(N);N.append(x);M[x]=i;return i
V=lambda i:mk(('v',i));K=lambda k:mk(('k',k));L=lambda t:mk(('l',t));A=lambda f,a:mk(('a',f,a))
def load(t):
 if t[0] in ('v','k'):return mk(t)
 return mk((t[0],*(load(x) for x in t[1:])))
def dump(i):
 x=N[i]
 if x[0] in ('v','k'):return x
 return (x[0],*(dump(c) for c in x[1:]))
@lru_cache(None)
def size(i):
 x=N[i]
 return min(1000000,1+sum(size(c) for c in x[1:])) if x[0] in ('l','a') else 1
@lru_cache(None)
def shift(i,cut):
 x=N[i]
 if x[0]=='v':return V(x[1]+1) if x[1]>=cut else i
 if x[0]=='k':return i
 if x[0]=='l':return L(shift(x[1],cut+1))
 return A(shift(x[1],cut),shift(x[2],cut))
@lru_cache(None)
def subst(i,j,a):
 x=N[i]
 if x[0]=='k':return i
 if x[0]=='v':return a if x[1]==j else (V(x[1]-1) if x[1]>j else i)
 if x[0]=='l':return L(subst(x[1],j+1,shift(a,0)))
 return A(subst(x[1],j,a),subst(x[2],j,a))
def flat(i):
 xs=[]
 while N[i][0]=='a':xs.append(N[i][2]);i=N[i][1]
 return i,xs[::-1]
def step(i):
 global STEPS
 STEPS+=1
 if STEPS>90000:raise Cap()
 h,xs=flat(i)
 if N[h][0]!='l' or not xs:return None
 out=subst(N[h][1],0,xs[0])
 for a in xs[1:]:out=A(out,a)
 return out,(1,)*(len(xs)-1)

def head(t,limit=1500):
 i=load(t);ps=[]
 for _ in range(limit):
  h,xs=flat(i)
  if N[h][0]=='k':return i,ps
  u=step(i)
  if u is None:return i,ps
  i,p=u;ps.append(p)
 return None
if __name__=='__main__':
 signal.alarm(112)
 r=json.loads((H/'sources.json').read_text())[208];t=d.A(d.subst(ad.tup(r['tree']),0,d.Kc('c')),d.Z())
 try:res=head(t,2000)
 except Cap:res=None
 print('nodes',len(N),'states',STEPS,'seconds',time.monotonic()-START)
 if res:
  i,ps=res;h,xs=flat(i);print('head',N[h],'arity',len(xs),'steps',len(ps),'nf tree',size(i))
  (H/'halt208_dag.json').write_text(json.dumps(dict(nodes=N,root=i,paths=ps),separators=(',',':'))+'\n')
