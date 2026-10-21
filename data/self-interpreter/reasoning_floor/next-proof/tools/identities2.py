#!/usr/bin/env python3
"""More checked identities: rigid universal laws for the 165's arms, exotic
intL-headed shapes, and the role of Omega in the laws."""
from nt import *
from helpers import *
N = N165
P3 = P_depth(N, 3)
vv, ww, TT, CC = V('v'), V('w'), V('T'), V('C')
Ak = L('exp', A(V('cont'), abs_value(V('exp'))))
Af = L('exp', A(V('intL'), L('exp2', A(V('cont'), lift(V('exp'), V('exp2'))))))
sub = lambda t: subst_frame(t, {'cont': CC, 'intL': P3, 'x': V('GR')})
AkC, AfC = sub(Ak), sub(Af)
# the APP continuation W1 = \exp2. cont LIFT with exp := K v : rigid law
W1 = L('exp2', A(V('cont'), lift(A(K, vv), V('exp2'))))
chk('(U3r) W1[Kv] (K w) T = C (\\z. v w) T', A(sub(W1), A(K, ww), TT), A(CC, L('z', A(vv, ww)), TT))
# ABS arm on an open body value: body = \.(2 1); expected value \z. \. \.(2 1)  i.e. C (\z\a\b. a b) T
body2 = L('p', A(V('q'), V('p')))   # \.(2 1) with q free (= var 1 of the ABS)
code = quote_db(('L', ('A', ('V', 1), ('V', 0))))
chk('ABS on body \\.(2 1): E C (<\\\\.(2 1)>++T) = C (\\z\\q\\p. q p) T',
    A(E_of(N), CC, stream('00' + code, TT)), A(CC, L('z', 'q', 'p', A(V('q'), V('p'))), TT), fuel=400000)
# divergent program: E C (<(\1 1)(\1 1)>++T) must reduce to C (\z. Omega) T; check a bounded head reduction
lhs = to_db(A(E_of(N), CC, stream(quote(OMEGA), TT)))
lam, h, args = hnf(lhs, 100000)
print('Omega program hnf: lambdas', lam, 'head', lc.show(h), 'nargs', len(args))
a1 = args[0]
w, sp = whnf(a1, 5000)
print('  value arg whnf: is lambda?', w[0] == 'L', 'spine args', len(sp))
if w[0] == 'L':
    w2, sp2 = whnf(w[1], 2000) if False else (None, None)
    # body under the lambda: show the term after a few steps is Omega-shaped
    print('  body under \\z (raw):', lc.show(w[1])[:120])
print('  rest arg =', lc.show(args[1]))

# exotic: N' = \b. intL A I  == \b \r. r N^[A]  (re-dispatch on the next tag with continuation A[b])
k = V('k')
P1 = P_depth(N, 1)
chk('P k I r = r N^[k]', A(P1, k, I, V('R')), A(V('R'), Nhat_rigid(N, k)))
# N^[k] F (cons K T): the 165's APP arm fed the var-1 raw code as an "operator code" -> T-headed
t = A(Nhat_rigid(N, k), F, cons(K, TT))
lam, h, args = show_hnf(A(P_depth(N, 1), k, I, cons(F, cons(K, TT))), 100000)
print('N^[k] F (cons K T) hnf:', lam, h, len(args), 'args')
# P k K r2: the handler H_k applied to the body stream: erases its first argument
lam, h, args = show_hnf(A(P1, k, K, cons(F, cons(K, TT)), V('XR')), 100000)
print('H_k (10++T) X hnf:', lam, h, args)
# P k (K a) = a (a (K a)); P k (K (K W)) = W; P k (cons K r) = r N^[k]
print('ALL OK' if all(o for _, o in checks) else 'SOME FAILED')
