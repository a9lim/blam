"""Fixed target-tree inverse-substitution certificate; no source-term sweep.

The finite sets are all inverse cuts and extrudable subterms of the four
canonical target pairs. Source completeness requires the accompanying Lean
lemmas; these computations alone are not a universal source theorem.
"""
from functools import lru_cache
from pathlib import Path
import json
import re
import signal
import sys
import time

sys.dont_write_bytecode = True
signal.alarm(110)
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
sys.path.insert(0, str(ROOT / 'tools'))
import blcc


def parse(s, frame=('c','p')):
    s = re.sub(r"\\([A-Za-z_]\w*(?:\s+[A-Za-z_]\w*)+)\.",
               lambda m: "\\" + "\\".join(m[1].split()) + ".", s)
    p = blcc.P(s)
    t = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t)
    return blcc.to_db(t, frame)


@lru_cache(None)
def wire(t):
    if t[0] == 'V': return t[1]+2
    if t[0] == 'L': return wire(t[1])+2
    return wire(t[1])+wire(t[2])+2


@lru_cache(None)
def shift(t, d, c=0):
    if t[0] == 'V': return ('V',t[1]+d if t[1]>=c else t[1])
    if t[0] == 'L': return ('L',shift(t[1],d,c+1))
    return ('A',shift(t[1],d,c),shift(t[2],d,c))


@lru_cache(None)
def unshift(t, d, c=0):
    if t[0] == 'V':
        n=t[1]
        return ('V',n if n<c else n-d) if n<c or n>=c+d else None
    if t[0] == 'L':
        b=unshift(t[1],d,c+1)
        return ('L',b) if b is not None else None
    f=unshift(t[1],d,c); a=unshift(t[2],d,c)
    return ('A',f,a) if f is not None and a is not None else None


@lru_cache(None)
def arguments(t, d=0):
    result=set()
    a=unshift(t,d)
    if a is not None: result.add(a)
    if t[0]=='L': result.update(arguments(t[1],d+1))
    if t[0]=='A':
        result.update(arguments(t[1],d)); result.update(arguments(t[2],d))
    return tuple(sorted(result))


@lru_cache(None)
def inverse(t,a,j=0):
    result=set()
    if t==a: result.add(('V',j))
    if t[0]=='V':
        n=t[1]; result.add(('V',n if n<j else n+1))
    elif t[0]=='L':
        result.update(('L',b) for b in inverse(t[1],shift(a,1),j+1))
    else:
        result.update(('A',f,b) for f in inverse(t[1],a,j) for b in inverse(t[2],a,j))
    return tuple(sorted(result))


@lru_cache(None)
def occ(t,j=0):
    if t[0]=='V': return int(t[1]==j)
    if t[0]=='L': return occ(t[1],j+1)
    return occ(t[1],j)+occ(t[2],j)


@lru_cache(None)
def cuts(t):
    return tuple((a,b) for a in arguments(t) for b in inverse(t,a))


@lru_cache(None)
def merged0(j,t,u):
    c=j+6+wire(t)+wire(u)
    if t[0]==u[0]=='V' and t[1]==u[1]: c=min(c,wire(t))
    if t[0]==u[0]=='L': c=min(c,2+merged0(j+1,t[1],u[1]))
    if t[0]==u[0]=='A': c=min(c,2+merged0(j,t[1],u[1])+merged0(j,t[2],u[2]))
    return c


@lru_cache(None)
def single1(t):
    c=min([wire(t)]+[4+wire(a)+wire(b) for a,b in cuts(t)])
    if t[0]=='L': c=min(c,2+single1(t[1]))
    if t[0]=='A': c=min(c,2+single1(t[1])+wire(t[2]),2+wire(t[1])+single1(t[2]))
    return c


@lru_cache(None)
def let_root(j,t,u):
    zt=shift(t,1); zu=shift(u,1)
    c=6+merged0(j+1,zt,zu)
    c=min([c]+[4+wire(a)+merged0(j+1,b,zu) for a,b in cuts(t)])
    c=min([c]+[4+wire(a)+merged0(j+1,zt,b) for a,b in cuts(u)])
    c=min([c]+[4+merged0(j,a,a1)+merged0(j+1,b,b1)
                   for a,b in cuts(t) for a1,b1 in cuts(u)])
    return c


@lru_cache(None)
def merged1(j,t,u):
    c=min(merged0(j,t,u),let_root(j,t,u),
          j+6+single1(t)+wire(u), j+6+wire(t)+single1(u))
    if t[0]==u[0]=='L': c=min(c,2+merged1(j+1,t[1],u[1]))
    if t[0]==u[0]=='A':
        c=min(c,2+merged1(j,t[1],u[1])+merged0(j,t[2],u[2]),
                2+merged0(j,t[1],u[1])+merged1(j,t[2],u[2]))
    return c


@lru_cache(None)
def single_exact(t):
    c=min([wire(t)+6]+[4+wire(a)+wire(b) for a,b in cuts(t)])
    if t[0]=='L': c=min(c,2+single_exact(t[1]))
    if t[0]=='A': c=min(c,2+single_exact(t[1])+wire(t[2]),2+wire(t[1])+single_exact(t[2]))
    return c


@lru_cache(None)
def merged_exact(j,t,u):
    c=min(let_root(j,t,u),j+6+single_exact(t)+wire(u),j+6+wire(t)+single_exact(u))
    if t[0]==u[0]=='L': c=min(c,2+merged_exact(j+1,t[1],u[1]))
    if t[0]==u[0]=='A':
        c=min(c,2+merged_exact(j,t[1],u[1])+merged0(j,t[2],u[2]),
                2+merged0(j,t[1],u[1])+merged_exact(j,t[2],u[2]))
    return c


@lru_cache(None)
def free_leaves(t,j=0):
    if t[0]=='V': return int(t[1]>=j)
    if t[0]=='L': return free_leaves(t[1],j+1)
    return free_leaves(t[1],j)+free_leaves(t[2],j)


@lru_cache(None)
def merged_caps(j,t,u):
    c=free_leaves(t,j+1)+free_leaves(u,j+1)
    if t[0]==u[0]=='V' and t[1]==u[1]: c=min(c,free_leaves(t,j+1))
    if t[0]==u[0]=='L': c=min(c,merged_caps(j+1,t[1],u[1]))
    if t[0]==u[0]=='A': c=min(c,merged_caps(j,t[1],u[1])+merged_caps(j,t[2],u[2]))
    return c


@lru_cache(None)
def outside_root(t,u):
    c=8+merged0(0,shift(t,1,1),shift(u,1,1))
    for a in set(arguments(t,1)) | set(arguments(u,1)):
        for b in inverse(t,shift(a,1),1):
            for b1 in inverse(u,shift(a,1),1):
                c=min(c,6+wire(a)+merged0(0,b,b1))
    return c


def eta(t): return ('L',('A',shift(t,1),('V',0)))


def main():
    started=time.perf_counter()
    t0=parse(r'p (\f.c (\e a.f (\u r.u a (r e))))')
    t1=parse(r'p (\f.p (\g.c (\e.f e (g e))))')
    rows=[]
    for e0,e1 in [(False,False),(False,True),(True,False),(True,True)]:
        a=shift(eta(t0) if e0 else t0,1)
        b=shift(eta(t1) if e1 else t1,1)
        rows.append({'eta_zero':e0,'eta_one':e1,'target_bits':[wire(a),wire(b)],
            'inverse_cuts':[len(cuts(a)),len(cuts(b))],
            'normal_source_body_floor':merged0(0,a,b),
            'pure_source_captures_floor':merged_caps(0,a,b),
            'one_let_source_body_floor':merged1(0,a,b),
            'one_let_root_body_floor':let_root(0,a,b),
            'exact_one_let_body_floor':merged_exact(0,a,b),
            'outside_tag_one_let_whole_floor':outside_root(a,b)})
    result={'rows':rows,'elapsed_seconds':time.perf_counter()-started,
            'cached_pair_states':merged1.cache_info().currsize,
            'max_source_terms_enumerated':0}
    (LANE/'one_let_bound.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))


if __name__=='__main__':main()
