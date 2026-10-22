# generic chunk runner: family 'd2lam' / 'd2app' (gen3, own frame), chunk = (f, V list)
import sys, time, pickle, rowgen, safecheck, gen3b as gen3
from collections import Counter
fam, f, Vs, out = sys.argv[1], int(sys.argv[2]), list(map(int, sys.argv[3].split(','))), sys.argv[4]
D = 2; root = 'lam' if fam.endswith('lam') else 'app'
st = Counter(); caps = []; hits = []; t0 = time.time()
for V in Vs:
    for L in range(2, 20):
        for X in range(f if root == 'lam' else 0, 40):
            if 2*L + 4*V - 4 + X + 4*D > 45: break
            for t in gen3.stream_root(X, L, V, f, D, root):
                if not gen3.has_exempt(t): continue
                R = rowgen.close_c(t); ok, why = safecheck.check(R)
                st[why] += 1
                if ok: hits.append(R); print('HIT', rowgen.show(R), flush=True)
                elif why == 'alarm' or 'fuel' in why: caps.append((why, R))
pickle.dump({'caps': caps, 'hits': hits, 'stats': dict(st)}, open(out, 'wb'))
print(f'{fam} f={f} V={Vs}: n={sum(st.values())} {dict(st)} hits={len(hits)} caps={len(caps)} {time.time()-t0:.1f}s', flush=True)
