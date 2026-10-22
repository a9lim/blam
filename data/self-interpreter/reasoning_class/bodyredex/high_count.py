"""Cardinality recurrences only, for high-multiplicity first body lets.
No evaluation and no term layouts materialized. Costs price j at zero.
A body-reader has weight 10 + cost(B) + cost(A) + pending_cost.
"""
import sys
sys.dont_write_bytecode = True
from functools import lru_cache

# kind=1: B in [x,s,c], kind=0: A/C in [s,c].
# mask flags which free variables s (1), c (2) are allowed.
# j is a rigid hole admitted only at depth 0, outside B.
@lru_cache(None)
def count(c,d,kind,m,j,mask):
    if c<0 or m<0 or j not in (0,1) or (kind and j) or (d and j): return 0
    if m and c<4*m-2: return 0
    if not kind and m: return 0
    out=0
    if j==1 and c==0: out+=1
    if j==0:
        for i in range(d+kind+2):
            ext=i-d
            if ext==kind and not (mask&1): continue
            if ext==kind+1 and not (mask&2): continue
            if i+2==c and int(kind and ext==0)==m: out+=1
    if j==0: out+=count(c-2,d+1,kind,m,0,mask)
    for cf in range(c-1):
        ca=c-2-cf
        for mf in range(m+1):
            for jf in range(j+1):
                nf=count(cf,d,kind,mf,jf,mask)
                if nf: out+=nf*count(ca,d,kind,m-mf,j-jf,mask)
    return out

@lru_cache(None)
def pending(p,j,mask):
    if p<0:return 0
    if p==0:return int(j==0)
    out=0
    for c in range(p-1):
        for h in range(j+1):
            n=count(c,0,0,0,h,mask)
            if n:out+=n*pending(p-c-2,j-h,mask)
    return out

def configurations(m,mask=3):
    for b in range(4*m-2,36):
        nb=count(b,0,1,m,0,mask)
        if not nb:continue
        for a in range(36-b):
            for p in range(36-b-a):
                for j in (0,1):
                    na=count(a,0,0,0,j,mask)
                    np=pending(p,1-j,mask)
                    if na and np:yield b,a,p,j,nb*na*np

def total(m,mask=3):return sum(v[-1] for v in configurations(m,mask))

if __name__=='__main__':
    import time,signal,resource
    signal.alarm(110)
    start=time.monotonic()
    for m in (6,5):
        vals=[total(m,mask) for mask in range(4)]
        both=vals[3]-vals[2]-vals[1]+vals[0]
        print(dict(m=m,counts_by_allowmask=vals,both_s_c=both,seconds=time.monotonic()-start,
                   peak_rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss),flush=True)

@lru_cache(None)
def count_l(c,d,kind,m,j,mask,l):
    if l<0 or c<2*l or m<0 or j not in (0,1) or (kind and j) or (d and j):return 0
    if m and c<4*m-2+2*l:return 0
    if not kind and m:return 0
    out=0
    if l==0:
        if j==1 and c==0:out+=1
        if j==0:
            for i in range(d+kind+2):
                ext=i-d
                if ext==kind and not (mask&1):continue
                if ext==kind+1 and not (mask&2):continue
                if i+2==c and int(kind and ext==0)==m:out+=1
    if j==0 and l:out+=count_l(c-2,d+1,kind,m,0,mask,l-1)
    for cf in range(c-1):
      ca=c-2-cf
      for mf in range(m+1):
       for jf in range(j+1):
        for lf in range(l+1):
         nf=count_l(cf,d,kind,mf,jf,mask,lf)
         if nf:out+=nf*count_l(ca,d,kind,m-mf,j-jf,mask,l-lf)
    return out

@lru_cache(None)
def pending_l(p,j,mask,l):
    if p<0 or l<0:return 0
    if p==0:return int(j==0 and l==0)
    out=0
    for c in range(p-1):
      for h in range(j+1):
       for la in range(l+1):
        n=count_l(c,0,0,0,h,mask,la)
        if n:out+=n*pending_l(p-c-2,j-h,mask,l-la)
    return out

def configurations_l(m,l,mask=3):
    for b in range(4*m-2,36):
     for lb in range(l+1):
      nb=count_l(b,0,1,m,0,mask,lb)
      if not nb:continue
      for a in range(36-b):
       for p in range(36-b-a):
        for j in (0,1):
         for la in range(l-lb+1):
          lp=l-lb-la
          na=count_l(a,0,0,0,j,mask,la)
          np=pending_l(p,1-j,mask,lp)
          if na and np:yield b,a,p,j,lb,la,lp,nb*na*np

def total_l(m,l,mask=3):return sum(v[-1] for v in configurations_l(m,l,mask))

if __name__=='__main__':
    for m in (6,5):
     for l in range(1,5):
      vals=[total_l(m,l,mask) for mask in range(4)]
      both=vals[3]-vals[2]-vals[1]+vals[0]
      print(dict(m=m,extra_lambdas=l,counts_by_allowmask=vals,both_s_c=both,
                 seconds=time.monotonic()-start),flush=True)

# Exact support, by inclusion-exclusion over the two outer variables.
@lru_cache(None)
def exact_l(c,d,kind,m,j,mask,l):
    return sum((-1)**((mask^q).bit_count())*count_l(c,d,kind,m,j,q,l)
               for q in range(4) if q&~mask==0)

@lru_cache(None)
def pending_e(p,j,mask,l):
    return sum((-1)**((mask^q).bit_count())*pending_l(p,j,q,l)
               for q in range(4) if q&~mask==0)


def pinned_configs():
    # Yields the descriptor for each Cartesian source family, with its size.
    for m,l in ((6,1),(5,1),(5,2)):
     for b,a,p,j,lb,la,lp,_ in configurations_l(m,l):
      if la==0:continue
      for mb in range(4):
       nb=exact_l(b,0,1,m,0,mb,lb)
       if not nb:continue
       for ma in range(4):
        na=exact_l(a,0,0,0,j,ma,la)
        if not na:continue
        for mp in range(4):
         if mb|ma|mp!=3:continue
         np=pending_e(p,1-j,mp,lp)
         if np:yield ('lambda_A',m,b,a,p,j,lb,la,lp,mb,ma,mp,nb*na*np)
    # The remaining flat argument ss for m=5. It contains s but not c or j.
    for b in range(18,30):
     for p in range(30-b):
      for lb in (0,1):
       lp=1-lb
       for mb in range(4):
        nb=exact_l(b,0,1,5,0,mb,lb)
        if not nb:continue
        for mp in range(4):
         if mb|1|mp!=3:continue
         np=pending_e(p,1,mp,lp)
         if np:yield ('flat_ss',5,b,6,p,0,lb,0,lp,mb,1,mp,nb*np)
