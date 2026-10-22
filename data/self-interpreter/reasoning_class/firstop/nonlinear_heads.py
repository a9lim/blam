"""Count before generation, keeping literal spine-head categories."""
import sys
sys.dont_write_bytecode=True
import nonlinear_count as ct
from functools import lru_cache
from collections import defaultdict
from pathlib import Path
import json,time,resource,signal
H=Path(__file__).resolve().parent
@lru_cache(None)
def A(n,dep,nf):
 if n<2:return {}
 out=defaultdict(int)
 for i in range(dep+nf):
  if i+2==n:out[int(i>=dep),0,int(i==dep+nf-1),i]+=1
 for (f,l,c,h),v in A(n-2,dep+1,nf).items():out[f,l+1,c,'L']+=v
 for a in range(2,n-3):
  for (f,l,c,h),v in A(a,dep,nf).items():
   for (g,k,e,j),w in A(n-2-a,dep,nf).items():out[f+g,l+k,c|e,'R' if h=='L' else h]+=v*w
 return dict(out)
@lru_cache(None)
def D(n,dep,nf):
 if n<2:return {}
 out=defaultdict(int)
 for i in range(dep+nf):
  if i+2==n:out[int(i==dep),dep if i==dep else 0,int(i>dep),int(i==dep+nf-1),i]+=1
 for (m,M,T,c,h),v in D(n-2,dep+1,nf).items():out[m,M,T,c,'L']+=v
 for a in range(2,n-3):
  for (m,M,T,c,h),v in D(a,dep,nf).items():
   for (k,K,U,e,j),w in D(n-2-a,dep,nf).items():
    if m+k<=5:out[m+k,M+K,T+U,c|e,'R' if h=='L' else h]+=v*w
 return dict(out)
# B in [b,x,context...,s,c], counting b and x separately.
@lru_cache(None)
def E(n,dep,nf):
 if n<2:return {}
 out=defaultdict(int)
 for i in range(dep+nf):
  if i+2==n:out[int(i==dep+1),dep if i==dep+1 else 0,int(i>dep+1),int(i==dep+nf-1),int(i==dep)]+=1
 for key,v in E(n-2,dep+1,nf).items():out[key]+=v
 for a in range(2,n-3):
  for (m,M,T,c,b),v in E(a,dep,nf).items():
   for (k,K,U,e,d),w in E(n-2-a,dep,nf).items():
    if m+k<=5:out[m+k,M+K,T+U,c|e,b+d]+=v*w
 return dict(out)

def blocks(q):
 budget=31-2*q
 for ell in range(9):
  for a in range(2,budget-2*ell-5):
   for ka,na in A(a,0,ell+2).items():
    F,L,ca,ah=ka
    for b in range(6,budget-a-2*ell+1):
     for kd,nd in D(b,0,ell+3).items():
      m,M,T,cd,dh=kd
      if not 2<=m<=5:continue
      delta=(m-1)*a+(F-1)*M-4-2*m-T
      if delta<0 or(delta==0 and L==0):continue
      rem=budget-a-b
      for k in range(2*ell,rem+1):
       for cc in (0,1):
        nc=ct.context(k,ell,cc)
        if not nc:continue
        # A source c head in whole D cannot yield the zero head.
        if k==0 and dh==2:continue
        # Whole D headed by x, receiving an A headed by rigid c.
        if k==0 and dh==0 and ah==1:continue
        ndgood=nd
        # Strict lambda-sink filter at the whole-first-operand redex.
        if k==0 and dh=='L':
         ndgood=sum(v for(m1,M1,T1,c1,nb),v in E(b-2,0,4).items() if (m1,M1+m1,T1,c1)==(m,M,T,cd) and m<F+nb)
         if not ndgood:continue
        for p in range(rem-k+1):
         for tc in (0,1):
          nt=ct.tails(p,q,1,tc)
          if nt and(ca or cd or cc or tc):
           dhname='lambda' if dh=='L' else 'redex' if dh=='R' else 'x' if dh==0 else 's' if dh==ell+1 else 'c' if dh==ell+2 else 'bound'
           loc='A' if ca else 'D' if cd else 'C' if cc else 'tail'
           yield (q,m,ell,loc,dhname),(a,ka,b,kd,k,cc,p,tc),na*ndgood*nc*nt
if __name__=='__main__':
 signal.alarm(110);start=time.monotonic();out=defaultdict(int)
 for q in range(1,9):
  for key,block,n in blocks(q):out[key]+=n
 rec={'cells':{':'.join(map(str,k)):v for k,v in sorted(out.items())},'by_q_head':{f'{q}:{dh}':sum(v for(q1,m,e,c,h),v in out.items() if q1==q and h==dh) for q in range(1,5) for dh in ('lambda','redex','x','s','c','bound')},'by_arity':{str(q):sum(v for(q1,*_),v in out.items() if q1==q) for q in range(1,9)},'total':sum(out.values()),'seconds':time.monotonic()-start,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
 (H/'nonlinear_heads.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k!='cells'},indent=2))
