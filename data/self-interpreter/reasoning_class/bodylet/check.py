"""Complete one pinned cell; <=100k layouts, 110 seconds, 900MB.
Generator reconstructs precisely the count recurrence. Cutoffs retained.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'jn'))
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
# Do not import their check module (same filename).
import loop_audit
sys.path.insert(0,str(H))
import minimum as ct
import time,signal,resource,json,threading,hashlib
from functools import lru_cache
from collections import Counter
sys.setrecursionlimit(3000)

@lru_cache(50000)
def gen(n,nf,j,key):
 if not ct.terms(n,nf,j).get(key):return ()
 out=[];v,M,L,h,meta,args,sink,need=key;z=(0,)*nf
 if j and n==0 and key==(z,z,0,'j',(),z,z,0):out.append(d.Kc('j'))
 if not j:
  for i in range(nf):
   kk=(tuple(int(i==k) for k in range(nf)),z,0,str(i),(),z,z,0)
   if n==i+2 and key==kk:out.append(d.V(i))
  if h=='lam':
   for kb in ct.terms(n-2,nf+1,0):
    vb,Mb,Lb,hb,mb,ab,sb,rb=kb
    ch=mb[4] if hb=='lam' else hb
    ch=('bound' if ch=='0' else str(int(ch)-1)) if ch.isdigit() else ch
    kk=vb[1:],ct.plus(Mb[1:],vb[1:]),Lb+1,'lam',(vb[0],Mb[0],sum(vb[1:]),sb[0],ch),z,z,0
    if kk==key:out.extend(d.L(b) for b in gen(n-2,nf+1,0,kb))
 if h!='lam':
  for a in range(n-1):
   for k in range(j+1):
    for kf in ct.terms(a,nf,k):
     if any(x>y for x,y in zip(kf[0],v)) or kf[2]>L:continue
     for ka in ct.terms(n-2-a,nf,j-k):
      if ct.combine(kf,ka,n-2-a,j,a)!=key:continue
      for f in gen(a,nf,k,kf):
       for ar in gen(n-2-a,nf,j-k,ka):out.append(d.A(f,ar))
 assert len(out)==ct.terms(n,nf,j)[key],(n,nf,j,key,len(out),ct.terms(n,nf,j)[key])
 return tuple(out)

@lru_cache(10000)
def pgen(n,j,key):
 if not ct.pending(n,j).get(key):return ()
 if n==0:return ((),)
 out=[]
 for a in range(n-1):
  for k in range(j+1):
   for ka in ct.terms(a,2,k):
    v,M,L,h,meta,args,sink,need=ka
    for kp in ct.pending(n-2-a,j-k):
     s,c,l,r=kp
     if (v[0]+s,v[1]+c,L+l,max(0,need-c,r-v[1]))!=key:continue
     for ar in gen(a,2,k,ka):
      for rest in pgen(n-2-a,j-k,kp):out.append((ar,)+rest)
 assert len(out)==ct.pending(n,j)[key]
 return tuple(out)

def price(t,depth=0):
 if t[0]=='v':return t[1]+2
 if t[0]=='k':return 4*depth
 if t[0]=='l':return 2+price(t[1],depth+1)
 return 2+price(t[1],depth)+price(t[2],depth)

class Cutoff(Exception):pass
class Cycle(Exception):pass

def whnf(t,budget):
 stack=[];seen=set()
 while True:
  if t[0]=='a':stack.append(t[2]);t=t[1];continue
  if t[0]!='l' or not stack:return t,tuple(reversed(stack))
  key=t,tuple(stack)
  if key in seen:raise Cycle('exact head state')
  seen.add(key);budget[0]-=1
  if budget[0]<0:raise Cutoff('fuel')
  t=d.beta(t[1],stack.pop())
  if d.size(t)+sum(d.size(a) for a in stack)>4000:raise Cutoff('nodes')

def matches(t,target,budget):
 h,args=whnf(t,budget);hh,aa=whnf(target,[10000])
 if len(args)!=len(aa) or h[0]!=hh[0]:return False
 if h[0]=='l':
  if not matches(h[1],hh[1],budget):return False
 elif h!=hh:return False
 return all(matches(a,b,budget) for a,b in zip(args,aa))

def feature(t,nf):
 z=(0,)*nf
 if t[0]=='k':return 0,1,(z,z,0,'j',(),z,z,0)
 if t[0]=='v':
  i=t[1];return i+2,0,(tuple(int(i==k) for k in range(nf)),z,0,str(i),(),z,z,0)
 if t[0]=='l':
  n,j,k=feature(t[1],nf+1);assert j==0
  v,M,L,h,meta,args,sink,need=k;ch=meta[4] if h=='lam' else h
  ch=('bound' if ch=='0' else str(int(ch)-1)) if ch.isdigit() else ch
  return n+2,0,(v[1:],ct.plus(M[1:],v[1:]),L+1,'lam',(v[0],M[0],sum(v[1:]),sink[0],ch),z,z,0)
 a,j,k=feature(t[1],nf);b,l,kk=feature(t[2],nf)
 return a+b+2,j+l,ct.combine(k,kk,b,j+l,a)

def arity(t):
 n=0
 while t[0]=='a':n+=1;t=t[1]
 return n

def main(cell):
 configs=list(ct.blocks(cell[0],cell));expected=sum(n for _,_,n in configs)
 allowed=None;acat={};interfaces={}
 if len(sys.argv)>2:
  info=json.loads((H/sys.argv[2]).read_text())
  def tup(x):return tuple(tup(y) for y in x) if isinstance(x,list) else x
  allowed={tup(t) for t in info['retained_helpers']}
  from collections import defaultdict
  aa=defaultdict(list)
  for A in allowed:
   a,ja,ka=feature(A,2);assert ka is not None
   aa[a,ka,ja].append(A)
  for _,(a,ka,b,kb,p,kp,ja),num in configs:acat[a,ka,ja]=tuple(aa[a,ka,ja])
  # Interfaces are necessary zero-head arities, with unknowns unconstrained.
  interfaces={tup(t):tuple(sig) for t,sig in info.get('interfaces',[])}
  def valid(sig,k):
   typ,h,q=sig
   return typ=='unknown' or (k>=h and (typ=='bound' or q+k-h==1))
  @lru_cache(None)
  def bd(b,kb):return Counter(arity(B) for B in gen(b,3,0,kb))
  @lru_cache(None)
  def pd(p,j,kp):return Counter(map(len,pgen(p,j,kp)))
  new=[]
  for key,(a,ka,b,kb,p,kp,ja),num in configs:
   if interfaces:
    ad=Counter(interfaces[A] for A in acat[a,ka,ja])
    num=sum(na*nb*np for sig,na in ad.items() for k,nb in bd(b,kb).items() for l,np in pd(p,1-ja,kp).items() if valid(sig,k+l))
   else:num=len(acat[a,ka,ja])*ct.terms(b,3,0)[kb]*ct.pending(p,1-ja)[kp]
   new.append((key,(a,ka,b,kb,p,kp,ja),num))
  configs=new;expected=sum(x[-1] for x in configs)
  assert expected==info['remaining_sources']
 assert expected<=100000,expected
 counts=Counter();exceptions=[];hits=[];seen=set();digest=hashlib.sha256();mx=0
 for key,(a,ka,b,kb,p,kp,ja),number in configs:
  nb=0
  for A in (gen(a,2,ja,ka) if allowed is None else acat[a,ka,ja]):
   for B in gen(b,3,0,kb):
    for Cs in pgen(p,1-ja,kp):
     if interfaces and not valid(interfaces[A],arity(B)+len(Cs)):continue
     body=d.A(d.L(B),A)
     for C in Cs:body=d.A(body,C)
     R=d.L(body)
     assert R not in seen;seen.add(R);nb+=1
     assert price(R)==10+a+b+p<=45
     digest.update((repr(R)+'\n').encode())
     for n in (0,1,2,3):
      label='zero' if not n else str(n)
      target=d.A(d.Kc('r'),d.Kc('j')) if not n else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
      probe=d.inst(body,d.Z() if not n else d.U(n));budget=[200]
      try:ok=matches(probe,target,budget)
      except (Cutoff,Cycle,RecursionError) as e:
       counts['exception'+label]+=1
       exceptions.append(dict(body=body,probe=label,kind=type(e).__name__,reason=str(e)))
       break
      mx=max(mx,200-budget[0])
      if not ok:counts['wrong'+label]+=1;break
     else:hits.append(dict(body=body,weight=price(R)))
  assert nb==number,(nb,number)
 assert len(seen)==expected
 out=dict(cell=cell,sources=expected,counts=dict(counts),exceptions=exceptions,hits=hits,source_digest=digest.hexdigest(),max_steps=mx,seconds=time.monotonic()-ct.START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 name='-'.join(map(str,cell));(H/f'check-{name}.json').write_text(json.dumps(out,indent=2)+'\n')
 print(json.dumps({k:v for k,v in out.items() if k not in ('exceptions','hits')},indent=2));print('exceptions',len(exceptions),'hits',len(hits))

if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=ct.watchdog,daemon=True).start()
 raw=sys.argv[1].split(':');main((int(raw[0]),)+tuple(raw[1:]))
