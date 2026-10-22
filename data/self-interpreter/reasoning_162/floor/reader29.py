"""Finite source layouts after the handwritten w<30 classification.
One thread, no broad size search. In count mode no term is built.
"""
import sys
sys.dont_write_bytecode=True
from functools import lru_cache
from pathlib import Path
import json,time
HERE=Path(__file__).resolve().parent

@lru_cache(None)
def count(l,v,x,h,j,c,D):
    if min(l,v-1,x,j,c)<0 or j+c>v or j>1 or h>D and j:return 0
    if l==0 and v==1:
        if j:return int(c==0 and h==D and x==0)
        if c:return int(c==1 and x==h)
        return int(x<h)
    z=0
    if l: z+=count(l-1,v,x,h+1,j,c,D)
    for vl in range(1,v):
        for ll in range(l+1):
            for xl in range(x+1):
                for jl in range(j+1):
                    for cl in range(c+1):
                        a=count(ll,vl,xl,h,jl,cl,D)
                        if a:z+=a*count(l-ll,v-vl,x-xl,h,j-jl,c-cl,D)
    return z

# Complete lambda-rooted inventory after reader30.md sections 1-3.
# (root kind, L, V, maximum charged index sum, exact hole depth, c count)
CASES=[('lambda',2,5,5,1,1), ('lambda',2,6,1,1,1),
       ('lambda',3,5,3,1,1), ('lambda',4,5,1,1,1),
       ('lambda',2,5,1,2,1)]

# Symbolic accounting states, used to count only the analytically surviving
# beta-normal, stream-headed layouts before building a single candidate.
from collections import defaultdict
@lru_cache(None)
def states(l,v,x,h,j,c,D):
    if not count(l,v,x,h,j,c,D):return {}
    z=defaultdict(int)
    if l==0 and v==1:
        if j:z[((0,)*h,-2,0,0)]=1
        elif c:z[((0,)*h,h,0,0)]=1
        else:
            u=[0]*h;u[x]=1;z[(tuple(u),x,0,0)]=1
        return z
    if l:
        for (u,head,live,nl),n in states(l-1,v,x,h+1,j,c,D).items():
            z[(u[1:],-1,live+int(u[0]>0),nl+int(u[0]>1))]+=n
    for vl in range(1,v):
        for ll in range(l+1):
            for xl in range(x+1):
                for jl in range(j+1):
                    for cl in range(c+1):
                        aa=states(ll,vl,xl,h,jl,cl,D)
                        if not aa:continue
                        bb=states(l-ll,v-vl,x-xl,h,j-jl,c-cl,D)
                        for (u,head,live,nl),n in aa.items():
                            if head==-1:continue
                            for (v2,_,live2,nl2),n2 in bb.items():
                                z[(tuple(min(2,a+b) for a,b in zip(u,v2)),head,live+live2,nl+nl2)]+=n*n2
    return z

if __name__=='__main__' and '--check' not in sys.argv:
    start=time.monotonic();out=[]
    for case in CASES:
        kind,l,v,b,D,c=case
        if kind!='lambda':continue
        n=0
        for x in range(b+1):
            for (u,head,live,nl),k in states(l-1,v,x,1,1,c,D).items():
                if head==0 and live+int(u[0]>0)>=2 and nl+int(u[0]>1)>=1:n+=k
        out.append(dict(case=case,count=n))
    print(json.dumps(dict(normal_rows=out,total=sum(k['count'] for k in out),seconds=time.monotonic()-start),indent=2))

V=lambda n:('V',n)
L=lambda b:('L',b)
A=lambda f,a:('A',f,a)

def emit(l,v,x,h,j,c,D,key):
    if not states(l,v,x,h,j,c,D).get(key):return
    if l==0 and v==1:
        yield V(h+1 if j else h if c else x);return
    if l:
        for ka in states(l-1,v,x,h+1,j,c,D):
            u,head,live,nl=ka
            if (u[1:],-1,live+int(u[0]>0),nl+int(u[0]>1))==key:
                for a in emit(l-1,v,x,h+1,j,c,D,ka):yield L(a)
    for vl in range(1,v):
        for ll in range(l+1):
            for xl in range(x+1):
                for jl in range(j+1):
                    for cl in range(c+1):
                        aa=states(ll,vl,xl,h,jl,cl,D)
                        if not aa:continue
                        bb=states(l-ll,v-vl,x-xl,h,j-jl,c-cl,D)
                        for ka in aa:
                            u,head,live,nl=ka
                            if head==-1:continue
                            for kb in bb:
                                vv,_,live2,nl2=kb
                                kk=(tuple(min(2,a+b) for a,b in zip(u,vv)),head,live+live2,nl+nl2)
                                if kk!=key:continue
                                for a in emit(ll,vl,xl,h,jl,cl,D,ka):
                                    for b in emit(l-ll,v-vl,x-xl,h,j-jl,c-cl,D,kb):yield A(a,b)

def candidates():
    for case in CASES:
        kind,l,v,b,D,c=case
        if kind!='lambda':continue
        for x in range(b+1):
            for key,k in states(l-1,v,x,1,1,c,D).items():
                u,head,live,nl=key
                if head!=0 or live+int(u[0]>0)<2 or nl+int(u[0]>1)<1:continue
                n=0
                for body in emit(l-1,v,x,1,1,c,D,key):
                    n+=1;yield case,2*l+4*v-4+x+4*D,L(body)
                assert n==k

if __name__=='__main__' and '--check' in sys.argv:
    from checks import lc,normal_step,lean,normal
    start=time.monotonic();rows=[];seen=set();families=defaultdict(int)
    for case,w,r in candidates():
        assert r not in seen;seen.add(r)
        assert normal(r)
        probes=[('zero',lc.pair(lc.TRUE,V(3)),A(V(3),V(1))),
                ('one',lc.bitlist('10',V(2)),A(A(V(0),lc.bitlist('0',V(2))),V(2)))]
        for label,inp,want in probes:
            t=A(r,inp);q=t
            for steps in range(300):
                nxt=normal_step(q)
                if nxt is None:break
                q=nxt
                assert lc.size(q)<10000
            else:raise RuntimeError('unresolved fuel')
            assert normal(q)
            if q!=want:
                rows.append(dict(case=case,weight=w,reader=lc.enc(r),probe=label,steps=steps,nf=lc.enc(q)))
                families[label]+=1;break
        else:raise RuntimeError('survivor '+lc.show(r))
    assert len(rows)==3484
    result=dict(count=len(rows),outcomes=dict(families),max_steps=max(k['steps'] for k in rows),seconds=time.monotonic()-start,rows=rows)
    (HERE/'reader29.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='rows'},indent=2))
