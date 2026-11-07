import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import hole_gen as g
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
import check as hc
import audit as ad
import json,time,resource,signal,threading,os,hashlib,collections
START=time.monotonic();sys.setrecursionlimit(3000)
hc.MAX_NODES=1500;hc.MAX_STEPS=100

def necessary(t,target):
 req=d.consts_of(target);seen=set()
 for n in range(100):
  if not req<=d.consts_of(t):return 'missing'
  # Successful full normalization is definitive even when target has a lambda.
  if t in seen:raise hc.Cycle('head repeat')
  seen.add(t)
  u=ad.step(t)
  if u is None:return 'nf' if hc.nf(t,[100])!=target else 'pass'
  if d.size(u)>1500:raise hc.Cutoff('nodes')
  t=u
 raise hc.Cutoff('steps')
def weight(t,dep=0):
 if t[0]=='v':return t[1]+2
 if t[0]=='k':assert t[1]=='j';return 4*dep
 if t[0]=='l':return 2+weight(t[1],dep+1)
 return 2+weight(t[1],dep)+weight(t[2],dep)
def main(fA):
 expected=sum(n for key,n in g.f.roots() if key[3][1]==fA);assert expected<=100000
 seen=set();bad=[];hits=[];stats=collections.Counter();digest=hashlib.sha256()
 for R,meta in g.sources(fA):
  assert R not in seen;seen.add(R)
  w=weight(R);assert w<=45
  digest.update(repr(R).encode()+b'\n')
  for label,stream,target in [('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j'))),('1',d.U(1),d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N')))]:
   try:why=necessary(d.A(d.subst(R,0,d.Kc('c')),stream),target)
   except (hc.Cutoff,hc.Cycle,RecursionError) as e:
    bad.append(dict(index=len(seen)-1,source=R,weight=w,meta=meta,reason=str(e),probe=label));break
   if why!='pass':stats[label+'_'+why]+=1;break
  else:hits.append(dict(source=R,weight=w,meta=meta))
 assert len(seen)==expected
 rec=dict(fA=fA,total=expected,wrong=dict(stats),exceptions=bad,hits=hits,sha256=digest.hexdigest(),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/f'linear_hole_check{fA}.json').write_text(json.dumps(rec)+'\n');print(json.dumps({k:v for k,v in rec.items() if k not in ('exceptions','hits')},indent=2));print('exceptions',len(bad),'hits',len(hits))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=g.f.watchdog,daemon=True).start();main(int(sys.argv[1]))
