"""Costs of the environment-decomposition menu designs (all valid readers)."""
from rt import *
s, nx, c = V('s'), V('next'), V('cont')
b, r, t, u, w = V('b'), V('r'), V('t'), V('u'), V('w')
designs = {
 'p1k2 T=sss Z=\\u r.r next V=cont (165)': A(s, L('b', A(b, L('u','r', A(r,nx)), c)), A(s,s,s)),
 'p1k2 T=sss Z=\\u r.u next (166)': A(s, L('b', A(b, L('u','r', A(u,nx)), c)), A(s,s,s)),
 'p1k1 Z=\\u.u next V=\\r.cont r (s s s)': A(s, L('b', A(b, L('u', A(u,nx)), L('r', A(c, r, A(s,s,s)))))),
 'p1k1 Z=\\u.u next V=\\r.cont r (r r r) [nonlinear]': A(s, L('b', A(b, L('u', A(u,nx)), L('r', A(c, r, A(r,r,r)))))),
 'p2k1 Z=r next V=cont r (r r r) [nonlinear]': A(s, L('b','r', A(b, A(r,nx), A(c, r, A(r,r,r))))),
 'p2k1 Z=r next V=cont r (s s s)': A(s, L('b','r', A(b, A(r,nx), A(c, r, A(s,s,s))))),
 'p2k2 T=sss Z=\\t.t next V=cont r': A(s, L('b','r', A(b, L('t', A(t,nx)), A(c, r))), A(s,s,s)),
 'p2k2 T=sss Z=\\t.r next V=cont r': A(s, L('b','r', A(b, L('t', A(r,nx)), A(c, r))), A(s,s,s)),
 'p2k2 T=next Z=r V=\\t.cont r (r r t) [nonlinear]': A(s, L('b','r', A(b, r, L('t', A(c, r, A(r,r,t))))), nx),
 'p1k2 T=next Z=\\u t.u t V=\\r t.cont r (r r t) [nonlinear]': A(s, L('b', A(b, L('u','t', A(u,t)), L('r','t', A(c, r, A(r,r,t))))), nx),
 'p3k2 T=cont Z=r next V=t r (r r t) [nonlinear]': A(s, L('b','r','t', A(b, A(r,nx), A(t, r, A(r,r,t)))), c),
 'p1k2 T=s s Z=\\u t.t u next V=\\r t.cont r (t r)': A(s, L('b', A(b, L('u','t', A(t,u,nx)), L('r','t', A(c, r, A(t,r))))), A(s,s)),
 'p1k2 T=s F Z=\\u t.t next V=\\r t.cont t (s s s)': A(s, L('b', A(b, L('u','t', A(t,nx)), L('r','t', A(c, t, A(s,s,s))))), A(s,F)),
 'data dispatch s K Z=(s s s) next V=cont (s F) (s s s)': A(s, K, A(A(s,s,s), nx), A(c, A(s,F), A(s,s,s))),
 'chain s (s H) H=\\b r b2 r2.b (r next) (cont r (r2 r2 b2))': A(s, A(s, L('b','r','b2','r2', A(b, A(r,nx), A(c, r, A(V('r2'),V('r2'),V('b2'))))))),
 'let-skip (\\t. s (\\b.b (\\u.t next) (\\u.cont u t))) (s s s)': A(L('t', A(s, L('b', A(b, L('u', A(t,nx)), L('u', A(c,u,t)))))), A(s,s,s)),
 'let-skip2 (\\t. s (\\b.b (\\u v.t next) cont) t) (s s s)': A(L('t', A(s, L('b', A(b, L('u','v', A(t,nx)), c)), t)), A(s,s,s)),
 'tau-head s (\\b r. r (b next (\\b2 t. cont r (r r t)))) [nonlinear]': A(s, L('b','r', A(r, A(b, nx, L('b2','t', A(c, r, A(r,r,t))))))),
 'consumer via stream node: s (\\b. b (\\u r. r next) cont) (s (\\b. s s))': A(s, L('b', A(b, L('u','r', A(r,nx)), c)), A(s, L('b', A(s,s)))),
}
for name, body in designs.items():
    report(name, body)
