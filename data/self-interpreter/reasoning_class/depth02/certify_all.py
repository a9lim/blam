# certify caps in pickles: E (lost r/j), U (unary nf wrong), cycle (zero), unary hnf/cycle certs;
# leftovers written as BLC for blam (zero instance for zfuel/alarm, unary n=1 for ufuel1).
import sys, pickle, time, cert2, toblc
from dbn import show, no_beta_eq_cert2, Z, U, Kc, normalize, Fuel
TGT = ('a', Kc('r'), Kc('j'))
def tgtU(n): return normalize(('a', ('a', Kc('c'), U(n-1)), Kc('N')))
def certU(R, fuel=2000):
    for n in (1, 2):
        try: u = normalize(('a', R, U(n)), fuel)
        except (Fuel, RecursionError): continue
        if u != tgtU(n): return True
    return False
def certE(R, steps=300):
    for red in cert2.head_reducts(('a', R, Z()), steps):
        cs = cert2.consts_of(red)
        if 'r' not in cs or 'j' not in cs: return True
    return False
if __name__ == "__main__":
    out = open(sys.argv[1], "w"); kinds = {}; tot = 0; left = 0; t0 = time.time()
    for fn in sys.argv[2:]:
        for why, R in pickle.load(open(fn, 'rb'))['caps']:
            tot += 1
            if why in ('zfuel', 'alarm'):
                if why == 'zfuel' and certE(R): k = 'E'
                elif why == 'zfuel' and certU(R): k = 'U'
                elif why == 'zfuel' and no_beta_eq_cert2(('a', R, Z()), TGT): k = 'C'
                else:
                    k = 'blamZ'; out.write(toblc.close(('a', R, Z()), ['c', 'j', 'r']) + '\n')
            else:
                n = int(why[-1])
                if no_beta_eq_cert2(('a', R, U(n)), tgtU(n)): k = 'UC'
                else:
                    k = 'blamU'; out.write(toblc.close(('a', R, U(n)), ['c', 'j', 'N']) + '\n')
            kinds[k] = kinds.get(k, 0) + 1
    print('caps', tot, kinds, '%.1fs' % (time.time() - t0))
    