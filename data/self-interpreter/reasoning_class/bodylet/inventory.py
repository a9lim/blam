"""Exact cardinalities only; source constructors are not materialized.
Features: outward occurrence vector, depth sum for first outward variable,
lambda count, source head (x/s/c, lambda, or redex). Hole only at depth zero.
"""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache
from collections import defaultdict,Counter
from pathlib import Path
import json,time,signal,resource
H=Path(__file__).resolve().parent

@lru_cache(None)
def terms(n,dep,nf,j):
 if n<0 or j not in (0,1) or (dep and j):return {}
 out=defaultdict(int)
 if j and n==0:out[((0,)*nf,0,0,'j')]+=1
 if not j:
  for i in range(dep+nf):
   if n!=i+2:continue
   v=tuple(int(i==dep+k) for k in range(nf))
   out[v,dep if i==dep else 0,0,str(i-dep) if i>=dep else 'bound']+=1
  for (v,M,L,h),num in terms(n-2,dep+1,nf,0).items():out[v,M,L+1,'lam']+=num
 for a in range(n-1):
  for k in range(j+1):
   for (v,M,L,h),num in terms(a,dep,nf,k).items():
    for (vv,MM,LL,hh),nn in terms(n-2-a,dep,nf,j-k).items():
     vvv=tuple(x+y for x,y in zip(v,vv))
     if nf==3 and vvv[0]>4:continue
     head='redex' if h in ('lam','redex') else h
     out[vvv,M+MM,L+LL,head]+=num*nn
 return dict(out)

@lru_cache(None)
def pending(n,j):
 if n<0:return {}
 if n==0:return {(0,0,0):1} if j==0 else {}
 out=defaultdict(int)
 for a in range(n-1):
  for k in range(j+1):
   for (v,M,L,h),num in terms(a,0,2,k).items():
    for (s,c,l),nn in pending(n-2-a,j-k).items():out[v[0]+s,v[1]+c,L+l]+=num*nn
 return dict(out)

def blocks(m):
 for ja in (0,1):
  for a in range(4 if not ja else 6,38-4*m):
   for ka,na in terms(a,0,2,ja).items():
    (sa,ca),Ma,la,ha=ka
    if not la:continue
    for b in range(4*m-2,36-a):
     for kb,nb in terms(b,0,3,0).items():
      (mb,sb,cb),M,lb,hb=kb
      if mb!=m or hb=='2':continue # rigid c head fails zero
      for p in range(36-a-b):
       for kp,np in pending(p,1-ja).items():
        sp,cp,lp=kp
        if not ca+cb+cp or not sa+sb+sp:continue
        if ja:delta=(m-1)*a+(sa+ca)*M+m-4-sb+m*ca+cp
        else:delta=(m-1)*a+(sa+ca-1)*M-2*m-4-sb-cb
        if delta<0:continue
        if hb=='lam' and p==0:continue # no pending means residual lambda
        cloc='A' if ca else 'B' if cb else 'C'
        yield (m,hb,'A' if ja else 'C',cloc),(a,ka,b,kb,p,kp,ja),na*nb*np

if __name__=='__main__':
 signal.alarm(110);start=time.monotonic();m=int(sys.argv[1]);r=Counter()
 for key,block,n in blocks(m):r[':'.join(map(str,key))]+=n
 out=dict(m=m,cells=dict(sorted(r.items())),total=sum(r.values()),seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'inventory{m}.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
