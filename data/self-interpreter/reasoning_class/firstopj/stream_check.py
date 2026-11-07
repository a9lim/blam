"""Stream-headed first operand, one source-redex-present cell per total arity.
The beta-normal subset is skipped syntactically by exact boolean recurrences.
No normal form of a reader source is taken to transfer a lower bound.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import importlib.util,json,time,resource,signal,threading
from functools import lru_cache
from collections import defaultdict
H=Path(__file__).resolve().parent
def load(name,file):
 spec=importlib.util.spec_from_file_location(name,H/file);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);return m
nc=load('firstopj_normal','normal_count.py');ct=nc.ct;g=load('firstopj_check','check.py');g.ct=ct;D=g.D
start=time.monotonic()
def cnt(n,nf,k,r):return ct.T(n,nf).get(k,0)-nc.B(n,nf).get(k,0) if r else nc.B(n,nf).get(k,0)
def jcnt(n,k,r):return ct.J(n).get(k,0)-nc.BJ(n).get(k,0) if r else nc.BJ(n).get(k,0)
@lru_cache(None)
def F(n,nf,key,red):
 expected=cnt(n,nf,key,red)
 if not expected:return ()
 L,cs,ds,h,m,M=key;out=[]
 if not red:
  for i in range(nf):
   zz=[0]*nf;zz[i]=1
   if n==i+2 and key==(0,tuple(zz),(0,)*nf,i,0,0):out.append(D.V(i))
 if h=='L' and L>=1 and all(d>=c for d,c in zip(ds,cs)):
  pref=(L-1,(m,)+cs,(M,)+tuple(d-c for d,c in zip(ds,cs)))
  for kb in g.prefix(n-2,nf+1).get(pref,()):out.extend(D.L(b) for b in F(n-2,nf+1,kb,red))
 if h!='L':
  for a in range(2,n-3):
   b=n-2-a
   for kf in ct.T(a,nf):
    lf,cf,df,hf,mf,Mf=kf
    if ('R' if hf=='L' else hf)!=h or lf>L:continue
    ca=tuple(x-y for x,y in zip(cs,cf));da=tuple(x-y for x,y in zip(ds,df))
    if min(ca+da,default=0)<0:continue
    for ka in g.prefix(b,nf).get((L-lf,ca,da),()):
     if hf=='L':
      delta=(mf-1)*b+(sum(ca)-1)*Mf-4-2*mf-sum(cf)
      if mf==0 or delta<0 or(delta==0 and ka[0]==0):continue
     for rf in (False,True):
      for ra in (False,True):
       if bool(hf=='L' or rf or ra)!=red or not cnt(a,nf,kf,rf) or not cnt(b,nf,ka,ra):continue
       out.extend(D.A(f,v) for f in F(a,nf,kf,rf) for v in F(b,nf,ka,ra))
 assert len(out)==expected,(n,nf,key,red,len(out),expected)
 return tuple(out)
@lru_cache(None)
def J(n,key,red):
 expected=jcnt(n,key,red)
 if not expected:return ()
 out=[]
 if not red and n==4 and key==(0,0,0,'J'):out.append(D.Kc('j'))
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
    for rf in(False,True):
     for ra in(False,True):
      if bool(h=='L' or rf or ra)!=red or not cnt(a,2,kf,rf) or not jcnt(b,ka,ra):continue
      out.extend(D.A(f,v) for f in F(a,2,kf,rf) for v in J(b,ka,ra))
 for a in range(4,n-3):
  b=n-2-a
  for kf in ct.J(a):
   LF,sf,cf,hf=kf
   if hf=='J':continue
   for ka in ct.T(b,2):
    LA,ca,da,ha,m,M=ka
    if key!=(LF+LA,sf+ca[0],cf+ca[1],hf):continue
    for rf in(False,True):
     for ra in(False,True):
      if bool(rf or ra)!=red or not jcnt(a,kf,rf) or not cnt(b,2,ka,ra):continue
      out.extend(D.A(f,v) for f in J(a,kf,rf) for v in F(b,2,ka,ra))
 assert len(out)==expected,(n,key,red,len(out),expected)
 return tuple(out)
def tc(n,t,c,red):return ct.tails(n,t,c)-nc.tails(n,t,c) if red else nc.tails(n,t,c)
def jc(n,t,p,c,red):return nc.other.jt(n,t,p,c)-nc.jt(n,t,p,c) if red else nc.jt(n,t,p,c)
def tailgen(n,t,c,red):
 if not tc(n,t,c,red):return
 if not t:yield ();return
 for a in range(2,n-2*(t-1)+1):
  for k in ct.T(a,2):
   e=k[1][1]
   for r in(False,True):
    for rr in(False,True):
     if bool(r or rr)!=red or not cnt(a,2,k,r) or not tc(n-a,t-1,c-e,rr):continue
     for u in F(a,2,k,r):
      for vs in tailgen(n-a,t-1,c-e,rr):yield(u,)+vs

def jtgen(n,t,p,c,red):
 if not jc(n,t,p,c,red):return
 for a in range(4,n-2*(t-1)+1):
  for k in ct.J(a):
   for r in(False,True):
    for rr in(False,True):
     if bool(r or rr)!=red or not jcnt(a,k,r) or not tc(n-a,t-1,c-k[2],rr):continue
     for u in J(a,k,r):
      for vs in tailgen(n-a,t-1,c-k[2],rr):yield(u,)+vs
 if t>1:
  for a in range(2,n-2*(t-1)-1):
   for k in ct.T(a,2):
    e=k[1][1]
    for r in(False,True):
     for rr in(False,True):
      if bool(r or rr)!=red or not cnt(a,2,k,r) or not jc(n-a,t-1,p-1,c-e,rr):continue
      for u in F(a,2,k,r):
       for vs in jtgen(n-a,t-1,p-1,c-e,rr):yield(u,)+vs

def main(t):
 blocks=[(p,v,c,jc(v,t,p,c,True)) for p in range(1,t+1) for v in range(2*t+2,38-2*t) for c in range(1,v//3+1) if jc(v,t,p,c,True)]
 expected=sum(n for p,v,c,n in blocks);assert expected<=100000
 seen=set();exceptions=[];hits=[];rows=defaultdict(lambda:defaultdict(int));count=0
 for p,v,c,num in blocks:
  row=rows[str(p)];got=0
  for ts in jtgen(v,t,p,c,True):
   h=D.V(0)
   for u in ts[:p]:h=D.A(h,u)
   body=D.A(D.V(0),h)
   for u in ts[p:]:body=D.A(body,u)
   got+=1;count+=1;row['markings']+=1;assert count<=100000
   assert g.cost(body)+2==8+2*t+v<=45
   if body in seen:continue
   seen.add(body);row['unique']+=1
   for label,stream,target in [('zero',D.Z(),D.A(D.Kc('r'),D.Kc('j'))),('unary',D.U(1),D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N')))]:
    try:actual=g.nf(D.inst(body,stream),[300])
    except(g.Cycle,g.Cutoff,RecursionError) as e:
     exceptions.append(dict(body=body,probe=label,kind=type(e).__name__));row['exceptions']+=1;break
    if actual!=target:row['wrong_'+label]+=1;break
   else:hits.append(body);row['hits']+=1
  assert got==num,(got,num,t,p,v,c)
 assert count==expected
 rec=dict(name=f'stream{t}',markings=count,unique=len(seen),rows=rows,exceptions=exceptions,hits=hits,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'check_stream{t}.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k not in('rows','exceptions','hits')},indent=2));print('EXCEPTIONS',len(exceptions),'HITS',len(hits))
if __name__=='__main__':signal.alarm(110);threading.Thread(target=ct.watch,daemon=True).start();main(int(sys.argv[1]))
