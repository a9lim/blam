# phase 1: enumerate app-rooted D=3 hoisted family for given f values; dump caps (pickle)
import sys, time, pickle, gen2, rowgen
from collections import Counter
D = 3; fs = list(map(int, sys.argv[1].split(","))); out = sys.argv[2]; Vs = list(map(int, sys.argv[3].split(","))) if len(sys.argv) > 3 else None
t0 = time.time(); st = Counter(); caps = []; hits = []
for f in fs:
    for V in (Vs or range(f + 3, 12)):
        for L in range(D, 20):
            for X in range(0, 40):
                cost = 2*L + 4*V - 4 + X
                if cost > 39 - D: break
                for t in gen2.stream_app_root(X, L, V, f, D):
                    if cost + D + gen2.F_S0(t) > 39: continue
                    R = rowgen.close_c(t); ok, why = rowgen.check(R, fuel=1500)
                    st[why] += 1
                    if ok: hits.append(R)
                    elif 'fuel' in why: caps.append((why, R))
pickle.dump({'caps': caps, 'hits': hits, 'stats': dict(st)}, open(out, 'wb'))
print(f'f={fs}: {dict(st)} hits={len(hits)} caps={len(caps)} {time.time()-t0:.1f}s')
