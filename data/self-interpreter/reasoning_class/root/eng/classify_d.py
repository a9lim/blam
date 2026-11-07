# intuition only: classify depth02's short-chain case-(d) terms (gen3b frame) at small weight
import sys; sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/depth02')
import time, gen3b
from d0swap import spine, classify
from collections import Counter
def lams(t):
    n = 0
    while t[0] == 'l': n += 1; t = t[1]
    return n, t
def kind(t):
    h, args = spine(t)
    # root spine: h applied to args; j must be among args at top level for 'root-spine j'
    jpos = [i for i, a in enumerate(args) if a == ('k', 'j')]
    if h[0] != 'l': return 'head-not-lam'
    if not jpos: return 'j-nested'
    m = jpos[0]                      # args[0] = A, args[1..] = C's ; j = args[m]
    nlam, body = lams(h)
    if nlam > m: return 'chain'      # should not appear (short-chain only)
    if nlam >= 2: return f'lam-headed-B(p={nlam-1})'
    # nlam == 1: B = body, B not λ
    bh, bargs = spine(body)
    if bh == ('v', 0):
        k = len(bargs); t_ = len(args) - 1
        q, sig = lams(args[0])
        return 'x-headed-fullchain' if q >= k + t_ + 1 else f'x-headed-handoff(h={q},q={k+t_+1})'
    if bh[0] == 'l': return 'nested-redex-head'
    return 'other-head'
W = int(sys.argv[1]); c = Counter(); t0 = time.time()
for f in range(1, 8):
    for V in range(f + 3, 14):
        for L in range(2, 20):
            for X in range(0, 40):
                if 2*L + 4*V - 4 + X > W: break
                for t in gen3b.stream_root(X, L, V, f, 0, 'app'):
                    if classify(t) == 'short-chain': c[kind(t)] += 1
print(f'W<={W}', sorted(c.items(), key=lambda x: -x[1]), f'{time.time()-t0:.1f}s')
