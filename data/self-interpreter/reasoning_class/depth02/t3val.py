# validation: run the 165's own row (D=4,f=1,L=4,V=8,X=2, cost 38) and refute46's d=3 row
import time, gen, rowgen
from dbn import show
gen.MODE[0] = 'star'
for (D, L, V, X, f) in [(4, 4, 8, 2, 1), (3, 3, 9, 4, 1)]:
    t0 = time.time(); n = 0; hits = []; caps = 0
    for t in gen.stream_lam_root(X, L, V, f, D):
        n += 1
        R = rowgen.close_c(t); ok, why = rowgen.check(R)
        if ok: hits.append(R)
        elif 'fuel' in why: caps += 1
    print(f'row D={D} L={L} V={V} X={X} f={f}: {n} filtered terms, {len(hits)} hits, {caps} caps, {time.time()-t0:.1f}s')
    for h in hits: print('   HIT', show(h))
