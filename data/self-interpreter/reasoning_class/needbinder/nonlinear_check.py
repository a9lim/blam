#!/usr/bin/env python3
"""Complete check of the pinned nonlinear first-head opener at |B|<=29.
No minimum, normality, or let-saving filter is used on these sources.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,time,resource,signal,hashlib
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[2]
sys.path.insert(0,str(ROOT/'tmp/round4/jn'))
import dbn as d
import nonlinear_count as nc
START=time.monotonic()
MAX_SOURCES=100000
MAX_NODES=8000
MAX_STEPS=1200
signal.alarm(110)

# Enumerators are the constructor-level counterparts of the independently
# memoized cardinality recurrences in nonlinear_count.py.
def terms(c,depth,nfree,m,hc):
    if not nc.terms(c,depth,nfree,m,hc):return
    for i in range(depth+nfree):
        if i+2==c and int(nfree==5 and i==depth)==m and int(i==depth+nfree-1)==hc:
            yield d.V(i)
    for b in terms(c-2,depth+1,nfree,m,hc):yield d.L(b)
    for a in range(2,c-3):
      for mf in range(m+1):
       for hf in (0,1):
        for hx in (0,1):
         if (hf or hx)==hc and nc.terms(a,depth,nfree,mf,hf) and nc.terms(c-2-a,depth,nfree,m-mf,hx):
          for f in terms(a,depth,nfree,mf,hf):
           for x in terms(c-2-a,depth,nfree,m-mf,hx):yield d.A(f,x)

def pending(p,hc):
    if not nc.pending(p,hc):return
    if p==0:
        yield ()
        return
    for a in range(2,p-1):
     for ha in (0,1):
      for hr in (0,1):
       if (ha or hr)==hc and nc.terms(a,0,4,0,ha) and nc.pending(p-2-a,hr):
        for t in terms(a,0,4,0,ha):
         for ts in pending(p-2-a,hr):yield (t,)+ts

class Cutoff(Exception):pass
class Cycle(Exception):pass

def nf(t,budget):
    spine=[]
    seen={}
    steps=0
    while True:
        if t[0]=='a':
            spine.append(t[2]);t=t[1];continue
        if t[0]=='l' and spine:
            key=(t,tuple(spine))
            if key in seen:raise Cycle((seen[key],steps,hashlib.sha256(repr(key).encode()).hexdigest()))
            seen[key]=steps
            budget[0]-=1
            if budget[0]<0:raise Cutoff('steps')
            t=d.beta(t[1],spine.pop())
            if d.size(t)+sum(d.size(x) for x in spine)>MAX_NODES:raise Cutoff('nodes')
            steps+=1
            continue
        break
    if t[0]=='l':return d.L(nf(t[1],budget))
    for x in reversed(spine):t=d.A(t,nf(x,budget))
    return t

def wire(t):
    if t[0]=='v':return t[1]+2
    if t[0]=='l':return wire(t[1])+2
    return wire(t[1])+wire(t[2])+2

def occ(t,i):
    if t[0]=='v':return int(t[1]==i)
    if t[0]=='l':return occ(t[1],i+1)
    return occ(t[1],i)+occ(t[2],i)

def show(t,names=('t','b','s','c')):
    if t[0]=='v':return names[t[1]]
    if t[0]=='k':return t[1]
    if t[0]=='l':
        name='v'+str(len(names));return '(\\'+name+'. '+show(t[1],(name,)+names)+')'
    return '('+show(t[1],names)+' '+show(t[2],names)+')'

J=d.Kc('j');C=d.Kc('c');r=d.Kc('r');N=d.Kc('N')
probes=[('zero',d.Z(),d.A(r,J))]
for n in (1,2,3):probes.append((str(n),d.U(n),d.A(d.A(C,d.U(n-1)),N)))
expected=nc.counts()
assert sum(v[0] for v in expected.values())==18640
rows={f'{m}:{loc}':dict(sources=0,lambda_A=0,wrong_nf={},cycles={},cutoffs=0,survivors=0)
      for m,loc in expected}
exceptions=[];hits=[];all_seen=set();total=0
for m in (2,3,4):
 for a in range(2,26):
  for b in range(4*m-2,26-a):
   for p in range(26-a-b):
    for ha in (0,1):
     if not nc.terms(a,0,4,0,ha):continue
     for hd in (0,1):
      if not nc.terms(b,0,5,m,hd):continue
      for hp in (0,1):
       loc=nc.category(ha,hd,hp)
       if loc is None or not nc.pending(p,hp):continue
       row=rows[f'{m}:{loc}']
       for A in terms(a,0,4,0,ha):
        for D in terms(b,0,5,m,hd):
         for Cs in pending(p,hp):
          B=d.A(d.L(D),A)
          for arg in Cs:B=d.A(B,arg)
          assert wire(B)==4+a+b+p<=29
          assert occ(D,0)==m
          assert bool(occ(A,3))==bool(ha)
          assert bool(occ(D,4))==bool(hd)
          assert bool(sum(occ(q,3) for q in Cs))==bool(hp)
          assert B not in all_seen
          all_seen.add(B)
          total+=1;row['sources']+=1
          row['lambda_A']+=int(A[0]=='l')
          assert total<=MAX_SOURCES
          if total%128==0:
              assert time.monotonic()-START<110
              assert resource.getrusage(resource.RUSAGE_SELF).ru_maxrss<900_000_000
          Y=d.A(d.V(0),d.L(d.L(B)))
          rejected=False
          for label,stream,target in probes:
           test=d.A(d.inst(Y,stream),J)
           try:actual=nf(test,[MAX_STEPS])
           except Cycle as e:
            row['cycles'][label]=row['cycles'].get(label,0)+1
            exceptions.append(dict(kind='cycle',m=m,location=loc,body=show(B),probe=label,certificate=e.args[0],term=B))
            rejected=True;break
           except (Cutoff,RecursionError) as e:
            row['cutoffs']+=1
            exceptions.append(dict(kind='cutoff',m=m,location=loc,body=show(B),probe=label,reason=str(e),term=B))
            rejected=True;break
           if actual!=target:
            row['wrong_nf'][label]=row['wrong_nf'].get(label,0)+1
            rejected=True;break
          if not rejected:
           row['survivors']+=1
           hits.append(dict(m=m,location=loc,body=show(B),weight=wire(B)+16,term=B))
 print('finished m',m,'total',total,flush=True)
for key,(n,nl) in expected.items():
    row=rows[f'{key[0]}:{key[1]}']
    assert (row['sources'],row['lambda_A'])==(n,nl)
record=dict(sources=total,rows=rows,exceptions=exceptions,survivors=hits,
    seconds=time.monotonic()-START,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,
    threads=1,source_domain='B=((lambda x.D) A) C1...Ck, |B|<=29, m=2..4, c present')
(HERE/'nonlinear_check.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps({k:v for k,v in record.items() if k not in ('exceptions','survivors')},indent=2))
print('EXCEPTIONS',len(exceptions),'CUTOFFS',sum(x['kind']=='cutoff' for x in exceptions),'HITS',len(hits))
signal.alarm(0)
