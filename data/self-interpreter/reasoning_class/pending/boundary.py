"""Exact coefficient filter for the literal-body-prefix pending family.
No source terms or normalizer calls. Reuses the rootnl minimum grammar.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import grammar as f
from functools import lru_cache
import collections,json,time,resource,signal,threading,os
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def direct_j(a):return a[2]==1 and f.leaves(a)==1 and not sum(a[3])
def first_ok(a,b,bf):
 m,D,_=bf[1]
 if f.JD==0 and direct_j(a):return False # established direct-hole chain exclusion
 # consume keeps the hole exactly iff argument j-free or binder linear.
 if not a[2] or m==1:
  price=(m-1)*f.wt(a)+m*f.fr(a)+(f.fr(a)-1)*D-2*m-4-f.fr(b)
  lprice=(m-1)*sum(a[3])-1
  if price<0 or price==0 and lprice<0:return False
  # In the j-free case: one j in B loses its y binder, all others fixed.
  if price==0 and lprice==0 and not a[2] and b[2]:return False
 return True
@lru_cache(None)
def tail_forest(s,t,prefix):
 if not prefix or not t:return f.forest(s,t)
 total=0
 for a,rest in f.fparts(s):
  if f.JD==0 and direct_j(a):continue
  # prefix uses zero already eliminated by exchange, retained for clarity.
  if prefix[0]==0 and not(a[1]==1 and f.leaves(a)==1 and not sum(a[3])):continue
  total+=sum(f.count(a).values())*tail_forest(rest,t-1,prefix[1:])
 return total
@lru_cache(None)
def pending_forest(s,t,b,bf):
 total=0
 for a,rest in f.fparts(s):
  if first_ok(a,b,bf):total+=sum(f.count(a).values())*tail_forest(rest,t-1,bf[5][1:])
 return total

def blocks():
 for key,n in f.roots():
  L,T,b,a,cs,bf,af,t=key
  if not t or not bf[5]:continue
  uses=(f.K,)+bf[5][:t]
  if any(x>y for x,y in zip(uses,uses[1:])):continue
  old=f.forest(cs,t);new=pending_forest(cs,t,b,bf)
  assert n%old==0
  if new:yield key,n//old*new

def run(k,d):
 f.K=k;f.JD=d;stats=collections.Counter();prof=collections.Counter();shapes=collections.Counter()
 for key,n in blocks():
  stats[f.cell(key)]+=n;prof[(f.cell(key),(k,)+key[5][5][:key[-1]])]+=n
  shapes[(key[-1],len(key[5][5]),key[5][5],f.cell(key)[0])]+=n
 rec=dict(residual_shapes={str(k):v for k,v in shapes.items()},k=k,depth=d,total=sum(stats.values()),cells={str(k):v for k,v in stats.items()},profiles={str(k):v for k,v in prof.items()},seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'boundary_{k}_{d}.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k!='profiles'}))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();run(*map(int,sys.argv[1:3]))
