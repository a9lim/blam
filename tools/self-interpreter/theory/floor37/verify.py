#!/usr/bin/env python3
"""Fixed witnesses for the handwritten 37-bit theorem.

The only finite layout families are 12 + 60 + 18 + 18 analytically forced
application trees. Caps are never refutations. Six infinite families have
separate handwritten invariants; this checks their finite macro identities.
Writes data/self-interpreter/theory/floor37.json and regenerates the kernel-checked
clauses in lean/Blc/SelfintFloor37.lean. The proof is
docs/classical/self-interpreter/global-floor.md.
"""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import itertools
import json
import time
import re
from check34 import parse, head_step, invoke, lc, ROOT
from check35 import trees, spine

HERE=Path(__file__).resolve().parent
V=lambda n:('V',n)
L=lambda b:('L',b)
A=lambda f,a:('A',f,a)
I=L(V(0))
KI=L(I)
DELTA=parse('\\x.x x')
CERTS=[]

def steps(t,n):
    for _ in range(n):
        u=head_step(t)
        assert u is not None
        t=u
    return t

def normal(t):
    if t[0]=='V':return True
    if t[0]=='L':return normal(t[1])
    return t[1][0]!='L' and normal(t[1]) and normal(t[2])

def occ(t,n=0):
    if t[0]=='V':return int(t[1]==n)
    if t[0]=='L':return occ(t[1],n+1)
    return occ(t[1],n)+occ(t[2],n)

def nonlinear(t):
    if t[0]=='V':return 0
    if t[0]=='L':return (occ(t[1])>1)+nonlinear(t[1])
    return nonlinear(t[1])+nonlinear(t[2])

def free(t,d=0):
    if t[0]=='V':return {t[1]-d} if t[1]>=d else set()
    if t[0]=='L':return free(t[1],d+1)
    return free(t[1],d)|free(t[2],d)

def width(t):
    if t[0]=='V':return 1
    if t[0]=='L':return max(len(free(t)),width(t[1]))
    return max(len(free(t)),width(t[1]),width(t[2]))

def chain(t):
    if t[0]=='V':return True
    if t[0]=='L':return chain(t[1])
    return chain(t[1]) and chain(t[2]) and (nonlinear(t[1])==0 or nonlinear(t[2])==0)

def counts(t):
    if t[0]=='V':return 0,1,t[1]
    if t[0]=='L':
        a,b,c=counts(t[1]); return a+1,b,c
    return tuple(x+y for x,y in zip(counts(t[1]),counts(t[2])))

def certify(label,t,n,u):
    assert steps(t,n)==u,label
    CERTS.append((label,t,n,u))

def finite_refute(label,e):
    """Find only a proved finite wrong shape or an exact repeated head state."""
    seen={}
    t=e
    for n in range(80):
        b,h,args=spine(t)
        if b>=3:
            certify(label,e,n,t)
            return dict(kind='at_least_three_lambdas',steps=n)
        if t in seen:
            k=seen[t]
            certify(label+'_prefix',e,k,t)
            certify(label+'_cycle',t,n-k,t)
            return dict(kind='exact_head_cycle',prefix=k,period=n-k)
        seen[t]=n
        u=head_step(t)
        if u is None:
            certify(label,e,n,t)
            if b!=2:
                return dict(kind='wrong_interface_arity',arity=b,steps=n)
            if h==V(1) and len(args)!=2:
                return dict(kind='wrong_continuation_spine',arity=len(args),steps=n)
            break
        t=u
    else:
        raise AssertionError((label,'needs a handwritten invariant'))

    # Only the identity source is needed for all remaining finite cases.
    q=invoke(e,I);t=q
    for n in range(80):
        b,h,args=spine(t)
        if b>=3:
            certify(label+'_I',q,n,t)
            return dict(kind='identity_extra_lambda',steps=n)
        u=head_step(t)
        if u is None:
            certify(label+'_I',q,n,t)
            if (b,h,len(args))!=(2,V(1),2):
                return dict(kind='identity_wrong_spine',binders=b,head=repr(h),arity=len(args),steps=n)
            for i,(arg,want) in enumerate(zip(args,(KI,V(0)))):
                # A bounded normalization is positive evidence only: it must
                # finish, and the resulting normal form must differ.
                try:r=lc.nf(arg,[1000])
                except lc.Fuel:continue
                if r!=want:
                    assert normal(r)
                    return dict(kind='identity_wrong_payload',payload=i,
                                normal_form=lc.show(r),steps=n)
            raise AssertionError((label,'no refutation'))
        t=u
    raise AssertionError((label,'unresolved identity probe'))

def case_families():
    rows=[]
    for p in itertools.permutations('abc'):
        for assoc in (0,1):
            a,b,c=p
            body=f'({a} {b}) {c}' if assoc==0 else f'{a} ({b} {c})'
            n=parse('\\a\\b.a (\\c.'+body+')');e=A(DELTA,n)
            label=f'g34_{len(rows)}'
            assert lc.size(e)==34
            if body in ('(a c) b','(c a) b'):
                result=dict(kind='handwritten_growth_invariant',family=body)
            else:result=finite_refute(label,e)
            rows.append(dict(group=34,body=body,**result))

    for p in sorted(set(itertools.permutations('aabc'))):
        for body in trees(p):
            n=parse('\\a\\b\\c.'+body);e=A(DELTA,n)
            assert lc.size(e)==35
            result=finite_refute(f'g35_{len(rows)}',e)
            rows.append(dict(group=35,body=body,**result))

    for p in itertools.permutations('abc'):
        for assoc in (0,1):
            for box in 'abc':
                q=[f'(\\u.{x})' if x==box else x for x in p]
                body=f'({q[0]} {q[1]}) {q[2]}' if assoc==0 else f'{q[0]} ({q[1]} {q[2]})'
                n=parse('\\a.a (\\b\\c.'+body+')')
                if not normal(n):continue
                e=A(DELTA,n);assert lc.size(e)==36
                label=f'g36_{len(rows)}'
                if body in ('(a b) (\\u.c)','(b a) (\\u.c)'):
                    result=dict(kind='handwritten_growth_invariant',family=body)
                else:result=finite_refute(label,e)
                rows.append(dict(group=36,body=body,**result))
    for p in itertools.permutations('abc'):
        for assoc in (0,1):
            for box in 'abc':
                q=[f'(\\u.{x})' if x==box else x for x in p]
                body=f'({q[0]} {q[1]}) {q[2]}' if assoc==0 else f'{q[0]} ({q[1]} {q[2]})'
                if not normal(parse('\\a\\b.b (\\c.'+body+')')):continue
                e=parse('\\a.(\\x.x x) (\\b.b (\\c.'+body+'))')
                assert lc.size(e)==36
                label=f'g36open_{len(rows)}'
                if body in ('(b c) (\\u.a)','(c b) (\\u.a)'):
                    result=dict(kind='handwritten_growth_invariant',family=body)
                else:result=finite_refute(label,e)
                rows.append(dict(group='36open',body=body,**result))
    assert len(rows)==108
    assert sum(r['kind']=='handwritten_growth_invariant' for r in rows)==6
    return rows

def macro_checks():
    # All C,S,P are rigid in these fixed checks. The report proves the
    # invariants for arbitrary finite wrapper words, not only these samples.
    n1=parse('\\a\\b.a (\\c.a c b)')
    n2=parse('\\a\\b.a (\\c.c a b)')
    n3=parse('\\a.a (\\b\\c.a b (\\u.c))')
    n4=parse('\\a.a (\\b\\c.b a (\\u.c))')
    rigid=V(0)
    def j(x,t):return L(A(A(lc.shift(1,0,x),V(0)),lc.shift(1,0,t)))
    def pair(x,y):return L(A(A(V(0),lc.shift(1,0,x)),lc.shift(1,0,y)))
    def k(x):return L(lc.shift(1,0,x))
    def f(x):return L(L(A(A(lc.shift(2,0,x),V(1)),k(V(0)))))
    def g(x):return L(L(A(A(V(1),lc.shift(2,0,x)),k(V(0)))))
    for length in (1,2,3):
        # W=J_t1(...J_tk(N)); use distinct rigid labels to check ordering.
        w=n1
        ts=[V(i+1) for i in range(length)]
        for t in reversed(ts):w=j(w,t)
        start=A(A(n1,w),rigid)
        out=A(n1,j(w,rigid))
        for t in reversed(ts):out=A(out,t)
        certify(f'macro34_chain_{length}',start,2+length,out)
    w=pair(n2,V(0));ell=A(A(n2,w),V(1))
    certify('macro34_pair_pump',ell,4,A(ell,V(0)))
    for power in (1,2,3):
        w=n3
        for _ in range(power):w=f(w)
        kp=rigid
        for _ in range(power):kp=k(kp)
        certify(f'macro36_forward_{power}',A(A(n3,w),rigid),1+2*power,A(A(n3,f(w)),kp))
    y=A(n4,g(n4))
    certify('macro36_reverse_pump',A(y,rigid),5,A(y,k(k(rigid))))
    # The open middle-duplicate case: a rigid outer a is boxed, and stays
    # permanently behind the active recursive argument.
    n5=parse('\\a\\b.b (\\c.b c (\\u.a))')[1]
    n6=parse('\\a\\b.b (\\c.c b (\\u.a))')[1]
    tail=k(rigid)
    w=n5
    for power in (1,2,3):
        w=j(w,tail)
        out=A(n5,j(w,tail))
        for _ in range(power):out=A(out,tail)
        certify(f'macro36_open_chain_{power}',A(n5,w),1+power,out)
    def p(x):return L(A(A(V(0),lc.shift(1,0,x)),lc.shift(1,0,tail)))
    ell=A(n6,p(n6))
    certify('macro36_open_pair_pump',ell,3,A(A(ell,tail),tail))

def remainder_checks():
    k=lambda t:L(lc.shift(1,0,t))
    delta_k=parse('\\x.x (\\u.x)')
    vee=parse('\\x\\u.x x')
    cases=[
        ('rem_d_kd',A(DELTA,k(DELTA)),2,DELTA),
        ('rem_dk_d',A(delta_k,DELTA),3,DELTA),
        ('rem_d_dk',A(DELTA,delta_k),4,delta_k),
        ('rem_d_kkd',A(DELTA,k(k(DELTA))),2,k(DELTA)),
        ('rem_d_kdk',A(DELTA,k(delta_k)),2,delta_k),
        ('rem_dk_kd',A(delta_k,k(DELTA)),2,DELTA),
        ('rem_v_d',A(vee,DELTA),1,k(A(DELTA,DELTA))),
        ('rem_d_v',A(DELTA,vee),2,k(A(vee,vee))),
    ]
    for label,t,n,u in cases:
        assert lc.size(t)<=23
        certify(label,t,n,u)
    # Near-minimum syntax attains the 24-bit open-body counting bound but
    # fails actual exact-remainder extraction even on source I / suffix I.
    r=parse('\\s.s (\\x.x x) (\\x.x x)')
    assert lc.size(r)==24
    got=lc.nf(A(r,lc.bitlist(lc.enc(I),I)),[100])
    assert normal(got) and got!=I
    return dict(near_miss_bits=24,identity_suffix_I_nf=lc.show(got),
                finite_clauses=len(cases))

def lean(t):
    if t[0]=='V':return f'(.var {t[1]})'
    if t[0]=='L':return f'(.lam {lean(t[1])})'
    return f'(.app {lean(t[1])} {lean(t[2])})'

def write_lean():
    out=['/-\nFixed head-reduction clauses supporting the handwritten 37-bit floor\n'
         '(docs/classical/self-interpreter/global-floor.md) and the remainder\n'
         'extractor exclusions it cites. Generated by\n'
         'tools/self-interpreter/theory/floor37/verify.py; this file does not\n'
         'assert the size theorem itself.\n-/',
         'import Blc.Step','namespace Blc.SelfintFloor37','open Term',
         'set_option maxRecDepth 100000','set_option maxHeartbeats 4000000']
    for label,t,n,u in CERTS:
        out += [f'theorem {label} : headSteps {n} {lean(t)} = some {lean(u)} := by decide']
    out+=['end Blc.SelfintFloor37']
    (ROOT/'lean/Blc/SelfintFloor37.lean').write_text('\n\n'.join(out)+'\n')

def references(run_battery=False):
    import merges
    srcs={
        'int162':ROOT/'data/self-interpreter/machines/int162.lam',
        'int165':ROOT/'data/self-interpreter/machines/int165.lam',
        'int204':ROOT/'data/self-interpreter/machines/int204_normal.lam',
        'int584':ROOT/'data/self-interpreter/machines/int584_two_nonlinear.lam',
        'int672':ROOT/'data/self-interpreter/machines/int672_typed_normal.lam',
        'int742':ROOT/'data/self-interpreter/machines/int742_two_nonlinear_normal.lam',
    }
    terms={k:parse(p.read_text()) for k,p in srcs.items()}
    # The upstream named source is a 220-bit pre-optimization term. Use the
    # exact 168-bit wire that the existing Lean theorem pins, not its source.
    proof=(ROOT/'lean/Blc/Selfint.lean').read_text()
    wire=re.search(r'def intLWire : List Bool := \[([^]]+)\]',proof)[1]
    bits=''.join('1' if x.strip()=='true' else '0' for x in wire.split(','))
    assert len(bits)==168
    terms['int168'],end=lc.decode(bits)
    assert end==168
    row=next(v for v in merges.VARIANTS if v[0]=='165, next inlined')
    terms['int170']=parse(row[1])
    assert lc.size(terms['int170'])==170
    output=[]
    if run_battery:
        import battery,shutil,tempfile
        frozen=Path(tempfile.mkdtemp())/'blam-frozen'
        shutil.copy2(ROOT/'target/release/blam',frozen)
        battery.BLAM=str(frozen)
    for name,t in terms.items():
        nl=nonlinear(t);w=width(t);l,v,x=counts(t)
        assert not free(t) and w>=3 and nl>=2 and not chain(t)
        assert lc.size(t)==2*l+4*v-2+x and lc.size(t)>=37
        r=dict(name=name,bits=lc.size(t),lambdas=l,leaves=v,index_sum=x,
               width=w,nonlinear=nl,normal=normal(t),incomparable_nonlinear=True)
        if run_battery:
            ok,skip,fail=battery.check(t,threads=2)
            assert (ok,skip,len(fail))==(667,1,0),(name,ok,skip,fail[:3])
            r['battery']=f'{lc.size(t)} bits  ok={ok} skip={skip} fail={len(fail)}'
            print(name,r['battery'],flush=True)
        output.append(r)
    return output

def main():
    start=time.monotonic()
    rows=case_families()
    macro_checks()
    rem=remainder_checks()
    write_lean()
    refs=references('--battery' in sys.argv)
    report=dict(layouts=rows,reference_checks=refs,remainder_checks=rem,lean_clauses=len(CERTS),
                seconds=round(time.monotonic()-start,3))
    (ROOT/'data/self-interpreter/theory/floor37.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k!='layouts'},indent=2))

if __name__=='__main__':main()
