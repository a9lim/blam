import sys; sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/depth02')
import gen3b
from d0swap import spine, classify
exec(open('classify_d3.py').read().split('W = int')[0])
def show(t):
    tag = t[0]
    if tag == 'v': return f'v{t[1]}'
    if tag == 'k': return t[1]
    if tag == 'l': return '(\\' + show(t[1]) + ')'
    return '(' + show(t[1]) + ' ' + show(t[2]) + ')'
want = sys.argv[2]; W = int(sys.argv[1]); out = []
for f in range(1, 8):
    for Vv in range(f + 3, 14):
        for Lc in range(2, 20):
            for X in range(0, 40):
                if 2*Lc + 4*Vv - 4 + X > W: break
                for t in gen3b.stream_root(X, Lc, Vv, f, 0, 'app'):
                    if classify(t) == 'short-chain' and kind(t).startswith(want): out.append(show(t))
for s in out[:12]: print(s)
