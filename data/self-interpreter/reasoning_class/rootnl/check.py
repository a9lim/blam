"""One complete, pre-counted control-flow cell. UNKNOWN remains explicit."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import generate as g
import grammar as f
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
import importlib.util
spec=importlib.util.spec_from_file_location('handlerlet_check',H.parent/'handlerlet'/'check.py')
hc=importlib.util.module_from_spec(spec);spec.loader.exec_module(hc)
import json,time,resource,signal,threading,os,hashlib,collections,ast
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
def matches(t,want,budget):
 spine=[];seen=set()
 while True:
  if t[0]=='a':spine.append(t[2]);t=t[1];continue
  if t[0]=='l' and spine:
   key=(t,tuple(spine))
   if key in seen:raise hc.Cycle('head cycle')
   seen.add(key);budget[0]-=1
   if budget[0]<0:raise hc.Cutoff('steps')
   t=d.beta(t[1],spine.pop())
   if d.size(t)+sum(d.size(x) for x in spine)>8000:raise hc.Cutoff('nodes')
   continue
  break
 args=[]
 while want[0]=='a':args.append(want[2]);want=want[1]
 if len(args)!=len(spine) or t[0]!=want[0]:return False
 if t[0]=='l':return matches(t[1],want[1],budget)
 if t!=want:return False
 return all(matches(a,b,budget) for a,b in zip(reversed(spine),reversed(args)))

def name(cell):return '_'.join(map(str,cell))
def main():
 f.K=int(sys.argv[1]);f.JD=int(sys.argv[2]);cell=ast.literal_eval(sys.argv[3])
 predicate=lambda key:f.cell(key)==cell
 expected=sum(n for key,n in f.roots() if predicate(key))
 assert expected<=100000,(cell,expected)
 seen=set();bad=[];hits=[];stats=collections.Counter();digest=hashlib.sha256()
 probes=[('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j')))]
 for n in (1,2,3,4,5,6,7,8):probes.append((str(n),d.U(n),d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))))
 for R,meta,parts in g.sources(predicate):
  assert R not in seen;seen.add(R);w=weight(R);assert w<=45
  assert hc.occ(parts[0],0)==f.K
  assert hc.lams(R)==meta['L']
  digest.update(repr(R).encode()+b'\n')
  for probe,arg,want in probes:
   try:ok=matches(d.A(d.subst(R,0,d.Kc('c')),arg),want,[120])
   except (hc.Cutoff,hc.Cycle,RecursionError) as e:
    bad.append(dict(source=R,probe=probe,reason=type(e).__name__,w=w));break
   if not ok:stats[probe]+=1;break
  else:hits.append(dict(source=R,w=w))
 assert len(seen)==expected
 rec=dict(k=f.K,depth=f.JD,cell=cell,total=expected,finite_failures=dict(stats),exceptions=bad,hits=hits,sha256=digest.hexdigest(),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/f'check_{f.K}_{f.JD}_{name(cell)}.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(json.dumps({k:v if k not in ('exceptions','hits') else len(v) for k,v in rec.items()}))
if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
