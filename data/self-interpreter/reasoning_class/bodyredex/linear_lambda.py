"""Pinned linear first body let with lambda-headed B.
R=λs.((λx y.D) A) C1...Ct, j in A at depth zero, A contains a lambda.
If y has 0 uses, swapping the two binders and arguments saves one bit.
If y has 1 use, the swap has identical weight/lambdas/hole depth and is
another minimum with a j-free linear first argument, excluded by REPORT 3.3 (flat C) or 3.5 (lambda-containing C).
Thus y has >=2 uses. Exact linear charge (q+3)*depth_x >=7+G.
Source budgets then force q<=3, a<=15, b<=25, 4<=pending<=12;
q=0 in fact gives a<=12. No H_nf is used.
"""
import sys
sys.dont_write_bytecode=True
import time,signal,resource,json,hashlib
from pathlib import Path
from collections import Counter
import high_count as h
import high_check as g
import repeated_helper as check
from high_check import d
HERE=Path(__file__).resolve().parent
START=time.monotonic();signal.alarm(110)

def xdepth(t,depth=0):
    if t[0]=='k':return 0
    if t[0]=='v':return depth*int(t[1]==depth)
    if t[0]=='l':return xdepth(t[1],depth+1)
    return xdepth(t[1],depth)+xdepth(t[2],depth)

def catalogs():
    AA=[];BB=[]
    for a in range(6,16):
      for la in range(1,a//2+1):
       for ma in range(4):
        for A in g.terms(a,0,0,0,1,ma,la):
            q=g.occ(A,0)+g.occ(A,1)
            if q<=3:AA.append((a,q,ma,A))
    for b in range(16,26):
      for lb in range(1,b//2+1):
       for mb in range(4):
        for inner in g.terms(b-2,1,1,1,0,mb,lb-1):
            if g.occ(inner,0)<2:continue
            B=d.L(inner);D=xdepth(B)
            if D<2:continue
            G=g.occ(B,1)+g.occ(B,2)
            BB.append((b,D,G,mb,B))
    return AA,BB

def configs(AA,BB):
    for a,q,ma,A in AA:
      for b,D,G,mb,B in BB:
        if (q+3)*D<7+G:continue
        for p in range(4,min(12,35-a-b)+1):
          for lp in range(p//2+1):
           for mp in range(4):
            if ma|mb|mp!=3:continue
            n=h.pending_e(p,0,mp,lp)
            if n:yield a,q,A,b,D,G,B,p,mp,lp,n

if __name__=='__main__':
    AA,BB=catalogs();cfg=list(configs(AA,BB));expected=sum(x[-1] for x in cfg)
    print(json.dumps(dict(catalog_A=len(AA),catalog_B=len(BB),sources=expected)),flush=True)
    assert expected<=100000
    fails=Counter();unknown=[];survivors=[];count=0;digest=hashlib.sha256()
    maxsteps=0;seen=set()
    for a,q,A,b,D,G,B,p,mp,lp,n in cfg:
      generated=0
      for Cs in g.pending(p,0,mp,lp):
        Rbody=d.A(d.L(B),A)
        for C in Cs:Rbody=d.A(Rbody,C)
        R=d.L(Rbody)
        assert R not in seen;seen.add(R)
        st=g.stats(R)
        assert (st[0]+4*st[-1],st[-2],st[-1])==(10+a+b+p,1,1)
        assert st[0]+4<=45 and g.occ(B,0)==1
        digest.update((repr(R)+'\n').encode());count+=1;generated+=1
        body=d.beta(B,A)
        for C in Cs:body=d.A(body,C)
        try:
          rejected=False
          for k in (0,1,2,3):
            stream=d.Z() if k==0 else d.U(k)
            want=d.A(d.Kc('r'),d.Kc('j')) if k==0 else d.A(d.A(d.Kc('c'),d.U(k-1)),d.Kc('N'))
            budget=[2000]
            try:ok=check.matches(d.inst(body,stream),want,budget)
            except check.Cycle:
              fails[f'cycle{k}']+=1;rejected=True;break
            maxsteps=max(maxsteps,2000-budget[0])
            if not ok:fails[f'law{k}']+=1;rejected=True;break
          if not rejected:survivors.append(d.show(R,['c']))
        except (RuntimeError,RecursionError) as ex:
          unknown.append(dict(R=d.show(R,['c']),weight=st[0]+4,reason=str(ex)))
        if count%64==0:
          assert time.monotonic()-START<110
          assert resource.getrusage(resource.RUSAGE_SELF).ru_maxrss<900_000_000
      assert generated==n
    assert count==expected
    out=dict(sources=count,catalog_A=len(AA),catalog_B=len(BB),failures=dict(fails),
      unknowns=unknown,survivors=survivors,max_probe_beta_steps=maxsteps,
      seconds=time.monotonic()-START,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
      threads=1,source_digest=digest.hexdigest())
    (HERE/'linear_lambda.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2));signal.alarm(0)
