# re-certify the blam UNKNOWN probes with the Python certificates
import sys, pickle, subprocess, cert2
from dbn import show, no_beta_eq_cert2, Z, U, Kc, normalize
from certify_all import certE, certU, tgtU, TGT
bits_file = sys.argv[1]; pkls = sys.argv[2:]
caps = []
for fn in pkls: caps += pickle.load(open(fn, 'rb'))['caps']
res = subprocess.run(['./blam', 'adjudicate', '--file', bits_file, '--threads', '2', '--no-oracle'],
                     capture_output=True, text=True).stdout.split('\n')
res = [r for r in res if r.strip()]
assert len(res) == len(caps), (len(res), len(caps))
left = []
for (why, R), line in zip(caps, res):
    v = line.split()[1]
    if v == 'DIVERGE': continue
    if v == 'HALT': left.append(('HALT', why, R)); continue
    if why in ('zfuel', 'alarm'):
        if certE(R, 2000) or certU(R, 20000) or no_beta_eq_cert2(('a', R, Z()), TGT): continue
    else:
        n = int(why[-1])
        if no_beta_eq_cert2(('a', R, U(n)), tgtU(n)): continue
    left.append(('UNK', why, R))
print('blam non-DIVERGE re-certified; left', len(left))
for k, w, R in left: print(' ', k, w, show(R))
