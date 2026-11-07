"""x-headed B: exact zero HNF interface, conservatively keeping cutoffs.
For A[Z] = lambda^h. r args(q), k source arguments require k>=h and
q+k-h=1. A bound-variable head requires k>=h. No other rigid head works.
"""
import sys
sys.dont_write_bytecode=True
import check as ck
import minimum as ct
from collections import Counter
from functools import lru_cache
import json,time,resource,signal,threading
H=ck.H;d=ck.d

def valid(sig,k):
 typ,h,q=sig
 return typ=='unknown' or (k>=h and (typ=='bound' or q+k-h==1))

@lru_cache(None)
def bs(b,kb):return Counter(ck.arity(B) for B in ck.gen(b,3,0,kb))
@lru_cache(None)
def cs(p,j,kp):return Counter(map(len,ck.pgen(p,j,kp)))

if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=ct.watchdog,daemon=True).start()
 raw=sys.argv[1].split(':');cell=(int(raw[0]),)+tuple(raw[1:]);assert cell[1:3]==('0','C')
 configs=list(ct.blocks(cell[0],cell));catalog={}
 for _,(a,ka,b,kb,p,kp,ja),num in configs:catalog[a,ka,ja]=ct.terms(a,2,ja)[ka]
 assert sum(catalog.values())<=100000
 groups={};records=[];fail=Counter();exceptions=0;helpers=0
 for (a,ka,ja),num in catalog.items():
  dist=Counter()
  for A in ck.gen(a,2,ja,ka):
   helpers+=1;t=d.inst(A,d.Z());budget=[200];l=0
   try:
    while True:
     h,args=ck.whnf(t,budget)
     if h[0]!='l':break
     assert not args;l+=1;t=h[1]
    if h[0]=='v':sig=('bound',l,len(args))
    elif h==d.Kc('r') and len(args)<=1:sig=('r',l,len(args))
    else:fail[str(h)+':arity'+str(len(args))]+=1;continue
   except (ck.Cycle,ck.Cutoff,RecursionError):sig=('unknown',0,0);exceptions+=1
   dist[sig]+=1;records.append([A,sig])
  groups[a,ka,ja]=dist
 total=0
 for _,(a,ka,b,kb,p,kp,ja),num in configs:
  for sig,na in groups[a,ka,ja].items():
   for nb,cb in bs(b,kb).items():
    for np,cp in cs(p,1-ja,kp).items():
     if valid(sig,nb+np):total+=na*cb*cp
 components=helpers+sum(sum(v.values()) for v in bs.cache_info() and [bs(b,kb) for b,kb in {(x[1][2],x[1][3]) for x in configs}])+sum(sum(cs(p,j,kp).values()) for p,j,kp in {(x[1][4],1-x[1][6],x[1][5]) for x in configs})
 assert components<=100000
 rec=dict(cell=cell,helpers=helpers,components=components,interfaces=records,retained_helpers=[x[0] for x in records],retained_exceptions=exceptions,failures=dict(fail),remaining_sources=total,original_sources=sum(x[-1] for x in configs),seconds=time.monotonic()-ct.START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/('helpers-'+sys.argv[1].replace(':','-')+'.json')).write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('interfaces','retained_helpers')},indent=2))
