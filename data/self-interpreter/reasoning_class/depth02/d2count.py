import time, gen3, sys
root = sys.argv[1]
tot = 0
for f in range(1, 7):
    n = 0; t0 = time.time()
    for V in range(f + 3, 12):
        for L in range(2, 20):
            for X in range(f if root == 'lam' else 0, 40):
                w = 2*L + 4*V - 4 + X + 8
                if w > 45: break
                for _ in gen3.stream_root(X, L, V, f, 2, root): n += 1
    if n: print(f'd=2 {root} f={f}: {n} filtered ({time.time()-t0:.1f}s)', flush=True)
    tot += n
print('total', tot)
