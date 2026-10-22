"""Complete bare-j sharing-argument family, all pending operand splits."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import jbare_count as ct
import nonlinear_check as old
from functools import lru_cache
from collections import defaultdict
import json,time,resource,threading,signal,os
D=old.D;gen=old.gen
START=time.monotonic()
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
      if mf==0 or delta<0 or(delta==0 and ka[0]==0):continue
     for f in G(a,nf,kf):
      for v in G(n-2-a,nf,ka):out.append(D.A(f,v))
 assert len(out)==ct.T(n,nf)[key],(n,nf,key,len(out),ct.T(n,nf)[key])
 return tuple(out)

def simplegen(n,c):
 for k in ct.T(n,2):
  if k[1][1]==c:yield from G(n,2,k)
def tailsgen(n,t,c):
 if not ct.tails(n,t,c):return
 if not t:yield ();return
 for a in range(2,n-2*(t-1)+1):
  for k in ct.simple(a):
   for u in simplegen(a,k):
    for vs in tailsgen(n-a,t-1,c-k):yield (u,)+vs

def main():
 blocks=[(t,p,b,n) for t in range(8) for p in range(t+1) for b,n in ct.blocks(t,p)]
 expected=sum(n for t,p,b,n in blocks);assert expected<=100000
 seen=set();exceptions=[];manifest=[];hits=[];count=0;rows=defaultdict(lambda:defaultdict(int))
 for t,p,(b,kd,v,c),num in blocks:
  row=rows[f'{t}:{p}'];got=0
  for Db in G(b,3,kd):
   for ts in tailsgen(v,t,c):
    h=D.A(D.L(Db),D.Kc('j'))
    for a in ts[:p]:h=D.A(h,a)
    body=D.A(D.V(0),h)
    for a in ts[p:]:body=D.A(body,a)
    got+=1;count+=1;row['markings']+=1;assert count<=100000
    assert gen.cost(body)+6==14+b+2*t+v<=45
    if body in seen:continue
    seen.add(body);row['unique']+=1
    for label,stream,target in [('zero',D.Z(),D.A(D.Kc('r'),D.Kc('j'))),('unary',D.U(1),D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N')))]:
     try:actual=gen.nf(D.inst(body,stream),[300])
     except(gen.Cycle,gen.Cutoff,RecursionError) as e:
      exceptions.append(dict(body=body,probe=label,kind=type(e).__name__));row['exceptions']+=1;break
     if actual!=target:
      manifest.append(dict(body=body,probe=label,normal=actual));row['wrong_'+label]+=1;break
    else:hits.append(body);row['hits']+=1
  assert got==num,(got,num,t,p,b,kd,v,c)
 assert count==expected
 rec=dict(markings=count,unique=len(seen),rows=rows,exceptions=exceptions,hits=hits,seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'jbare_check.json').write_text(json.dumps(rec,indent=2)+'\n');(H/'jbare_manifest.json').write_text(json.dumps(manifest)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in('rows','exceptions','hits')},indent=2));print('exceptions',len(exceptions),'hits',len(hits))
 assert not hits
if __name__=='__main__':signal.alarm(110);threading.Thread(target=ct.watch,daemon=True).start();main()
