"""Unary identities over [q, s, c] with q := F (a handler bit on unary), s := U_n:
all E (j-free, all shapes) of cost <= C with E y =beta y for n = 1..3."""
import sys
sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
C=int(sys.argv[1])
Us=[U(n) for n in (1,2,3)]; y=Kc('y')
def inst3(t, q, s, c=Kc('c')):
    return subst(subst(subst(t,0,q),0,s),0,c)
hits=[]; caps=0; n=0
for cst,t in enum_terms(C,3,None):
    n+=1; ok=True
    for k in range(3):
        v=safe_nf(A(inst3(t,F,Us[k]),y))
        if v is None: caps+=1; ok=False; break
        if v!=y: ok=False; break
    if ok: hits.append((cst,show(t)))
print('C',C,'terms',n,'identities',len(hits),'caps',caps)
for h in hits: print(' ',h)
