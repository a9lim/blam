#!/usr/bin/env python3
"""Targeted 37-bit layouts after structural classification, not a census.
Caps remain unresolved. All writes are inside this lane.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import itertools, json, time
ROOT=Path(__file__).resolve().parents[4]
sys.path.insert(0,str(ROOT/'tools/self-interpreter/theory/floor37'))
from verify import parse,head_step,invoke,lc,spine,normal,width,chain,nonlinear,counts,free
from check35 import trees
V=lambda n:('V',n)
L=lambda b:('L',b)
A=lambda f,a:('A',f,a)
I=L(V(0)); KI=L(I)
D=parse('\\d.d d')
D3=[parse('\\d.d d d'),parse('\\d.d (d d)')]

def layouts(xs):
    for p in sorted(set(itertools.permutations(xs))):
        yield from trees(p)

def facts(t):
    b,h,args=spine(t)
    if b>=3:return 'three_lambdas'
    if lc.size(t)<37:return 'smaller_than_37'
    if width(t)<3:return 'width_loss'
    if chain(t):return 'nonlinear_chain'
    if b:
        # Closed width-one, affine substitution erases public variables.
        r=t
        for _ in range(b):r=lc.beta(r,I)
        if width(r)<3:return 'internal_width_loss'
        if chain(r):return 'internal_nonlinear_chain'
    return None

def assess(e):
    t=e;seen={}; traces=[]
    for n in range(100):
        reason=facts(t)
        if reason:return dict(kind=reason,steps=n,final=lc.enc(t))
        if t in seen:return dict(kind='exact_cycle',prefix=seen[t],period=n-seen[t])
        seen[t]=n
        u=head_step(t)
        if u is None:
            b,h,args=spine(t)
            if b!=2 or (h==V(1) and len(args)!=2):
                return dict(kind='wrong_hnf',steps=n,final=lc.enc(t))
            break
        t=u
        if lc.size(t)>10000:return dict(kind='unresolved_growth',steps=n)
    else:return dict(kind='unresolved_head',steps=n)
    q=invoke(e,I);t=q;seen={}
    for n in range(150):
        if t in seen:return dict(kind='identity_cycle',prefix=seen[t],period=n-seen[t])
        seen[t]=n
        u=head_step(t)
        if u is None:
            b,h,args=spine(t)
            if (b,h,len(args))!=(2,V(1),2):
                return dict(kind='identity_wrong_hnf',steps=n,final=lc.enc(t))
            for j,(arg,want) in enumerate(zip(args,(KI,V(0)))):
                try:r=lc.nf(arg,[300])
                except (lc.Fuel,RecursionError):continue
                if r!=want:
                    assert normal(r)
                    return dict(kind='identity_wrong_payload',steps=n,payload=j,nf=lc.enc(r))
            return dict(kind='unresolved_payload',steps=n)
        t=u
        if lc.size(t)>10000:return dict(kind='unresolved_identity_growth',steps=n)
    return dict(kind='unresolved_identity_head',steps=n)

def four_lambda():
    # X=3: every extra a/b occurrence is above the next live binder.
    for p in range(3):
        for q in range(3-p):
            r=2-p-q
            for body in layouts('ab'+'c'*(r+1)):
                lower='(\\c.'+body+')'
                bctx=list(layouts(['b']*q+[lower])) if q else [lower]
                for cb in bctx:
                    middle='(\\b.'+cb+')'
                    actx=list(layouts(['a']*p+[middle])) if p else [middle]
                    for ca in actx:
                        src='\\a.'+ca;n=parse(src)
                        if normal(n):yield f'diag_{p}{q}{r}',A(D,n),src
    for k,delta in enumerate(D3):
        for body in layouts('abc'):
            for src in ['\\a.a (\\b\\c.'+body+')','\\a\\b.b (\\c.'+body+')']:
                yield f'triple{k}',A(delta,parse(src)),src
        for body in layouts('abcc'):
            src='\\a\\b\\c.'+body
            yield f'triple{k}',A(delta,parse(src)),src

def main():
    start=time.monotonic(); rows=[]
    for family,e,src in four_lambda():
        assert normal(e[1]) and normal(e[2])
        assert lc.size(e)==37,(family,src,lc.size(e))
        result=assess(e)
        rows.append(dict(family=family,src=src,wire=lc.enc(e),**result))
    out=Path(__file__).with_name('four_lambda.json');out.write_text(json.dumps(rows,indent=2)+'\n')
    from collections import Counter
    print('count',len(rows),'time',time.monotonic()-start)
    print(Counter(r['family'] for r in rows));print(Counter(r['kind'] for r in rows))
    for i,r in enumerate(rows):
        if r['kind'].startswith('unresolved'):print(i,r['family'],r['kind'],r['src'])
if __name__=='__main__':main()
