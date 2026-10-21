#!/usr/bin/env python3
"""Sanity checks for the impossibility lines of Theorem 2.3 on concrete exotic N's."""
from nt import *
from helpers import *
N = N165
TT, CC = V('T'), V('C')
A1 = L('exp', A(V('cont'), abs_value(V('exp'))))     # some continuation (the 165's ABS arm)
def Nhat_d(Nx, k, d): return subst_frame(Nx, {'cont': k, 'intL': P_depth(N, d), 'x': V('GR')})
r2 = stream(quote(A(I, I)), TT)     # <I I> ++ T

# I0 with k=1: N' = intL A1 ;  N'^ F r2 -> I
Np = A(V('intL'), A1)
print('I0,k=1: N^ F r2 =', lc.show(nf(A(Nhat_d(Np, CC, 1), F, r2))))
# I1 with A2 = b: N' = \b. intL A1 b ; APP case gives r2 back
Np = L('b', A(V('intL'), A1, V('b')))
print('I1,A2=b: N^ F r2 =', lc.show(nf(A(Nhat_d(Np, CC, 1), F, r2)))[:60], '... (= r2 itself?)',
      nf(A(Nhat_d(Np, CC, 1), F, r2)) == nf(r2))
# X0 with k=2: N' = x A1 A2 ; APP: b H'' (b b b) r2 with b=F -> r2
Np = A(V('x'), V('cont'), V('cont'))
print('X0,k=2: N^ F r2 == r2 ?', nf(A(Nhat_d(Np, CC, 1), F, r2)) == nf(r2))
# D1 with k=1: N' = \b. b A ; ABS: K A r2 -> A (no T)
Np = L('b', A(V('b'), A(V('cont'), F)))
out = nf(A(Nhat_d(Np, CC, 1), K, r2))
print('D1,k=1: N^ K r2 =', lc.show(out), ' (contains T?)', 'T' in str(to_db(V('T'))) and ('V', 4) in str(out))
# I1 with A2 = K: ABS body var 1 -> continuation gets the raw code without the rest
Np = L('b', A(V('intL'), A1, K))
lam, h, args = show_hnf(A(Nhat_d(Np, CC, 2), K, unary(1, TT)), 200000)
print('I1,A2=K on ABS var-1 body: hnf head', h, 'nargs', len(args), args)
