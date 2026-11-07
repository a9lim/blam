import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import dag as g
from dag import d
import json,time,signal
signal.alarm(110)
A=d.L(d.L(d.A(d.V(1),d.A(d.V(0),d.A(d.V(0),d.V(1))))));a=g.load(A);b=g.A(a,a)
cores=[b,g.A(a,b),g.A(b,a),g.A(g.A(a,b),a),g.A(b,b),g.A(g.A(b,a),a)]
for core in cores:
 t=g.A(core,g.K('z'));res=None
 for n in range(1,161):
  q=g.step(t)
  if q is None:break
  t=q[0];p=t;xs=[]
  while g.N[p][0]=='a':
   xs.append(g.N[p][2]);p=g.N[p][1]
   if p==core:res=n,t,list(reversed(xs));break
  if res:break
 print('core',d.show(g.dump(core)),'recurrence',res[0] if res else None,'size',g.size(t))
 if res and g.size(t)<500:print('result',d.show(g.dump(t)))
