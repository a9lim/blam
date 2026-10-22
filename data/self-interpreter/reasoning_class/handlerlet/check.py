#!/usr/bin/env python3
"""Complete marked-redex check, one q per process, under the hard caps."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'jn'))
import dbn as d
import count as ct
import json,resource,time,signal,threading,os
sys.setrecursionlimit(3000)
START=time.monotonic();MAX_NODES=8000;MAX_STEPS=1200

def rss():return resource.getrusage(resource.RUSAGE_SELF).ru_maxrss

def watchdog():
 while True:
  time.sleep(.05)
  if time.monotonic()-START>110 or rss()>900_000_000:
   os._exit(97)

# Feature-directed constructor recurrences; no larger source pool is built.
def agen(n,dep,nf,key):
 if not ct.A(n,dep,nf).get(key):return
 F,L,c=key
 for i in range(dep+nf):
  if n==i+2 and key==(int(i>=dep),0,int(i==dep+nf-1)):yield d.V(i)
 if L:
  for b in agen(n-2,dep+1,nf,(F,L-1,c)):yield d.L(b)
 for a in range(2,n-3):
  for (f,l,h),v in ct.A(a,dep,nf).items():
   if f>F or l>L:continue
   for e in (0,1):
    k=(F-f,L-l,e)
    if h|e!=c or not ct.A(n-2-a,dep,nf).get(k):continue
    for u in agen(a,dep,nf,(f,l,h)):
     for v in agen(n-2-a,dep,nf,k):yield d.A(u,v)

def dgen(n,dep,nf,key):
 if not ct.D(n,dep,nf).get(key):return
 m,M,T,c=key
 for i in range(dep+nf):
  if n==i+2 and key==(int(i==dep),dep if i==dep else 0,int(i>dep),int(i==dep+nf-1)):yield d.V(i)
 for b in dgen(n-2,dep+1,nf,key):yield d.L(b)
 for a in range(2,n-3):
  for (k,K,U,h),v in ct.D(a,dep,nf).items():
   if k>m or K>M or U>T:continue
   for e in (0,1):
    kk=(m-k,M-K,T-U,e)
    if h|e!=c or not ct.D(n-2-a,dep,nf).get(kk):continue
    for u in dgen(a,dep,nf,(k,K,U,h)):
     for v in dgen(n-2-a,dep,nf,kk):yield d.A(u,v)

def simplegen(n,dep,nf,hc):
 for key in ct.A(n,dep,nf):
  if key[2]==hc:yield from agen(n,dep,nf,key)

def cgen(n,dep,ell,hc):
 if not ct.context(n,dep,ell,hc):return
 if n==0:
  yield ('h',);return
 for b in cgen(n-2,dep+1,ell,hc):yield d.L(b)
 for a in range(2,n-1):
  for c in (0,1):
   for e in (0,1):
    if c|e!=hc or not ct.simple(a,dep,3,c) or not ct.context(n-2-a,dep,ell,e):continue
    for u in simplegen(a,dep,3,c):
     for v in cgen(n-2-a,dep,ell,e):
      yield d.A(u,v);yield d.A(v,u)

def tgen(n,dep,j,c):
 if not ct.tail(n,dep,j,c):return
 if j and n==4*dep and not c:yield d.Kc('j')
 if not j:
  for i in range(dep+2):
   if n==i+2 and c==int(i==dep+1):yield d.V(i)
 for b in tgen(n-2,dep+1,j,c):yield d.L(b)
 for a in range(n-1):
  for k in range(j+1):
   for f in (0,1):
    for g in (0,1):
     if f|g!=c or not ct.tail(a,dep,k,f) or not ct.tail(n-2-a,dep,j-k,g):continue
     for u in tgen(a,dep,k,f):
      for v in tgen(n-2-a,dep,j-k,g):yield d.A(u,v)

def tsgen(n,q,j,c):
 if not ct.tails(n,q,j,c):return
 if not q:
  yield ();return
 for a in range(n+1):
  for k in range(j+1):
   for f in (0,1):
    for g in (0,1):
     if f|g!=c or not ct.tail(a,0,k,f) or not ct.tails(n-a,q-1,j-k,g):continue
     for u in tgen(a,0,k,f):
      for vs in tsgen(n-a,q-1,j-k,g):yield (u,)+vs

def fill(c,t):
 if c[0]=='h':return t
 if c[0]=='l':return d.L(fill(c[1],t))
 if c[0]=='a':return d.A(fill(c[1],t),fill(c[2],t))
 return c

def cost(t,dep=0):
 if t[0]=='k':return 4*dep
 if t[0]=='v':return t[1]+2
 if t[0]=='l':return 2+cost(t[1],dep+1)
 return 2+cost(t[1],dep)+cost(t[2],dep)

def occ(t,i):
 if t[0]=='v':return int(t[1]==i)
 if t[0] in ('k','h'):return 0
 if t[0]=='l':return occ(t[1],i+1)
 return occ(t[1],i)+occ(t[2],i)

def lams(t):
 if t[0]=='l':return 1+lams(t[1])
 if t[0]=='a':return lams(t[1])+lams(t[2])
 return 0

class Cutoff(Exception):pass
class Cycle(Exception):pass

def nf(t,budget):
 spine=[];seen=set()
 while True:
  if t[0]=='a':spine.append(t[2]);t=t[1];continue
  if t[0]=='l' and spine:
   key=(t,tuple(spine))
   if key in seen:raise Cycle('exact head state')
   seen.add(key);budget[0]-=1
   if budget[0]<0:raise Cutoff('steps')
   t=d.beta(t[1],spine.pop())
   if d.size(t)+sum(d.size(x) for x in spine)>MAX_NODES:raise Cutoff('nodes')
   continue
  break
 if t[0]=='l':return d.L(nf(t[1],budget))
 for x in reversed(spine):t=d.A(t,nf(x,budget))
 return t

def main(q):
 expected=ct.count(q);assert sum(expected.values())<=100000
 rows={f'{m}:{loc}':{'markings':0,'unique':0,'wrong_nf':{},'exceptions':0,'hits':0} for m,loc in expected}
 seen=set();exceptions=[];hits=[];total=0
 probes=[('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j')))]
 for n in (1,2,3):probes.append((str(n),d.U(n),d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))))
 for (m,loc),(ell,a,ka,b,kd,k,cc,p,tc),num in ct.blocks(q):
  row=rows[f'{m}:{loc}'];nblock=0
  for A in agen(a,0,ell+3,ka):
   for D in dgen(b,0,ell+4,kd):
    redex=d.A(d.L(D),A)
    delta=(m-1)*a+(ka[0]-1)*kd[1]-4-2*m-kd[2]
    assert cost(d.beta(D,A))-cost(redex)==delta
    assert delta>=0 and (delta or lams(A)>0)
    assert occ(D,0)==m
    for C in cgen(k,0,ell,cc):
     B=fill(C,redex)
     assert cost(B)==4+a+b+k
     for Ts in tsgen(p,q,1,tc):
      nblock+=1;total+=1;row['markings']+=1
      assert total<=100000
      Y=d.A(d.V(0),d.L(B))
      for T in Ts:Y=d.A(Y,T)
      assert cost(Y)+6==12+2*q+cost(B)+sum(cost(t) for t in Ts)<=45
      if Y in seen:continue
      seen.add(Y);row['unique']+=1
      for label,stream,target in probes:
       test=d.inst(Y,stream)
       try:actual=nf(test,[MAX_STEPS])
       except (Cycle,Cutoff,RecursionError) as e:
        row['exceptions']+=1
        exceptions.append(dict(q=q,m=m,location=loc,kind=type(e).__name__,reason=str(e),probe=label,body=Y))
        break
       if actual!=target:
        row['wrong_nf'][label]=row['wrong_nf'].get(label,0)+1;break
      else:
       row['hits']+=1;hits.append(dict(q=q,m=m,location=loc,weight=cost(Y)+6,body=Y))
  assert nblock==num,(nblock,num)
 for (m,loc),n in expected.items():assert rows[f'{m}:{loc}']['markings']==n
 rec=dict(q=q,markings=total,unique=len(seen),rows=rows,exceptions=exceptions,hits=hits,seconds=time.monotonic()-START,rss=rss(),threads=2)
 (H/f'check{q}.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('exceptions','hits')},indent=2))
 print('EXCEPTIONS',len(exceptions),'HITS',len(hits))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start()
 main(int(sys.argv[1]));signal.alarm(0)
