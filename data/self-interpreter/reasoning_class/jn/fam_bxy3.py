r"""Family  R = \s. s (\b. b X Y) T1 T2   (k = 3), every shape.

zero : X[K][Z] r T1[Z] T2[Z]              = r j
unary: Y[F][U_n] U_(n-1) T1[U_n] T2[U_n]  = c U_(n-1) N
cost(R) = 18 + |X|+|Y|+|T1|+|T2|; w <= 45 at d = 1 iff the sum is <= 23.
Two rigid placeholders t1, t2 in the unary templates; constraint solving for
c P Q heads with P, Q in {t-free, t1, t2}; everything else brute-forced over
the (T1, T2) pairs inside the budget.  Complete within the budget.
"""
import sys, time, bisect
from dbn import *

BUD = int(sys.argv[1]) if len(sys.argv) > 1 else 23
t0 = time.time()
t1c, t2c = Kc('t1'), Kc('t2')
Us = [U(n) for n in (1, 2, 3)]
Um = [normalize(U(n - 1)) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))


def inst3(t, b, s):
    return subst(subst(subst(t, 0, b), 0, s), 0, Kc('c'))


def csub(t, env):
    tag = t[0]
    if tag == 'k':
        return env.get(t[1], t)
    if tag == 'v':
        return t
    if tag == 'l':
        return ('l', csub(t[1], env))
    return ('a', csub(t[1], env), csub(t[2], env))


def consts(t, acc=None):
    acc = set() if acc is None else acc
    if t[0] == 'k':
        acc.add(t[1])
    elif t[0] == 'l':
        consts(t[1], acc)
    elif t[0] == 'a':
        consts(t[1], acc); consts(t[2], acc)
    return acc


def spine(t):
    args = []
    while t[0] == 'a':
        args.append(t[2]); t = t[1]
    return t, args[::-1]

# T pool (T1 and T2 share it): meaning -> [(cost, term, zeroNF, has_j)]
Tpool = {}
for mode in ('any', None):
    for c, t in enum_terms(BUD - 4, 2, mode):
        ms = tuple(safe_nf(inst(t, Us[k])) for k in range(3))
        if any(m is None for m in ms):
            continue
        Tpool.setdefault(ms, []).append((c, t, safe_nf(inst(t, Z())), mode == 'any'))
keys = sorted(Tpool, key=lambda ms: min(x[0] for x in Tpool[ms]))
kc = [min(x[0] for x in Tpool[ms]) for ms in keys]
print('T meanings', len(keys), f'{time.time()-t0:.1f}s', flush=True)


def upto(lim):
    return keys[:bisect.bisect_right(kc, lim)]

triples = []
nY = nv = ncx = 0
for cy, y in enum_terms(BUD - 2, 3, None):
    nY += 1
    taus = []
    for k in range(3):
        tau = safe_nf(A(A(A(inst3(y, F, Us[k]), Um[k]), t1c), t2c))
        if tau is None:
            break
        h, _ = spine(tau)
        if tau[0] == 'l' or h[0] == 'v' or (h[0] == 'k' and h[1] not in ('c', 't1', 't2')):
            break
        taus.append(tau)
    if len(taus) < 3:
        continue
    nv += 1
    req = [{}, {}, {}]; dead = False; cx = False
    for k in range(3):
        tau = taus[k]
        h, args = spine(tau)
        if not (consts(tau) & {'t1', 't2'}):
            if tau != tgt[k]:
                dead = True
            continue
        if h == ('k', 'c') and len(args) == 2:
            for part, want in zip(args, (Um[k], Kc('N'))):
                cs = consts(part) & {'t1', 't2'}
                if not cs:
                    if part != want: dead = True
                elif part in (t1c, t2c):
                    nm = part[1]
                    if req[k].get(nm, want) != want: dead = True
                    req[k][nm] = want
                else:
                    cx = True
        elif h in (t1c, t2c) and not args:
            nm = h[1]
            if req[k].get(nm, tgt[k]) != tgt[k]: dead = True
            req[k][nm] = tgt[k]
        else:
            cx = True
    if dead:
        continue
    ncx += cx
    lim = BUD - 2 - cy
    for m1 in upto(lim):
        if any(req[k].get('t1', m1[k]) != m1[k] for k in range(3)):
            continue
        c1 = min(x[0] for x in Tpool[m1])
        for m2 in upto(lim - c1):
            if any(req[k].get('t2', m2[k]) != m2[k] for k in range(3)):
                continue
            good = True
            for k in range(3):
                v = safe_nf(csub(taus[k], {'t1': m1[k], 't2': m2[k]}), 2000)
                if v != tgt[k]:
                    good = False; break
            if good:
                for a in Tpool[m1]:
                    for b in Tpool[m2]:
                        if cy + a[0] + b[0] <= BUD - 2 and not (a[3] and b[3]):
                            triples.append((cy + a[0] + b[0], y, a, b))
print('Y', nY, 'viable', nv, 'complex', ncx, 'unary triples', len(triples), f'{time.time()-t0:.1f}s', flush=True)
for tr in sorted(triples, key=lambda q: q[0])[:10]:
    print('  ', tr[0], 'Y =', show(tr[1], ['b']), '| T1 =', show(tr[2][1]), '| T2 =', show(tr[3][1]))
hits = 0
if triples:
    lo = min(q[0] for q in triples)
    Xp = [(c, x, False) for c, x in enum_terms(BUD - lo, 3, None)]
    Xp += [(c + 4, x, True) for c, x in enum_terms(BUD - lo - 4, 3, 'any')]
    Xp.sort(key=lambda q: q[0])
    for tot, y, a, b in triples:
        jT = a[3] or b[3]
        for cx_, x, jX in Xp:
            if cx_ + tot > BUD:
                break
            if jX == jT or a[2] is None or b[2] is None:
                continue
            v = safe_nf(A(A(A(inst3(x, K, Z()), Kc('r')), a[2]), b[2]), 2000)
            if v == rj:
                hits += 1
                print('HIT', cx_ + tot, show(x, ['b']), '|', show(y, ['b']), '|', show(a[1]), '|', show(b[1]))
print('done: hits', hits, f'{time.time()-t0:.1f}s')
