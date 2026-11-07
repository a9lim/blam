"""All terms E over [s,c] (optionally one j) of cost <= C with E[U_n] y =beta y (n=1..3),
y fresh rigid: the hygienic unary identities (candidate semantic sites)."""
import sys
sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
C=int(sys.argv[1]); jm=sys.argv[2] if len(sys.argv)>2 else None
jm=None if jm=='none' else jm
Us=[U(n) for n in (1,2,3)]
y=Kc('y')
hits=[];caps=0;n=0
for c,t in enum_terms(C,2,jm):
    n+=1
    ok=True
    for k in range(3):
        v=safe_nf(A(inst(t,Us[k]),y))
        if v is None: caps+=1; ok=False; break
        if v!=y: ok=False; break
    if ok:
        # zero value
        z=safe_nf(A(A(inst(t,Z()),Kc('W')),Kc('W2')))
        hits.append((c,show(t), show(z) if z else '?'))
print('C',C,'terms',n,'unary-identities',len(hits),'caps',caps)
for h in hits: print(' ',h)
