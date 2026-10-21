#!/usr/bin/env python3
"""Checked identities for the NEXT lane.  Recursion is unfolded one level
(P_one) with the inner intL/x rigid (PR/GR), so every side has a normal form."""
from nt import *
from helpers import *


N = N165
P1 = P_one(N)
k = V('k')
Zk = Z_rigid(N, k); Hk = H_rigid(N, k); Nk = Nhat_rigid(N, k)


# 1. reader on non-stream arguments (one level)
chk('P k K = H_k', A(P1, k, K), Hk)
chk('P k F = F', A(P1, k, F), F)
chk('P k I = Z_k', A(P1, k, I), Zk)
a = V('a')
chk('P k (K a) = a (a (K a))', A(P1, k, A(K, a)), A(a, A(a, A(K, a))))
chk('P k (K (K v)) = v', A(P1, k, A(K, A(K, V('v')))), V('v'))
b, r = V('a'), V('e')
chk('P k (0 b r) = N^[k] b r', A(P1, k, cons(K, cons(b, r))), A(Nk, b, r))
for n in range(1, 5):
    chk(f'P k (1^{n}0++T) = k (1^{n-1}0++T) T', A(P1, k, unary(n, V('T'))), A(k, unary(n - 1, V('T')), V('T')))
# second-tag dispatch through H_k (fails for body = var 1)
chk('H_k K r2 X = X N^[k]  (zero arm erases r2)', A(Hk, K, V('R'), V('XR')), A(V('XR'), Nk))

# 2. the 165's arms with PR for inner recursion; universal laws
Ak = L('exp', A(V('cont'), abs_value(V('exp'))))
Af = L('exp', A(V('intL'), L('exp2', A(V('cont'), lift(V('exp'), V('exp2'))))))
AkC = subst_frame(Ak, {'cont': V('C'), 'intL': P1, 'x': V('GR')})
AfC = subst_frame(Af, {'cont': V('C'), 'intL': P_depth(N, 3), 'x': V('GR')})
vv, TT, CC = V('v'), V('T'), V('C')
chk('(U1) A[K] (K v) T = C (K (K v)) T', A(AkC, A(K, vv), TT), A(CC, A(K, A(K, vv)), TT))
chk('(U2) A[K] (cons K T) T = C F T', A(AkC, cons(K, TT), TT), A(CC, F, TT))
chk('(U3) A[F] (K v) (<I>++T) = C (\\z. v I) T', A(AfC, A(K, vv), stream(quote(I), TT)), A(CC, L('z', A(vv, I)), TT))
chk('(U3b) A[F] (K v) (<K>++T) = C (\\z. v K) T', A(AfC, A(K, vv), stream(quote(K), TT)), A(CC, L('z', A(vv, K)), TT))
# exploratory (not a law: the operand of a closed application is closed): the APP arm on a raw-code operand
print('A[F] (K v) (10++T) ->', lc.show(nf(A(AfC, A(K, vv), unary(1, TT)))))

# 3. value of an open body under the 165's protocol
body_code = quote_db(('A', ('V', 1), ('V', 0)))   # code of (2 1): 01 110 10
val = A(P_depth(N, 3), L('vv', 'rr', V('vv')), stream(body_code, TT))   # pick the value
print('value(2 1) e ->', lc.show(nf(A(val, V('e')))))
body_code2 = quote_db(('L', ('A', ('V', 1), ('V', 0))))  # \.(2 1), FV={1}
val2 = A(P_depth(N, 4), L('vv', 'rr', V('vv')), stream(body_code2, TT))
print('value(\\.(2 1)) e ->', lc.show(nf(A(val2, V('e')))))
# the 165's environment cell laws
cell = L('zx', 'zy', A(V('zx'), V('a'), A(V('zy'), V('e'))))
chk('cell K n = a', A(cell, K, V('N')), V('a'))
chk('cell F r = r e', A(cell, F, V('R')), A(V('R'), V('e')))

print('ALL OK' if all(o for _, o in checks) else 'SOME FAILED')
