"""Coefficient recurrence with exact local minimum filtering, no source sweep.

Feature = (moments of outer bound variables, root-lambda (uses,M) or (),
           source left-spine head: -1 lambda, -2 j, >=0 de Bruijn variable).
Every constructor is charged in its original source frame.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import functools,itertools,collections,json,time,signal,resource
START=time.monotonic();K=int(sys.argv[1]) if __name__=='__main__' else 5
JD=5-K

def leaves(s):
 e,c,j,z,o,t,T=s;return sum(e)+c+j+o+2*t

def wt(s):
 e,c,j,z,o,t,T=s
 return 2*(z+o+t)+4*leaves(s)-2-2*j+T+4*JD*j

def fr(s):return sum(s[0])+s[1]+4*s[2]

@functools.lru_cache(None)
def parts(s):
 e,c,j,z,o,t,T=s;out=[]
 for el in itertools.product(*(range(q+1) for q in e)):
  er=tuple(q-a for q,a in zip(e,el))
  for cl,jl,zl,ol,tl in itertools.product(range(c+1),range(j+1),range(z+1),range(o+1),range(t+1)):
   al=(el,cl,jl,zl,ol,tl);ar=(er,c-cl,j-jl,z-zl,o-ol,t-tl)
   if not leaves((*al,0)) or not leaves((*ar,0)):continue
   for tax in range(T+1):out.append(((*al,tax),(*ar,T-tax)))
 return tuple(out)

def addmom(a,b):return tuple(x+y for x,y in zip(a,b))

def redex_ok(a,af,b,bf):
 # application a b; af is feature of the function.
 if not af[1]:return True
 m,M=af[1]
 if not m:return False
 if m>1 and b[2]:return True # j-copying nonlinear let deliberately retained
 delta=(m-1)*wt(b)+(fr(b)-1)*M-4-2*m-fr(a)
 if m==1:return delta>0
 return delta>0 or delta==0 and sum(b[3:6])>0

@functools.lru_cache(None)
def count(s):
 e,c,j,z,o,t,T=s;dep=len(e);out=collections.Counter()
 if not leaves(s) or (j and dep>JD):return out
 if sum(i*q for i,q in enumerate(e))+dep*c>T:return out
 if not(z+o+t) and leaves(s)==1:
  if c==1 and T==dep:out[((0,)*dep,(),dep,False,False,False)]+=1
  if j==1 and dep==JD and T==0:out[((0,)*dep,(),-2,False,False,False)]+=1
  if c+j==0 and sum(e)==1 and T==e.index(1):out[((0,)*dep,(),e.index(1),False,False,False)]+=1
 for r,num in enumerate((z,o,t)):
  if num:
   sub=[z,o,t];sub[r]-=1
   bs=((r,)+e,c,j,*sub,T)
   for (mom,top,head,jp,fp,last0),n in count(bs).items():
    if r==1 and last0:continue # kernel theorem minimum_no_eta
    out[(addmom(mom[1:],e),(r,mom[0]),-1,False,False,False)]+=n
 for a,b in parts(s):
  ac=count(a)
  if not ac:continue
  bc=count(b)
  if not bc:continue
  for af,na in ac.items():
   for bf,nb in bc.items():
    if redex_ok(a,af,b,bf):
     jp=bool(dep and ((b[2] and b[0][0]>0) or (a[2] and (af[3] or b[0][0]>0))))
     fp=(bool(dep and b[0][0]==1 and leaves(b)==1 and not sum(b[3:6]))
         if leaves(a)==1 and not sum(a[3:6]) else af[4])
     last0=bool(dep and b[0][0]==1 and leaves(b)==1 and not sum(b[3:6]))
     out[(addmom(af[0],bf[0]),(),af[2],jp,fp,last0)]+=na*nb
 return out

@functools.lru_cache(None)
def fparts(s):
 e,c,j,z,o,t,T=s;assert not e;out=[]
 for cl,jl,zl,ol,tl in itertools.product(range(c+1),range(j+1),range(z+1),range(o+1),range(t+1)):
  a=((),cl,jl,zl,ol,tl,0);b=((),c-cl,j-jl,z-zl,o-ol,t-tl,0)
  if not leaves(a):continue
  for tax in range(T+1):out.append((a[:-1]+(tax,),b[:-1]+(T-tax,)))
 return tuple(out)
@functools.lru_cache(None)
def forest(s):
 if not leaves(s):return int(s==((),0,0,0,0,0,0))
 return sum(sum(count(a).values())*forest(b) for a,b in fparts(s))

def roots():
 for z in (0,1):
  for T in range(4-2*z):
   for zb,ob,tb,cb,jb,Tb in itertools.product(range(z+1),range(2),range(2),range(2),range(JD+1),range(T+1)):
    b=((K,),cb,jb,zb,ob,tb,Tb)
    bc=count(b)
    if not bc:continue
    rem=((),1-cb,1-jb,z-zb,1-ob,1-tb,T-Tb)
    for a,cs in fparts(rem):
     if not sum(a[3:6]):continue
     ac=count(a);nc=forest(cs)
     if not ac or not nc:continue
     for bf,nb in bc.items():
      if bf[2] not in (0,-1):continue # rigid c or j body head
      if b[2] and not bf[3]:continue # root pull lemma for application-depth j
      assert not bf[1] # all K x leaves below a lambda would cost >=K>tax
      for af,na in ac.items():
       if bf[2]==0 and af[2]!=-1:continue
       if bf[2]==0 and af[1] and af[1][0]==0 and not bf[4]:continue # forced-use N5
       M=bf[0][0];delta=(K-1)*wt(a)+(fr(a)-1)*M-4-2*K-(fr(b)-K)
       if not a[2] and (delta<0 or delta==0 and not sum(a[3:6])):continue
       yield (3+z,T,b,a,cs,bf,af),nb*na*nc

if __name__=='__main__':
 signal.alarm(110);rows=collections.Counter();branches=collections.Counter();locs=collections.Counter();blocks=0
 for key,n in roots():
  L,T,b,a,cs,bf,af=key;rows[f'L{L}_tax{T}']+=n;blocks+=1
  branches['x_head' if bf[2]==0 else 'nested_head']+=n
  locs['B' if b[2] else 'A' if a[2] else 'Cs']+=n
 rec=dict(k=K,depth=JD,rows=dict(rows),branches=dict(branches),hole_locations=dict(locs),total=sum(rows.values()),blocks=blocks,count_states=count.cache_info().currsize,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'filtered{K}.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
