"""Count j-bearing direct-head redex arguments; j depth exactly one globally."""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache
from collections import defaultdict
from pathlib import Path
import json,time,signal,resource
H=Path(__file__).resolve().parent
@lru_cache(None)
def arg(n,dep,j):
 # Key s-count,c-count,lambda count. j forbidden inside every lambda.
 if n<2:return {}
 out=defaultdict(int)
 if j:
  if dep==0 and n==4:out[0,0,0]+=1
 else:
  for i in range(dep+2):
   if n==i+2:out[int(i==dep),int(i==dep+1),0]+=1
 if not j:
  for (s,c,L),v in arg(n-2,dep+1,0).items():out[s,c,L+1]+=v
 for a in range(2,n-3):
  for h in range(j+1):
   for (s,c,L),v in arg(a,dep,h).items():
    for (t,e,K),w in arg(n-2-a,dep,j-h).items():out[s+t,c+e,L+K]+=v*w
 return dict(out)
@lru_cache(None)
def body(n,dep):
 # Key x-count,x-depth sum,s-count,c-count,lambda count.
 if n<2:return {}
 out=defaultdict(int)
 for i in range(dep+3):
  if n==i+2:out[int(i==dep),dep if i==dep else 0,int(i==dep+1),int(i==dep+2),0]+=1
 for (m,M,s,c,L),v in body(n-2,dep+1).items():out[m,M,s,c,L+1]+=v
 for a in range(2,n-3):
  for (m,M,s,c,L),v in body(a,dep).items():
   for (k,K,t,e,J),w in body(n-2-a,dep).items():
    if m+k<=8:out[m+k,M+K,s+t,c+e,L+J]+=v*w
 return dict(out)
@lru_cache(None)
def tails(n,t,c):
 if not t:return int(n==0 and c==0)
 if n<2*t or c<0:return 0
 out=0
 for a in range(2,n-2*(t-1)+1):
  for (s,e,L),v in arg(a,0,0).items():out+=v*tails(n-a,t-1,c-e)
 return out

def blocks():
 for t in range(0,9):
  budget=35-2*t
  for a in range(4,budget-2*t-1):
   for ka,na in arg(a,0,1).items():
    sa,ca,LA=ka
    for b in range(2,budget-a-2*t+1):
     for kd,nd in body(b,0).items():
      m,M,sd,cd,LD=kd
      if m<1:continue
      for p in range(2*t,budget-a-b+1):
       for ct in range(p//3+1):
        if ca+cd+ct==0:continue
        delta=(m-1)*a+(sa+ca)*M-3*m-sd+ct+m*ca
        if delta<0 or (delta==0 and LA==0):continue
        nt=tails(p,t,ct)
        if nt:yield (t,m),(a,ka,b,kd,p,ct),na*nd*nt
if __name__=='__main__':
 signal.alarm(100);start=time.monotonic();out=defaultdict(int);small=defaultdict(int)
 for (t,m),block,n in blocks():
  out[t,m]+=n
  if block[0]>=16:small[t,m]+=n
 r={'cells':{f'{t}:{m}':n for (t,m),n in sorted(out.items())},'base_total':sum(out.values()),'all_splits':sum((t+1)*n for (t,m),n in out.items()),'large_argument_cells':{f'{t}:{m}':n for (t,m),n in sorted(small.items())},'large_argument_splits':sum((t+1)*n for (t,m),n in small.items()),'seconds':time.monotonic()-start,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
 (H/'hole_count.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
