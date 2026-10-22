import time, gen2
tot = 0
for D in range(3, 10):
    n = 0; nb = 0; t0 = time.time()
    for f in range(1, 7):
        for V in range(f + 3, 12):
            for L in range(D, 20):
                for X in range(0, 40):
                    cost = 2*L + 4*V - 4 + X
                    if cost > 39 - D: break
                    for t in gen2.stream_app_root(X, L, V, f, D):
                        nb += 1
                        if cost + D + gen2.F_S0(t) <= 39: n += 1
    print(f'D={D}: filtered {nb}, within F_S0 budget {n}, {time.time()-t0:.1f}s', flush=True)
    tot += n
print('total', tot)
