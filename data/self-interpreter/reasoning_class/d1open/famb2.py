r"""b-headed dispatcher bodies in family (a) and beyond:
  R = \s. s (\b. B) T,  B = \^p. b A1 A2 A3 .. Am,  p in {0,1,2}, m >= 3.
  zero : A1 A3 .. Am E_z = r j      unary: A2 A3 .. Am E_u = c U_(n-1) N
  (p=0: E = r T;  p=1: x:=r, E = T;  p=2: x:=r, y:=T, E empty).
w = 16 + 3p + 2m + sum|Ai|_w + |T|_w  (j-tax beyond depth 1 inside pieces).
T** = s (\b. \^p. A2 A3..Am) T is a unary core that is not s(\q.c)(s s j) nor
s(\q.c)(s s s), so |T**| >= 23 and |A1|_w <= 10 - p (NOTES sec. 4).
Method: unary templates for A2 with placeholders t3..tm (tails) and tT (T);
brute force over (tails, T) meanings in the budget after cheap filters; then
every A1 <= 10 - p on the zero law.  Complete within the budget.
famb2: q trailing operands T1..Tq (family (e)); usage: famb2.py P M Q [TMAX]
"""
import sys, time, itertools
from dbn import *
P = int(sys.argv[1]); M = int(sys.argv[2]); Q = int(sys.argv[3])
assert P <= 1 + Q
WOFF = int(__import__('os').environ.get('WOFF', '0'))
W = 29 - 3 * P - 2 * M - 2 * (Q - 1) + WOFF
TMAX = int(sys.argv[4]) if len(sys.argv) > 4 else W - 4
NF = 3 + P
FN = ['y%d' % i for i in range(P - 1, 0, -1)] + (['x'] if P else []) + ['b']
t0 = time.time()
tTs = [Kc('tT%d' % i) for i in range(1, Q + 1)]; tT = None; tph = [None, None, None] + [Kc('t%d' % i) for i in range(3, M + 1)]
Us = [U(n) for n in (1, 2, 3)]
Um = [normalize(U(n - 1)) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))

def instf(t, b, s, x, y):
    vals = [tTs[i - 1] for i in range(P - 1, 0, -1)]
    if P >= 1: vals.append(x)
    vals += [b, s, Kc('c')]
    for v in vals: t = subst(t, 0, v)
    return t
def iz(t): return instf(t, K, Z(), Kc('r'), None)
def iu(t, k): return instf(t, F, Us[k], Um[k], None)
def csub(t, env):
    tag = t[0]
    if tag == 'k': return env.get(t[1], t)
    if tag == 'v': return t
    if tag == 'l': return ('l', csub(t[1], env))
    return ('a', csub(t[1], env), csub(t[2], env))
def consts(t, acc=None):
    acc = set() if acc is None else acc
    if t[0] == 'k': acc.add(t[1])
    elif t[0] == 'l': consts(t[1], acc)
    elif t[0] == 'a': consts(t[1], acc); consts(t[2], acc)
    return acc
def spine(t):
    a = []
    while t[0] == 'a': a.append(t[2]); t = t[1]
    return t, a[::-1]
# ---- pools ----
Tpool = {}
for mode in (None, 'any'):
    for c, t in enum_terms(TMAX, 2, mode):
        ms = (safe_nf(inst(t, Z())),) + tuple(safe_nf(inst(t, Us[k])) for k in range(3))
        if None in ms: continue
        key = (ms, mode == 'any')
        if key not in Tpool or Tpool[key][0] > c: Tpool[key] = (c, t)
Tl = sorted(((c, ms, hj, t) for (ms, hj), (c, t) in Tpool.items()), key=lambda q: q[0])
OMAX = int(__import__("os").environ.get("OMAXO", W - 2 * (M - 1)))
Opool = {}
ocap = 0
for mode in (None, 'any'):
    base = 4 * (1 + P) if mode else 0
    for c0, t in enum_terms(OMAX - base, NF, mode):
        c = c0 + base
        ms = (safe_nf(iz(t)),) + tuple(safe_nf(iu(t, k)) for k in range(3))
        if None in ms: ocap += 1; print('OCAP', show(t, FN)); continue
        key = (ms, mode == 'any')
        if key not in Opool or Opool[key][0] > c: Opool[key] = (c, t)
Ol = sorted(((c, ms, hj, t) for (ms, hj), (c, t) in Opool.items()), key=lambda q: q[0])
print(f'p={P} m={M} W={W} OMAX={OMAX}: T meanings {len(Tl)}, operand meanings {len(Ol)}, operand caps {ocap}, {time.time()-t0:.1f}s', flush=True)
# ---- unary stage (q placeholders tT1..tTq) ----
def Eu(k): return ([Um[k]] if P == 0 else []) + tTs[max(P - 1, 0):]
def Ez(): return ([Kc('r')] if P == 0 else []) + tTs[max(P - 1, 0):]
NT = M - 2
names = ['t%d' % i for i in range(3, M + 1)]
tnames = ['tT%d' % i for i in range(1, Q + 1)]
PH = set(names + tnames)
def okval(v): return v[0] == 'l' or spine(v)[0] == ('k', 'c')
usurv = []; ucap = 0; nA2 = nviable = 0
A2pool = [(c, t) for c, t in enum_terms(OMAX, NF, None)]
for c2, a2 in A2pool:
    L = W - c2 - 2
    if L < 2 * NT: continue
    nA2 += 1
    taus = []
    for k in range(3):
        t = iu(a2, k)
        for nm in names: t = A(t, Kc(nm))
        for e in Eu(k): t = A(t, e)
        v = safe_nf(t)
        if v is None: ucap += 1; print('UCAP', show(a2, FN), k); break
        h, args = spine(v)
        if v[0] == 'l': break
        if h[0] == 'k' and h[1] not in PH | {'c'}: break
        if h == ('k', 'c') and len(args) != 2: break
        taus.append(v)
    if len(taus) < 3: continue
    req = {}; heads = set(); dead = False
    for k in range(3):
        v = taus[k]; h, args = spine(v)
        if not (consts(v) & PH):
            if v != tgt[k]: dead = True
            continue
        if h == ('k', 'c'):
            for part, want in zip(args, (Um[k], Kc('N'))):
                if not (consts(part) & PH):
                    if part != want: dead = True
                elif part[0] == 'k':
                    if req.get((part[1], k), want) != want: dead = True
                    req[(part[1], k)] = want
        elif h[0] == 'k' and not args:
            if req.get((h[1], k), tgt[k]) != tgt[k]: dead = True
            req[(h[1], k)] = tgt[k]
        elif h[0] == 'k':
            heads.add((h[1], k))
    if dead: continue
    nviable += 1
    def fits(nm, ms):
        for k in range(3):
            if (nm, k) in req and ms[k + 1] != req[(nm, k)]: return False
            if (nm, k) in heads and not okval(ms[k + 1]): return False
        return True
    cands = {nm: [it for it in Ol if it[0] <= L and fits(nm, it[1])] for nm in names}
    cands.update({nm: [it for it in Tl if it[0] <= L and fits(nm, it[1])] for nm in tnames})
    order = names + tnames
    def rec(i, left, nj, chosen):
        if i == len(order):
            for k in range(3):
                env = {nm: ch[1][k + 1] for nm, ch in zip(order, chosen)}
                x = csub(csub(taus[k], {nm: env[nm] for nm in names}), {nm: env[nm] for nm in tnames})
                if safe_nf(x, 2000) != tgt[k]: return
            usurv.append((c2, a2, list(chosen), left, nj))
            return
        for it in cands[order[i]]:
            if it[0] > left: break
            if it[2] and nj: continue
            rec(i + 1, left - it[0], nj + it[2], chosen + [it])
    rec(0, L, 0, [])
print(f'A2 {nA2} viable {nviable} unary survivors {len(usurv)} ucaps {ucap} {time.time()-t0:.1f}s', flush=True)
for c2, a2, ch, left, nj in usurv[:12]:
    print('  U', c2, show(a2, FN), '|', ' | '.join(show(x[3], FN if j < NT else None) for j, x in enumerate(ch)), '| left', left)
# ---- zero stage ----
A1MAX = 10 - P + WOFF
A1pool = []
for mode in (None, 'any'):
    base = 4 * (1 + P) if mode else 0
    for c0, t in enum_terms(A1MAX - base, NF, mode):
        A1pool.append((c0 + base, t, mode == 'any'))
A1pool.sort(key=lambda q: q[0])
hits = 0; zcap = 0
for c2, a2, ch, left, nj in usurv:
    for c1, a1, hj in A1pool:
        if c1 > left + 2: break
        if nj + hj != 1: continue
        tails, Ts = ch[:NT], ch[NT:]
        # zero instantiation: y_i placeholders inside operands get the Ti zero values
        t = iz(a1)
        for x in tails: t = A(t, x[1][0])
        for e in Ez(): t = A(t, e)
        t = csub(t, {nm: it[1][0] for nm, it in zip(tnames, Ts)})
        v = safe_nf(t, 2000)
        if v is None: zcap += 1; continue
        if v == rj:
            hits += 1
            tot = c1 + c2 + sum(x[0] for x in ch)
            print('HIT w=%d' % (16 + 3 * P + 2 * M + 2 * (Q - 1) + tot), show(a1, FN), '|', show(a2, FN), '|', ' | '.join(show(x[3]) for x in ch))
print(f'done p={P} m={M} q={Q}: hits {hits} zcaps {zcap} {time.time()-t0:.1f}s')
