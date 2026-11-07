import sys
from comb import *
def chain(t):
    n = 1
    while isinstance(t, tuple) and t[0] == 'A': t = t[1]; n += 1
    return n if t == 'A' else None
def sh(t):
    if isinstance(t, str): return t
    n = chain(t)
    if n is not None: return str(n)
    h, a = spine(t)
    hs = sh(h)
    return ' '.join([hs] + [x if isinstance(x, str) else ('(' + sh(x) + ')' if chain(x) is None else sh(x)) for x in a])
i = int(sys.argv[1]); n = int(sys.argv[2]); w = int(sys.argv[3]) if len(sys.argv) > 3 else 200
t = S[i]
for k in range(n):
    h, a = spine(t)
    print(k, sh(t)[:w])
    t2 = step(t)
    if t2 is None: print('HNF'); break
    t = t2
