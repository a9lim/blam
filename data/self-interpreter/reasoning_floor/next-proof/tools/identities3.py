#!/usr/bin/env python3
"""Exotic shapes at depth 3, and cheap wrong ABS values."""
from nt import *
from helpers import *
N = N165
k, TT, CC, vv = V('k'), V('T'), V('C'), V('v')
P3 = P_depth(N, 3)
def Nhat_d(N, k, d):
    return subst_frame(N, {'cont': k, 'intL': P_depth(N, d), 'x': V('GR')})
# N^[k] F (cons K T): the APP arm on the var-1 code as operator code
lam, h, args = show_hnf(A(Nhat_d(N, k, 3), F, cons(K, TT)), 200000)
print('N^[k] F (cons K T) hnf: lambdas', lam, 'head', h, 'nargs', len(args))
# H_k applied to the body stream 10++T and one more argument X (dispatching the second tag through H_k)
Hk = L('b', A(V('b'), L('u', 'r', A(V('r'), Nhat_d(N, k, 3))), k))
lam, h, args = show_hnf(A(Hk, F, cons(K, TT), V('XR')), 200000)
print('H_k F (cons K T) X hnf:', lam, h, len(args), 'args (head should be k: variable path returns k r X)')
lam, h, args = show_hnf(A(Hk, K, cons(K, TT), V('XR')), 200000)
print('H_k K (cons K T) X hnf:', lam, h, len(args), '(zero arm: X N^[k])')
# cheap wrong ABS value: U1 = \y\a. e (K (K a)) meets (U1),(U2) but fails body \.2
U1bad = L('y', 'a', A(V('e'), A(K, A(K, V('a')))))
print('|U1bad| =', size(U1bad, ['e', 'b', 'cont', 'intL', 'x']), ' (165 value: 34)')
chk('U1bad[Kv] = K (K v)', subst_frame(U1bad, {'e': A(K, vv)}), A(K, A(K, vv)))
chk('U1bad[cons K T] = F', subst_frame(U1bad, {'e': cons(K, TT)}), F)
Nbad = L('bit1', A(V('intL'), L('exp', A(V('bit1'),
            A(V('cont'), subst_frame(U1bad, {'e': V('exp')})),
            A(V('intL'), L('exp2', A(V('cont'), lift(V('exp'), V('exp2')))))))))
print('|Nbad| =', size(Nbad))
print('Nbad on K=\\\\.2:', contract_ok(Nbad, K), ' on I:', contract_ok(Nbad, I), ' on F=\\\\.1:', contract_ok(Nbad, F))
print('ALL OK' if all(o for _, o in checks) else 'SOME FAILED')
