"""Complete closure of the m=5,6 body-let residual, after stated lemmas.
Hard cap 100,000 sources / 110 s / 900 MB / one thread.
Each probe is first beta-contracted at the designated let. The remaining
term is asserted affine, so normal-order fuel cannot mask a divergent case.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json, time, signal, resource, hashlib
from collections import Counter
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent/'jn'))
import dbn as d
import high_count as h
START=time.monotonic()
signal.alarm(110)
MAX=100000

# These generators match, constructor by constructor, the cardinality DP.
def terms(c,depth,kind,m,j,mask,l):
    if not h.exact_l(c,depth,kind,m,j,mask,l):return
    if l==0:
        if j==1 and c==0 and mask==0:yield d.Kc('j')
        if j==0:
            for i in range(depth+kind+2):
                ext=i-depth
                vm=(1 if ext==kind else 2 if ext==kind+1 else 0)
                if i+2==c and int(kind and ext==0)==m and vm==mask:yield d.V(i)
    if j==0 and l:
        for b in terms(c-2,depth+1,kind,m,0,mask,l-1):yield d.L(b)
    for cf in range(c-1):
      for mf in range(m+1):
       for jf in range(j+1):
        for lf in range(l+1):
         for sf in range(4):
          if sf&~mask:continue
          if not h.exact_l(cf,depth,kind,mf,jf,sf,lf):continue
          for sa in range(4):
           if sf|sa!=mask:continue
           if not h.exact_l(c-2-cf,depth,kind,m-mf,j-jf,sa,l-lf):continue
           for f in terms(cf,depth,kind,mf,jf,sf,lf):
            for a in terms(c-2-cf,depth,kind,m-mf,j-jf,sa,l-lf):yield d.A(f,a)

def pending(p,j,mask,l):
    if not h.pending_e(p,j,mask,l):return
    if p==0:
        assert j==0 and mask==0 and l==0
        yield ();return
    for c in range(p-1):
     for hj in range(j+1):
      for la in range(l+1):
       for ma in range(4):
        if ma&~mask:continue
        if not h.exact_l(c,0,0,0,hj,ma,la):continue
        for mr in range(4):
         if ma|mr!=mask or not h.pending_e(p-c-2,j-hj,mr,l-la):continue
         for a in terms(c,0,0,0,hj,ma,la):
          for rest in pending(p-c-2,j-hj,mr,l-la):yield (a,)+rest

def stats(t,depth=0):
    # local cost, lambdas, leaves, non-hole tax, holes, total hole depth
    if t[0]=='k':
        assert t[1]=='j';return (0,0,1,0,1,depth)
    if t[0]=='v':return (2+t[1],0,1,t[1],0,0)
    if t[0]=='l':
        c,l,v,x,j,jd=stats(t[1],depth+1);return c+2,l+1,v,x,j,jd
    a=stats(t[1],depth);b=stats(t[2],depth)
    z=tuple(x+y for x,y in zip(a,b));return (z[0]+2,)+z[1:]

def occ(t,i):
    if t[0]=='v':return int(t[1]==i)
    if t[0]=='k':return 0
    if t[0]=='l':return occ(t[1],i+1)
    return occ(t[1],i)+occ(t[2],i)

def affine(t):
    if t[0] in ('v','k'):return True
    if t[0]=='l':return occ(t[1],0)<=1 and affine(t[1])
    return affine(t[1]) and affine(t[2])

# Independent iterative normalizer step counts, including no step shortcuts.
def nf(t,budget):
    stack=[]
    while True:
        if t[0]=='a':stack.append(t[2]);t=t[1];continue
        if t[0]=='l' and stack:
            budget[0]-=1
            assert budget[0]>=0,'fuel exhausted; no exclusion is recorded'
            t=d.beta(t[1],stack.pop());continue
        break
    if t[0]=='l':return d.L(nf(t[1],budget))
    for a in reversed(stack):t=d.A(t,nf(a,budget))
    return t

if __name__=='__main__':
    rows=Counter();seen=set();hits=[];failures=Counter();max_nodes=0;max_steps=0
    cfg=list(h.pinned_configs());expected=sum(x[-1] for x in cfg)
    assert expected==92480 and expected<=MAX
    digest=hashlib.sha256()
    for flavor,m,b,a,p,j,lb,la,lp,mb,ma,mp,number in cfg:
        generated=0
        As=(d.A(d.V(0),d.V(0)),) if flavor=='flat_ss' else terms(a,0,0,0,j,ma,la)
        for A in As:
         for B in terms(b,0,1,m,0,mb,lb):
          for Cs in pending(p,1-j,mp,lp):
            body=d.A(d.L(B),A)
            for C in Cs:body=d.A(body,C)
            R=d.L(body)
            c,L,V,X,J,JD=stats(R)
            assert (c+4*JD,J,JD)==(10+b+a+p,1,1)
            assert c+4<=45 and L==2+lb+la+lp and V<=9
            assert occ(B,0)==m
            assert R not in seen
            seen.add(R);generated+=1
            digest.update((repr(R)+'\n').encode())
            rows[f'{flavor}:m{m}:L{L}']+=1
            contracted=d.beta(B,A)
            for C in Cs:contracted=d.A(contracted,C)
            assert affine(contracted)
            rejected=False
            for n in (0,1,2,3):
                stream=d.Z() if n==0 else d.U(n)
                target=d.A(d.Kc('r'),d.Kc('j')) if n==0 else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
                probe=d.inst(contracted,stream)
                assert affine(probe)
                nodes=d.size(probe);max_nodes=max(max_nodes,nodes)
                budget=[nodes]
                actual=nf(probe,budget)
                steps=nodes-budget[0];max_steps=max(max_steps,steps)
                if actual!=target:
                    failures[f'n{n}']+=1;rejected=True;break
            if not rejected:hits.append(dict(source=d.show(R,['c']),term=R,weight=c+4))
            if len(seen)%128==0:
                assert len(seen)<=MAX
                assert time.monotonic()-START<110
                assert resource.getrusage(resource.RUSAGE_SELF).ru_maxrss<900_000_000
        assert generated==number,(flavor,m,b,a,p,j,lb,la,lp,mb,ma,mp,generated,number)
    assert len(seen)==expected
    out=dict(sources=expected,rows=dict(rows),failures=dict(failures),survivors=hits,
             max_probe_nodes=max_nodes,max_probe_beta_steps=max_steps,
             exceptions=0,all_contracted_probes_affine=True,
             seconds=time.monotonic()-START,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
             threads=1,source_digest=digest.hexdigest())
    (HERE/'high_check.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
    signal.alarm(0)
