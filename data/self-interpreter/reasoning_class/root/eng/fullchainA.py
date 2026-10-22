# family A1 analogue of the full-chain check: j is literally one of the let-body operands B_l (depth 1).
#   R = (λx. x B1..Bk) (λz1..zk y1..yt s. Σ) C1..Ct,  B_l = j,  t >= 0
#   w = 8 + 4k + 4t + Σ|B| (j counts 4) + Σ|C| + |Σ|
import sys, itertools
from fullchain import pool_B, pool_C, conv, size_of, idx_y, idx_z, W
from genk import make
from dbe import *
def instancesA(k, t, budget):
    K = t + k + 2; gS = make(K); cbit = 1 << (t + k + 1)
    for l in range(1, k + 1):
        others = [m for m in range(1, k + 1) if m != l]
        for bsz in itertools.product(range(2, budget + 1), repeat=k - 1):
            for csz in itertools.product(range(2, budget + 1), repeat=t):
                used = 4 + sum(bsz) + sum(csz)
                if used > budget - 7: continue
                for Bs in itertools.product(*[pool_B(n) for n in bsz]):
                    if not any(b[1] for b in Bs): continue                     # N4
                    for Cs in itertools.product(*[pool_C(n) for n in csz]):
                        need = 1 | (1 << idx_z(l, t, k))                        # N1, N2
                        for m, b in zip(others, Bs):
                            if b[0] != ('v', 0): need |= 1 << idx_z(m, t, k)   # N5
                        for q, cc in enumerate(Cs, 1):
                            if cc[0] != ('v', 0): need |= 1 << idx_y(q, t)     # N6
                        if not (any(b[2] for b in Bs) or any(cc[1] for cc in Cs)): need |= cbit  # N3
                        n7 = 0
                        for m, b in zip(others, Bs):
                            if b[1]: n7 |= 1 << idx_z(m, t, k)
                        for n in range(2, budget - used + 1):
                            for sig, msk in gS(n, 0, need):
                                if msk & n7: yield l, Bs, Cs, sig, 8 + 4*k + 4*t + used + n
def buildA(k, t, l, Bs, Cs, sig):
    body = V(0); it = iter(Bs)
    for m in range(1, k + 1): body = A(body, Kc('j') if m == l else conv(next(it)[0], 1))
    Aterm = conv(sig, t + k + 1)
    for _ in range(k + t + 1): Aterm = L(Aterm)
    return A(L(body), Aterm, *[conv(cc[0], 0) for cc in Cs])
if __name__ == '__main__':
    import time, pickle, signal
    class TO(Exception): pass
    def h(*a): raise TO()
    signal.signal(signal.SIGALRM, h)
    count_only = '--count' in sys.argv; t0 = time.time(); stats = {}; caps = []; hits = []; tot = 0
    for k in range(1, 8):
        for t in range(0, 7):
            budget = W - 8 - 4*k - 4*t
            if budget < 4 + 2*(k - 1) + 7: continue
            c = 0
            for inst in instancesA(k, t, budget):
                c += 1
                if count_only: continue
                R = buildA(k, t, *inst[:4])
                signal.setitimer(signal.ITIMER_REAL, 0.3)
                try: r = check2(R, nmax=3, fuel=1500, cap=20000)
                except TO: r = ('timeout', None)
                except RecursionError: r = ('recursion', None)
                signal.setitimer(signal.ITIMER_REAL, 0)
                stats[r[0]] = stats.get(r[0], 0) + 1
                if r[0] == 'pass': hits.append((k, t, inst))
                elif r[0] != 'fail': caps.append((k, t, inst, r))
            tot += c; print(k, t, budget, c, flush=True)
    print('total', tot, stats, f'{time.time()-t0:.1f}s'); print('hits', hits)
    if not count_only: pickle.dump(caps, open('fcA_caps.pkl', 'wb')); print('caps', len(caps))
