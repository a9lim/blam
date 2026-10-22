"""Count only: H=((lambda x.D) j) P1..Pp, non-hole pending operands.
No source candidate is instantiated. Every redex in D and in the pending
operands obeys the hole-free minimality filter, with arbitrary multiplicity.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
from collections import defaultdict
import time,json,resource,signal,threading,os
H=Path(__file__).resolve().parent;START=time.monotonic()
def watch():
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
    K,ca,da,g,j,J=ka
    if h=='L':
     delta=(m-1)*(n-2-a)+(sum(ca)-1)*M-4-2*m-sum(cs)
     if m==0 or delta<0 or(delta==0 and K==0):continue
    out[L+K,tuple(x+y for x,y in zip(cs,ca)),tuple(x+y for x,y in zip(ds,da)),'R' if h=='L' else h,0,0]+=v*w
 return dict(out)
@lru_cache(None)
def simple(n):
 out=defaultdict(int)
 for(L,cs,ds,h,m,M),v in T(n,2).items():out[cs[1]]+=v
 return dict(out)
@lru_cache(None)
def tails(n,t,c):
 if n<2*t or c<0:return 0
 if not t:return int(n==0 and c==0)
 return sum(v*tails(n-a,t-1,c-k) for a in range(2,n-2*(t-1)+1) for k,v in simple(a).items())
def blocks(t,p):
 assert 0<=p<=t
 for b in range(2,32-4*t):
  for kd,nd in T(b,3).items():
   L,cs,ds,dh,nb,NB=kd;m,sd,cd=cs
   if not m or dh in(0,2):continue
   if p==0 and dh=='L' and m>4+nb:continue
   for v in range(2*t,32-2*t-b):
    for c in range(v//3+1):
     if not cd+c:continue
     delta=m-4-sd+c
     if delta<1:continue
     nt=tails(v,t,c)
     if nt:yield(b,kd,v,c),nd*nt
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=watch,daemon=True).start();cells={}
 for t in range(0,8):
  for p in range(t+1):cells[f'{t}:{p}']=sum(n for _,n in blocks(t,p))
 rec=dict(cells=cells,total=sum(cells.values()),seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,T_cache=str(T.cache_info()))
 (H/'jbare_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
