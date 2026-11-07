#!/usr/bin/env python3
"""Complete pinned bit-headed cell-opener family, at most 92,534 sources.
No reader-level source normal-form assumption. One thread, bounded trees.
"""
import sys
sys.dont_write_bytecode = True
import json, time, resource
from pathlib import Path
from functools import lru_cache
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT/'tmp/round4/jn'))
import dbn as d
HERE=Path(__file__).resolve().parent
START=time.monotonic()
MAX_ROOTS=100000
MAX_SECONDS=110
MAX_NODES=8000
MAX_STEPS=1200

# d=internal lambdas; four free variables [t,b,s,c]. h records presence of c.
@lru_cache(None)
def count(c,depth,h):
    if c<2:return 0
    z=sum(1 for i in range(depth+4) if i+2==c and (i==depth+3)==bool(h))
    z+=count(c-2,depth+1,h)
    for a in range(2,c-3):
        for hf in (0,1):
            for hx in (0,1):
                if (hf or hx)==h:
                    z+=count(a,depth,hf)*count(c-2-a,depth,hx)
    return z

def terms(c,depth,h):
    if not count(c,depth,h):return
    for i in range(depth+4):
        if i+2==c and (i==depth+3)==bool(h):yield d.V(i)
    if count(c-2,depth+1,h):
        for b in terms(c-2,depth+1,h):yield d.L(b)
    for a in range(2,c-3):
        for hf in (0,1):
            for hx in (0,1):
                if (hf or hx)==h and count(a,depth,hf) and count(c-2-a,depth,hx):
                    for f in terms(a,depth,hf):
                        for x in terms(c-2-a,depth,hx):yield d.A(f,x)

@lru_cache(None)
def count_args(c,k,h):
    if k==0:return int(c==0 and not h)
    z=0
    for a in range(2,c+1):
        for ha in (0,1):
            for hb in (0,1):
                if (ha or hb)==h:z+=count(a,0,ha)*count_args(c-a,k-1,hb)
    return z

def args(c,k,h):
    if not count_args(c,k,h):return
    if k==0:
        yield ()
        return
    for a in range(2,c+1):
        for ha in (0,1):
            for hb in (0,1):
                if (ha or hb)==h and count(a,0,ha) and count_args(c-a,k-1,hb):
                    for t in terms(a,0,ha):
                        for ts in args(c-a,k-1,hb):yield (t,)+ts

class Cutoff(Exception):pass
class Cycle(Exception):pass

def nf(t,budget):
    spine=[]
    seen={}
    minimum=[]
    step=0
    while True:
        if t[0]=='a':
            spine.append(t[2]);t=t[1];continue
        if t[0]=='l' and spine:
            # Exact repeated whole head configuration. Determinism proves
            # nontermination; this certificate never identifies up to eta.
            key=(t,tuple(spine))
            if key in seen:raise Cycle()
            seen[key]=step
            budget[0]-=1
            if budget[0]<0:raise Cutoff('steps')
            t=d.beta(t[1],spine.pop())
            if d.size(t)+sum(d.size(x) for x in spine)>MAX_NODES:
                raise Cutoff('nodes')
            step+=1
            continue
        break
    if t[0]=='l':
        assert not spine
        return d.L(nf(t[1],budget))
    for x in reversed(spine):t=d.A(t,nf(x,budget))
    return t

def normal(t):return nf(t,[MAX_STEPS])
def wire(t):
    if t[0]=='v':return t[1]+2
    if t[0]=='l':return 2+wire(t[1])
    assert t[0]=='a'
    return 2+wire(t[1])+wire(t[2])

def show(t,names=('t','b','s','c')):
    if t[0]=='v':return names[t[1]]
    if t[0]=='l':
        v='v'+str(len(names));return '(\\'+v+'. '+show(t[1],(v,)+names)+')'
    if t[0]=='a':return '('+show(t[1],names)+' '+show(t[2],names)+')'
    return t[1]

J=d.Kc('j');C=d.Kc('c');N=d.Kc('N');r=d.Kc('r')
probes=[('zero',d.Z(),d.A(r,J))]
for n in (1,2,3):probes.append((str(n),d.U(n),d.A(d.A(C,d.U(n-1)),N)))
expected={(h,k):sum(count_args(c,k,1) for c in range(30-(h+2)-2*k))
          for h in (1,2) for k in range(1,7)}
assert sum(expected.values())==92534
counts={key:0 for key in expected}
rejected={p[0]:0 for p in probes};cycles={p[0]:0 for p in probes}
cuts=[];hits=[];total=0
for h in (1,2):
 for k in range(1,7):
    for ac in range(30-(h+2)-2*k):
        for operands in args(ac,k,1):
            total+=1
            assert total<=MAX_ROOTS
            if total%128==0:
                assert time.monotonic()-START<MAX_SECONDS
                assert resource.getrusage(resource.RUSAGE_SELF).ru_maxrss<900_000_000
            b=d.V(h)
            for a in operands:b=d.A(b,a)
            assert wire(b)==h+2+2*k+ac<=29
            y=d.A(d.V(0),d.L(d.L(b)))
            assert wire(y)==8+wire(b)
            counts[(h,k)]+=1
            failed=False
            for label,stream,target in probes:
                test=d.A(d.inst(y,stream),J)
                try:actual=normal(test)
                except Cycle:
                    cycles[label]+=1;failed=True;break
                except (Cutoff,RecursionError) as e:
                    cuts.append(dict(body=show(b),probe=label,kind=str(e),term=b))
                    failed=True;break
                if actual!=target:
                    rejected[label]+=1;failed=True;break
            if not failed:hits.append(dict(body=show(b),weight=wire(y)+8))
    print('head',('b' if h==1 else 's'),'k',k,'checked',counts[(h,k)],flush=True)
assert counts==expected
counts={('b' if h==1 else 's')+':'+str(k):v for (h,k),v in counts.items()}
record=dict(sources=total,counts=counts,wrong_normal_form=rejected,
    certified_head_cycles=cycles,cutoffs=cuts,survivors=hits,
    seconds=time.monotonic()-START,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
    one_thread=True,complete_domain='s (lambda b t. h A1 ... Ak), h in {b,s}, |Y|<=37, c present')
(HERE/'openers.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps({k:v for k,v in record.items() if k!='cutoffs'},indent=2))
print('CUTOFFS',len(cuts))
