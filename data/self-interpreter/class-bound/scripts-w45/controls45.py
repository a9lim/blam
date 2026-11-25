from w45run import *
from count import limit
import generate, check as ck, dbn as d
limit()
V,L,A,J=d.V,d.L,d.A,d.Kc('j')
sp=lambda h,x,y:A(A(h,x),y)
r162=L(A(sp(V(0),L(V(0)),L(sp(V(1),L(V(3)),sp(V(1),V(1),V(0))))),J))
r165=A(L(L(sp(V(0),L(sp(V(0),L(L(A(V(0),V(4)))),V(3))),sp(V(0),V(0),V(0))))),J)
out={}
for tag,R,w in [(162,r162,46),(165,r165,49)]:
 term=d.subst(R,0,d.Kc('c'))
 result=[compare(ck,d,term,inp,want) for inp,want in probe_inputs(d)]
 out[tag]=dict(source=R,weight=ck.weight(R),probes=result)
 print(tag,out[tag]);assert ck.weight(R)==w and all(result)
save(D/'positive-controls.json',out)
