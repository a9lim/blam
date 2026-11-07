# for blam UNKNOWN zero probes: write the three unary instances; report which terms stay undecided
import sys, pickle, subprocess
from dbe import *
from toblc import close
qs = pickle.load(open(sys.argv[1], 'rb'))
lines = [l.split() for l in open(sys.argv[2]) if l[:1] in '01' and len(l.split()) >= 2]
unk = [qs[i] for i, l in enumerate(lines) if l[1] != 'DIVERGE']
with open(sys.argv[3], 'w') as out:
    for Q in unk:
        for n in (1, 2, 3): out.write(close(A(Q, U(n, Kc('N'))), ['c', 'j', 'N']) + '\n')
pickle.dump(unk, open(sys.argv[3] + '.pkl', 'wb')); print('unknown zero probes', len(unk))
