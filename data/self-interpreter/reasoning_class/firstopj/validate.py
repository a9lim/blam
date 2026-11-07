"""Independent small syntax validation and actual selective-contraction prices.
This is validation of the finite check implementation, not its exhaustion proof.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
from collections import Counter
import importlib.util,json,time,resource,signal,threading
H=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('firstopj_check',H/'check.py');g=importlib.util.module_from_spec(spec);spec.loader.exec_module(g);ct=g.ct;D=g.D
start=time.monotonic();PRICE_CHECKS=0
@lru_cache(None)
def raw(n,nf):
 out=[]
 for i in range(nf):
  if i+2==n:out.append(D.V(i))
 if n>=4:out.extend(D.L(b) for b in raw(n-2,nf+1))
 for a in range(2,n-3):out.extend(D.A(f,v) for f in raw(a,nf) for v in raw(n-2-a,nf))
 return tuple(out)
@lru_cache(None)
def rawj(n):
 out=[D.Kc('j')] if n==4 else []
 for a in range(2,n-5):out.extend(D.A(f,v) for f in raw(a,2) for v in rawj(n-2-a))
 for a in range(4,n-3):out.extend(D.A(f,v) for f in rawj(a) for v in raw(n-2-a,2))
 return tuple(out)
def lams(t):
 return 1+lams(t[1]) if t[0]=='l' else lams(t[1])+lams(t[2]) if t[0]=='a' else 0

def profile(t,nf):
 cs=[0]*nf;ds=[0]*nf
 def walk(t,dep):
  if t[0]=='v' and t[1]>=dep:cs[t[1]-dep]+=1;ds[t[1]-dep]+=dep
  elif t[0]=='l':walk(t[1],dep+1)
  elif t[0]=='a':walk(t[1],dep);walk(t[2],dep)
 walk(t,0);return tuple(cs),tuple(ds)
def head(t):
 if t[0]=='l':return 'L'
 while t[0]=='a':t=t[1]
 return 'R' if t[0]=='l' else 'J' if t[0]=='k' else t[1]
def key(t,nf):
 cs,ds=profile(t,nf);m=M=0
 if t[0]=='l':
  cb,db=profile(t[1],nf+1);m,M=cb[0],db[0]
 return lams(t),cs,ds,head(t),m,M

def wire(t,dep=0,weighted=False):
 if t[0]=='v':return t[1]+2
 if t[0]=='k':return 4+(4 if weighted else 1)*dep
 if t[0]=='l':return 2+wire(t[1],dep+1,weighted)
 return 2+wire(t[1],dep,weighted)+wire(t[2],dep,weighted)
@lru_cache(None)
def ordinary(t):
 if t[0]=='v':return True
 if t[0]=='l':return ordinary(t[1])
 f,a=t[1:]
 if not ordinary(f) or not ordinary(a):return False
 if f[0]=='l':
  cs,ds=profile(f[1],max(3,maxfree(f[1])+1));m=cs[0]
  delta=wire(D.beta(f[1],a))-wire(t)
  if m==0 or delta<0 or(delta==0 and lams(a)==0):return False
 return True

def maxfree(t,dep=0):
 if t[0]=='v':return max(-1,t[1]-dep)
 if t[0]=='k':return -1
 if t[0]=='l':return maxfree(t[1],dep+1)
 return max(maxfree(t[1],dep),maxfree(t[2],dep))

def jpaths(t,path=(),depth=0):
 if t[0]=='k':return [(path,depth)]
 if t[0]=='v':return []
 if t[0]=='l':return jpaths(t[1],path+(0,),depth+1)
 return jpaths(t[1],path+(1,),depth)+jpaths(t[2],path+(2,),depth)
def prune(t,chosen,path=()):
 if t[0]=='k':return t if path==chosen else D.V(0)
 if t[0]=='v':return t
 if t[0]=='l':return D.L(prune(t[1],chosen,path+(0,)))
 return D.A(prune(t[1],chosen,path+(1,)),prune(t[2],chosen,path+(2,)))
def prices(body,arg):
 global PRICE_CHECKS
 cs,ds=profile(body,3);m,sd,cd=cs;M=ds[0]
 ca,da=profile(arg,2);F=sum(ca);a=wire(arg);LA=lams(arg);LD=lams(body)
 u=D.beta(body,arg);ps=jpaths(u);assert len(ps)==m
 actual=[]
 for path,d in ps:
  v=prune(u,path);change=wire(v,weighted=True)-wire(D.A(D.L(body),arg),weighted=True)
  expected=(m-1)*a+(F-1)*M+4*d-2-4*m-sd-cd
  assert change==expected,(body,arg,d,change,expected)
  assert lams(v)-lams(D.A(D.L(body),arg))==(m-1)*LA-1
  actual.append((change,d));PRICE_CHECKS+=1;assert PRICE_CHECKS<=100000
 if not actual:return False
 upper=max(c for c,d in actual)+4*(min(LD,M)-max(d for c,d in actual))
 return upper>0 or(upper==0 and (m-1)*LA>=1)
@lru_cache(None)
def admissiblej(t):
 if t[0]=='k':return True
 assert t[0]=='a'
 f,a=t[1:];fj=bool(jpaths(f));aj=not fj
 if fj:
  return admissiblej(f) and ordinary(a) and head(f)!='J'
 if not ordinary(f) or not admissiblej(a) or head(f)==1:return False
 if f[0]=='l':return prices(f[1],a)
 return True

def main():
 total=good=jt=jgood=0
 for nf in (2,3):
  for n in range(2,21):
   ts=raw(n,nf);total+=len(ts);assert total<=100000
   got=Counter(key(t,nf) for t in ts if ordinary(t));good+=sum(got.values());assert dict(got)==ct.T(n,nf),(n,nf)
 for n in range(4,21):
  ts=rawj(n);jt+=len(ts);assert jt<=100000
  got=Counter()
  for t in ts:
   if admissiblej(t):
    cs,ds=profile(t,2);got[lams(t),cs[0],cs[1],head(t)]+=1
  jgood+=sum(got.values());assert dict(got)==ct.J(n),(n,len(got),len(ct.J(n)))
 rec=dict(ordinary_sources=total,ordinary_admissible=good,j_sources=jt,j_admissible=jgood,actual_selective_prices=PRICE_CHECKS,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'validate.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
if __name__=='__main__':signal.alarm(110);threading.Thread(target=ct.watch,daemon=True).start();main()
