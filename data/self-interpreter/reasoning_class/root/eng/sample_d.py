# intuition only: shapes of depth02's short-chain case-(d) terms at small weight
import sys; sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/depth02')
import time, gen3b
from d0count import jparent_fun
from d0swap import spine, classify
def show(t, names=None, k=0):
    tag = t[0]
    if tag == 'v': return f'v{t[1]}'
    if tag == 'k': return t[1]
    if tag == 'l': return '(\\' + show(t[1]) + ')'
    return '(' + show(t[1]) + ' ' + show(t[2]) + ')'
W = int(sys.argv[1]); t0 = time.time(); out = []
for f in range(1, 8):
    for V in range(f + 3, 14):
        for L in range(2, 20):
            for X in range(0, 40):
                w = 2*L + 4*V - 4 + X
                if w > W: break
                for t in gen3b.stream_root(X, L, V, f, 0, 'app'):
                    if classify(t) == 'short-chain': out.append((w, show(t)))
print(len(out), f'{time.time()-t0:.1f}s')
for w, s in sorted(out)[:int(sys.argv[2])]: print(w, s)
