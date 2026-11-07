"""Count minimum-admissible source components, without term layouts.
Every j-free beta redex must have positive contraction price, or zero
price without decreasing source lambda count. No normalization is assumed.
Features (uses vector, depth vector, lambdas, head, lambda metadata,
root-spine per-variable number of arguments containing that variable).
"""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache
from collections import defaultdict,Counter
from pathlib import Path
import json,time,signal,resource,threading,os
H=Path(__file__).resolve().parent
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)

def plus(a,b):return tuple(x+y for x,y in zip(a,b))

def combine(kf,ka,acost,j,fcost=None):
 v,M,L,h,meta,args,sink,need=kf;vv,MM,LL,hh,mm,aa,ss,req=ka
 if h=='lam':
  m,D,G,sk,ch=meta
  if not m or sk:return None
  if not j:
   delta=(m-1)*acost+(sum(vv)-1)*D-4-2*m-G
   if delta<0 or (delta==0 and (m-1)*LL-1<0):return None
 outneed=0
 if j:
  # Only j-bearing child has a nonzero requirement; either child can be j-free
  # but need=0 there, so max with negative sibling charges is harmless.
  outneed=max(0,need-vv[-1],req-v[-1])
  if h=='lam':
   # j must be in the argument (no hole occurs beneath any lambda).
   m,D,G,sk,ch=meta
   direct=4-(m-1)*acost-sum(vv)*D-m+v[0]-m*vv[1]
   if (m-1)*LL==0:direct+=1 # lambda/depth tie of the root hoist
   outneed=max(outneed,direct)
 outsink=tuple(sum(v)+ss[i] if not v[i] and vv[i] else sum(vv)+sink[i] if v[i] and not vv[i] else 0 for i in range(len(v)))
 return plus(v,vv),plus(M,MM),L+LL,'redex' if h in ('lam','redex') else h,(),plus(args,tuple(int(x>0) for x in vv)),outsink,outneed

@lru_cache(None)
def terms(n,nf,j):
 if n<0 or j not in (0,1):return {}
 out=defaultdict(int);z=(0,)*nf
 if j and n==0:out[z,z,0,'j',(),z,z,0]+=1
 if not j:
  for i in range(nf):
   if n==i+2:out[tuple(int(i==k) for k in range(nf)),z,0,str(i),(),z,z,0]+=1
  for (v,M,L,h,meta,args,sink,need),num in terms(n-2,nf+1,0).items():
   ch=meta[4] if h=='lam' else h
   ch=('bound' if ch=='0' else str(int(ch)-1)) if ch.isdigit() else ch
   out[v[1:],plus(M[1:],v[1:]),L+1,'lam',(v[0],M[0],sum(v[1:]),sink[0],ch),z,z,0]+=num
 for a in range(n-1):
  for k in range(j+1):
   for kf,num in terms(a,nf,k).items():
    for ka,nn in terms(n-2-a,nf,j-k).items():
     key=combine(kf,ka,n-2-a,j,a)
     if key is not None:out[key]+=num*nn
 return dict(out)

@lru_cache(None)
def pending(n,j):
 if n<0:return {}
 if n==0:return {(0,0,0,0):1} if j==0 else {}
 out=defaultdict(int)
 for a in range(n-1):
  for k in range(j+1):
   for (v,M,L,h,meta,args,sink,need),num in terms(a,2,k).items():
    for (s,c,l,r),nn in pending(n-2-a,j-k).items():out[v[0]+s,v[1]+c,L+l,max(0,need-c,r-v[1])]+=num*nn
 return dict(out)

def blocks(m,cell=None):
 assert m==1
 for ja in (0,1):
  if not ja:continue
  if cell and cell[2]!=('A' if ja else 'C'):continue
  for a in range(4 if not ja else 6,38-4*m):
   for ka,na in terms(a,2,ja).items():
    (sa,ca),Ma,la,ha,_,_,_,needA=ka
    if not la:continue
    for b in range(4*m-2,36-a):
     for kb,nb in terms(b,3,0).items():
      (mb,sb,cb),Ms,lb,hb,_,args,sinkB,_=kb;M=Ms[0]
      if mb!=m or hb=='2' or sinkB[0]:continue
      if hb!='redex':continue
      if (sa+ca+3)*M < 7+sb+cb:continue # linear beta contraction removes one lambda
      if hb=='lam' and kb[4][0]<m:continue # independent binder/argument swap
      if hb=='1' and args[0]<2:continue # exact let-sinking theorem
      if cell and hb!=cell[1]:continue
      if hb=='0' and (ha in ('1','j') or (ha=='lam' and ka[4][4]=='1')):continue # A's rigid c/j head survives x-headed B
      for p in range(36-a-b):
       for kp,np in pending(p,1-ja).items():
        sp,cp,lp,needP=kp
        if needA>cb+cp or needP>ca+cb:continue
        if not ca+cb+cp or not sa+sb+sp:continue
        if ja:delta=(m-1)*a+(sa+ca)*M+m-4-sb+m*ca+cp
        else:delta=(m-1)*a+(sa+ca-1)*M-2*m-4-sb-cb
        if delta<1:continue # linear contraction+hoist preserves lambdas, reduces hole depth
        if hb=='lam' and p==0:continue
        cloc='A' if ca else 'B' if cb else 'C'
        key=(m,hb,'A' if ja else 'C',cloc)
        if cell and key!=cell:continue
        yield key,(a,ka,b,kb,p,kp,ja),na*nb*np

if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start()
 m=int(sys.argv[1]);r=Counter()
 for key,block,n in blocks(m):r[':'.join(map(str,key))]+=n
 out=dict(m=m,cells=dict(sorted(r.items())),total=sum(r.values()),seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/f'minimum{m}.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
