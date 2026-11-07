import sys
sys.dont_write_bytecode=True
from pathlib import Path
import importlib.util,json,time,resource,threading,signal
from collections import defaultdict
H=Path(__file__).resolve().parent
def load(name,file):
 spec=importlib.util.spec_from_file_location(name,H/file);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);return m
ct=load('firstopj_other','other_count.py');g=load('firstopj_check','check.py');g.ct=ct.ct;D=g.D
start=time.monotonic()
def jtgen(n,t,p,c):
 if not ct.jt(n,t,p,c):return
 for a in range(4,n-2*(t-1)+1):
  for k in ct.ct.J(a):
   if not ct.ct.tails(n-a,t-1,c-k[2]):continue
   for u in g.JG(a,k):
    for vs in g.tailgen(n-a,t-1,c-k[2]):yield (u,)+vs
 if t>1:
  for a in range(2,n-2*(t-1)-1):
   for k in ct.ct.T(a,2):
    e=k[1][1]
    if not ct.jt(n-a,t-1,p-1,c-e):continue
    for u in g.G(a,2,k):
     for vs in jtgen(n-a,t-1,p-1,c-e):yield(u,)+vs

def main(t):
 blocks=[(p,b,n) for p in range(1,t+1) for b,n in ct.blocks(t,p)]
 expected=sum(n for p,b,n in blocks);assert expected<=100000
 seen=set();exceptions=[];hits=[];rows=defaultdict(lambda:defaultdict(int));count=0
 for p,(a,ka,b,kd,v,c),num in blocks:
  row=rows[str(p)];got=0
  for A in g.G(a,2,ka):
   for Db in g.G(b,3,kd):
    for ts in jtgen(v,t,p,c):
     h=D.A(D.L(Db),A)
     for u in ts[:p]:h=D.A(h,u)
     body=D.A(D.V(0),h)
     for u in ts[p:]:body=D.A(body,u)
     got+=1;count+=1;row['markings']+=1;assert count<=100000
     assert g.cost(body)+2==10+a+b+2*t+v<=45
     if body in seen:continue
     seen.add(body);row['unique']+=1
     for label,stream,target in [('zero',D.Z(),D.A(D.Kc('r'),D.Kc('j'))),('unary',D.U(1),D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N')))]:
      try:actual=g.nf(D.inst(body,stream),[300])
      except(g.Cycle,g.Cutoff,RecursionError) as e:
       exceptions.append(dict(body=body,probe=label,kind=type(e).__name__));row['exceptions']+=1;break
      if actual!=target:row['wrong_'+label]+=1;break
     else:hits.append(body);row['hits']+=1
  assert got==num,(got,num,t,p,a,ka,b,kd,v,c)
 assert count==expected
 rec=dict(name=f'pending{t}',markings=count,unique=len(seen),rows=rows,exceptions=exceptions,hits=hits,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'check_pending{t}.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k not in('rows','exceptions','hits')},indent=2));print('EXCEPTIONS',len(exceptions),'HITS',len(hits))
if __name__=='__main__':signal.alarm(110);threading.Thread(target=ct.ct.watch,daemon=True).start();main(int(sys.argv[1]))
