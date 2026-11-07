"""Cardinality only for the pinned nonlinear head-redex family."""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache

# nfree=5 means D, with x free index0 and c free index4.
# nfree=4 means A or C, no tracked x and c free index3.
@lru_cache(None)
def terms(c,d,nfree,m,hc):
    if c<2 or m<0:return 0
    n=0
    for i in range(d+nfree):
        if i+2==c and (int(nfree==5 and i==d)==m) and int(i==d+nfree-1)==hc:n+=1
    n+=terms(c-2,d+1,nfree,m,hc)
    for a in range(2,c-3):
        for mf in range(m+1):
            for hf in (0,1):
                for hx in (0,1):
                    if (hf or hx)==hc:
                        n+=terms(a,d,nfree,mf,hf)*terms(c-2-a,d,nfree,m-mf,hx)
    return n

@lru_cache(None)
def pending(p,hc):
    if p==0:return int(hc==0)
    n=0
    for a in range(2,p-1):
        for ha in (0,1):
            for hr in (0,1):
                if (ha or hr)==hc:
                    n+=terms(a,0,4,0,ha)*pending(p-2-a,hr)
    return n

def category(ha,hd,hp):
    return 'A' if ha else 'D' if hd else 'pending' if hp else None

def counts():
    out={(m,loc):[0,0] for m in (2,3,4) for loc in ('A','D','pending')}
    for m in (2,3,4):
      for a in range(2,26):
       for b in range(4*m-2,26-a):
        for p in range(26-a-b):
         for ha in (0,1):
          na=terms(a,0,4,0,ha)
          if not na:continue
          nla=terms(a-2,1,4,0,ha)
          for hd in (0,1):
           nd=terms(b,0,5,m,hd)
           if not nd:continue
           for hp in (0,1):
            loc=category(ha,hd,hp)
            if loc is None:continue
            np=pending(p,hp)
            out[(m,loc)][0]+=na*nd*np
            out[(m,loc)][1]+=nla*nd*np
    return out

if __name__=='__main__':
    out=counts()
    for k,v in out.items():print(k,'all=',v[0],'lambda A=',v[1])
    print('TOTAL',sum(x[0] for x in out.values()))
