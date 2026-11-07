"""Targeted beta simplification and syntactic loop certificates for 13 inputs."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,time
from functools import lru_cache
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
sys.path.insert(0,str(ROOT/'tools/self-interpreter/theory/floor37'))
from verify import parse,head_step,invoke,lc,spine,normal,width,chain,counts,occ
V=lambda n:('V',n)
L=lambda b:('L',b)
A=lambda f,a:('A',f,a)

@lru_cache(maxsize=100000)
def sz(t):
    if t[0]=='V':return 1
    return 1+sum(sz(a) for a in t[1:])

def head_path(t):
    if t[0]=='L':
        p=head_path(t[1]);return None if p is None else ['under']+p
    if t[0]=='A':
        if t[1][0]=='L':return []
        p=head_path(t[1]);return None if p is None else ['left']+p
    return None

def at(t,p):
    for d in p:t=t[2] if d=='right' else t[1]
    return t

def red(t,p):
    if not p:return lc.beta(t[1],t[2])
    d,*q=p
    if d=='under':return L(red(t[1],q))
    if d=='left':return A(red(t[1],q),t[2])
    return A(t[1],red(t[2],q))

def simp_path(t):
    if t[0]=='L':
        p=simp_path(t[1]);return None if p is None else ['under']+p
    if t[0]=='A':
        if t[1][0]=='L' and (t[2][0]=='V' or occ(t[1][1])<=1):return []
        p=simp_path(t[1])
        if p is not None:return ['left']+p
        p=simp_path(t[2]);return None if p is None else ['right']+p
    return None

def oracle(t,three=False):
    @lru_cache(None)
    def rigid(t,depth):
        if t[0]=='V':return t[1]>=depth
        return t[0]=='A' and rigid(t[1],depth)
    @lru_cache(None)
    def w(t,depth,marked,mode):
        if t[0]=='V':return t[1] in marked
        if t[0]!='L':return False
        mm=tuple(i+1 for i in marked)
        if mode==2:
            return t[1][0]=='L' and b(t[1][1],depth+2,(0,)+tuple(i+2 for i in marked),True)
        return b(t[1],depth+1,(0,)+mm,mode==1)
    @lru_cache(None)
    def b(t,depth,marked,three):
        if t[0]=='L':return b(t[1],depth+1,tuple(i+1 for i in marked),three)
        if t[0]!='A':return False
        f,a=t[1:]
        if rigid(f,depth):return b(a,depth,marked,three)
        if not three:
            if f[0]=='A':return b(f,depth,marked,False)
            return w(f,depth,marked,0) and (w(a,depth,marked,0) or b(a,depth,marked,False))
        if f[0]=='A' and f[1][0]=='A':return b(f,depth,marked,True)
        if f[0]=='A':return w(f[1],depth,marked,2) and (w(a,depth,marked,2) or b(a,depth,marked,True))
        return False
    if b(t,0,(),False):return 'W'
    if t[0]=='A' and w(t[1],0,(),1) and (w(t[2],0,(),2) or b(t[2],0,(),True)):
        return 'W23'
    return None

def probe(idx,row,limit=800):
    t,_=lc.decode(row['wire']);q=invoke(t,parse('\\x.x'));start=q;ps=[];st=time.monotonic()
    for k in range(limit):
        # The binders closing rigid C,N are peeled only for the oracle.
        z=q[1][1]
        verdict=oracle(z)
        if verdict:
            print(idx,verdict,'steps',k,'nodes',sz(q),'time',round(time.monotonic()-st,4))
            return dict(id=idx,kind=verdict,steps=k,final=lc.enc(q),paths=ps)
        if sz(q)>30000 or time.monotonic()-st>8:break
        p=simp_path(q)
        if p is None:p=head_path(q)
        if p is None:
            print(idx,'hnf',k,lc.show(q)[:600]);break
        q=red(q,p);ps.append(p)
    print(idx,'cap',len(ps),'nodes',sz(q),'time',round(time.monotonic()-st,3))
    return dict(id=idx,kind='unresolved',steps=len(ps),nodes=sz(q))

if __name__=='__main__':
    rows=json.loads((HERE.parent/'floor/four_lambda.json').read_text())
    ids=[int(x) for x in sys.argv[1:]] or [448,449,454,455,460,461,466,467,472,473,478,479,572]
    out=[probe(i,rows[i]) for i in ids]
    (HERE/'exact_probe.json').write_text(json.dumps(out,indent=2)+'\n')
