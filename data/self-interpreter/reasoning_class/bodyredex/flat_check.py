"""Complete check of the pinned shared-flat-argument residual.
Uses the source reductions in NOTES.md; no source normality assumption.
All contracted probes are affine, so the fuel is proved sufficient.
"""
import sys
sys.dont_write_bytecode=True
import time,signal,resource,json,hashlib
from collections import Counter
from pathlib import Path
import flat_count as f
import high_check as g
import high_count as h
from high_check import d
HERE=Path(__file__).resolve().parent
start=time.monotonic();signal.alarm(110)
cfg=list(f.configs());expected=sum(row[-1] for row in cfg)
assert expected==47328 and expected<=100000
rows=Counter();fails=Counter();seen=set();hits=[];digest=hashlib.sha256()
max_nodes=max_steps=0
for arity,m,b,p,lb,lp,mb,mp,number in cfg:
    A=d.V(0)
    for _ in range(arity-1):A=d.A(A,d.V(0))
    generated=0
    for B in f.bodies(b,m,mb,lb,arity):
      for Cs in g.pending(p,1,mp,lp):
        body=d.A(d.L(B),A)
        for C in Cs:body=d.A(body,C)
        R=d.L(body)
        c,L,V,X,J,JD=g.stats(R)
        assert (J,JD)==(1,1) and c+4<=45
        assert c+4==10+(4*arity-2)+b+p
        assert g.occ(B,0)==m
        assert R not in seen
        seen.add(R);generated+=1;digest.update((repr(R)+'\n').encode())
        key=f'A{arity}:m{m}:L{L}'
        rows[key]+=1
        contracted=d.beta(B,A)
        for C in Cs:contracted=d.A(contracted,C)
        assert g.affine(contracted)
        for n in (0,1,2,3):
            probe=d.inst(contracted,d.Z() if n==0 else d.U(n))
            assert g.affine(probe)
            nodes=d.size(probe);max_nodes=max(max_nodes,nodes)
            budget=[nodes];got=g.nf(probe,budget)
            max_steps=max(max_steps,nodes-budget[0])
            want=d.A(d.Kc('r'),d.Kc('j')) if n==0 else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
            if got!=want:
                fails[f'n{n}']+=1;break
        else:hits.append(dict(term=R,source=d.show(R,['c']),weight=c+4))
        if len(seen)%128==0:
            assert len(seen)<=100000 and time.monotonic()-start<110
            assert resource.getrusage(resource.RUSAGE_SELF).ru_maxrss<900_000_000
    assert generated==number
assert len(seen)==expected
out=dict(sources=expected,rows=dict(rows),failures=dict(fails),survivors=hits,
         exceptions=0,all_contracted_probes_affine=True,
         max_probe_nodes=max_nodes,max_probe_beta_steps=max_steps,
         seconds=time.monotonic()-start,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
         threads=1,source_digest=digest.hexdigest())
(HERE/'flat_check.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2));signal.alarm(0)
