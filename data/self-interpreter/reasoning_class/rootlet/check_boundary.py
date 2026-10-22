import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import boundary as b
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
import check as hc
import json,time,signal,resource,threading,os,collections
START=time.monotonic();sys.setrecursionlimit(3000)
hc.MAX_NODES=1500;hc.MAX_STEPS=80

def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)

def main():
 total=0;seen=set();stats=collections.Counter();exceptions=[];hits=[];prices=collections.Counter()
 for branch,key,bs,aa,cs in b.semantic_blocks():
  for B in bs:
   for A in aa:
    for Cs in cs:
     R=d.A(d.L(B),A)
     for C in Cs:R=d.A(R,C)
     assert R not in seen;seen.add(R);total+=1
     assert total<=100000
     w=b.weight(R);assert w==42+2*(key[0]-3)+key[1]<=45
     assert b.occ(B,0)==5 and b.admissible_redex(B,A,0)
     for label,stream,target in [('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j'))),('1',d.U(1),d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N')))]:
      instance=d.A(d.subst(R,0,d.Kc('c')),stream)
      try:actual=hc.nf(instance,[hc.MAX_STEPS])
      except (hc.Cutoff,hc.Cycle,RecursionError) as e:
       stats['exception']+=1
       exceptions.append(dict(index=total-1,branch=branch,L=key[0],tax=key[1],weight=w,kind=type(e).__name__,reason=str(e),probe=label,source=R))
       break
      if actual!=target:
       stats['wrong_'+label]+=1;break
     else:
      stats['hit']+=1;hits.append(dict(source=R,branch=branch,L=key[0],tax=key[1],weight=w))
     prices[(key[0],key[1])]+=1
 assert total==98267
 rec=dict(total=total,stats=dict(stats),prices={str(k):v for k,v in prices.items()},exceptions=exceptions,hits=hits,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/'boundary_check.json').write_text(json.dumps(rec)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('exceptions','hits')},indent=2))
 print('EXCEPTIONS',len(exceptions),'HITS',len(hits))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
