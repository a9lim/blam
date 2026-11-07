"""Pinned root multiplicity-five inventory. Count before materializing.

R = spine((lambda x.B) A, C); w<=45; one j; five free x in B;
L=3 or4, V=10, one c, j at depth0, sum non-j indices <=9-2L.
These count rows are necessary for a full-law minimum by RootProfile.lean
plus the exact source identity. All beta redexes are allowed.
No term generator expansion occurs in count mode.
"""
import functools, itertools, json, resource, signal, sys, time
signal.alarm(110)
START=time.monotonic()
LIMIT=100001
@functools.lru_cache(None)
def splits(L,V,x,c,j,t):
    out=[]
    for vl in range(1,V):
      for ll in range(L+1):
       for xl in range(max(0,x-(V-vl)),min(x,vl)+1):
        for cl in range(c+1):
         for jl in range(j+1):
          if xl+cl+jl>vl or x-xl+c-cl+j-jl>V-vl: continue
          for tl in range(t+1):
           out.append(((ll,vl,xl,cl,jl,tl),(L-ll,V-vl,x-xl,c-cl,j-jl,t-tl)))
    return tuple(out)
@functools.lru_cache(None)
def count(d,hx,L,V,x,c,j,t):
    if min(L,V,x,c,j,t)<0 or V<1 or x+c+j>V: return 0
    if x and not hx: return 0
    if j and d: return 0
    if t < x*(d-1)+c*d: return 0
    # Every unlabelled leaf is locally bound; impossible at depth zero.
    if d==0 and V!=c+j: # lambda below may introduce binders
        if L==0:return 0
    n=0
    if L==0 and V==1:
      if (x,c,j)==(1,0,0) and hx and t==d-1: n+=1
      if (x,c,j)==(0,1,0) and t==d: n+=1
      if (x,c,j)==(0,0,1) and d==0 and t==0: n+=1
      if (x,c,j)==(0,0,0) and 0<=t<d-int(hx): n+=1
    if L: n+=count(d+1,hx,L-1,V,x,c,j,t)
    for a,b in splits(L,V,x,c,j,t):
      na=count(d,hx,*a)
      if na:n+=na*count(d,hx,*b)
      if n>=LIMIT:return LIMIT
    return n
@functools.lru_cache(None)
def fparts(L,V,c,j,t):
    out=[]
    for vl in range(1,V+1):
     for ll in range(L+1):
      for cl in range(c+1):
       for jl in range(j+1):
        if cl+jl>vl or c-cl+j-jl>V-vl:continue
        for tl in range(t+1):
         out.append(((ll,vl,0,cl,jl,tl),(L-ll,V-vl,c-cl,j-jl,t-tl)))
    return tuple(out)
@functools.lru_cache(None)
def forest(L,V,c,j,t):
    if V==0:return int((L,c,j,t)==(0,0,0,0))
    n=0
    for a,b in fparts(L,V,c,j,t):
      na=count(0,False,*a)
      if na:n+=na*forest(*b)
      if n>=LIMIT:return LIMIT
    return n

def roots():
    for Ltotal in (3,4):
     for tax in range(10-2*Ltotal):
      for vb in range(5,10):
       for lb in range(Ltotal-1):
        for cb in range(2):
         for tb in range(tax+1):
          bs=(lb,vb,5,cb,0,tb)
          nb=count(1,True,*bs)
          if not nb:continue
          rem=(Ltotal-1-lb,10-vb,1-cb,1,tax-tb)
          for aa,cs in fparts(*rem):
            if aa[0]==0:continue # root flat lemma: A has a lambda or is j
            na=count(0,False,*aa);nc=forest(*cs)
            if na and nc:yield Ltotal,tax,bs,aa,cs,nb*na*nc

if __name__=='__main__':
    stats={}
    specs=list(roots())
    for l,t,*_,n in specs:stats[f'L{l}_tax{t}']=stats.get(f'L{l}_tax{t}',0)+n
    print(json.dumps({'rows':stats,'total':sum(stats.values()),'specs':len(specs),
      'seconds':time.monotonic()-START,'rss_bytes':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
      'states':count.cache_info().currsize},indent=2))
