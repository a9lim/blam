from rt import *
s, nx, c = V('s'), V('next'), V('cont')
b, r, t, u = V('b'), V('r'), V('t'), V('u')
Z = L('u', 'r', A(r, nx))
# k=1 designs
report('k1 unhoisted  s (\\b r. b (r next) (cont r (r r r)))', A(s, L('b','r', A(b, A(r,nx), A(c, r, A(r,r,r))))))
report('k1 split arms s (\\b. b (\\r. r next) (\\r. cont r (r r r)))', A(s, L('b', A(b, L('r', A(r,nx)), L('r', A(c, r, A(r,r,r)))))))
report('k1 shared drop s (\\b r. b (\\u. r next) (cont r) (r r r))', A(s, L('b','r', A(b, L('u', A(r,nx)), A(c,r), A(r,r,r)))))
# tau-headed designs
report('tau-head 60', A(s, L('beta','tau', A(V('tau'), A(V('beta'), nx, L('b','t', A(c, V('tau'), A(V('tau'),V('tau'),V('tau')))))))))
report('tau-head 58', A(s, L('beta','tau', A(V('tau'), A(V('beta'), nx, L('b','t', A(c, V('tau'), A(V('tau'),V('tau'),t))))))))
# k=3 design
report('k3 56  s (\\b. b b (\\r t u. cont r t)) (s s s) next', A(s, L('b', A(b, b, L('r','t','u', A(c, r, t)))), A(s,s,s), nx))
# compressed let design
report('let-skip 60', A(L('t', A(s, L('b', A(b, L('u', A(t, nx)), L('u', A(c, u, t)))))), A(s,s,s)))
report('let-skip normal 67', A(s, L('b', A(b, L('u', A(A(s,s,s), nx)), L('u', A(c, u, A(s,s,s)))))))
# T = next / T = cont handlers from protocol-obstructions
Hj = L('b','r', A(b, r, L('t', A(c, r, A(r, r, t)))))
report('T=next  s Hj next (Hj 40)', A(s, Hj, nx)); print('  |Hj| =', size(Hj))
Hc = L('b','r','t', A(b, A(r, nx), A(t, r, A(r, r, t))))
report('T=cont  s Hc cont (Hc 44)', A(s, Hc, c)); print('  |Hc| =', size(Hc))
Hj2 = L('b', A(b, L('r', r), L('r','t', A(c, r, A(r, r, t)))))
report('T=next  s Hj2 next', A(s, Hj2, nx)); print('  |Hj2| =', size(Hj2))
# zero-only and variable-only minima guesses
print('zero-only s F next :', size(A(s, F, nx)), 'zero law:', eq(subst_s(A(s,F,nx), zero()), A(V('R'), nx)))
print('var-only cont (s F) (s s s):', size(A(c, A(s,F), A(s,s,s))))
# s F is the uniform tail
print('s F on zero -> R:', eq(subst_s(A(s,F), zero()), V('R')), '; on P3 -> P2:', eq(subst_s(A(s,F), P(3)), P(2)))
# the Phi-walk
W = L('b','r','w', A(b, r, A(r, V('w'), V('w'))))
print('|W| =', size(W), ' s W W on P4 -> N:', eq(subst_s(A(s, W, W), P(4)), V('N')))
# delta formula spot checks
import random
def rand_term(depth, nfree):
    k = random.random()
    if depth == 0 or k < 0.3: return ('V', random.randrange(nfree + 3))
    if k < 0.6: return ('L', rand_term(depth-1, nfree+1))
    return ('A', rand_term(depth-1, nfree), rand_term(depth-1, nfree))
random.seed(1)
for _ in range(3000):
    check_delta(rand_term(5, 1), rand_term(4, 0))
print('delta formula: 3000 random checks pass')
