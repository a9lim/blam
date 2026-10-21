#!/usr/bin/env python3
"""Check the derived cell laws (cell-K), (cell-F) of Lemma 3.7 on the 165's cell,
and the (U2') instance; also the e-headed/odd cells mentioned in Part 4."""
from nt import *
from helpers import *
N = N165
TT, CC, aa, yy, ee = V('T'), V('C'), V('a'), V('e'), V('e')
# the 165's cell W in frame [a, y, e, b, cont, intL, x]; here as a named term over a, y, e
W = L('zx', 'zy', A(V('zx'), V('a'), A(V('zy'), V('y'))))
V1 = lambda e: L('y', 'a', A(e, subst_frame(W, {'e': e})))     # \y \a. e W
# (cell-K): W[cons K T/e] K T = a
chk('(cell-K) W[consKT/e] K T = a', A(subst_frame(W, {'e': cons(K, TT)}), K, TT), aa)
# (cell-F): W[U1(T)/e, W^out/y, a'/a] F (cons K T) = a,  W^out = W[V1[U1(T)]/e]
U1T = unary(1, TT)
Wout = subst_frame(W, {'e': V1(U1T)})
Win = subst_frame(W, {'e': U1T, 'y': Wout, 'a': V('w')})   # a' := w
chk('(cell-F) W_in F (cons K T) = a', A(Win, F, cons(K, TT)), aa)
# (U2'): V1[V1[U1(T)]/e] = K K
chk("(U2') V1[V1[U1]] = K K", V1(V1(U1T)), A(K, K))
# the actual run: E C (<K>++T) = C (K K) T  (K = \\.2)
chk('contract on K', A(E_of(N), CC, stream(quote(K), TT)), A(CC, A(K, K), TT), fuel=400000)
print('ALL OK' if all(o for _, o in checks) else 'SOME FAILED')
