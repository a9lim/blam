"""Count marked2..5-use redexes in non-lambda, j-free first operand.
No source terms are instantiated. Hole in tails is at global depth1.
"""
import sys
sys.dont_write_bytecode=True
import linear_count as lc
from functools import lru_cache
from collections import defaultdict
from pathlib import Path
import json,time,resource,signal
H=Path(__file__).resolve().parent
A,D=lc.A,lc.D
@lru_cache(None)
def tail(n,dep,j,c):
 if n<0:return 0
 out=int(j==1 and dep==0 and n==0 and c==0)
 if j==0:
  for i in range(dep+2):out+=int(n==i+2 and c==int(i==dep+1))
  out+=tail(n-2,dep+1,0,c)
 for a in range(n-1):
  for k in range(j+1):
   for f in (0,1):
    for g in (0,1):
     if f|g==c:out+=tail(a,dep,k,f)*tail(n-2-a,dep,j-k,g)
 return out
@lru_cache(None)
def tails(n,q,j,c):
 if n<0:return 0
 if not q:return int(n==0 and j==0 and c==0)
 out=0
 for a in range(n+1):
  for k in range(j+1):
   for f in (0,1):
    for g in (0,1):
     if f|g==c:out+=tail(a,0,k,f)*tails(n-a,q-1,j-k,g)
 return out
@lru_cache(None)
def context(n,ell,c):
 return lc.context(n,0,ell,c)-(lc.context(n-2,1,ell,c) if n>=2 else 0)
def blocks(q):
 budget=31-2*q
 for ell in range(9):
  for a in range(2,budget-2*ell-5):
   for ka,na in A(a,0,ell+2).items():
    F,L,ca=ka
    for b in range(6,budget-a-2*ell+1):
     for kd,nd in D(b,0,ell+3).items():
      m,M,T,cd=kd
      if not 2<=m<=5:continue
      delta=(m-1)*a+(F-1)*M-4-2*m-T
      if delta<0 or(delta==0 and L==0):continue
      rem=budget-a-b
      for k in range(2*ell,rem+1):
       for cc in (0,1):
        nc=context(k,ell,cc)
        if not nc:continue
        for p in range(rem-k+1):
         for tc in (0,1):
          nt=tails(p,q,1,tc)
          if nt and(ca or cd or cc or tc):
           loc='A' if ca else 'D' if cd else 'C' if cc else 'tail'
           yield (q,m,ell,loc),(a,ka,b,kd,k,cc,p,tc),na*nd*nc*nt
if __name__=='__main__':
 signal.alarm(110);start=time.monotonic();out=defaultdict(int)
 for q in range(1,9):
  for key,block,n in blocks(q):out[key]+=n
 rec={'cells':{':'.join(map(str,k)):v for k,v in sorted(out.items())},'by_arity':{str(q):sum(v for(q1,m,e,c),v in out.items() if q1==q) for q in range(1,9)},'total':sum(out.values()),'seconds':time.monotonic()-start,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
 (H/'nonlinear_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
