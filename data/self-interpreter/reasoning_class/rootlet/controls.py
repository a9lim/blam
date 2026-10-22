import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import check_filtered as check
import boundary as b
import dbn as d
import json,time
start=time.monotonic()
def apps(f,*xs):
 for x in xs:f=d.A(f,x)
 return f
R162=d.L(apps(d.V(0),d.I,d.L(apps(d.V(1),d.L(d.V(3)),apps(d.V(1),d.V(1),d.V(0)))),d.Kc('j')))
R165=d.A(d.L(d.L(apps(d.V(0),d.L(apps(d.V(0),d.L(d.L(apps(d.V(0),d.V(4)))),d.V(3))),apps(d.V(0),d.V(0),d.V(0))))),d.Kc('j'))
res=[]
for name,R,w in [('reader162',R162,46),('reader165',R165,49)]:
 assert b.weight(R)==w
 for n in range(9):
  inp=d.Z() if n==0 else d.U(n)
  out=apps(d.Kc('r'),d.Kc('j')) if n==0 else apps(d.Kc('c'),d.U(n-1),d.Kc('N'))
  assert check.necessary(apps(d.subst(R,0,d.Kc('c')),inp),out)=='pass',(name,n)
 res.append(dict(name=name,weight=w,zero=True,unary_lengths=list(range(1,9))))
(H/'controls.json').write_text(json.dumps(dict(controls=res,seconds=time.monotonic()-start),indent=2)+'\n');print(res)
