"""Exact raw envelopes for lower-k cells, coefficient counting only.
Scope: one source j at fixed depth d, c present, root x multiplicity k,
root argument has a lambda, at least three source lambdas overall. This is
an over-approximation: live ownership, local prices and role cuts are not
all imposed. No term is constructed or probed.
"""
import sys
sys.dont_write_bytecode=True
import functools,itertools,collections,time,signal,resource,json,os
from pathlib import Path
H=Path(__file__).resolve().parent
K=int(sys.argv[1]);JD=int(sys.argv[2]);START=time.monotonic();signal.alarm(110)
# Boolean c presence, exact one-hole count, lambda count capped at two.
CS={0:((0,0),),1:((1,0),(0,1),(1,1))}
LS={i:tuple((a,b) for a,b in itertools.product(range(3),repeat=2) if min(2,a+b)==i) for i in range(3)}
@functools.lru_cache(None)
def count(n,dep,x,m,c,j,l):
 if n<0 or m>K or j and dep>JD or (not x and m):return 0
 if m and n<4*m-2:return 0
 if j and n<4*JD:return 0
 if n<2*l:return 0
 out=0
 if l==0:
  if j and not m and not c and n==4*dep and dep==JD:out+=1
  if not j:
   if c and not m and n==dep+2:out+=1
   if not c:
    for i in range(dep):
     if m==int(x and i==dep-1) and n==i+2:out+=1
 if l:
  for ll in range(3):
   if min(2,ll+1)==l:out+=count(n-2,dep+1,x,m,c,j,ll)
 for a in range(n-1):
  b=n-2-a
  for ml in range(m+1):
   for cl,cr in CS[c]:
    for jl in range(j+1):
     for ll,lr in LS[l]:
      ca=count(a,dep,x,ml,cl,jl,ll)
      if ca:out+=ca*count(b,dep,x,m-ml,cr,j-jl,lr)
 return out
@functools.lru_cache(None)
def forest(n,c,j,l):
 out=int((n,c,j,l)==(0,0,0,0))
 if n<2:return out
 for a in range(n-1):
  for cl,cr in CS[c]:
   for jl in range(j+1):
    for ll,lr in LS[l]:
     ca=count(a,0,False,0,cl,jl,ll)
     if ca:out+=ca*forest(n-2-a,cr,j-jl,lr)
 return out
rows=collections.Counter()
for w in range(max(30,4*K+22+4*JD),46):
 for nb in range(w-3):
  for na in range(w-3-nb):
   nc=w-4-nb-na
   for cb,ca,cc in itertools.product(range(2),repeat=3):
    if not(cb or ca or cc):continue
    for jb,ja,jc in ((1,0,0),(0,1,0),(0,0,1)):
     for lb,la,lc in itertools.product(range(3),range(1,3),range(3)):
      if lb+la+lc<2:continue
      a=count(na,0,False,0,ca,ja,la)
      if not a:continue
      b=count(nb,1,True,K,cb,jb,lb)
      if not b:continue
      q=forest(nc,cc,jc,lc)
      rows[w]+=a*b*q
 if resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:raise RuntimeError('RSS cap')
rec=dict(k=K,depth=JD,rows=dict(rows),total=sum(rows.values()),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,states=count.cache_info().currsize)
(H/f'remainder{K}d{JD}.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
