import sys
sys.dont_write_bytecode=True
import linear_zero_count as f
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent.parent/'jn'))
import dbn as d
from functools import lru_cache
@lru_cache(None)
def gen(s,key):
 if not f.count(s).get(key):return ()
 e,c,j,h,T=s;dep=len(e);out=[];zero=(0,)*dep
 if not sum(h) and f.leaves(s)==1:
  if c==1 and T==dep and key==(zero,(),dep,zero,0,(),False):out.append(d.V(dep))
  if j==1 and dep==f.JD and T==0 and key==(zero,(),-2,zero,0,(),False):out.append(d.Kc('j'))
  if c+j==0 and sum(e)==1 and T==e.index(1) and key==(zero,(),e.index(1),zero,0,(),False):out.append(d.V(e.index(1)))
 for r,num in enumerate(h):
  if num:
   hh=list(h);hh[r]-=1;bs=((r,)+e,c,j,tuple(hh),T)
   for bk,n in f.count(bs).items():
    mk=f.add(bk[0][1:],e),(r,bk[0][0],bk[3][0]),-1,zero,bk[4],(r,)+bk[5],False
    if mk==key:out.extend(d.L(b) for b in gen(bs,bk))
 for a,b in f.parts(s):
  ac=f.count(a)
  if not ac:continue
  bc=f.count(b)
  for af,na in ac.items():
   for bf,nb in bc.items():
    if f.combine(a,af,b,bf)==key:out.extend(d.A(x,y) for x in gen(a,af) for y in gen(b,bf))
 assert len(out)==f.count(s)[key],(s,key,len(out),f.count(s)[key])
 return tuple(out)
@lru_cache(None)
def forest(s,t):
 if not t:return ((),) if f.forest(s,t) else ()
 out=[]
 for a,b in f.fparts(s):
  if not f.forest(b,t-1):continue
  for af,n in f.count(a).items():out.extend((x,)+ys for x in gen(a,af) for ys in forest(b,t-1))
 assert len(out)==f.forest(s,t)
 return tuple(out)
def sources(fA):
 for key,n in f.roots():
  L,T,b,a,cs,bf,af,t=key
  if fA is not None and a[1]!=fA:continue
  emitted=0
  for B in gen(b,bf):
   for A in gen(a,af):
    for Cs in forest(cs,t):
     R=d.A(d.L(B),A)
     for C in Cs:R=d.A(R,C)
     emitted+=1
     yield R,dict(L=L,tax=T,lambda_prefix=len(bf[5]),pending=t,M=bf[0][0])
  assert emitted==n
