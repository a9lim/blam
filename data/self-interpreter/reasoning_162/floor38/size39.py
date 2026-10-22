"""Classified size-39 layouts only; each run is single-threaded and <110s.

Select literal, four, or five. No unconstrained closed-term enumeration.
"""
import sys
sys.dont_write_bytecode = True
import itertools,json,time,signal
from collections import Counter
from functools import lru_cache
from size38 import *

def timeout(*_): raise TimeoutError('105-second lane deadline')
signal.signal(signal.SIGALRM,timeout)

def binary(xs):
    if len(xs)==1:
        yield xs[0];return
    for cut in range(1,len(xs)):
        for f in binary(xs[:cut]):
            for a in binary(xs[cut:]):yield A(f,a)

def exprs(xs):
    for p in sorted(set(itertools.permutations(xs))):yield from binary(p)

def base33():
    for tag,n in bases():
        if lc.size(A(D,n))==33:yield tag,n

def linear3():
    for body in layouts('abc'):yield parse('\\a\\b\\c.'+body)

def literal():
    for tag,n in base33():
        for b in exprs([V(0),D,n]):yield 'literal_'+tag,L(b)

def four7():
    for body in layouts('aabc'):
        yield 'two_a_zero_a',A(D,parse('\\a.a (\\b\\c.'+body+')'))
        yield 'two_a_zero_b',A(D,parse('\\a\\b.b (\\c.'+body+')'))
    for body in layouts('aabcc'):
        yield 'two_a_zero_c',A(D,parse('\\a\\b\\c.'+body))
    for body in layouts('abc'):
        for mid in ctx(['a','a'],'(\\c.'+body+')'):
            yield 'one_a_one_a',A(D,parse('\\a\\b.'+mid))
    for body in layouts('abbc'):
        yield 'one_a_one_b',A(D,parse('\\a\\b.a (\\c.'+body+')'))
    for body in layouts('abbbc'):
        yield 'one_b_one_b',A(D,parse('\\a\\b\\c.'+body))
    for j,d in enumerate(D3):
        for body in layouts('aabc'):
            yield f'triple{j}_outer_below',A(d,parse('\\a\\b\\c.'+body))

def onevac6():
    ds=[('D_outer',L(D)),('D_body',parse('\\d\\u.d d')),
        ('D_arg',parse('\\d.d (\\u.d)'))]
    for tag,n in bases():
        for dt,d in ds:
            e=A(d,n)
            if lc.size(e)==39:yield dt+'_'+tag,e
        for p in subpaths(n):
            nn=replace(n,p,L(lc.shift(1,0,at(n,p))))
            e=A(D,nn)
            if lc.size(e)==39 and normal(nn):yield 'N_box_'+tag,e

def free_leaves(t,d=0):
    if t[0]=='V':return int(t[1]>=d)
    if t[0]=='L':return free_leaves(t[1],d+1)
    return free_leaves(t[1],d)+free_leaves(t[2],d)

def onebox(e):
    for side in ['left','right']:
        for q in subpaths(at(e,[side])):
            p=[side]+q;u=at(e,p)
            if free_leaves(u)!=1:continue
            out=replace(e,p,L(lc.shift(1,0,u)))
            if normal(out[1]) and normal(out[2]):yield out

def twovac6():
    seen=set()
    for tag,n in base33():
        for e1 in onebox(A(D,n)):
            for e in onebox(e1):
                if e in seen:continue
                seen.add(e)
                assert lc.size(e)==39
                yield 'two_boxes_'+tag,e

def four():
    yield from four7()
    yield from onevac6()
    yield from twovac6()
    for tag,n in base33():
        yield 'triple0_closed_box_'+tag,A(D3[0],L(n))

def five():
    # First contractor contains the complete affine three-binder block.
    for s in linear3():
        for b in exprs([V(0),V(0),s]):
            if normal(b):yield 'function_contains_width',A(L(b),D)
    # An affine fifth binder is an I atom in the first duplicator.
    for tag,n in base33():
        for b in exprs([V(0),V(0),I]):
            if normal(b):yield 'function_contains_I_'+tag,A(L(b),n)
    # The fifth binder is in the first width-carrying argument.
    for s in linear3():
        for b in exprs([V(0),V(0),s]):
            yield 'argument_nonlinear_ancestor',A(D,L(b))
        for p in subpaths(s):
            u=at(s,p)
            yield 'argument_delta_left',A(D,replace(s,p,A(D,u)))
            yield 'argument_delta_right',A(D,replace(s,p,A(u,D)))
    for tag,n in base33():
        yield 'argument_affine_ancestor_'+tag,A(D,L(A(V(0),n)))
        for p in subpaths(n):
            u=at(n,p)
            if u[0]!='L':yield 'argument_I_'+tag,A(D,replace(n,p,A(u,I)))
    # Exactly one further closed spine argument is possible.
    for tag,n in base33():
        yield 'pending_I_'+tag,A(A(D,n),I)
        yield 'pending_width_after_I_'+tag,A(A(D,I),n)
    for s in linear3():
        yield 'pending_delta',A(A(D,s),D)
        yield 'pending_width_after_delta',A(A(D,D),s)

@lru_cache(None)
def w(t,m=()):
    if t[0]=='V':return t[1]<len(m) and m[t[1]]
    return t[0]=='L' and b(t[1],(True,)+m)
@lru_cache(None)
def b(t,m=()):
    if t[0]=='V':return False
    if t[0]=='L':return b(t[1],(False,)+m)
    return b(t[1],m) or (w(t[1],m) and (w(t[2],m) or b(t[2],m)))

def facts39(t):
    lead,_,_=spine(t)
    if lead>=3:return 'three_lambdas'
    if lc.size(t)<39:return 'smaller_than_39'
    if chain(t):return 'nonlinear_chain'
    if b(t):return 'W_grammar_reduct'
    return None

def assess39(e):
    if b(e):return dict(kind='W_grammar',paths=[],final=lc.enc(e))
    t=e;seen={};ps=[]
    for _ in range(100):
        reason=facts39(t)
        if reason:return dict(kind=reason,paths=ps,final=lc.enc(t))
        if t in seen:break  # Verify cycles on the actual invocation below.
        seen[t]=len(ps)
        p=head_path(t)
        if p is None:
            lead,h,args=spine(t)
            if lead!=2 or (h==V(1) and len(args)!=2):
                return dict(kind='wrong_hnf',paths=ps,final=lc.enc(t))
            break
        t=red(t,p);ps.append(p)
        if lc.size(t)>6000:break
    q=A(A(e,V(1)),lc.bitlist('0010',V(0)))
    t=q;seen={};ps=[]
    for _ in range(120):
        if t in seen:return dict(kind='identity_cycle',prefix=seen[t],paths=ps,final=lc.enc(t))
        seen[t]=len(ps)
        if b(t):return dict(kind='W_identity_reduct',paths=ps,final=lc.enc(t))
        p=head_path(t)
        if p is None:
            lead,h,args=spine(t)
            if (lead,h,len(args))!=(0,V(1),2):
                return dict(kind='identity_wrong_hnf',paths=ps,final=lc.enc(t))
            for j,(arg,want) in enumerate(zip(args,(KI,V(0)))):
                try:r=lc.nf(arg,[150])
                except (lc.Fuel,RecursionError):continue
                if r!=want:
                    assert normal(r)
                    return dict(kind='identity_wrong_payload',paths=ps,final=lc.enc(t),payload=j,nf=lc.enc(r))
            return dict(kind='unresolved_payload',paths=ps,final=lc.enc(t))
        t=red(t,p);ps.append(p)
        if lc.size(t)>6000:return dict(kind='unresolved_growth',steps=len(ps))
    return dict(kind='unresolved_head',steps=len(ps))

def main():
    which=sys.argv[1];signal.alarm(105);start=time.monotonic()
    rows=[];seen=set();families=Counter()
    for i,(family,e) in enumerate(globals()[which]()):
        assert e not in seen,(which,i,family);seen.add(e)
        assert lc.size(e)==39 and not free(e),(which,i,family,lc.size(e))
        assert width(e)>=3 and not chain(e),(which,i,family)
        result=assess39(e)
        rows.append(dict(id=i,family=family,src=lc.show(e),wire=lc.enc(e),**result))
        families[family]+=1
    out=dict(seconds=time.monotonic()-start,part=which,layouts=len(rows),
             families=dict(families),verdicts=dict(Counter(r['kind'] for r in rows)),rows=rows)
    (HERE/f'size39-{which}.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='rows'},indent=2))
    for r in rows:
        if r['kind'].startswith('unresolved'):print(r['id'],r['family'],r['kind'],r['src'])
    signal.alarm(0)

if __name__=='__main__':main()
