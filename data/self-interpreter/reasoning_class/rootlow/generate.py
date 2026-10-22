"""Feature-directed constructor; never materializes rejected root candidates."""
import sys
sys.dont_write_bytecode=True
import filtered as f
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent.parent/'jn'))
import dbn as d
import functools

@functools.lru_cache(None)
def gen(s,key):
 if not f.count(s).get(key):return ()
 e,c,j,z,o,t,T=s;dep=len(e);out=[]
 if not(z+o+t) and f.leaves(s)==1:
  if c==1 and T==dep and key==((0,)*dep,(),dep,False,False):out.append(d.V(dep))
  if j==1 and dep==f.JD and T==0 and key==((0,)*dep,(),-2,False,False):out.append(d.Kc('j'))
  if c+j==0 and sum(e)==1 and T==e.index(1) and key==((0,)*dep,(),e.index(1),False,False):out.append(d.V(e.index(1)))
 for r,num in enumerate((z,o,t)):
  if num:
   sub=[z,o,t];sub[r]-=1;bs=((r,)+e,c,j,*sub,T)
   for bk,n in f.count(bs).items():
    mk=(f.addmom(bk[0][1:],e),(r,bk[0][0]),-1,False,False)
    if mk==key:out.extend(d.L(b) for b in gen(bs,bk))
 for a,b in f.parts(s):
  ac=f.count(a)
  if not ac:continue
  bc=f.count(b)
  if not bc:continue
  for af,na in ac.items():
   for bf,nb in bc.items():
    if not f.redex_ok(a,af,b,bf):continue
    jp=bool(dep and ((b[2] and b[0][0]>0) or (a[2] and (af[3] or b[0][0]>0))))
    fp=(bool(dep and b[0][0]==1 and f.leaves(b)==1 and not sum(b[3:6])) if f.leaves(a)==1 and not sum(a[3:6]) else af[4])
    mk=(f.addmom(af[0],bf[0]),(),af[2],jp,fp)
    if mk==key:out.extend(d.A(x,y) for x in gen(a,af) for y in gen(b,bf))
 assert len(out)==f.count(s)[key],(s,key,len(out),f.count(s)[key])
 return tuple(out)

@functools.lru_cache(None)
def forest(s):
 if not f.leaves(s):return ((),) if s==((),0,0,0,0,0,0) else ()
 out=[]
 for a,b in f.fparts(s):
  if not f.forest(b):continue
  for af,n in f.count(a).items():out.extend((x,)+ys for x in gen(a,af) for ys in forest(b))
 assert len(out)==f.forest(s)
 return tuple(out)

def sources(loc):
 for key,n in f.roots():
  L,T,b,a,cs,bf,af=key
  where='B' if b[2] else 'A' if a[2] else 'Cs'
  if where!=loc:continue
  emitted=0
  for B in gen(b,bf):
   for A in gen(a,af):
    for Cs in forest(cs):
     R=d.A(d.L(B),A)
     for C in Cs:R=d.A(R,C)
     emitted+=1
     yield R,dict(L=L,tax=T,branch='x_head' if bf[2]==0 else 'nested_head',location=where)
  assert emitted==n
