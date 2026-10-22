"""Counting ONLY: direct-head source redex, hole in pending operands."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent.parent/'handlerlet'))
import count as old
from functools import lru_cache
from collections import defaultdict
import time,resource,signal,json
H=Path(__file__).resolve().parent
# Use old's constructor-proved argument features and exact tail lists.
A=old.A
@lru_cache(None)
def D(n,dep,nf):
 if n<2:return {}
 out=defaultdict(int)
 for i in range(dep+nf):
  if i+2==n:out[(int(i==dep),dep if i==dep else 0,int(i>dep),int(i==dep+nf-1))]+=1
 for key,v in D(n-2,dep+1,nf).items():out[key]+=v
 for a in range(2,n-3):
  for (m,M,T,c),v in D(a,dep,nf).items():
   for (k,K,U,e),w in D(n-2-a,dep,nf).items():
    if m+k<=7:out[m+k,M+K,T+U,c|e]+=v*w
 return dict(out)

def blocks():
 for t in range(1,7):
  budget=31-2*t
  for a in range(2,budget-5):
   for ka,na in A(a,0,2).items():
    F,L,ca=ka
    for b in range(2,budget-a+1):
     for kd,nd in D(b,0,3).items():
      m,M,T,cd=kd
      if m<1:continue
      delta=(m-1)*a+(F-1)*M-4-2*m-T
      if delta<0 or (delta==0 and L==0):continue
      if m==1 and delta==0:continue
      rem=budget-a-b
      for p in range(rem+1):
       for ct in (0,1):
        nt=old.tails(p,t,1,ct)
        if nt and (ca or cd or ct):
         yield (t,m),(a,ka,b,kd,p,ct),na*nd*nt
if __name__=='__main__':
 signal.alarm(100);start=time.monotonic();out=defaultdict(int)
 for key,block,n in blocks():out[key]+=n
 r={'cells':{f'{t}:{m}':n for (t,m),n in sorted(out.items())},'base_total':sum(out.values()),'sources_with_pq_splits':sum((t+1)*n for (t,m),n in out.items()),'seconds':time.monotonic()-start,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
 (H/'count.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
