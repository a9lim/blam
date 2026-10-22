"""Complete checks after EVERY A/D source redex satisfies minimum filters.
Cells are arity1/root-mark, arity1/nested-mark, and whole arities2,3,4.
Each independently counts its full domain before constructing any source.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import admissible_count as ct
import linear_check as old
from functools import lru_cache
from collections import defaultdict
import json,time,resource,threading,signal,os
D=old.d;gen=old.gen
START=time.monotonic()
gen.MAX_NODES=2000
def watchdog():
 while True:
  time.sleep(.05)
  if time.monotonic()-START>105 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
@lru_cache(None)
def by_prefix(n,nf):
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
  for kb in by_prefix(n-2,nf+1).get(pref,()):
   for b in G(n-2,nf+1,kb):out.append(D.L(b))
 if h!='L':
  for a in range(2,n-3):
   for kf in ct.T(a,nf):
    lf,cf,df,hf,mf,Mf=kf
    if ('R' if hf=='L' else hf)!=h or lf>L:continue
    ca=tuple(x-y for x,y in zip(cs,cf));da=tuple(x-y for x,y in zip(ds,df))
    if min(ca+da,default=0)<0:continue
    for ka in by_prefix(n-2-a,nf).get((L-lf,ca,da),()):
     if hf=='L':
      delta=(mf-1)*(n-2-a)+(sum(ca)-1)*Mf-4-2*mf-sum(cf)
      if not 2<=mf<=5 or delta<0 or(delta==0 and ka[0]==0):continue
     for f in G(a,nf,kf):
      for v in G(n-2-a,nf,ka):out.append(D.A(f,v))
 assert len(out)==ct.T(n,nf)[key],(n,nf,key,len(out),ct.T(n,nf)[key])
 return tuple(out)
def agen(n,nf,key):
 for k in ct.T(n,nf):
  L,cs,ds,h,m,M=k
  if (sum(cs),L,int(cs[-1]>0),h)==key:yield from G(n,nf,k)
def dgen(n,nf,key):
 for k in ct.T(n,nf):
  L,cs,ds,h,m,M=k
  if(cs[0],ds[0],sum(cs[1:]),int(cs[-1]>0),h,m if h=='L' else 0)==key:yield from G(n,nf,k)

def tgen(n,dep,j,c):
 if not ct.ct.tail(n,dep,j,c):return
 if j and dep==0 and n==0 and not c:yield D.Kc('j')
 if not j:
  for i in range(dep+2):
   if n==i+2 and c==int(i==dep+1):yield D.V(i)
  for b in tgen(n-2,dep+1,0,c):yield D.L(b)
 for a in range(n-1):
  for k in range(j+1):
   for f in(0,1):
    for g in(0,1):
     if f|g!=c:continue
     for u in tgen(a,dep,k,f):
      for v in tgen(n-2-a,dep,j-k,g):yield D.A(u,v)
def tsgen(n,q,j,c):
 if not ct.ct.tails(n,q,j,c):return
 if not q:yield ();return
 for a in range(n+1):
  for k in range(j+1):
   for f in(0,1):
    for g in(0,1):
     if f|g!=c:continue
     for u in tgen(a,0,k,f):
      for vs in tsgen(n-a,q-1,j-k,g):yield(u,)+vs

def selection(q,mode):
 for key,block,n in ct.blocks(q):
  k=block[4]
  if mode=='root' and k!=0:continue
  if mode=='nested' and k==0:continue
  yield key,block,n

def main(q,mode):
 fuel=1200 if q>=3 else 300
 gen.MAX_NODES=8000 if q>=3 else 2000
 blocks=list(selection(q,mode));expected=sum(n for _,_,n in blocks)
 assert expected<=100000,(q,mode,expected)
 seen=set();exceptions=[];hits=[];total=0;rows={};nfcounts=defaultdict(int)
 for(q,m,ell,loc),(a,ka,b,kd,k,cc,p,tc),num in blocks:
  row=rows.setdefault(f'{m}:{ell}:{loc}',dict(markings=0,unique=0,wrong_zero=0,wrong_unary=0,exceptions=0,hits=0));nblock=0
  for A in agen(a,ell+2,ka):
   for Db in dgen(b,ell+3,kd):
    redex=D.A(D.L(Db),A)
    delta=(m-1)*a+(ka[0]-1)*kd[1]-4-2*m-kd[2]
    assert gen.cost(D.beta(Db,A))-gen.cost(redex)==delta>=0
    for C in old.cgen(k,0,ell,cc):
     if C[0]=='l':continue
     H1=gen.fill(C,redex);assert H1[0]!='l'
     for Ts in tsgen(p,q,1,tc):
      body=D.A(D.V(0),H1)
      for t in Ts:body=D.A(body,t)
      nblock+=1;total+=1;row['markings']+=1;assert total<=100000
      assert gen.cost(body)+6==14+2*q+a+b+k+p<=45
      if body in seen:continue
      seen.add(body);row['unique']+=1
      for label,stream,target in [('zero',D.Z(),D.A(D.Kc('r'),D.Kc('j'))),('unary',D.U(1),D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N')))]:
       try:actual=gen.nf(D.inst(body,stream),[fuel])
       except(gen.Cycle,gen.Cutoff,RecursionError) as e:
        row['exceptions']+=1;exceptions.append(dict(body=body,probe=label,kind=type(e).__name__,message=str(e)));break
       if actual!=target:row['wrong_'+label]+=1;nfcounts[label]+=1;break
      else:row['hits']+=1;hits.append(body)
  assert nblock==num,(q,mode,a,ka,b,kd,k,cc,p,tc,nblock,num)
 assert total==expected
 rec=dict(q=q,mode=mode,markings=total,unique=len(seen),nf_refutations=dict(nfcounts),rows=rows,exceptions=exceptions,hits=hits,seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 name=f'nonlinear_{q}_{mode}'
 (H/(name+'.json')).write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in('rows','exceptions','hits')},indent=2));print('EXCEPTIONS',len(exceptions),'HITS',len(hits));assert not hits
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=watchdog,daemon=True).start();main(int(sys.argv[1]),sys.argv[2])
