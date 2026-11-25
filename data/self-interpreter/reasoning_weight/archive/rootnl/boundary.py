"""Count strengthened root boundary without materializing source terms.
Leading B-prefix erasure, direct-j-chain closure, and unconditional P1/P4
Lift are imposed on the independently counted baseline rootnl grammar.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import grammar as f
from functools import lru_cache
import json,collections,time,signal,threading,resource,os
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def is_c(s):return s[1]==1 and f.leaves(s)==1 and not sum(s[3])
def is_j(s):return s[2]==1 and f.leaves(s)==1 and not sum(s[3])
@lru_cache(None)
def forest(s,t,prefix):
 if not prefix:return f.forest(s,t)
 if not t:return f.forest(s,t)
 total=0
 for a,b in f.fparts(s):
  if prefix[0]==0 and not is_c(a):continue
  if f.JD==0 and is_j(a):continue # root lane's literal head-chain j closure
  total+=sum(f.count(a).values())*forest(b,t-1,prefix[1:])
 return total

def run(k,d):
 f.K=k;f.JD=d;stats=collections.Counter();prices=collections.Counter();cuts=collections.Counter();pre=0;blockcount=0
 for key,n in f.roots():
  L,T,b,a,cs,bf,af,t=key;pre+=n;old=f.forest(cs,t);new=forest(cs,t,bf[5])
  assert n%old==0
  nnew=(n//old)*new;cuts['B_prefix_forced_or_direct_j']+=n-nnew
  if not nnew:continue
  pureB=bool(not bf[5] and bf[8][0]==0 and bf[8][1] and (bf[8][1][0]==0 or not sum(b[3]) and not b[1] and not b[2]))
  pureA=bool(len(af[5])==1 and af[8][0]==0 and af[8][1] and (af[8][1][0]==0 or sum(a[3])==1 and not a[1] and not a[2]))
  if pureB and pureA:
   cuts['self_feeding_replicator']+=nnew;continue
  p=len(bf[5]);bh,args=bf[8];h=len(af[5])
  literal_hole_pending=bool(d==0 and cs[2] and not sum(cs[3]))
  literal_hole_body=bool(b[2] and -2 in args)
  if bh==p and h>=len(args)+max(0,t-p)+1 and (literal_hole_pending or literal_hole_body):
   cuts['root_full_chain_prior']+=nnew;continue
  if k==2 and not sum(b[3]) and f.leaves(b)==2 and not b[1] and not b[2] and t==1 and is_j(cs) and h==2 and af[8][0]==1:
   cuts['root_Delta_h2_prior']+=nnew;continue
  w=2*L+4*(f.leaves(b)+f.leaves(a)+f.leaves(cs))-4+T+4*d
  if len(bf[5])==t+1 and t<=1 and len(af[5])==1 and af[8][0]==0 and len(af[8][1])==2:
   delta=f.fr(a)+f.fr(cs)+(t+1)*bf[5][-1]-k-sum(bf[5][:-1])
   if w+delta<=45:cuts['P1_P4_unconditional_lift']+=nnew;continue
  stats[f.cell(key)]+=nnew;prices[(w,L)]+=nnew;blockcount+=1
 rec=dict(k=k,depth=d,baseline=pre,cuts=dict(cuts),total=sum(stats.values()),cells={str(k):v for k,v in stats.items()},prices={str(k):v for k,v in prices.items()},blocks=blockcount,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'boundary_{k}_{d}.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('cells','prices')}))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();run(*map(int,sys.argv[1:3]))
