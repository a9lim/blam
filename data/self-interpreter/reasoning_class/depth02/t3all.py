import time, sys, gen, rowgen
from collections import Counter
from dbn import show
gen.MODE[0] = 'star'
grand = Counter(); allhits = []; allcaps = []
t00 = time.time()
for D in range(3, 9):
    for f in range(1, 5):
        cmax = 39 - D - f
        st = Counter(); n = 0; t0 = time.time()
        for V in range(f + 3, 10):
            for L in range(D, 20):
                for X in range(f, 40):
                    if 2*L + 4*V - 4 + X > cmax: break
                    for t in gen.stream_lam_root(X, L, V, f, D):
                        n += 1
                        R = rowgen.close_c(t); ok, why = rowgen.check(R)
                        st[why] += 1
                        if ok: allhits.append((D, f, R))
                        elif 'fuel' in why: allcaps.append((D, f, R))
        if n: print(f'D={D} f={f} cost<={cmax}: n={n} {dict(st)} {time.time()-t0:.1f}s', flush=True)
        grand.update(st)
print('grand', dict(grand), 'hits', len(allhits), 'caps', len(allcaps), f'{time.time()-t00:.1f}s')
for h in allhits: print('HIT', h[0], h[1], show(h[2]))
for c in allcaps: print('CAP', c[0], c[1], show(c[2]))
