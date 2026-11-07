r"""Shared let over a general lambda-dispatcher spine with two operands:
    R = \s. (\x. s (\b. B) T1 T2) A  [j]
x free in at least two of B, T1, T2.  B over [b,x,s,c], Ti over [x,s,c],
A over [s,c], all shapes.  j placement (one source j):
  trail  (\x. s P T1 T2) A j    w = 23 + |A|+|B|+|T1|+|T2|
  t1     j in T1                w = 25 + ...   (taxed 4 per own lambda)
  t2     j in T2                w = 25 + ...
  a      j in A                 w = 21 + ...
  b      j in B                 w = 29 + ...
Exhaustive at w <= W (default 45).  0.5 s alarm per candidate."""
import sys, time, signal
from dbn import *
import dbn
dbn.SIZE_CAP = 3000


class TO(Exception):
    pass


def _alarm(*_):
    raise TO()


signal.signal(signal.SIGALRM, _alarm)
mode = sys.argv[1] if len(sys.argv) > 1 else 'trail'
W = int(sys.argv[2]) if len(sys.argv) > 2 else 45
base = {'trail': 23, 't1': 25, 't2': 25, 'a': 21, 'b': 29}[mode]
BUD = W - base
FUEL = 1500
t0 = time.time()
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
J = Kc('j')
jm = lambda m: 'any' if mode == m else None
Bs = list(enum_terms(BUD, 4, jm('b')))
T1s = list(enum_terms(BUD, 3, jm('t1')))
T2s = list(enum_terms(BUD, 3, jm('t2')))
As = list(enum_terms(BUD, 2, jm('a')))
xB = [free_in(t, 1) for _, t in Bs]
xT1 = [free_in(t, 0) for _, t in T1s]
xT2 = [free_in(t, 0) for _, t in T2s]


def body(a, b, t1, t2):
    inner = A(A(A(V(1), L(b)), t1), t2)
    red = A(L(inner), a)
    return A(red, J) if mode == 'trail' else red


def judge(bd):
    zb = inst(bd, Zs)
    z = safe_nf(zb, FUEL)
    if z is None:
        return 'fail' if no_beta_eq_cert2(zb, rj) else 'unc'
    if z != rj:
        return 'fail'
    for k in range(3):
        ub = inst(bd, Us[k])
        v = safe_nf(ub, FUEL)
        if v is None:
            return 'fail' if no_beta_eq_cert2(ub, cU[k]) else 'unc'
        if v != cU[k]:
            return 'fail'
    return 'hit'


mB = min(c for c, _ in Bs); m1 = min(c for c, _ in T1s); m2 = min(c for c, _ in T2s)


def main():
    hits = []; unc = []; tos = []; n = 0
    for ca, a in As:
        if ca + mB + m1 + m2 > BUD:
            break
        for ib, (cb, b) in enumerate(Bs):
            if ca + cb + m1 + m2 > BUD:
                break
            for i1, (c1, t1) in enumerate(T1s):
                if ca + cb + c1 + m2 > BUD:
                    break
                for i2, (c2, t2) in enumerate(T2s):
                    if ca + cb + c1 + c2 > BUD:
                        break
                    if xB[ib] + xT1[i1] + xT2[i2] < 2:
                        continue
                    n += 1
                    bd = body(a, b, t1, t2)
                    signal.setitimer(signal.ITIMER_REAL, 0.5)
                    try:
                        v = judge(bd)
                    except TO:
                        v = 'to'
                    finally:
                        signal.setitimer(signal.ITIMER_REAL, 0)
                    rec = (base + ca + cb + c1 + c2, show(a), show(b, ['b', 'x']),
                           show(t1, ['x']), show(t2, ['x']))
                    if v == 'hit':
                        hits.append(rec); print('HIT', rec, flush=True)
                    elif v == 'unc':
                        unc.append(rec)
                    elif v == 'to':
                        tos.append(rec)
    print(mode, 'w <=', W, 'candidates', n, 'hits', len(hits), 'unc caps', len(unc),
          'timeouts', len(tos), f'{time.time()-t0:.1f}s')
    for u in unc[:10]: print('  UNC', u)
    for u in tos[:10]: print('  TO', u)


if __name__ == '__main__':
    main()
