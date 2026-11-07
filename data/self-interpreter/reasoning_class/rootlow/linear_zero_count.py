"""Coefficient-only exact profiles for a linear root with j in its argument.
Histogram entries count all source binders by source use multiplicity.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
import itertools,collections,json,time,resource,signal,threading,os
H=Path(__file__).resolve().parent;START=time.monotonic();K=1;JD=0

def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def add(a,b):return tuple(x+y for x,y in zip(a,b))
def leaves(s):e,c,j,h,T=s;return sum(e)+c+j+sum(i*q for i,q in enumerate(h))
def fr(s):return sum(s[0])+s[1]+4*s[2]
def wt(s):e,c,j,h,T=s;return 2*sum(h)+4*leaves(s)-2-2*j+T+4*JD*j
@lru_cache(None)
def histparts(h):
 return tuple((a,tuple(q-v for q,v in zip(h,a))) for a in itertools.product(*(range(q+1) for q in h)))
@lru_cache(None)
def parts(s):
 e,c,j,h,T=s;out=[]
 for el in itertools.product(*(range(q+1) for q in e)):
  er=tuple(q-v for q,v in zip(e,el))
  for cl,jl in itertools.product(range(c+1),range(j+1)):
   for hl,hr in histparts(h):
    al=(el,cl,jl,hl,0);ar=(er,c-cl,j-jl,hr,0)
    if not leaves(al) or not leaves(ar):continue
    for tax in range(T+1):out.append((al[:-1]+(tax,),ar[:-1]+(T-tax,)))
 return tuple(out)
def redex_ok(a,af,b,bf):
 if not af[1]:return True
 m,M,sink=af[1]
 if not m or sink:return False
 if m>1 and b[2]:return True
 delta=(m-1)*wt(b)+(fr(b)-1)*M-4-2*m-fr(a)
 return delta>0 or delta==0 and (m-1)*sum(b[3])-1>=0

def combine(a,af,b,bf):
 # feature = (outer moments, top lambda metadata, syntactic head, sink vector)
 if not redex_ok(a,af,b,bf):return None
 if af[2]==-2:return None # j applied at a persistent rigid head
 if af[2]==len(a[0]) and (a[2] or b[2]):return None # j shielded by rigid c
 if JD==0 and af[1] and b[2] and leaves(b)==1 and not sum(b[3]):return None
 e=a[0];ee=b[0]
 sink=tuple(fr(a)+bf[3][i] if not e[i] and ee[i] else fr(b)+af[3][i] if e[i] and not ee[i] else 0 for i in range(len(e)))
 need=max(0,af[4]-b[1],bf[4]-a[1])
 if af[1] and b[2]:
  m,M,_=af[1]
  charge=3*m-(m-1)*wt(b)-(sum(b[0])+b[1])*M+sum(a[0])-m*b[1]
  if (m-1)*sum(b[3])==0:charge+=1
  need=max(need,charge)
 jp=bool(len(e) and ((b[2] and b[0][0]>0) or (a[2] and (af[6] or b[0][0]>0))))
 return add(af[0],bf[0]),(),af[2],sink,need,(),jp
@lru_cache(None)
def count(s):
 e,c,j,h,T=s;dep=len(e);out=collections.Counter();zero=(0,)*dep
 if not leaves(s) or (j and dep>JD):return out
 if sum(i*q for i,q in enumerate(e))+dep*c>T:return out
 if not sum(h) and leaves(s)==1:
  if c==1 and T==dep:out[zero,(),dep,zero,0,(),False]+=1
  if j==1 and dep==JD and T==0:out[zero,(),-2,zero,0,(),False]+=1
  if c+j==0 and sum(e)==1 and T==e.index(1):out[zero,(),e.index(1),zero,0,(),False]+=1
 for r,num in enumerate(h):
  if num:
   hh=list(h);hh[r]-=1;bs=((r,)+e,c,j,tuple(hh),T)
   for (mom,top,head,sink,need,chain,jp),n in count(bs).items():out[add(mom[1:],e),(r,mom[0],sink[0]),-1,zero,need,(r,)+chain,False]+=n
 for a,b in parts(s):
  ac=count(a)
  if not ac:continue
  bc=count(b)
  for af,na in ac.items():
   for bf,nb in bc.items():
    key=combine(a,af,b,bf)
    if key is not None:out[key]+=na*nb
 return out
@lru_cache(None)
def fparts(s):
 e,c,j,h,T=s;assert not e;out=[]
 for cl,jl in itertools.product(range(c+1),range(j+1)):
  for hl,hr in histparts(h):
   al=((),cl,jl,hl,0);ar=((),c-cl,j-jl,hr,0)
   if not leaves(al):continue
   for tax in range(T+1):out.append((al[:-1]+(tax,),ar[:-1]+(T-tax,)))
 return tuple(out)
@lru_cache(None)
def forest(s,t):
 if not t:return int(s==((),0,0,(0,)*len(s[3]),0))
 if not leaves(s):return 0
 return sum(sum(count(a).values())*forest(b,t-1) for a,b in fparts(s))
@lru_cache(None)
def hists(n,u):
 out=[]
 # at least two live binders, one nonlinear, besides root.
 for h in itertools.product(range(n+1),repeat=min(u,6)+1):
  if sum(h)==n and sum(i*q for i,q in enumerate(h))==u and sum(h[1:])>=2 and sum(h[2:])>=1:out.append(h+(0,)*(7-len(h)))
 return tuple(out)

def roots():
 profiles=json.loads((H/'linear_zero_scalars.json').read_text())['rows']
 for f,c,cc,M,L,V,T,w in profiles:
  for hist in hists(L-1,V-f-c-cc-2):
   for hb,rest in histparts(hist):
    if sum(hb)<M:continue
    for ha,hp in histparts(rest):
     if not sum(ha):continue
     for Tb in range(M+c,T+1):
      b=((1,),c,0,hb,Tb);bc=count(b)
      if not bc:continue
      for Ta in range(T-Tb+1):
       a=((),f,1,ha,Ta);cs=((),cc,0,hp,T-Tb-Ta)
       ac=count(a)
       if not ac:continue
       for bf,nb in bc.items():
        if bf[0]!=(M,) or bf[2] not in (0,-1) or bf[3][0]:continue
        for t in range(leaves(cs)+1):
         nc=forest(cs,t)
         if not nc:continue
         h=len(bf[5])
         if h>t+1 or h==t+1 and bf[5][-1]==0:continue
         for af,na in ac.items():
           yield (L,T,b,a,cs,bf,af,t),nb*na*nc

if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start()
 stats=collections.Counter();blocks=0
 for key,n in roots():
  L,T,b,a,cs,bf,af,t=key;stats[('B' if b[2] else 'A' if a[2] else 'Cs','lambda' if bf[1] else 'x' if bf[2]==0 else 'nested',t)]+=n;blocks+=1
 rec=dict(total=sum(stats.values()),cells={str(k):v for k,v in stats.items()},blocks=blocks,states=count.cache_info().currsize,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'linear_zero_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
