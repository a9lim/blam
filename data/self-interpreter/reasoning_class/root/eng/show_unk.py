import sys, pickle
from blam_match import verdicts
def show(t):
    tag = t[0]
    if tag == 'v': return f'v{t[1]}'
    if tag == 'k': return t[1]
    if tag == 'l': return '(\\' + show(t[1]) + ')'
    return '(' + show(t[1]) + ' ' + show(t[2]) + ')'
probes = [l.strip() for l in open(sys.argv[1]) if l.strip()]
terms = pickle.load(open(sys.argv[2], 'rb')); v = verdicts(sys.argv[3])
for i, p in enumerate(probes):
    if v.get(p) != 'DIVERGE':
        t = terms[i]
        if isinstance(t, tuple) and len(t) == 4 and isinstance(t[0], int):   # handoff2 cap item
            print(i, 'p=', t[0], [show(m) for m in t[1]], t[2])
        else: print(i, show(t))
