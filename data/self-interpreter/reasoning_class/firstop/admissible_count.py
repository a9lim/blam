"""Exact counts for j-free source terms satisfying EVERY local redex filter.
The complete first-operand inventory uses these terms for marked A,D.
A key retains lambda count, all free multiplicities and depth sums,
syntactic head (L/R/free index), and the root-lambda parameter profile.
"""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache
from collections import defaultdict
from pathlib import Path
import json,time,resource,signal,threading,os
import nonlinear_count as ct
H=Path(__file__).resolve().parent
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>105 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
@lru_cache(None)
def T(n,nf):
 if n<2:return {}
 out=defaultdict(int);zs=(0,)*nf
 for i in range(nf):
  if i+2==n:
   cs=list(zs);cs[i]=1;out[0,tuple(cs),zs,i,0,0]+=1
 for (L,cs,ds,h,m,M),v in T(n-2,nf+1).items():
  out[L+1,cs[1:],tuple(d+c for d,c in zip(ds[1:],cs[1:])),'L',cs[0],ds[0]]+=v
 for a in range(2,n-3):
  for kf,v in T(a,nf).items():
   L,cs,ds,h,m,M=kf
   for ka,w in T(n-2-a,nf).items():
    K,ctt,dt,g,j,J=ka
    if h=='L':
     delta=(m-1)*(n-2-a)+(sum(ctt)-1)*M-4-2*m-sum(cs)
     if not 2<=m<=5 or delta<0 or(delta==0 and K==0):continue
    out[L+K,tuple(x+y for x,y in zip(cs,ctt)),tuple(x+y for x,y in zip(ds,dt)),'R' if h=='L' else h,0,0]+=v*w
 return dict(out)
@lru_cache(None)
def A(n,nf):
 out=defaultdict(int)
 for(L,cs,ds,h,m,M),v in T(n,nf).items():out[sum(cs),L,int(cs[-1]>0),h]+=v
 return dict(out)
@lru_cache(None)
def D(n,nf):
 out=defaultdict(int)
 for(L,cs,ds,h,m,M),v in T(n,nf).items():out[cs[0],ds[0],sum(cs[1:]),int(cs[-1]>0),h,m if h=='L' else 0]+=v
 return dict(out)

def blocks(q):
 budget=31-2*q
 for ell in range(12):
  for a in range(2,budget-2*ell-5):
   for ka,na in A(a,ell+2).items():
    F,L,ca,ah=ka
    for b in range(6,budget-a-2*ell+1):
     for kd,nd in D(b,ell+3).items():
      m,M,G,cd,dh,nb=kd
      if not 2<=m<=5:continue
      delta=(m-1)*a+(F-1)*M-4-2*m-G
      if delta<0 or(delta==0 and L==0):continue
      rem=budget-a-b
      for k in range(2*ell,rem+1):
       for cc in (0,1):
        nc=ct.context(k,ell,cc)
        if not nc:continue
        if k==0 and dh==2:continue
        if k==0 and dh==0 and ah==1:continue
        if k==0 and dh=='L' and not m<F+nb:continue
        for p in range(rem-k+1):
         for tc in (0,1):
          nt=ct.tails(p,q,1,tc)
          if nt and(ca or cd or cc or tc):
           loc='A' if ca else 'D' if cd else 'C' if cc else 'tail'
           yield(q,m,ell,loc),(a,ka,b,kd,k,cc,p,tc),na*nd*nc*nt
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=watchdog,daemon=True).start();out=defaultdict(int)
 for q in range(1,9):
  for key,block,n in blocks(q):out[key]+=n
 rec={'cells':{':'.join(map(str,k)):v for k,v in sorted(out.items())},'by_arity':{str(q):sum(v for(q1,*_),v in out.items() if q1==q) for q in range(1,9)},'total':sum(out.values()),'seconds':time.monotonic()-START,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,'cache_states':sum(len(v) for v in []),'T_cache':str(T.cache_info())}
 (H/'admissible_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
