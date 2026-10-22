from probe import *
import simplifier as sim
I=D.L(D.V(0))
def ground(t):
 if t[0]=='k':return I
 if t[0]=='v':return t
 if t[0]=='l':return D.L(ground(t[1]))
 return D.A(ground(t[1]),ground(t[2]))
rs=source_rows();out=[];opened=[];signal.alarm(110);start=time.monotonic()
for i in [115,119,127]:
 R=a.tup(rs[i][1]['source']);t=ground(D.A(D.subst(R,0,D.Kc('c')),D.Z()));prep=[];done=False
 for j in range(12):
  t,ps=sim.simplify(t);prep+=ps
  core=t
  while core[0]=='a':
   p=weakpath(core)
   if p is not None:
    u=sim.rw(core,p);qs=[]
    for n in range(12):
     u,ps=sim.simplify(u);qs+=ps
     extra=au.prefix(u,core)
     if extra is not None:
      out.append(dict(id=i,kind='ground',prep=prep,core=core,paths=qs,extra=extra,rest=au.prefix(t,core)));done=True;break
     p=weakpath(u)
     if p is None or D.size(u)>500:break
     u=sim.rw(u,p);qs.append(p)
   if done:break
   core=core[1]
  if done:break
  p=weakpath(t)
  if p is None or D.size(t)>500:break
  t=sim.rw(t,p);prep.append(p)
 if not done:opened.append(i)
(H/'ground_certificates.json').write_text(json.dumps(out,separators=(',',':'))+'\n');print('cert',len(out),'open',opened,'states',sim.COUNT,'seconds',time.monotonic()-start)
