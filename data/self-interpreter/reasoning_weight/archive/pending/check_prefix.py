"""Handlerlet comparison on one independently counted residual (k, depth) cell."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import boundary as b
f=b.f
import generate as g
import check as ck
import dbn as d
import json,hashlib,collections,time,resource,signal,threading,os
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def tail(s,t,prefix):
 if not prefix or not t:yield from g.forest(s,t);return
 for a,rest in f.fparts(s):
  if f.JD==0 and b.direct_j(a):continue
  if not b.tail_forest(rest,t-1,prefix[1:]):continue
  for af,n in f.count(a).items():
   for x in g.gen(a,af):
    for ys in tail(rest,t-1,prefix[1:]):yield (x,)+ys

def forest(s,t,B,bf):
 for a,rest in f.fparts(s):
  if not b.first_ok(a,B,bf) or not b.tail_forest(rest,t-1,bf[5][1:]):continue
  for af,n in f.count(a).items():
   for x in g.gen(a,af):
    for ys in tail(rest,t-1,bf[5][1:]):yield (x,)+ys

def main(k,jd):
 f.K=k;f.JD=jd;blocks=list(b.blocks());expected=sum(n for _,n in blocks)
 independent=json.loads((H/f'boundary_{k}_{jd}.json').read_text())['total']
 assert expected==independent and expected<=100000
 stats=collections.Counter();exceptions=[];hits=[];seen=set();digest=hashlib.sha256()
 probes=[('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j')))]
 for n in (1,2,3):probes.append((str(n),d.U(n),d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))))
 for key,nexpected in blocks:
  L,T,B,A,Cs,bf,af,t=key;emitted=0
  for bv in g.gen(B,bf):
   for av in g.gen(A,af):
    for cv in forest(Cs,t,B,bf):
     R=d.A(d.L(bv),av)
     for c in cv:R=d.A(R,c)
     assert R not in seen;seen.add(R);emitted+=1
     assert ck.weight(R)<=45 and ck.hc.occ(bv,0)==k and ck.hc.lams(R)==L
     digest.update(repr(R).encode()+b'\n')
     for probe,arg,want in probes:
      try:ok=ck.matches(d.A(d.subst(R,0,d.Kc('c')),arg),want,[120])
      except (ck.hc.Cutoff,ck.hc.Cycle,RecursionError) as e:
       exceptions.append(dict(source=R,probe=probe,reason=type(e).__name__,w=ck.weight(R)));break
      if not ok:stats[probe]+=1;break
     else:hits.append(dict(source=R,w=ck.weight(R)))
  assert emitted==nexpected,(key,emitted,nexpected)
 assert len(seen)==expected
 rec=dict(k=k,depth=jd,total=expected,finite_failures=dict(stats),exceptions=exceptions,hits=hits,sha256=digest.hexdigest(),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'check_{k}_{jd}.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(json.dumps({k:v if k not in ('exceptions','hits') else len(v) for k,v in rec.items()}))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(*map(int,sys.argv[1:3]))
