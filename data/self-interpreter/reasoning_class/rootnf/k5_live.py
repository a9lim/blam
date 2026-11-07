"""Exact multiplicity-five count with three live source binders.

Beyond root x (five uses), exactly one binder has two uses and one has one;
there is zero or one unused binder. Free c and j occur once, j at depth0.
All applications and redexes allowed. This is an exact grammar by induction
on the term tree. No stream-law checks occur in count mode.
"""
import functools,itertools,json,resource,signal,time
signal.alarm(110); START=time.monotonic(); LIMIT=100001
# specs = (env occurrence tuple, c, j, n0, n1, n2, nonj index tax)
def leaves(s):
    e,c,j,z,o,t,T=s
    return sum(e)+c+j+o+2*t
@functools.lru_cache(None)
def parts(s):
    e,c,j,z,o,t,T=s
    ans=[]
    for el in itertools.product(*(range(q+1) for q in e)):
     er=tuple(q-a for q,a in zip(e,el))
     for cl,jl,zl,ol,tl in itertools.product(range(c+1),range(j+1),range(z+1),range(o+1),range(t+1)):
      al=(el,cl,jl,zl,ol,tl)
      ar=(er,c-cl,j-jl,z-zl,o-ol,t-tl)
      if not leaves((*al,0)) or not leaves((*ar,0)):continue
      for Tax in range(T+1):ans.append(((*al,Tax),(*ar,T-Tax)))
    return tuple(ans)
@functools.lru_cache(None)
def count(s):
    e,c,j,z,o,t,T=s; d=len(e)
    if not leaves(s) or (j and d):return 0
    if sum(i*q for i,q in enumerate(e))+d*c>T:return 0
    n=0
    if z+o+t==0 and leaves(s)==1:
      if c==1 and T==d:n+=1
      if j==1 and d==0 and T==0:n+=1
      if c+j==0 and sum(e)==1 and T==e.index(1):n+=1
    for r,num in enumerate((z,o,t)):
      if num:
        sub=[z,o,t];sub[r]-=1
        n+=count(((r,)+e,c,j,*sub,T))
    for a,b in parts(s):
      na=count(a)
      if na:n+=na*count(b)
      if n>=LIMIT:return LIMIT
    return n
@functools.lru_cache(None)
def fparts(s):
    # First forest member vs remainder; permit empty remainder only.
    e,c,j,z,o,t,T=s; assert not e
    out=[]
    for cl,jl,zl,ol,tl in itertools.product(range(c+1),range(j+1),range(z+1),range(o+1),range(t+1)):
      a=((),cl,jl,zl,ol,tl,0);b=((),c-cl,j-jl,z-zl,o-ol,t-tl,0)
      if not leaves(a):continue
      for Tax in range(T+1):out.append((a[:-1]+(Tax,),b[:-1]+(T-Tax,)))
    return tuple(out)
@functools.lru_cache(None)
def forest(s):
    if not leaves(s):return int(s==((),0,0,0,0,0,0))
    n=0
    for a,b in fparts(s):
      na=count(a)
      if na:n+=na*forest(b)
      if n>=LIMIT:return LIMIT
    return n

def roots():
    for z in (0,1):
     for T in range(4-2*z):
      for zb,ob,tb,cb,Tb in itertools.product(range(z+1),range(2),range(2),range(2),range(T+1)):
        b=((5,),cb,0,zb,ob,tb,Tb);nb=count(b)
        if not nb:continue
        rem=((),1-cb,1,z-zb,1-ob,1-tb,T-Tb)
        for a,cs in fparts(rem):
          if not sum(a[3:6]):continue # A must contain a lambda; A=j separately excluded
          na=count(a); nc=forest(cs)
          if na and nc:yield z,T,b,a,cs,nb*na*nc

if __name__=='__main__':
    stats={};specs=list(roots())
    for z,T,*_,n in specs:stats[f'L{3+z}_tax{T}']=stats.get(f'L{3+z}_tax{T}',0)+n
    print(json.dumps({'rows':stats,'total':sum(stats.values()),'specs':len(specs),
      'seconds':time.monotonic()-START,'rss_bytes':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
      'count_states':count.cache_info().currsize},indent=2))
