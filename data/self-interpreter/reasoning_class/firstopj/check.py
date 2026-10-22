"""Complete direct-head-let checks, genuine source-arity/multiplicity cells."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
from collections import defaultdict
import importlib.util,json,time,resource,threading,signal,os
H=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('firstopj_count',H/'count.py');ct=importlib.util.module_from_spec(spec);spec.loader.exec_module(ct)
sys.path.insert(0,str(H.parent/'jn'));import dbn as D
START=time.monotonic()
@lru_cache(None)
def prefix(n,nf):
 out=defaultdict(list)
 for k in ct.T(n,nf):out[k[:3]].append(k)
 return dict(out)
@lru_cache(None)
def G(n,nf,key):
 if not ct.T(n,nf).get(key):return ()
 L,cs,ds,h,m,M=key;out=[]
 for i in range(nf):
  zz=[0]*nf;zz[i]=1
  if n==i+2 and key==(0,tuple(zz),(0,)*nf,i,0,0):out.append(D.V(i))
 if h=='L' and L>=1 and all(d>=c for d,c in zip(ds,cs)):
  pref=(L-1,(m,)+cs,(M,)+tuple(d-c for d,c in zip(ds,cs)))
  for kb in prefix(n-2,nf+1).get(pref,()):
   out.extend(D.L(b) for b in G(n-2,nf+1,kb))
 if h!='L':
  for a in range(2,n-3):
   for kf in ct.T(a,nf):
    lf,cf,df,hf,mf,Mf=kf
    if ('R' if hf=='L' else hf)!=h or lf>L:continue
    ca=tuple(x-y for x,y in zip(cs,cf));da=tuple(x-y for x,y in zip(ds,df))
    if min(ca+da,default=0)<0:continue
    for ka in prefix(n-2-a,nf).get((L-lf,ca,da),()):
     if hf=='L':
      delta=(mf-1)*(n-2-a)+(sum(ca)-1)*Mf-4-2*mf-sum(cf)
      if mf==0 or delta<0 or(delta==0 and ka[0]==0):continue
     out.extend(D.A(f,v) for f in G(a,nf,kf) for v in G(n-2-a,nf,ka))
 assert len(out)==ct.T(n,nf)[key],(n,nf,key,len(out),ct.T(n,nf)[key])
 return tuple(out)
@lru_cache(None)
def JG(n,key):
 if not ct.J(n).get(key):return ()
 out=[]
 if n==4 and key==(0,0,0,'J'):out.append(D.Kc('j'))
 for a in range(2,n-5):
  b=n-2-a
  for kf in ct.T(a,2):
   LF,cs,ds,h,m,M=kf
   if h==1:continue
   for ka in ct.J(b):
    LA,sa,ca,ha=ka
    if h=='L':
     if not m:continue
     S=(m-1)*b+(sa+ca-1)*M+4*min(LF-1,M)-2-4*m-cs[0]-cs[1]
     if S<0 or(S==0 and (m-1)*LA<1):continue
    if key!=(LF+LA,cs[0]+sa,cs[1]+ca,'R' if h=='L' else h):continue
    out.extend(D.A(f,v) for f in G(a,2,kf) for v in JG(b,ka))
 for a in range(4,n-3):
  b=n-2-a
  for kf in ct.J(a):
   LF,sf,cf,hf=kf
   if hf=='J':continue
   for ka in ct.T(b,2):
    LA,ca,da,ha,m,M=ka
    if key!=(LF+LA,sf+ca[0],cf+ca[1],hf):continue
    out.extend(D.A(f,v) for f in JG(a,kf) for v in G(b,2,ka))
 assert len(out)==ct.J(n)[key],(n,key,len(out),ct.J(n)[key])
 return tuple(out)
def tailgen(n,t,c):
 if not ct.tails(n,t,c):return
 if not t:yield ();return
 for a in range(2,n-2*(t-1)+1):
  for k in ct.T(a,2):
   e=k[1][1]
   if not ct.tails(n-a,t-1,c-e):continue
   for u in G(a,2,k):
    for vs in tailgen(n-a,t-1,c-e):yield (u,)+vs

def cost(t):
 if t[0]=='k':return 4
 if t[0]=='v':return t[1]+2
 if t[0]=='l':return 2+cost(t[1])
 return 2+cost(t[1])+cost(t[2])
class Cutoff(Exception):pass
class Cycle(Exception):pass
def nf(t,budget):
 spine=[];seen=set()
 while True:
  if t[0]=='a':spine.append(t[2]);t=t[1];continue
  if t[0]=='l' and spine:
   key=(t,tuple(spine))
   if key in seen:raise Cycle('head cycle')
   seen.add(key);budget[0]-=1
   if budget[0]<0:raise Cutoff('steps')
   t=D.beta(t[1],spine.pop())
   if D.size(t)+sum(D.size(x) for x in spine)>2000:raise Cutoff('nodes')
   continue
  break
 if t[0]=='l':return D.L(nf(t[1],budget))
 for x in reversed(spine):t=D.A(t,nf(x,budget))
 return t

def cells(name):
 if name=='linear0':yield(0,0,1,1)
 elif name=='shared0':yield(0,0,2,9)
 else:
  t=int(name)
  for p in range(t+1):yield(t,p,1,9)
def main(name):
 blocks=[(t,p,b,n) for t,p,lo,hi in cells(name) for b,n in ct.blocks(t,p,lo,hi)]
 expected=sum(n for t,p,b,n in blocks);assert expected<=100000,expected
 seen=set();exceptions=[];hits=[];rows=defaultdict(lambda:defaultdict(int));count=0
 for t,p,(a,ka,b,kd,v,c),num in blocks:
  row=rows[f'{t}:{p}:{kd[1][0]}'];got=0
  for A in JG(a,ka):
   for Db in G(b,3,kd):
    for ts in tailgen(v,t,c):
     h=D.A(D.L(Db),A)
     for u in ts[:p]:h=D.A(h,u)
     body=D.A(D.V(0),h)
     for u in ts[p:]:body=D.A(body,u)
     got+=1;count+=1;row['markings']+=1;assert count<=100000
     assert cost(body)+2==10+a+b+2*t+v<=45
     if body in seen:continue
     seen.add(body);row['unique']+=1
     for label,stream,target in [('zero',D.Z(),D.A(D.Kc('r'),D.Kc('j'))),('unary',D.U(1),D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N')))]:
      try:actual=nf(D.inst(body,stream),[300])
      except(Cycle,Cutoff,RecursionError) as e:
       exceptions.append(dict(body=body,probe=label,kind=type(e).__name__));row['exceptions']+=1;break
      if actual!=target:row['wrong_'+label]+=1;break
     else:hits.append(body);row['hits']+=1
  assert got==num,(got,num,t,p,a,ka,b,kd,v,c)
 assert count==expected
 rec=dict(name=name,markings=count,unique=len(seen),rows=rows,exceptions=exceptions,hits=hits,seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'check_{name}.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in('rows','exceptions','hits')},indent=2));print('EXCEPTIONS',len(exceptions),'HITS',len(hits))
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=ct.watch,daemon=True).start();main(sys.argv[1])
