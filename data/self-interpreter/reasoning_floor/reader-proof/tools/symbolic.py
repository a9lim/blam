"""Symbolic-stream checks: S = \\h. h beta tau with rigid beta, tau."""
from rt import *
s, nx, c, t = V('s'), V('next'), V('cont'), V('t')
beta, tau = V('beta'), V('tau')
S = L('h', A(V('h'), beta, tau))
def sym(body): return subst_s(body, S)
def show(t): return lc.show(nf(t))
Z = L('u', 'r', A(V('r'), nx))
H165 = L('b', A(V('b'), Z, c))
B165 = A(s, H165, A(s, s, s))
print('165 symbolic nf :', show(sym(B165)))
print('s K   ->', show(sym(A(s, K))))
print('s F   ->', show(sym(A(s, F))))
print('s s   ->', show(sym(A(s, s))))
print('s s s ->', show(sym(A(s, s, s))))
print('s (s s) ->', show(sym(A(s, A(s, s)))))
print('s I   ->', show(sym(A(s, I))))
# instantiate beta,tau
def inst0(t):  # zero: beta:=K, tau:=R
    def go(u):
        if u[0]=='V': return K if u[1]=='beta' else (V('R') if u[1]=='tau' else u)
        if u[0]=='L': return ('L', u[1], go(u[2]))
        return ('A', go(u[1]), go(u[2]))
    return go(t)
def insti(t, n):  # var: beta:=F, tau:=P_{n-1}
    def go(u):
        if u[0]=='V': return F if u[1]=='beta' else (P(n-1) if u[1]=='tau' else u)
        if u[0]=='L': return ('L', u[1], go(u[2]))
        return ('A', go(u[1]), go(u[2]))
    return go(t)
hn = A(beta, Z, c, tau, A(beta, beta, tau, tau))
print('hnf zero inst ->', show(inst0(hn)), '; var inst n=3 ->', show(insti(hn, 3)))
# last-cell lemma witnesses
print('P0 P0 ->', show(A(P(0), P(0))), '| P0 F ->', show(A(P(0), F)), '| P0 K ->', show(A(P(0), K)), '| P0 P2 ->', show(A(P(0), P(2))), '| P2 P0 ->', show(A(P(2), P(0))))
print('P3 P1 ->', show(A(P(3), P(1))), '| P1 P3 ->', show(A(P(1), P(3))))
# the tau-headed example's symbolic hnf
Bt = A(s, L('beta2','tau2', A(V('tau2'), A(V('beta2'), nx, L('b','t', A(c, V('tau2'), A(V('tau2'),V('tau2'),t)))))))
print('tau-head symbolic:', show(sym(Bt)))
