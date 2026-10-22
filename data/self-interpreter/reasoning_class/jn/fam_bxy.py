r"""Family  R = \s. s (\b. b X Y) T   (k = 2), every shape of X, Y, T.

zero : X[b:=K][s:=Z] r T[Z]           = r j
unary: Y[b:=F][s:=U_n] U_(n-1) T[U_n] = c U_(n-1) N      (n = 1, 2, 3)
cost(R) = 16 + |X| + |Y| + |T|  (X, Y at depth 2, frame [b, s, c]; T at depth
1, frame [s, c]); j once, in X (taxed +4 for \b, plus 4 per own lambda) or in
T (taxed 4 per own lambda).  w <= 45 at d = 1  <=>  |X|+|Y|+|T| <= 25.

Method: unary templates.  For each Y, tau_n = nf(Y' U_(n-1) t) with t rigid.
For each T, its unary meaning (m_1, m_2, m_3).  A pair (Y, T) passes unary
iff nf(tau_n[t := m_n]) = target_n.  Then X is searched for the passing
pairs.  Complete within the budget (all terms enumerated by dbn.enum_terms).
"""
import sys, time
from dbn import *

BUD = int(sys.argv[1]) if len(sys.argv) > 1 else 25
YMAX = int(sys.argv[2]) if len(sys.argv) > 2 else BUD - 2   # validation only
t0 = time.time()
T_ = Kc('t')
Us = [U(n) for n in (1, 2, 3)]
Um = [U(n - 1) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))


def inst3(t, b, s):
    # frame [b, s, c]: index 0 = b, 1 = s, 2 = c
    return subst(subst(subst(t, 0, b), 0, s), 0, Kc('c'))


def tsub(t, m):
    """replace rigid constant t by term m (closed)."""
    tag = t[0]
    if tag == 'k':
        return m if t[1] == 't' else t
    if tag == 'v':
        return t
    if tag == 'l':
        return ('l', tsub(t[1], m))
    return ('a', tsub(t[1], m), tsub(t[2], m))


def has_t(t):
    tag = t[0]
    if tag == 'k':
        return t[1] == 't'
    if tag == 'v':
        return False
    if tag == 'l':
        return has_t(t[1])
    return has_t(t[1]) or has_t(t[2])


def head(t):
    while t[0] == 'a':
        t = t[1]
    return t

# ---- T pool: unary meanings, zero meaning, cost
Tpool = {}   # meaning tuple -> list of (cost, term, zeroNF)
nT = 0
for c, t in enum_terms(BUD - 4, 2, 'any'):        # |X| >= 2, |Y| >= 4
    nT += 1
    ms = tuple(safe_nf(inst(t, Us[k])) for k in range(3))
    mz = safe_nf(inst(t, Z()))
    Tpool.setdefault(ms, []).append((c, t, mz))
for c, t in enum_terms(BUD - 4, 2, None):
    nT += 1
    ms = tuple(safe_nf(inst(t, Us[k])) for k in range(3))
    mz = safe_nf(inst(t, Z()))
    Tpool.setdefault(ms, []).append((c, t, mz))
print('T terms', nT, 'distinct unary meanings', len(Tpool), f'{time.time()-t0:.1f}s', flush=True)
mins = {ms: min(x[0] for x in L_) for ms, L_ in Tpool.items()}
def okhead(m):
    if m is None: return False
    if m[0] == 'l': return True
    return head(m) == ('k', 'c')
funpool = [ms for ms in Tpool if all(okhead(m) for m in ms)]
import bisect
sorted_ms = sorted(Tpool, key=lambda ms: mins[ms]); sorted_c = [mins[ms] for ms in sorted_ms]
sorted_fun = sorted(funpool, key=lambda ms: mins[ms]); sorted_fc = [mins[ms] for ms in sorted_fun]
def upto(lst, cs, lim):
    return lst[:bisect.bisect_right(cs, lim)]
print('function meanings', len(funpool))

# ---- Y pool with templates
pairs = []   # (costY + costT, Y, T, mzT)
nY = 0; viable = 0; ncomplex = 0
Um_nf = [normalize(u) for u in Um]
for cy, y in enum_terms(min(BUD - 2, YMAX), 3, None):
    nY += 1
    taus = []
    ok = True
    for k in range(3):
        tau = safe_nf(A(A(inst3(y, F, Us[k]), Um[k]), T_))
        if tau is None:
            ok = False; break
        h = head(tau)
        if tau[0] == 'l' or (h[0] == 'k' and h[1] not in ('c', 't')) or h[0] == 'v':
            ok = False; break
        taus.append(tau)
    if not ok:
        continue
    viable += 1
    # derive per-n constraints on the T meaning
    req = [None, None, None]; complex_ = False; dead = False
    for k in range(3):
        tau = taus[k]
        if not has_t(tau):
            if tau != tgt[k]: dead = True
            continue
        args = []; h = tau
        while h[0] == 'a': args.append(h[2]); h = h[1]
        args.reverse()
        if h == ('k', 'c') and len(args) == 2:
            P, Q = args
            for part, want in ((P, Um_nf[k]), (Q, Kc('N'))):
                if not has_t(part):
                    if part != want: dead = True
                elif part == T_:
                    if req[k] is not None and req[k] != want: dead = True
                    req[k] = want
                else:
                    complex_ = True
        elif h == T_ and not args:
            if req[k] is not None and req[k] != tgt[k]: dead = True
            req[k] = tgt[k]
        elif h == T_:
            complex_ = True
        else:
            dead = True
    if dead:
        continue
    if complex_:
        ncomplex += 1
        # a t-headed (sub)template needs m_n to be a function wherever t heads
        lamreq = [any(True for _ in ()) for _ in range(3)]
        for k in range(3):
            tau = taus[k]; h = tau
            while h[0] == 'a': h = h[1]
            lamreq[k] = (h == T_) and tau != T_
        cand = upto(sorted_fun, sorted_fc, BUD - 2 - cy) if all(lamreq) else upto(sorted_ms, sorted_c, BUD - 2 - cy)
    else:
        cand = [ms for ms in upto(sorted_ms, sorted_c, BUD - 2 - cy) if all(req[k] is None or ms[k] == req[k] for k in range(3))]
    for ms in cand:
        if any(m is None for m in ms):
            continue
        good = True
        for k in range(3):
            v = safe_nf(tsub(taus[k], ms[k]), 2000) if has_t(taus[k]) else taus[k]
            if v != tgt[k]:
                good = False; break
        if good:
            for (ct, t, mz) in Tpool[ms]:
                if cy + ct <= BUD - 2:
                    pairs.append((cy + ct, cy, y, ct, t, mz))
print('Y terms', nY, 'viable', viable, 'complex', ncomplex, 'unary pairs', len(pairs), f'{time.time()-t0:.1f}s', flush=True)
pairs.sort(key=lambda p: p[0])
for p in pairs[:15]:
    print('  pair', p[0], 'Y =', show(p[2], ['b']), '| T =', show(p[4]))

# ---- X search for each passing pair (zero law)
hits = 0
maxX = BUD - min((p[0] for p in pairs), default=BUD)
Xpool = []
for cx, x in enum_terms(maxX, 3, None):
    Xpool.append((cx, x, False))
for cx, x in enum_terms(maxX - 4, 3, 'any'):
    Xpool.append((cx + 4, x, True))           # +4: j under \b
Xpool.sort(key=lambda q: q[0])
print('X pool', len(Xpool), f'{time.time()-t0:.1f}s', flush=True)
seen = {}
for (tot, cy, y, ct, t, mz) in pairs:
    jT = has_j = ('j' in show(t))
    for (cx, x, jX) in Xpool:
        if cx + tot > BUD:
            break
        if jX == jT:
            continue          # exactly one j overall
        key = (x, mz)
        if key in seen:
            ok = seen[key]
        else:
            v = safe_nf(A(A(inst3(x, K, Z()), Kc('r')), mz), 2000) if mz is not None else None
            ok = (v == rj)
            seen[key] = ok
        if ok:
            hits += 1
            print('HIT', cx + tot, 'X =', show(x, ['b']), '| Y =', show(y, ['b']), '| T =', show(t))
print('done: hits', hits, f'{time.time()-t0:.1f}s')
