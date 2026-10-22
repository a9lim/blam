import sys, time
from collections import Counter
import gen, rowgen
from dbn import show
def run_lam(D, f, cmax, Vs, mode='star', count_only=False):
    gen.MODE[0] = mode
    tot = 0
    for V in Vs:
        for L in range(D, 20):
            for X in range(f, 40):
                cost = 2*L + 4*V - 4 + X
                if cost > cmax: break
                t0 = time.time(); n = 0; st = Counter(); hits = []; caps = []
                for t in gen.stream_lam_root(X, L, V, f, D):
                    n += 1
                    if count_only: continue
                    R = rowgen.close_c(t)
                    ok, why = rowgen.check(R)
                    st[why] += 1
                    if ok: hits.append(R)
                    elif 'fuel' in why: caps.append(R)
                tot += n
                if n:
                    print(f'D={D} f={f} L={L} V={V} X={X} cost={cost} n={n} {dict(st)} hits={len(hits)} caps={len(caps)} {time.time()-t0:.1f}s', flush=True)
                for h in hits: print('   HIT', show(h))
                for c in caps[:5]: print('   cap', show(c))
    print('total', tot)
if __name__ == '__main__':
    D, f, cmax = map(int, sys.argv[1:4]); Vs = list(map(int, sys.argv[4].split(',')))
    mode = sys.argv[5]; co = len(sys.argv) > 6 and sys.argv[6] == 'count'
    run_lam(D, f, cmax, Vs, mode, co)
