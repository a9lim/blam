"""Count strengthened root boundary without materializing source terms.
Leading B-prefix erasure, direct-j-chain closure, and unconditional P1/P4
Lift are imposed on the independently counted baseline rootnl grammar.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent / "rootnl"))
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

def extension(key):
 L,T,b,a,cs,bf,af,t=key
 # Pure x application trees: k=2 one shape, k=3 two shapes.
 if f.K not in (2,3) or sum(b[3]) or b[1] or b[2]:return None
 if not af[1]:return None
 own=af[8][0]==0 and af[1][0]==1 and len(af[5])==1
 constant=af[1][0]==0
 if not own and not constant:return None
 # Symbolic normal form with inert parameters; no source terms are constructed.
 p=len(af[8][1]) if own else 1
 if not p:return None
 # Named skeleton uses its own tiny evaluator, parameters remain rigid.
 V=lambda x:('v',x)
 A=lambda x,y:('a',x,y)
 W=('w',)
 def ap(x,y):
  if x==W:
   if constant:return V(0)
   for i in range(p):y=ap(y,V(i))
   return y
  return A(x,y)
 if f.K==2:u=ap(W,W)
 elif len(bf[8][1])==1:u=ap(W,ap(W,W))
 else:u=ap(ap(W,W),W)
 def weight(t,dep=p):
  if t==W:
   # wrapper under p sharing binders, parameter i has index p-i.
   return 5 if constant else 4+5*p+p*(p-1)//2
  if t[0]=='v':return p-t[1]+1
  return 2+weight(t[1])+weight(t[2])
 def wrappers(t):
  return 1 if t==W else 0 if t[0]=='v' else wrappers(t[1])+wrappers(t[2])
 delta=weight(u)-(4*f.K-2)+(2*p-8 if own else -2)-f.fr(a)
 ld=p-2+wrappers(u)
 if delta<0 or delta==0 and (ld<0 or ld==0 and a[2]):
  return ('independent_payloads' if own else 'constant_helper',p,delta,ld)
 return None

def run(k,d):
 f.K=k;f.JD=d;stats=collections.Counter();prices=collections.Counter();cuts=collections.Counter();pre=0;blockcount=0;extra=collections.Counter();families=collections.Counter();basecells=collections.Counter();remaining_shapes=collections.Counter()
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
  basecells[f.cell(key)]+=nnew
  ext=extension(key)
  if ext:
   extra[f.cell(key)]+=nnew;families[ext]+=nnew
  else:
   if bf[5]:bshape='B-leading-lambda'
   elif sum(b[3]):bshape='B-inner-lambda-or-let'
   elif b[1] or b[2]:bshape='B-application-with-c-or-j'
   else:bshape='B-pure-x-tree'
   if not af[1]:ashape='A-no-leading-lambda'
   elif af[1][0]==0:ashape='A-constant'
   elif len(af[5])>=2:ashape='A-multiple-leading-lambdas'
   elif af[8][0]==0 and af[1][0]==1:ashape='A-independent-own-head'
   elif af[8][0]==0:ashape='A-dependent-own-head'
   else:ashape='A-external-or-redex-head'
   remaining_shapes[(f.cell(key),bshape,ashape)]+=nnew
  stats[f.cell(key)]+=nnew;prices[(w,L)]+=nnew;blockcount+=1
 rec=dict(remaining_shapes={str(k):v for k,v in remaining_shapes.items()},basecells={str(k):v for k,v in basecells.items()},new_nonminimum={str(k):v for k,v in extra.items()},families={str(k):v for k,v in families.items()},k=k,depth=d,baseline=pre,cuts=dict(cuts),total=sum(stats.values()),cells={str(k):v for k,v in stats.items()},prices={str(k):v for k,v in prices.items()},blocks=blockcount,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'extensions_{k}_{d}.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('cells','prices','basecells','families','remaining_shapes')}))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();run(*map(int,sys.argv[1:3]))
