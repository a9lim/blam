"""Count every marked linear redex in a j-free first operand, w<=45.
A1=C[(lambda x.D) A]; j lies in the trailing operand list.
Every constructor is retained, including literal-lambda A1.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import importlib.util
H=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('firstopcount',H/'count.py');base=importlib.util.module_from_spec(spec);spec.loader.exec_module(base)
from functools import lru_cache
from collections import defaultdict
import json,time,signal,resource
A=base.A;D=base.D;tails=base.old.tails
@lru_cache(None)
def simple(n,dep,nf,hc):return sum(v for (f,l,c),v in A(n,dep,nf).items() if c==hc)
@lru_cache(None)
def context(n,dep,ell,hc):
 if n<0 or dep>ell:return 0
 if n==0:return int(dep==ell and hc==0)
 ans=context(n-2,dep+1,ell,hc)
 for a in range(2,n-1):
  for c in (0,1):
   for e in (0,1):
    if c|e==hc:ans+=2*simple(a,dep,2,c)*context(n-2-a,dep,ell,e)
 return ans

def blocks():
 for q in range(1,9):
  budget=31-2*q
  for ell in range(9):
   for a in range(2,budget-2*ell+1):
    for ka,na in A(a,0,ell+2).items():
     F,L,ca=ka
     for b in range(2,budget-2*ell-a+1):
      for kd,nd in D(b,0,ell+3).items():
       m,M,T,cd=kd
       if m!=1 or (F-1)*M-6-T<1:continue
       rem=budget-a-b
       for k in range(2*ell,rem+1):
        for cc in (0,1):
         nc=context(k,0,ell,cc)
         if not nc:continue
         for p in range(rem-k+1):
          for tc in (0,1):
           nt=tails(p,q,1,tc)
           if nt and(ca or cd or cc or tc):
            yield (q,ell),(a,ka,b,kd,k,cc,p,tc),na*nd*nc*nt
if __name__=='__main__':
 signal.alarm(100);start=time.monotonic();out=defaultdict(int)
 for key,block,n in blocks():out[key]+=n
 r={'cells':{f'{q}:{ell}':n for(q,ell),n in sorted(out.items())},'total':sum(out.values()),'seconds':time.monotonic()-start,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
 (H/'linear_count.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
