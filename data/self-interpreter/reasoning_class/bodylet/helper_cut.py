"""Pinned x-headed B: A's zero weak head must be a lambda or bare r.
B has another x use, hence at least one application argument; if A[Z]
has any other rigid head, or already applies r, the final r j law cannot
hold. Cutoffs are retained, never used as rejections.
"""
import sys
sys.dont_write_bytecode=True
import check as ck
import minimum as ct
import json,time,signal,threading,resource
from collections import Counter
H=ck.H;d=ck.d
signal.alarm(112);threading.Thread(target=ct.watchdog,daemon=True).start()
raw=sys.argv[1].split(':');cell=(int(raw[0]),)+tuple(raw[1:]);assert cell[1] in ('0','1')
shield=cell[1]=='1'
assert not shield or cell[2]=='A'
configs=list(ct.blocks(cell[0],cell));catalog={}
safe=len(sys.argv)>2 and sys.argv[2]=='safe'
if safe:import zero_safe as zs
for _,(a,ka,b,kb,p,kp,ja),n in configs:catalog[a,ka,ja]=zs.terms(a,2,ja).get((ka,False),0) if safe else ct.terms(a,2,ja)[ka]
assert sum(catalog.values())<=100000
kept={};fail=Counter();unknown=[];count=0
for (a,ka,ja),num in catalog.items():
 out=[]
 for A in (zs.gen(a,2,ja,ka,False) if safe else ck.gen(a,2,ja,ka)):
  count+=1
  try:h,args=ck.whnf(d.inst(A,d.Z()),[200])
  except (ck.Cycle,ck.Cutoff,RecursionError) as e:
   out.append(A);unknown.append(dict(A=A,kind=type(e).__name__));continue
  if h[0]=='l' or (h==d.Kc('r') and len(args)<=(1 if shield else 0)) or (shield and h==d.Kc('j') and not args):out.append(A)
  else:fail['head'+(h[1] if h[0]=='k' else h[0])+':arity'+str(len(args))]+=1
 kept[a,ka,ja]=out
newcount=sum(len(kept[a,ka,ja])*ct.terms(b,3,0)[kb]*ct.pending(p,1-ja)[kp] for _,(a,ka,b,kb,p,kp,ja),n in configs)
rec=dict(cell=cell,shielding_filter=shield,static_bad_zero_filter=safe,helpers=count,rejected=count-sum(map(len,kept.values())),failures=dict(fail),retained_helpers=[A for aa in kept.values() for A in aa],retained_exceptions=unknown,remaining_sources=newcount,original_sources=sum(n for _,_,n in configs),seconds=time.monotonic()-ct.START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
(H/('helpers-'+sys.argv[1].replace(':','-')+'.json')).write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k not in ('retained_helpers','retained_exceptions')},indent=2));print('retained exceptions',len(unknown))
