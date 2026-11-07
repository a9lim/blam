r"""Family (c): R = \s. s (\b. b X Y) T1 .. Tq, q >= 3.  By the T** argument
(NOTES sec. 3) every reader with w <= 45 has j-free |X| <= 10.  Zero law:
nf(X[K][Z(r)] r T1z .. Tqz) = r j.  Templates with rigid placeholders t_i
for the Ti zero values; a template headed by r must be exactly r t_i
(then Ti z = j) or r A with A built from placeholders; a t_i-headed template
is brute-forced over every Ti zero meaning in the budget.  Prints every X
whose template survives, with the T requirements.  Complete for |X| <= 10.
"""
import sys
from dbn import *
QMAX = 7
ts = [Kc('t%d' % i) for i in range(1, QMAX + 1)]
r_ = Kc('r'); j_ = Kc('j')
def inst3(t, b, s): return subst(subst(subst(t, 0, b), 0, s), 0, Kc('c'))
def spine(t):
    a = []
    while t[0] == 'a': a.append(t[2]); t = t[1]
    return t, a[::-1]
def consts(t, acc=None):
    acc = set() if acc is None else acc
    if t[0] == 'k': acc.add(t[1])
    elif t[0] == 'l': consts(t[1], acc)
    elif t[0] == 'a': consts(t[1], acc); consts(t[2], acc)
    return acc
surv = []; caps = []
for cx, x in enum_terms(10, 3, None):
    x0 = inst3(x, K, Z())
    for q in range(3, QMAX + 1):
        t = x0
        for a in [r_] + ts[:q]: t = A(t, a)
        v = safe_nf(t)
        if v is None:
            caps.append((cx, q, show(x, ['b']))); continue
        h, args = spine(v)
        if v[0] == 'l': continue                  # lambda: never r j
        if h == r_:
            if len(args) != 1: continue           # rigid r keeps every argument
            a1 = args[0]
            if not (consts(a1) & {'t%d' % i for i in range(1, q + 1)}): continue  # no j source
            surv.append((cx, q, show(x, ['b']), show(v)))
        elif h[0] == 'k' and h[1].startswith('t'):
            surv.append((cx, q, show(x, ['b']), show(v)))
        # c-headed or other rigid heads: dead
print('caps', len(caps)); [print('  CAP', c) for c in caps[:20]]
print('surviving templates', len(surv))
for s_ in surv: print(' ', s_)
