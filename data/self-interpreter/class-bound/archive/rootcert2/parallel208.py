import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import dag as g
from dag import d,ad
import json,time,signal
from functools import lru_cache
signal.alarm(112)
@lru_cache(None)
def dev(i):
 x=g.N[i]
 if x[0] in ('v','k'):return i
 if x[0]=='l':return g.L(dev(x[1]))
 f=dev(x[1]);a=dev(x[2]);nd=g.N[f]
 return g.subst(nd[1],0,a) if nd[0]=='l' else g.A(f,a)
r=json.loads((H/'sources.json').read_text())[208];t=d.A(d.subst(ad.tup(r['tree']),0,d.Kc('c')),d.Z());i=g.load(t);trace=[i]
try:
 for n in range(80):
  h,args=g.flat(i)
  if g.N[h][0]=='k':print('head',g.N[h],len(args),'rounds',n,'size',g.size(i));break
  j=dev(i);trace.append(j)
  if i==j:break
  i=j
except g.Cap:print('cap')
print('nodes',len(g.N),'seconds',time.monotonic()-g.START)
(H/'parallel208.json').write_text(json.dumps(dict(nodes=g.N,trace=trace),separators=(',',':'))+'\n')
