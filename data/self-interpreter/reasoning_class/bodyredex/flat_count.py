"""Narrowed shared-flat-argument source domains (cardinalities only).
Reasoning: an s occurrence must remain outside the argument. Multiplicity
is 2..4; the linear case is excluded analytically and m>=5 separately.
Minimum lambda tie-break makes the first flat-argument contraction strictly
increase weight, not merely preserve it.
"""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache
from collections import Counter
import high_count as h
import high_check as g

def free_other(t,depth=0):
    if t[0]=='v':return int(t[1]>depth)
    if t[0]=='k':return 0
    if t[0]=='l':return free_other(t[1],depth+1)
    return free_other(t[1],depth)+free_other(t[2],depth)

def xdepth(t,depth=0):
    if t[0]=='v':return depth*int(t[1]==depth)
    if t[0]=='k':return 0
    if t[0]=='l':return xdepth(t[1],depth+1)
    return xdepth(t[1],depth)+xdepth(t[2],depth)

@lru_cache(None)
def bodies(cost,m,mask,l,arity):
    out=[]
    for B in g.terms(cost,0,1,m,0,mask,l):
        M=xdepth(B);G=free_other(B)
        # |ss|=6, F=2; |sss|=10,F=3; j occurs only in pending.
        delta=(m-1)*(4*arity-2)+(arity-1)*M-2*m-4-G
        if delta>=1:out.append(B)
    return tuple(out)

def configs():
    for arity in (2,3):
      for m in range(2,5 if arity==2 else 4):
        max_extra=(4 if m==2 else 2 if m==3 else 1) if arity==2 else (2 if m==2 else 1)
        limit=35-(4*arity-2)
        for l in range(1,max_extra+1):
          for b in range(4*m-2,limit+1):
            for p in range(limit-b+1):
              for lb in range(l+1):
                if arity==2 and m==2 and lb<2:continue
                lp=l-lb
                for mb in range(4):
                  # Require at least one s AND c outside A, exact support.
                  for mp in range(4):
                    if mb|mp!=3:continue
                    np=h.pending_e(p,1,mp,lp)
                    if not np:continue
                    bs=bodies(b,m,mb,lb,arity)
                    if bs:yield arity,m,b,p,lb,lp,mb,mp,len(bs)*np

if __name__=='__main__':
    import time,resource,json
    start=time.monotonic();out=Counter()
    for a,m,b,p,lb,lp,mb,mp,n in configs():out[f'A{a}:m{m}:L{lb+lp+2}']+=n
    print(json.dumps(dict(rows=dict(out),sources=sum(out.values()),seconds=time.monotonic()-start,
      peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss),indent=2))
