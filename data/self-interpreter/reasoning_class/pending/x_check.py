"""The entire natural x-headed cell made under-cap by simplify's proved cuts."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'simplify'))
import count_extensions as ex
f=ex.f
import generate as g,check as ck,dbn as d
from nested_families import watchdog,START
import json,collections,hashlib,time,resource,signal,threading
CELL=('Cs','x',3,1)
def pred(key):
 if f.cell(key)!=CELL:return False
 L,T,b,a,cs,bf,af,t=key
 pureB=bool(not bf[5] and bf[8][0]==0 and bf[8][1] and (bf[8][1][0]==0 or not sum(b[3]) and not b[1] and not b[2]))
 pureA=bool(len(af[5])==1 and af[8][0]==0 and af[8][1] and (af[8][1][0]==0 or sum(a[3])==1 and not a[1] and not a[2]))
 return not(pureB and pureA) and ex.extension(key) is None
def main():
 f.K=2;f.JD=0
 total=sum(n for key,n in f.roots() if pred(key));assert total==98442 and total<=100000
 (H/'x_count.json').write_text(json.dumps(dict(k=2,depth=0,cell=CELL,total=total,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))+'\n')
 stats=collections.Counter();bad=[];hits=[];seen=set();digest=hashlib.sha256()
 for R,meta,_ in g.sources(pred):
  assert R not in seen;seen.add(R);digest.update(repr(R).encode()+b'\n')
  for n in range(4):
   label='zero' if n==0 else str(n);arg=d.Z() if n==0 else d.U(n)
   target=d.A(d.Kc('r'),d.Kc('j')) if n==0 else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
   try:ok=ck.matches(d.A(d.subst(R,0,d.Kc('c')),arg),target,[120])
   except (ck.hc.Cycle,ck.hc.Cutoff,RecursionError) as e:
    bad.append(dict(source=R,probe=label,reason=type(e).__name__,w=ck.weight(R)));break
   if not ok:stats[label]+=1;break
  else:hits.append(R)
 assert len(seen)==total
 rec=dict(k=2,depth=0,cell=CELL,total=total,finite_failures=dict(stats),exceptions=bad,hits=hits,sha256=digest.hexdigest(),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'check_x.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print(json.dumps({k:len(v) if k in ('exceptions','hits') else v for k,v in rec.items()}))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
