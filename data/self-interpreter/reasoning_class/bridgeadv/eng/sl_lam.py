r"""Shared let across a general lambda-dispatcher and its operand:
    R = \s. (\x. s (\b. B) T) A  [j]
with x free in BOTH B and T (genuine cross-operand sharing), all shapes.
B over [b,x,s,c], T over [x,s,c], A over [s,c].  j placement (one source j):
  alpha  j trailing: (\x. s (\b.B) T) A j        w = 21 + |A|+|B|+|T|
  beta   j in T (taxed 4 per own lambda of T)    w = 23 + ...
  gamma  j in A (taxed 4 per own lambda of A)    w = 19 + ...
  delta  j in B (taxed 4 per own lambda of B)    w = 27 + ...
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
mode = sys.argv[1] if len(sys.argv) > 1 else "beta"; W = int(sys.argv[2]) if len(sys.argv) > 2 else 45
base = {'alpha': 21, 'beta': 23, 'gamma': 19, 'delta': 27}[mode]
BUD = W - base
FUEL = 1500
t0 = time.time()
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
J = Kc('j')
jm = lambda m: 'any' if mode == m else None
Bs = [(c, t) for c, t in enum_terms(BUD, 4, jm('delta')) if free_in(t, 1)]
Ts = [(c, t) for c, t in enum_terms(BUD, 3, jm('beta')) if free_in(t, 0)]
As = [(c, t) for c, t in enum_terms(BUD, 2, jm('gamma'))]


def body(a, b, t):
    inner = A(A(V(1), L(b)), t)               # under \x: x=0, s=1, c=2
    red = A(L(inner), a)                      # under \s: s=0, c=1
    return A(red, J) if mode == 'alpha' else red


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


mT = min(c for c, _ in Ts)


def main():
  hits = []; unc = []; tos = []; n = 0
  for ca, a in As:
      for cb, b in Bs:
          if ca + cb + mT > BUD:
              break
          for ct, t in Ts:
              if ca + cb + ct > BUD:
                  break
              n += 1
              bd = body(a, b, t)
              signal.setitimer(signal.ITIMER_REAL, 0.5)
              try:
                  v = judge(bd)
              except TO:
                  v = 'to'
              finally:
                  signal.setitimer(signal.ITIMER_REAL, 0)
              if v == 'hit':
                  hits.append((base + ca + cb + ct, show(a), show(b, ['b', 'x']), show(t, ['x'])))
                  print('HIT', hits[-1], flush=True)
              elif v == 'unc':
                  unc.append((ca, cb, ct, show(a), show(b, ['b', 'x']), show(t, ['x'])))
              elif v == 'to':
                  tos.append((ca, cb, ct, show(a), show(b, ['b', 'x']), show(t, ['x'])))
  print(mode, 'w <=', W, 'triples', n, 'hits', len(hits), 'unc caps', len(unc),
        'timeouts', len(tos), f'{time.time()-t0:.1f}s')
  for u in unc[:12]: print('  UNC', u)
  for u in tos[:12]: print('  TO', u)

if __name__ == '__main__':
    main()
