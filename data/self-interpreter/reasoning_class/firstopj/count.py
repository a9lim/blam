"""Count-only direct j-bearing head-let cells after necessary source prices.
No source syntax is instantiated. j-free redex restrictions are inherited
from the exact constructor recurrence in firstop/jbare_count.py.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
from collections import defaultdict
import time,json,resource,signal,threading,os
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'firstop'))
import jbare_count as base
T=base.T
START=time.monotonic()
def watch():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>105 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)

def selective(a,LA,F,kd):
 LD,cs,ds,h,nb,NB=kd
 m,sd,cd=cs;M=ds[0];dmax=min(LD,M)
 S=(m-1)*a+(F-1)*M+4*dmax-2-4*m-sd-cd
 return S>0 or(S==0 and (m-1)*LA>=1)

@lru_cache(None)
def J(n):
 # j at source depth one: no lambda can enclose it. Key L,s,c,head.
 if n<4:return {}
 out=defaultdict(int)
 if n==4:out[0,0,0,'J']=1
 for a in range(2,n-5):
  b=n-2-a
  for kf,nf in T(a,2).items():
   LF,cs,ds,h,m,M=kf
   if h==1:continue # c shields j permanently on zero.
   for (LA,sa,ca,ha),na in J(b).items():
    if h=='L':
     if not m:continue
     # A reader's only j is in this local argument. Use the upper bound
     # min(lambda count of D, total x depth) on the selected use depth.
     LD=LF-1;sd,cd=cs
     S=(m-1)*b+(sa+ca-1)*M+4*min(LD,M)-2-4*m-sd-cd
     if S<0 or(S==0 and (m-1)*LA<1):continue
    out[LF+LA,cs[0]+sa,cs[1]+ca,'R' if h=='L' else h]+=nf*na
 for a in range(4,n-3):
  b=n-2-a
  for (LF,sf,cf,hf),nf in J(a).items():
   if hf=='J':continue # a rigid j head can never lose an operand.
   for (LA,ca,da,ha,m,M),na in T(b,2).items():
    out[LF+LA,sf+ca[0],cf+ca[1],hf]+=nf*na
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

def blocks(t,p,mlo=1,mhi=9):
 assert 0<=p<=t
 # R=lambda s. s (((lambda x.D) A) P_1..P_p) T_1..T_(t-p).
 # w=10+a+d+2t+sum|P,T|. Nontrivial A has a>=8.
 for a in range(8,34-4*t):
  for ka,na in J(a).items():
   LA,sa,ca,ha=ka
   for b in range(2,36-4*t-a):
    for kd,nd in T(b,3).items():
     LD,cs,ds,dh,nb,NB=kd;m,sd,cd=cs;M=ds[0]
     if not mlo<=m<=mhi or dh==2:continue
     if not selective(a,LA,sa+ca,kd):continue
     if p==0 and dh=='L' and m>sa+ca+4+nb:continue
     for v in range(2*t,36-2*t-a-b):
      for co in range(v//3+1):
       if not ca+cd+co:continue
       delta=(m-1)*a+(sa+ca)*M-3*m-sd+co+m*ca
       if delta<0 or(delta==0 and(m==1 or LA==0)):continue
       nt=tails(v,t,co)
       if nt:yield(a,ka,b,kd,v,co),na*nd*nt

if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=watch,daemon=True).start()
 cells={};mult=defaultdict(int)
 for t in range(7):
  for p in range(t+1):
   total=0
   for block,num in blocks(t,p):
    m=block[3][1][0];mult[t,p,m]+=num;total+=num
   cells[f'{t}:{p}']=total
 rec=dict(cells=cells,multiplicity={':'.join(map(str,k)):v for k,v in mult.items()},total=sum(cells.values()),seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
