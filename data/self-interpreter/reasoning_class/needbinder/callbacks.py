#!/usr/bin/env python3
"""Pinned second-cell callback check, not a general R1 source search.

D is any c-containing source in [u,s,c] with wire<=21.  Test
U_(n-1) (lambda u.D[U_n/s]) j = c U_(n-1) N.  For the source family
s (lambda b.b H) (lambda u.D) j, unary F erases arbitrary H exactly.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
import json,time,resource,signal
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parents[2]/'tmp/round4/jn'))
import dbn as d

@lru_cache(None)
def count(n,q,h):
    if n<2:return 0
    z=sum(i+2==n and h==int(i==q+2) for i in range(q+3))
    z+=count(n-2,q+1,h)
    for a in range(2,n-3):
        for x in (0,1):
            for y in (0,1):
                if (x or y)==h:z+=count(a,q,x)*count(n-2-a,q,y)
    return z

def terms(n,q,h):
    if not count(n,q,h):return
    for i in range(q+3):
        if i+2==n and h==int(i==q+2):yield d.V(i)
    for b in terms(n-2,q+1,h):yield d.L(b)
    for a in range(2,n-3):
        for x in (0,1):
            for y in (0,1):
                if (x or y)==h and count(a,q,x) and count(n-2-a,q,y):
                    for f in terms(a,q,x):
                        for t in terms(n-2-a,q,y):yield d.A(f,t)

def wire(t):
    if t[0]=='v':return t[1]+2
    if t[0]=='l':return 2+wire(t[1])
    return 2+wire(t[1])+wire(t[2])

def occ(t,i):
    if t[0]=='v':return int(t[1]==i)
    if t[0]=='l':return occ(t[1],i+1)
    return occ(t[1],i)+occ(t[2],i)

def show(t,names=('u','s','c')):
    if t[0]=='v':return names[t[1]]
    if t[0]=='k':return t[1]
    if t[0]=='l':
        x='v'+str(len(names));return '(\\'+x+'. '+show(t[1],(x,)+names)+')'
    return '('+show(t[1],names)+' '+show(t[2],names)+')'

class Unresolved(Exception):pass

def nf(t,budget):
    spine=[];seen=set()
    while True:
        if t[0]=='a':spine.append(t[2]);t=t[1];continue
        if t[0]=='l' and spine:
            key=(t,tuple(spine))
            if key in seen:raise Unresolved('cycle')
            seen.add(key);budget[0]-=1
            if budget[0]<0:raise Unresolved('steps')
            t=d.beta(t[1],spine.pop())
            if d.size(t)+sum(d.size(x) for x in spine)>8000:raise Unresolved('nodes')
            continue
        break
    if t[0]=='l':return d.L(nf(t[1],budget))
    for x in reversed(spine):t=d.A(t,nf(x,budget))
    return t

def main():
    start=time.monotonic();signal.alarm(110)
    expected=sum(count(n,0,1) for n in range(2,22))
    assert expected==6113<100000
    seen=set();rows={};exceptions=[];hits=[]
    for size in range(2,22):
        row=dict(count=0,wrong_nf={})
        for D in terms(size,0,1):
            assert wire(D)==size and occ(D,2)>0 and D not in seen
            seen.add(D);row['count']+=1
            for n in (1,2,3):
                V=d.inst(d.L(D),d.U(n))
                t=d.A(d.A(d.U(n-1),V),d.Kc('j'))
                target=d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
                try:actual=nf(t,[1200])
                except (Unresolved,RecursionError) as e:
                    exceptions.append(dict(size=size,body=show(D),term=D,probe=n,reason=str(e)))
                    break
                if actual!=target:
                    key=str(n);row['wrong_nf'][key]=row['wrong_nf'].get(key,0)+1
                    break
            else:hits.append(dict(size=size,body=show(D),term=D))
            if len(seen)%128==0:
                assert time.monotonic()-start<110
                assert resource.getrusage(resource.RUSAGE_SELF).ru_maxrss<900_000_000
        assert row['count']==count(size,0,1)
        rows[str(size)]=row
    assert len(seen)==expected
    result=dict(sources=expected,rows=rows,exceptions=exceptions,survivors=hits,
        seconds=time.monotonic()-start,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
        threads=1,domain='c-containing D in [u,s,c], wire(D)<=21; second-cell callback')
    (HERE/'callbacks.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
    signal.alarm(0)

if __name__=='__main__':main()
