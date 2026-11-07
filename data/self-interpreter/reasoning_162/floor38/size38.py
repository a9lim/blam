"""Analytically classified size-38 layouts, with positive finite evidence only.
Single-threaded, 105-second overall deadline; no arbitrary term enumeration.
All outputs stay beside this script. Imports suppress bytecode writes.
"""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import itertools, json, time
from collections import Counter
from exact_probe import parse, lc, V, L, A, normal, width, chain, counts, occ, head_path, red, at, spine
from smart_probe import apps_spine, appall, weak_path
ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT/'tools/self-interpreter/theory/floor37'))
from verify import free
from check35 import trees
I=L(V(0)); KI=L(I); D=parse('\\d.d d')
D3=[parse('\\d.d d d'),parse('\\d.d (d d)')]

def layouts(xs):
    for p in sorted(set(itertools.permutations(xs))):
        yield from trees(p)

def ctx(xs,block):
    for body in layouts(xs+[block]):
        if normal(parse('\\a\\b\\c.'+body)):
            yield body

def four():
    # Extra index-one occurrence a between b/c; extra index-zero a, b, or c.
    for body in layouts('abc'):
        yield 'one_a_zero_a', A(D,parse('\\a.a (\\b.a (\\c.'+body+'))'))
        for mid in ctx(['a','b'],'(\\c.'+body+')'):
            yield 'one_a_zero_b', A(D,parse('\\a\\b.'+mid))
    for body in layouts('abcc'):
        yield 'one_a_zero_c', A(D,parse('\\a\\b.a (\\c.'+body+')'))
    # Extra index-one occurrence b below c.
    for body in layouts('abbc'):
        yield 'one_b_zero_a', A(D,parse('\\a.a (\\b\\c.'+body+')'))
        yield 'one_b_zero_b', A(D,parse('\\a\\b.b (\\c.'+body+')'))
    for body in layouts('abbcc'):
        yield 'one_b_zero_c', A(D,parse('\\a\\b\\c.'+body))
    for j,d in enumerate(D3):
        for body in layouts('abc'):
            yield f'triple{j}_outer_between', A(d,parse('\\a\\b.a (\\c.'+body+')'))
        for body in layouts('abbc'):
            yield f'triple{j}_middle_below', A(d,parse('\\a\\b\\c.'+body))

def bases():
    for body in layouts('abc'):
        yield 'outer_before',parse('\\a.a (\\b\\c.'+body+')')
        yield 'outer_between',parse('\\a\\b.a (\\c.'+body+')')
        yield 'middle_before',parse('\\a\\b.b (\\c.'+body+')')
    for family,letters in [('outer_below','aabc'),('middle_below','abbc'),('inner','abcc')]:
        for body in layouts(letters):yield family,parse('\\a\\b\\c.'+body)

def subpaths(t):
    yield []
    if t[0]=='L':
        for p in subpaths(t[1]):yield ['under']+p
    elif t[0]=='A':
        for p in subpaths(t[1]):yield ['left']+p
        for p in subpaths(t[2]):yield ['right']+p

def replace(t,p,u):
    if not p:return u
    d,*q=p
    if d=='under':return L(replace(t[1],q,u))
    if d=='left':return A(replace(t[1],q,u),t[2])
    return A(t[1],replace(t[2],q,u))

def vacuous():
    # Enumerate only insertions into the established six normal four-leaf shapes.
    ds=[('D_outer',L(D)),('D_body',parse('\\d\\u.d d')),
        ('D_arg',parse('\\d.d (\\u.d)'))]
    seen=set()
    for family,n in bases():
        for tag,d in ds:
            e=A(d,n)
            if lc.size(e)==38:
                assert e not in seen;seen.add(e)
                yield tag+'_'+family,e,[]
        for p in subpaths(n):
            old=at(n,p);new=L(lc.shift(1,0,old))
            nn=replace(n,p,new);e=A(D,nn)
            if lc.size(e)!=38 or not normal(nn):continue
            assert e not in seen,(family,p);seen.add(e)
            yield 'N_box_'+family,e,p

def facts(t):
    b,h,args=spine(t)
    if b>=3:return 'three_lambdas'
    if lc.size(t)<38:return 'smaller_than_38'
    if width(t)<3:return 'width_loss'
    if chain(t):return 'nonlinear_chain'
    if b:
        r=t
        for _ in range(b):r=lc.beta(r,I)
        if width(r)<3:return 'internal_width_loss'
        if chain(r):return 'internal_nonlinear_chain'
    return None

def assess(e):
    t=e;seen={};ps=[]
    for n in range(100):
        reason=facts(t)
        if reason:return dict(kind=reason,paths=ps,final=lc.enc(t))
        if t in seen:return dict(kind='exact_cycle',prefix=seen[t],paths=ps,final=lc.enc(t))
        seen[t]=len(ps)
        p=head_path(t)
        if p is None:
            b,h,args=spine(t)
            if b!=2 or (h==V(1) and len(args)!=2):
                return dict(kind='wrong_hnf',paths=ps,final=lc.enc(t))
            break
        t=red(t,p);ps.append(p)
        if lc.size(t)>10000:return dict(kind='unresolved_growth',steps=len(ps))
    else:return dict(kind='unresolved_head',steps=len(ps))
    q=L(L(A(A(e,V(1)),lc.bitlist('0010',V(0)))))
    t=q;seen={};ps=[]
    for n in range(150):
        if t in seen:return dict(kind='identity_cycle',prefix=seen[t],paths=ps,final=lc.enc(t))
        seen[t]=len(ps)
        p=head_path(t)
        if p is None:
            b,h,args=spine(t)
            if (b,h,len(args))!=(2,V(1),2):
                return dict(kind='identity_wrong_hnf',paths=ps,final=lc.enc(t))
            for j,(arg,want) in enumerate(zip(args,(KI,V(0)))):
                try:r=lc.nf(arg,[300])
                except (lc.Fuel,RecursionError):continue
                if r!=want:
                    assert normal(r)
                    return dict(kind='identity_wrong_payload',paths=ps,final=lc.enc(t),payload=j,nf=lc.enc(r))
            return dict(kind='unresolved_payload',steps=len(ps))
        t=red(t,p);ps.append(p)
        if lc.size(t)>10000:return dict(kind='unresolved_identity_growth',steps=len(ps))
    return dict(kind='unresolved_identity_head',steps=len(ps))

def main():
    start=time.monotonic();rows=[];seen=set();families=Counter()
    raw=list((f,e,[]) for f,e in four())+list(vacuous())
    for idx,(family,e,p) in enumerate(raw):
        assert time.monotonic()-start<105,'overall deadline'
        assert lc.size(e)==38 and not free(e) and normal(e[1]) and normal(e[2])
        assert e not in seen,(idx,family);seen.add(e)
        result=assess(e)
        rows.append(dict(id=idx,family=family,src=lc.show(e),wire=lc.enc(e),insertion_path=p,**result))
        families[family]+=1
    output=dict(seconds=time.monotonic()-start,families=dict(families),
                verdicts=dict(Counter(r['kind'] for r in rows)),rows=rows)
    (HERE/'size38.json').write_text(json.dumps(output,indent=2)+'\n')
    print(json.dumps({k:v for k,v in output.items() if k!='rows'},indent=2))
    for r in rows:
        if r['kind'].startswith('unresolved'):print(r['id'],r['family'],r['kind'],r['src'])
if __name__=='__main__':main()
