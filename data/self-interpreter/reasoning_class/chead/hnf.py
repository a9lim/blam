#!/usr/bin/env python3
"""Head-normalize a closed .lam/.blc term; print binder count, head variable, spine arity."""
import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter'); sys.path.insert(0, '/Users/a9lim/Work/blam/tools')
import lc, battery
def whead(t, fuel):
    # head reduction to hnf: strip lambdas, reduce head redex of spine
    lams = 0
    while True:
        while t[0] == 'L':
            lams += 1; t = t[1]
        spine = []
        h = t
        while h[0] == 'A':
            spine.append(h[2]); h = h[1]
        spine.reverse()
        if h[0] == 'V':
            return lams, h[1], len(spine)
        # h is a lambda applied to spine[0]
        fuel -= 1
        if fuel < 0: raise RuntimeError('fuel')
        r = lc.beta(h, spine[0])
        for a in spine[1:]: r = ('A', r, a)
        t = r
for f in sys.argv[1:]:
    src = open(f).read()
    t = lc.decode(battery.enc(battery.compile_lam(src)))[0] if f.endswith('.lam') else lc.decode(src.strip())[0]
    lams, head, k = whead(t, 10000)
    name = {(2,1):'c', (2,0):'s'}.get((lams, head), f'#{head}')
    print(f"{f}: {lams} lambdas, head {name}, {k} args")
