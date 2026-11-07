# let-bound j family (gen4): chunk = (D, dm list); caps dumped for blam
import sys, time, pickle, rowgen, safecheck, gen4
from collections import Counter
D = int(sys.argv[1]); dms = list(map(int, sys.argv[2].split(','))); out = sys.argv[3]
st = Counter(); caps = []; hits = []; t0 = time.time()
for dm in dms:
    for f in range(1, 7):
        for V in range(f + 2 + dm, 13):
            for L in range(D, 20):
                for X in range(0, 40):
                    if 2*L + 4*V + X + D > 43: break
                    for t in gen4.stream_app_root(X, L, V, f, D, dm):
                        if 2*L + 4*V + X + D + gen4.deep_path_S0(t, D) > 43: continue
                        R = rowgen.close_c(t); ok, why = safecheck.check(R)
                        st[why] += 1
                        if ok: hits.append(R); print('HIT', rowgen.show(R), flush=True)
                        elif why == 'alarm' or 'fuel' in why: caps.append((why, R))
pickle.dump({'caps': caps, 'hits': hits, 'stats': dict(st)}, open(out, 'wb'))
print(f'letj D={D} dm={dms}: n={sum(st.values())} {dict(st)} hits={len(hits)} caps={len(caps)} {time.time()-t0:.1f}s', flush=True)
