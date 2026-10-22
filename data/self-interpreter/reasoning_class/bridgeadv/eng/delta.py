r"""Self-application family: R = \s. (\x. x x) A j  (reduct \s. A A j),
A over [s,c] j-free, all shapes; w = 18 + |A|.  Mode 'jin': R = \s. (\x. x x) A,
A with one j (taxed 4 per own lambda), w = 16 + |A|.
Every term gets a 0.5 s wall-clock alarm; a term that times out is reported
as UNRESOLVED (never silently counted as a failure)."""
import sys, time, signal
from dbn import *
import dbn
dbn.SIZE_CAP = 2000


class TO(Exception):
    pass


def _alarm(*_):
    raise TO()


signal.signal(signal.SIGALRM, _alarm)
mode = sys.argv[1]; CMAX = int(sys.argv[2])
CMIN = int(sys.argv[3]) if len(sys.argv) > 3 else 0
FUEL = 600
t0 = time.time()
Zs = Z(); Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))


COMB = sys.argv[4] if len(sys.argv) > 4 else 'xx'
def comb(t):
    if COMB == 'xx': return A(t, t)
    if COMB == 'xxx': return A(A(t, t), t)
    if COMB == 'x(xx)': return A(t, A(t, t))
    if COMB == 'xxxx': return A(A(A(t, t), t), t)
    raise SystemExit('comb?')
def body(a, s):
    t = inst(a, s)
    tn = safe_nf(t, FUEL)          # beta-equal replacement: A's own normal form
    if tn is not None:
        t = tn
    return A(comb(t), Kc('j')) if mode == 'jout' else comb(t)


def judge(a):
    """'hit', 'fail', or 'unc' (uncertified cap)."""
    zb = body(a, Zs)
    z = safe_nf(zb, FUEL)
    if z is None:
        return 'fail' if no_beta_eq_cert2(zb, rj) else 'unc'
    if z != rj:
        return 'fail'
    for k in range(3):
        ub = body(a, Us[k])
        v = safe_nf(ub, FUEL)
        if v is None:
            return 'fail' if no_beta_eq_cert2(ub, cU[k]) else 'unc'
        if v != cU[k]:
            return 'fail'
    return 'hit'


hits = []; unc = []; tos = []; tot = 0
for c, a in enum_terms(CMAX, 2, None if mode == 'jout' else 'any'):
    if c < CMIN:
        continue
    tot += 1
    signal.setitimer(signal.ITIMER_REAL, 0.5)
    try:
        v = judge(a)
    except TO:
        v = 'to'
    finally:
        signal.setitimer(signal.ITIMER_REAL, 0)
    if v == 'hit':
        hits.append((c, show(a))); print('HIT', c, show(a), flush=True)
    elif v == 'unc':
        unc.append((c, show(a)))
    elif v == 'to':
        tos.append((c, show(a)))
print(mode, COMB, 'cost', CMIN, '..', CMAX, 'terms', tot, 'hits', len(hits),
      'uncertified caps', len(unc), 'timeouts', len(tos), f'{time.time()-t0:.1f}s')
for u in unc: print("  UNC", u)
for u in tos[:10]: print('  TO', u)
