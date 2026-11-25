"""Count marked nonlinear source redexes, never instantiate source terms.
B=C[(lambda x.D) A], every C and tail list, at the exact reader budget.
Safe minimum filter: contraction delta>=0 and, at equality, L(A)>0.
Counts are upper bounds on unique sources because a B may mark several lets.
"""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache
from collections import defaultdict
import time,resource,signal,json
from pathlib import Path
H=Path(__file__).resolve().parent

# Standard j-free terms at lexical depth dep over nf free variables.
# Features: free leaves, lambda count, c presence.
@lru_cache(None)
def A(n,dep,nf):
 if n<2:return {}
 out=defaultdict(int)
 for i in range(dep+nf):
  if i+2==n:out[(int(i>=dep),0,int(i==dep+nf-1))]+=1
 for (f,l,c),v in A(n-2,dep+1,nf).items():out[f,l+1,c]+=v
 for a in range(2,n-3):
  for (f,l,c),v in A(a,dep,nf).items():
   for (g,k,e),w in A(n-2-a,dep,nf).items():out[f+g,l+k,c|e]+=v*w
 return dict(out)

# D features x-count, x-depth sum, other outward leaves, c presence.
@lru_cache(None)
def D(n,dep,nf):
 if n<2:return {}
 out=defaultdict(int)
 for i in range(dep+nf):
  if i+2==n:out[(int(i==dep),dep if i==dep else 0,int(i>dep),int(i==dep+nf-1))]+=1
 for key,v in D(n-2,dep+1,nf).items():out[key]+=v
 for a in range(2,n-3):
  for (m,M,T,c),v in D(a,dep,nf).items():
   for (k,K,U,e),w in D(n-2-a,dep,nf).items():
    if m+k<=5:out[m+k,M+K,T+U,c|e]+=v*w
 return dict(out)

@lru_cache(None)
def simple(n,dep,nf,hc):return sum(v for (f,l,c),v in A(n,dep,nf).items() if c==hc)

# Context with one marked hole at exact depth ell, cost n outside hole.
@lru_cache(None)
def context(n,dep,ell,hc):
 if n<0 or dep>ell:return 0
 if n==0:return int(dep==ell and hc==0)
 ans=context(n-2,dep+1,ell,hc)
 for a in range(2,n-1):
  for c in (0,1):
   for e in (0,1):
    if c|e==hc:ans+=2*simple(a,dep,3,c)*context(n-2-a,dep,ell,e)
 return ans

# T term: exact local weighted cost; j allowed once at ANY lambda depth.
@lru_cache(None)
def tail(n,dep,j,c):
 if n<0:return 0
 out=int(j==1 and n==4*dep and c==0)
 if j==0:
  for i in range(dep+2):
   out+=int(n==i+2 and c==int(i==dep+1))
 out+=tail(n-2,dep+1,j,c)
 for a in range(n-1):
  for k in range(j+1):
   for f in (0,1):
    for g in (0,1):
     if f|g==c:out+=tail(a,dep,k,f)*tail(n-2-a,dep,j-k,g)
 return out

@lru_cache(None)
def tails(n,q,j,c):
 if n<0:return 0
 if not q:return int(n==0 and j==0 and c==0)
 out=0
 for a in range(n+1):
  for k in range(j+1):
   for f in (0,1):
    for g in (0,1):
     if f|g==c:out+=tail(a,0,k,f)*tails(n-a,q-1,j-k,g)
 return out

def blocks(q):
 # A block is all choices of A,D,C,T with fixed cost and feature tuples.
 budget=33-2*q
 for ell in range((budget-2*(q-1)-12)//2+1):
  for a in range(2,budget-2*ell-9+1):
   for ka,na in A(a,0,ell+3).items():
    F,L,ca=ka
    for b in range(6,budget-2*ell-a-4+1):
     for kd,nd in D(b,0,ell+4).items():
      m,M,T,cd=kd
      if not 2<=m<=5:continue
      delta=(m-1)*a+(F-1)*M-4-2*m-T
      if delta<0 or (delta==0 and L==0):continue
      rem=budget-4-a-b
      for k in range(2*ell,rem+1):
       for cc in (0,1):
        nc=context(k,0,ell,cc)
        if not nc:continue
        for p in range(rem-k+1):
         for ct in (0,1):
          nt=tails(p,q,1,ct)
          if not nt or not(ca or cd or cc or ct):continue
          loc='A' if ca else 'D' if cd else 'context' if cc else 'tail'
          yield (m,loc),(ell,a,ka,b,kd,k,cc,p,ct),na*nd*nc*nt

def count(q):
 out=defaultdict(int)
 for key,block,n in blocks(q):out[key]+=n
 return dict(out)
if __name__=='__main__':
 signal.alarm(110);start=time.monotonic()
 q=int(sys.argv[1]);r=count(q)
 rec={'q':q,'cells':{f'{m}:{loc}':n for (m,loc),n in sorted(r.items())},'total_markings':sum(r.values()),'seconds':time.monotonic()-start,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
 (H/f'count{q}.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
