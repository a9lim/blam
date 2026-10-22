import time, gen
from t3run import run_lam
import io, contextlib
gen.MODE[0] = 'star'
grand = 0
for D in range(3, 9):
    for f in range(1, 5):
        cmax = 39 - D - f
        Vs = list(range(f + 3, 10))
        n = 0; t0 = time.time()
        for V in Vs:
            for L in range(D, 20):
                for X in range(f, 40):
                    if 2*L + 4*V - 4 + X > cmax: break
                    for _ in gen.stream_lam_root(X, L, V, f, D): n += 1
        if n: print(f'D={D} f={f} cost<={cmax}: {n} filtered lambda-rooted terms ({time.time()-t0:.1f}s)', flush=True)
        grand += n
print('grand', grand)
