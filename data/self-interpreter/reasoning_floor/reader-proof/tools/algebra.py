"""Finite checks of the data-algebra tables used in the structure theorem.
Rigid: N, R, next, cont. Values: P_i (variable-stream cells), F, I, Q=K N, K.
Checks (for indices up to 6) every entry of the application table and the
'P_n-only' closure claim: application-only trees over copies of P_n and the
rigid leaves normalize to P_n, Q, or a rigid-headed neutral.
"""
from rt import *
import itertools
N, R = V('N'), V('R')
Q = A(K, N)
def eqn(a, b): return nf(a) == nf(b)
M = 6
ok = True
def chk(name, a, b):
    global ok
    if not eqn(a, b):
        ok = False; print('FAIL', name, lc.show(nf(a)), '!=', lc.show(nf(b)))
for i in range(M+1):
    chk(f'P{i} F -> tail', A(P(i), F), N if i == 0 else P(i-1))
    chk(f'P{i} K -> F or K', A(P(i), K), K if i == 0 else F)
    chk(f'P{i} Q -> N tail', A(P(i), Q), A(N, N if i == 0 else P(i-1)))
    chk(f'P{i} I', A(P(i), I), Q if i == 0 else I)
    chk(f'P{i} neutral', A(P(i), A(V('cont'), R)), A(V('cont'), R, K if i == 0 else F, N if i == 0 else P(i-1)))
    for j in range(M+1):
        lhs = A(P(i), P(j))
        if i == j == 0: rhs = Q
        elif i == 0: rhs = I
        elif j == 0: rhs = A(N, P(i-1))
        else: rhs = A(P(j-1), P(i-1))
        chk(f'P{i} P{j}', lhs, rhs)
chk('F V -> I', A(F, R), I); chk('Q V -> N', A(Q, R), N); chk('I V -> V', A(I, R), R)
# last-cell lemma: P0 Y for Y in {P0, F, K, P_j, N}
chk('P0 P0 -> Q', A(P(0), P(0)), Q); chk('P0 F -> N', A(P(0), F), N); chk('P0 K -> K', A(P(0), K), K)
# equal-index chains end in Q; unequal die
for i in range(M+1):
    chk(f'P{i} P{i} -> Q', A(P(i), P(i)), Q)
    chk(f'P{i} P{i} X -> N', A(P(i), P(i), R), N)
# unequal indices: fatal either way (I erases N; N P_m traps N as a head); parity decides which
fatal_ok = True
for i in range(M+1):
    for j in range(M+1):
        if i == j: continue
        d = nf(A(P(i), P(j)))
        isI = d == nf(I)
        h = d
        while h[0] == 'A': h = h[1]
        isNhead = (h == nf(N))
        if not (isI or isNhead):
            fatal_ok = False; print('NOT FATAL', i, j, lc.show(d))
print('unequal-index chains fatal:', fatal_ok)
print('table checks:', 'PASS' if ok else 'FAIL')

# P_n-only closure: enumerate all application trees with up to 5 leaves from {P_n, next, cont}
# (n=3) and classify normal forms.
n = 3
leaves = [('P', P(n)), ('next', V('next')), ('cont', V('cont'))]
def trees(k):
    if k == 1:
        for name, t in leaves: yield name, t
        return
    for i in range(1, k):
        for (ln, l) in trees(i):
            for (rn, r) in trees(k - i):
                yield f'({ln} {rn})', A(l, r)
def classify(t):
    d = nf(t)
    if d == nf(P(n)): return 'P_n'
    if d == nf(Q): return 'Q'
    # rigid-headed neutral?
    h = d
    while h[0] == 'A': h = h[1]
    if h[0] == 'V': return 'neutral:' + str(h[1])
    return 'OTHER:' + lc.show(d)
from collections import Counter
cnt = Counter()
bad = []
for k in range(1, 6):
    for name, t in trees(k):
        try:
            c = classify(t)
        except lc.Fuel:
            c = 'FUEL'
        cnt[c.split(':')[0]] += 1
        if c.startswith('OTHER') or c == 'FUEL': bad.append((name, c))
print('P_n-only closure (<=5 leaves, n=3):', dict(cnt), 'bad:', bad[:5])
# first argument of a cont-headed neutral is never P_{n-1}
viol = []
for k in range(1, 6):
    for name, t in trees(k):
        d = nf(t)
        h = d; args = []
        while h[0] == 'A': args.append(h[2]); h = h[1]
        args.reverse()
        if h == ('V', FRAME.index('cont')) and args and args[0] == nf(P(n-1)):
            viol.append(name)
print('cont-headed with first arg P_{n-1}:', viol)
