"""Complete 727-marking linear-first-operand check, no silent cutoffs."""
import sys
sys.dont_write_bytecode=True
import linear_count as ct
from pathlib import Path
H=Path(__file__).resolve().parent
import importlib.util
spec=importlib.util.spec_from_file_location('handlergen',H.parent/'handlerlet/check.py');gen=importlib.util.module_from_spec(spec);spec.loader.exec_module(gen)
d=gen.d
import json,time,resource,signal,threading,os
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.05)
  if time.monotonic()-START>105 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def cgen(n,dep,ell,hc):
 if not ct.context(n,dep,ell,hc):return
 if n==0:yield ('h',);return
 for b in cgen(n-2,dep+1,ell,hc):yield d.L(b)
 for a in range(2,n-1):
  for c in (0,1):
   for e in (0,1):
    if c|e!=hc or not ct.simple(a,dep,2,c) or not ct.context(n-2-a,dep,ell,e):continue
    for u in gen.simplegen(a,dep,2,c):
     for v in cgen(n-2-a,dep,ell,e):yield d.A(u,v);yield d.A(v,u)
def main():
 blocks=list(ct.blocks());expected=sum(v for _,_,v in blocks);assert expected<=100000
 seen=set();rows={};total=0;exceptions=[];hits=[];manifest=[]
 for(q,ell),(a,ka,b,kd,k,cc,p,tc),num in blocks:
  row=rows.setdefault(f'{q}:{ell}',dict(markings=0,unique=0,wrong_zero=0,wrong_unary=0,exceptions=0,hits=0));blockn=0
  for A in gen.agen(a,0,ell+2,ka):
   for D in gen.dgen(b,0,ell+3,kd):
    redex=d.A(d.L(D),A)
    delta=(ka[0]-1)*kd[1]-6-kd[2]
    assert gen.cost(d.beta(D,A))-gen.cost(redex)==delta>=1
    for C in cgen(k,0,ell,cc):
     first=gen.fill(C,redex)
     for Ts in gen.tsgen(p,q,1,tc):
      Y=d.A(d.V(0),first)
      for T in Ts:Y=d.A(Y,T)
      blockn+=1;total+=1;row['markings']+=1
      assert gen.cost(Y)+6==14+2*q+a+b+k+p<=45
      if Y in seen:continue
      seen.add(Y);row['unique']+=1
      for label,stream,target in [('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j'))),('unary',d.U(1),d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N')))]:
       probe=d.inst(Y,stream)
       try:actual=gen.nf(probe,[1200])
       except (gen.Cycle,gen.Cutoff,RecursionError) as e:
        row['exceptions']+=1;exceptions.append(dict(body=Y,probe=label,kind=type(e).__name__));break
       if actual!=target:
        row['wrong_'+label]+=1;manifest.append(dict(body=Y,probe=label,normal=actual));break
      else:row['hits']+=1;hits.append(Y)
  assert blockn==num,(blockn,num)
 assert total==expected
 rec=dict(markings=total,unique=len(seen),rows=rows,exceptions=exceptions,hits=hits,seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/'linear_check.json').write_text(json.dumps(rec,indent=2)+'\n')
 (H/'linear_manifest.json').write_text(json.dumps(manifest)+'\n')
 print(json.dumps(rec,indent=2));assert not exceptions and not hits
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=watchdog,daemon=True).start();main()
