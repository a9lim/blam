# write every cap of the given pickles as a BLC probe: zero instance (zfuel/alarm) or unary n (ufuelN)
import sys, pickle, toblc
from dbn import Z, U
out = open(sys.argv[1], 'w'); meta = open(sys.argv[1] + '.meta', 'w'); n = 0
for fn in sys.argv[2:]:
    for why, R in pickle.load(open(fn, 'rb'))['caps']:
        if why in ('zfuel', 'alarm'):
            out.write(toblc.close(('a', R, Z()), ['c', 'j', 'r']) + '\n'); meta.write('Z %s\n' % fn)
        else:
            k = int(why[-1])
            out.write(toblc.close(('a', R, U(k)), ['c', 'j', 'N']) + '\n'); meta.write('U%d %s\n' % (k, fn))
        n += 1
print('probes', n)
