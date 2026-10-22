import sys, pickle, time
import cert2
from dbn import show, no_beta_eq_cert2, Z, Kc, normalize, U, Fuel
TGT = ('a', Kc('r'), Kc('j'))
def certU(R, fuel):
    for n in (1, 2):
        try: u = normalize(('a', R, U(n)), fuel)
        except (Fuel, RecursionError): continue
        if u != normalize(('a', ('a', Kc('c'), U(n-1)), Kc('N'))): return True
    return False
def certE(R, steps):
    for i, red in enumerate(cert2.head_reducts(('a', R, Z()), steps)):
        cs = cert2.consts_of(red)
        if 'r' not in cs or 'j' not in cs: return True
    return False
fn = sys.argv[1]; lim = float(sys.argv[2])
d = pickle.load(open(fn, 'rb')); left = []; t0 = time.time(); kinds = {'E':0,'U':0,'C':0}
for i, (why, R) in enumerate(d['caps']):
    if time.time() - t0 > lim: print('time limit at', i); left.extend(d['caps'][i:]); break
    if why == "alarm": left.append((why, R)); continue
    if certE(R, 300): kinds['E'] += 1; continue
    if certU(R, 2000): kinds['U'] += 1; continue
    if why == 'zfuel' and no_beta_eq_cert2(('a', R, Z()), TGT): kinds['C'] += 1; continue
    left.append((why, R))
print(fn, d['stats'], 'hits', len(d['hits']), 'caps', len(d['caps']), kinds, 'left', len(left), '%.1fs' % (time.time()-t0))
pickle.dump(left, open(fn + '.left', 'wb'))
for w, R in left[:30]: print('  LEFT', w, show(R))
