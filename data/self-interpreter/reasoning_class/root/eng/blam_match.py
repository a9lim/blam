# match blam --file verdicts to probes BY BIT STRING (rayon may reorder output)
import sys, pickle
from dbe import *
from toblc import close
def verdicts(outfile):
    v = {}
    for l in open(outfile):
        p = l.split()
        if len(p) >= 2 and p[0][:1] in '01': v[p[0]] = p[1]
    return v
if __name__ == '__main__':
    probes = [l.strip() for l in open(sys.argv[1]) if l.strip()]
    v = verdicts(sys.argv[2])
    miss = [p for p in probes if p not in v]
    bad = [i for i, p in enumerate(probes) if v.get(p) != 'DIVERGE']
    print('probes', len(probes), 'missing', len(miss), 'not DIVERGE', len(bad), bad[:20])
