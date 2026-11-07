import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import generate as g
import boundary as b
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
import check as hc
import audit as ad
import json,time,signal,resource,threading,os,collections
START=time.monotonic();sys.setrecursionlimit(3000)
hc.MAX_NODES=1500;hc.MAX_STEPS=80

def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def signature(t):
 n=0
 while t[0]=='a':n+=1;t=t[1]
 return (t,n) if t[0]!='l' else None

def necessary(t,target):
 req=d.consts_of(target);want=signature(target);seen=set()
 for n in range(80):
  if not req<=d.consts_of(t):return 'missing'
  actual=signature(t)
  if actual is not None:
   if actual!=want:return 'head'
   return 'nf' if hc.nf(t,[80])!=target else 'pass'
  if t in seen:raise hc.Cycle('head repeat')
  seen.add(t);u=ad.step(t)
  if u is None:return 'lambda'
  if d.size(u)>1500:raise hc.Cutoff('nodes')
  t=u
 raise hc.Cutoff('steps')

def main(k,loc):
 g.f.K=k;g.f.JD=5-k
 expected=sum(n for key,n in g.f.roots() if ('B' if key[2][2] else 'A' if key[3][2] else 'Cs')==loc)
 assert expected<=100000
 total=0;seen=set();stats=collections.Counter();exceptions=[];hits=[];prices=collections.Counter()
 for R,meta in g.sources(loc):
  assert R not in seen;seen.add(R);total+=1
  w=b.weight(R);assert w==42+2*(meta['L']-3)+meta['tax']<=45
  for label,stream,target in [('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j'))),('1',d.U(1),d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N')))]:
   instance=d.A(d.subst(R,0,d.Kc('c')),stream)
   try:why=necessary(instance,target)
   except (hc.Cutoff,hc.Cycle,RecursionError) as e:
    stats['exception']+=1;exceptions.append(dict(index=total-1,**meta,weight=w,kind=type(e).__name__,reason=str(e),probe=label,source=R));break
   if why!='pass':stats[label+'_'+why]+=1;break
  else:stats['hit']+=1;hits.append(dict(source=R,**meta,weight=w))
  prices[(meta['L'],meta['tax'])]+=1
 assert total==expected
 rec=dict(k=k,depth=5-k,location=loc,total=total,stats=dict(stats),prices={str(k):v for k,v in prices.items()},exceptions=exceptions,hits=hits,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/f'check{k}{loc}.json').write_text(json.dumps(rec)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('exceptions','hits')},indent=2));print('EXCEPTIONS',len(exceptions),'HITS',len(hits))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(int(sys.argv[1]),sys.argv[2])
