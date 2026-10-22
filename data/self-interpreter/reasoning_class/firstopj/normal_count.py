"""Exact beta-normal subset of the admissible source constructor counts.
Subtracting it isolates sources with at least one redex; it never takes a
normal form of a source or replaces a source by its normal form.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import importlib.util,json,time,resource,signal,threading
from functools import lru_cache
from collections import defaultdict
H=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('firstopj_other',H/'other_count.py');other=importlib.util.module_from_spec(spec);spec.loader.exec_module(other);ct=other.ct
@lru_cache(None)
def B(n,nf):
 if n<2:return {}
 out=defaultdict(int);zs=(0,)*nf
 for i in range(nf):
  if i+2==n:
   cs=list(zs);cs[i]=1;out[0,tuple(cs),zs,i,0,0]+=1
 for (L,cs,ds,h,m,M),v in B(n-2,nf+1).items():out[L+1,cs[1:],tuple(d+c for d,c in zip(ds[1:],cs[1:])),'L',cs[0],ds[0]]+=v
 for a in range(2,n-3):
  for (L,cs,ds,h,m,M),v in B(a,nf).items():
   if h=='L':continue
   for (K,ca,da,g,j,J),w in B(n-2-a,nf).items():out[L+K,tuple(x+y for x,y in zip(cs,ca)),tuple(x+y for x,y in zip(ds,da)),h,0,0]+=v*w
 return dict(out)
@lru_cache(None)
def BJ(n):
 if n<4:return {}
 out=defaultdict(int)
 if n==4:out[0,0,0,'J']=1
 for a in range(2,n-5):
  for (LF,cs,ds,h,m,M),v in B(a,2).items():
   if h in ('L',1):continue
   for (LA,sa,ca,ha),w in BJ(n-2-a).items():out[LF+LA,cs[0]+sa,cs[1]+ca,h]+=v*w
 for a in range(4,n-3):
  for (LF,sf,cf,hf),v in BJ(a).items():
   if hf=='J':continue
   for (LA,ca,da,ha,m,M),w in B(n-2-a,2).items():out[LF+LA,sf+ca[0],cf+ca[1],hf]+=v*w
 return dict(out)
@lru_cache(None)
def simple(n):
 out=defaultdict(int)
 for(L,cs,ds,h,m,M),v in B(n,2).items():out[cs[1]]+=v
 return dict(out)
@lru_cache(None)
def tails(n,t,c):
 if n<2*t or c<0:return 0
 if not t:return int(n==0 and c==0)
 return sum(v*tails(n-a,t-1,c-k) for a in range(2,n-2*(t-1)+1) for k,v in simple(a).items())
@lru_cache(None)
def jt(n,t,p,c):
 if not t or p<=0 or n<2*t+2 or c<0:return 0
 out=0
 for a in range(4,n-2*(t-1)+1):
  for(L,s,e,h),v in BJ(a).items():out+=v*tails(n-a,t-1,c-e)
 if t>1:
  for a in range(2,n-2*(t-1)-1):
   for e,v in simple(a).items():out+=v*jt(n-a,t-1,p-1,c-e)
 return out
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=ct.watch,daemon=True).start();start=time.monotonic();rows={}
 for t in range(1,9):
  for p in range(1,t+1):
   rows[f'{t}:{p}']=sum(other.jt(v,t,p,c)-jt(v,t,p,c) for v in range(2*t+2,38-2*t) for c in range(1,v//3+1))
 rec=dict(cells=rows,total=sum(rows.values()),seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'normal_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
