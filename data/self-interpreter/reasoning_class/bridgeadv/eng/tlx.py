r"""x-headed shared let (the self-application family generalised):
    R = \s. (\x. x T1 .. Tk) A  [j]        k = 1 or 2
with x free in at least one Ti (so the let is used >= 2 times: head + operand).
Ti over [x,s,c], A over [s,c], all shapes.  j placement:
  trail  j trailing      w = 14 + 2k + |A| + Sum|Ti|
  a      j in A          w = 12 + 2k + ...
  t      j in the LAST Ti   w = 16 + 2k + ...
Usage: tlx.py MODE K W [AMIN AMAX]  (A-cost window for chunking).
Prints a pre-count with --count."""
import sys, time, signal
from dbn import *
import dbn
dbn.SIZE_CAP = 3000


class TO(Exception):
    pass


def _alarm(*_):
    raise TO()


signal.signal(signal.SIGALRM, _alarm)
mode = sys.argv[1]; KK = int(sys.argv[2]); W = int(sys.argv[3])
AMIN = int(sys.argv[4]) if len(sys.argv) > 4 else 0
AMAX = int(sys.argv[5]) if len(sys.argv) > 5 else 99
COUNT = '--count' in sys.argv
base = {'trail': 14, 'a': 12, 't': 16}[mode] + 2 * KK
BUD = W - base
FUEL = 1500
t0 = time.time()
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
J = Kc('j')
Tn = list(enum_terms(BUD, 3, None))
Tj = list(enum_terms(BUD, 3, 'any')) if mode == 't' else Tn
As = [(c, t) for c, t in enum_terms(min(BUD, AMAX), 2, 'any' if mode == 'a' else None) if c >= AMIN]
xn = [free_in(t, 0) for _, t in Tn]
xj = [free_in(t, 0) for _, t in Tj]
mn = min(c for c, _ in Tn); mj = min(c for c, _ in Tj)


def occ(t, d=0, acc=None):
    """For T over [x,s,c]: (depths of the free x occurrences, number of free s/c leaves)."""
    if acc is None: acc = [[], 0]
    tag = t[0]
    if tag == 'v':
        if t[1] == d: acc[0].append(d)
        elif t[1] > d: acc[1] += 1
    elif tag == 'l': occ(t[1], d + 1, acc)
    elif tag == 'a': occ(t[1], d, acc); occ(t[2], d, acc)
    return acc


def nfree(t, d=0):
    tag = t[0]
    if tag == 'v': return 1 if t[1] >= d else 0
    if tag == 'k': return 0
    if tag == 'l': return nfree(t[1], d + 1)
    return nfree(t[1], d) + nfree(t[2], d)


SPOS = '--spos' in sys.argv
def saving(ca, a, ts):
    k = 1; M = 0; nT = 0
    for t in ts:
        ds, other = occ(t)
        k += len(ds); M += sum(ds); nT += other
    T = nT + (4 if mode == 't' else 0)
    return (k - 1) * ca + (nfree(a) - 1) * M - 4 - 2 * k - T


def body(a, ts):
    inner = V(0)
    for t in ts:
        inner = A(inner, t)
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


def combos():
    last, lastx = Tj, xj
    for ca, a in As:
        if KK == 1:
            for i, (c1, t1) in enumerate(last):
                if ca + c1 > BUD: break
                if lastx[i]: yield ca + c1, ca, a, (t1,)
        else:
            for i1, (c1, t1) in enumerate(Tn):
                if ca + c1 + mj > BUD: break
                for i2, (c2, t2) in enumerate(last):
                    if ca + c1 + c2 > BUD: break
                    if xn[i1] or lastx[i2]: yield ca + c1 + c2, ca, a, (t1, t2)


def main():
    if COUNT:
        print(mode, KK, 'W', W, 'A in', AMIN, AMAX, 'count', sum(1 for _ in combos()), 'S>0', sum(1 for cs, ca, a, ts in combos() if saving(ca, a, ts) > 0)); return
    hits = []; unc = []; tos = []; n = 0
    skipped = 0
    for cs, ca, a, ts in combos():
        if SPOS and mode != 'a' and saving(ca, a, ts) <= 0:
            skipped += 1; continue
        n += 1
        bd = body(a, ts)
        signal.setitimer(signal.ITIMER_REAL, 0.5)
        try:
            v = judge(bd)
        except TO:
            v = 'to'
        finally:
            signal.setitimer(signal.ITIMER_REAL, 0)
        rec = (base + cs, show(a), [show(t, ['x']) for t in ts])
        if v == 'hit': hits.append(rec); print('HIT', rec, flush=True)
        elif v == 'unc': unc.append(rec)
        elif v == 'to': tos.append(rec)
    print(mode, 'k', KK, 'spos' if SPOS else 'all', 'skipped(S<=0)', skipped, 'w <=', W, 'A cost', AMIN, '..', min(AMAX, BUD), 'candidates', n,
          'hits', len(hits), 'unc caps', len(unc), 'timeouts', len(tos), f'{time.time()-t0:.1f}s')
    for u in unc[:8]: print('  UNC', u)
    for u in tos[:8]: print('  TO', u)


if __name__ == '__main__':
    main()
