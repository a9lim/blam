import sys, pickle, time
from dbn import show, no_beta_eq_cert2, Z, Kc
from cert2 import cert_E, cert_U
TGT = ('a', Kc('r'), Kc('j'))
t0 = time.time()
for fn in sys.argv[1:]:
    d = pickle.load(open(fn, 'rb')); left = []
    for why, R in d['caps']:
        if why != 'zfuel':
            if cert_U(R): continue
            left.append((why, R)); continue
        if cert_E(R) or cert_U(R) or no_beta_eq_cert2(('a', R, Z()), TGT): continue
        left.append((why, R))
    print(fn, d['stats'], 'hits', len(d['hits']), 'caps', len(d['caps']), 'left', len(left), '%.1fs' % (time.time()-t0))
    for w, R in left: print('  LEFT', w, show(R))
