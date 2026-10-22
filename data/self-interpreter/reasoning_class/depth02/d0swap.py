# case (d) at small weight caps: how many survive the chain-swap exclusion
import sys, time, gen3b
from d0count import jparent_fun
def spine(t):
    args = []
    while t[0] == 'a': args.append(t[2]); t = t[1]
    return t, args[::-1]
def occ(t, i, k=0):
    tag = t[0]
    if tag == 'v': return 1 if t[1] == i + k else 0
    if tag == 'l': return occ(t[1], i, k + 1)
    if tag == 'a': return occ(t[1], i, k) + occ(t[2], i, k)
    return 0
def classify(t):
    fp = jparent_fun(t)
    if fp is None or fp[0] != 'a': return None
    h, args = spine(fp)          # fp = h Q1..Qm, j is argument m+1
    m = len(args)
    if h[0] != 'l': return 'head-not-lam'
    chain = 0; b = h
    while b[0] == 'l' and chain < m + 1: chain += 1; b = b[1]
    if chain < m + 1: return 'short-chain'
    # binders: y1..ym then a (innermost of the first m+1); body b
    ka = occ(b, 0); ny = sum(occ(b, i) for i in range(1, m + 1))
    return 'chain-swap-excluded' if m * ka <= ny else 'chain-survives'
W = int(sys.argv[1]); from collections import Counter; c = Counter(); t0 = time.time()
for f in range(1, 8):
    for V in range(f + 3, 14):
        for L in range(2, 20):
            for X in range(0, 40):
                if 2*L + 4*V - 4 + X > W: break
                for t in gen3b.stream_root(X, L, V, f, 0, 'app'):
                    k = classify(t)
                    if k: c[k] += 1
print(f'W<={W}', dict(c), f'{time.time()-t0:.1f}s')
