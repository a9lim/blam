"""Pinned nonlinear family R=λs.((λx.s x...x) A)j, m=2,3,4.
Minimum-source charge forces (m-1)*a >= 2*m+5; source weight is
15+4*m+a, so a <= 30-4*m. A is j-free, contains a lambda, and c must
occur in A (it occurs nowhere else). These conditions give <=14,151
sources, before the charge filter; no broad source enumeration.
All finite failures are checked reductions or literal head-cycle proofs.
Unknowns are retained and prevent an exclusion claim.
"""
import sys
sys.dont_write_bytecode=True
import time,signal,resource,json,hashlib
from pathlib import Path
from collections import Counter
import high_count as h
import high_check as g
from high_check import d
HERE=Path(__file__).resolve().parent
START=time.monotonic();signal.alarm(110)
MAX_NODES=12000

def bounded_nodes(t):
    stack=[t];n=0
    while stack:
        u=stack.pop();n+=1
        if n>MAX_NODES:raise RuntimeError('nodes')
        if u[0]=='a':stack.extend((u[1],u[2]))
        elif u[0]=='l':stack.append(u[1])
    return n

class Cycle(Exception):pass

def whnf(t,budget):
    stack=[];seen=set()
    while True:
        if t[0]=='a':stack.append(t[2]);t=t[1];continue
        if t[0]!='l' or not stack:return t,tuple(reversed(stack))
        key=(t,tuple(stack))
        if key in seen:raise Cycle
        seen.add(key)
        budget[0]-=1
        if budget[0]<0:raise RuntimeError('fuel')
        t=d.beta(t[1],stack.pop())
        if len(seen)%32==0:
            bounded_nodes(t)
            if resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>850_000_000:
                raise RuntimeError('rss')

def matches(t,want,budget):
    head,args=whnf(t,budget)
    wh,wa=whnf(want,[10000])
    if len(args)!=len(wa):return False
    if head[0]!=wh[0]:return False
    if head[0] in ('v','k'):
        if head!=wh:return False
    else:
        assert head[0]=='l'
        if not matches(head[1],wh[1],budget):return False
    return all(matches(a,b,budget) for a,b in zip(args,wa))

def cfg():
    for m in (2,3,4):
      for a in range(30-4*m+1):
        if (m-1)*a<2*m+5:continue
        for la in range(1,a//2+1):
          for ma in (2,3):
            n=h.exact_l(a,0,0,0,0,ma,la)
            if n:yield m,a,la,ma,n

if __name__=='__main__':
    configs=list(cfg());expected=sum(row[-1] for row in configs)
    assert expected<=100000
    counts=Counter();fail=Counter();unknown=[];survivors=[];digest=hashlib.sha256()
    seen=set();maxsteps=0
    for m,a,la,ma,n in configs:
      generated=0
      for A in g.terms(a,0,0,0,0,ma,la):
        B=d.V(1)
        for _ in range(m):B=d.A(B,d.V(0))
        R=d.L(d.A(d.A(d.L(B),A),d.Kc('j')))
        assert R not in seen;seen.add(R);generated+=1
        st=g.stats(R)
        assert (st[0]+4*st[-1],st[-2],st[-1])==(15+4*m+a,1,1)
        assert st[0]+4<=45
        body=d.V(0)
        for _ in range(m):body=d.A(body,A)
        body=d.A(body,d.Kc('j'))
        counts[str(m)]+=1;digest.update((repr(R)+'\n').encode())
        try:
            rejected=False
            for k in (0,1,2,3):
                stream=d.Z() if k==0 else d.U(k)
                target=d.A(d.Kc('r'),d.Kc('j')) if k==0 else d.A(d.A(d.Kc('c'),d.U(k-1)),d.Kc('N'))
                probe=d.inst(body,stream)
                budget=[2000]
                try:ok=matches(probe,target,budget)
                except Cycle:
                    fail[f'cycle{k}']+=1;rejected=True;break
                maxsteps=max(maxsteps,2000-budget[0])
                if not ok:fail[f'law{k}']+=1;rejected=True;break
            if not rejected:survivors.append(dict(m=m,A=d.show(A,['s','c']),weight=15+4*m+a))
        except (RuntimeError,RecursionError) as ex:
            unknown.append(dict(m=m,A=d.show(A,['s','c']),weight=15+4*m+a,reason=str(ex)))
        if len(seen)%64==0:
            assert time.monotonic()-START<110
            assert resource.getrusage(resource.RUSAGE_SELF).ru_maxrss<900_000_000
      assert generated==n,(m,a,la,ma,generated,n)
    assert len(seen)==expected
    out=dict(sources=expected,counts=dict(counts),failures=dict(fail),unknowns=unknown,
      survivors=survivors,max_probe_beta_steps=maxsteps,seconds=time.monotonic()-START,
      peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=1,
      source_digest=digest.hexdigest())
    (HERE/'repeated_helper.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2));signal.alarm(0)
