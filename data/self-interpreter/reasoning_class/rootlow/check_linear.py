"""Complete check of the two mathematically narrowed j-free linear profiles."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import generate as g
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
import check as hc
import json,time,resource,signal,threading,os,hashlib,collections
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def weight(t,dep=0):
 if t[0]=='v':return t[1]+2
 if t[0]=='k':assert t[1]=='j';return 4*dep
 if t[0]=='l':return 2+weight(t[1],dep+1)
 return 2+weight(t[1],dep)+weight(t[2],dep)
def main():
 expected=sum(n for _,n in g.f.roots());assert expected<=100000
 seen=set();bad=[];hits=[];stats=collections.Counter();digest=hashlib.sha256()
 for R,meta in g.sources('Cs'):
  assert R not in seen;seen.add(R)
  w=weight(R);assert w<=45
  digest.update(repr(R).encode()+b'\n')
  try:
   out=hc.nf(d.A(d.subst(R,0,d.Kc('c')),d.Z()),[400])
  except (hc.Cutoff,hc.Cycle,RecursionError) as e:bad.append((R,str(e)));continue
  if out==d.A(d.Kc('r'),d.Kc('j')):hits.append(R)
  else:stats[(w,meta['L'])]+=1
 assert len(seen)==expected
 rec=dict(total=expected,wrong_zero={str(k):v for k,v in stats.items()},exceptions=bad,hits=hits,sha256=digest.hexdigest(),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/'linear_nohole_check.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
