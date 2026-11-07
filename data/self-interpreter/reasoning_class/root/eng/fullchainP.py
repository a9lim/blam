# full-chain family B with a λ-headed let body consuming the first p root args (p >= 1, p < i):
#   R = (λx y1..yp. x B1..Bk) (λz1..zk y'_{p+1}..y'_t s. Σ) C1..Ct,  C_i = j (i > p)
#   B_l over [y_p..y_1, x, c] (y_p idx 0 .. y_1 idx p-1, x idx p, c idx p+1)
#   w = 8 + 4k + 4t + p + Σ|B| + Σ|C≠j| + |Σ|
import sys, itertools, time, pickle, signal
from genk import make
from fullchain import pool_C, W, size_of
from dbe import *
def conv_c(t, cidx, d=0):
    tag = t[0]
    if tag == 'v': return Kc('c') if t[1] == d + cidx else t
    if tag == 'l': return ('l', conv_c(t[1], cidx, d + 1))
    return ('a', conv_c(t[1], cidx, d), conv_c(t[2], cidx, d))
def instancesP(k, t, p, budget):
    tq = t - p                                   # args bound by A after B's
    K = tq + k + 2; gS = make(K); cbit = 1 << (tq + k + 1)
    gB = make(p + 2); xbit = 1 << p; cB = 1 << (p + 1)
    poolB = lambda n: gB(n, 0, 0)
    for i in range(p + 1, t + 1):
        for bsz in itertools.product(range(2, budget + 1), repeat=k):
            for csz in itertools.product(range(2, budget + 1), repeat=t - 1):
                used = sum(bsz) + sum(csz)
                if used > budget - 7: continue
                for Bs in itertools.product(*[poolB(n) for n in bsz]):
                    if not any(m & xbit for _, m in Bs): continue                     # N4
                    yB = 0
                    for _, m in Bs: yB |= m
                    for Cs in itertools.product(*[pool_C(n) for n in csz]):
                        Cfull = list(Cs[:i - 1]) + [None] + list(Cs[i - 1:])
                        okC = True
                        for r in range(1, p + 1):                                    # C_r for r <= p
                            if not (yB >> (p - r) & 1) and Cfull[r - 1][0] != ('v', 0): okC = False
                        if not okC: continue
                        need = 1 | (1 << (tq - (i - p) + 1))                           # s, a
                        for l, (b, m) in enumerate(Bs, 1):
                            if b != ('v', 0): need |= 1 << (tq + k - l + 1)           # N5 (2-bit leaf = y_p)
                        for q in range(p + 1, t + 1):
                            if q != i and Cfull[q - 1][0] != ('v', 0): need |= 1 << (tq - (q - p) + 1)   # N6
                        if not (any(m & cB for _, m in Bs) or any(cc[1] for cc in Cs)): need |= cbit     # N3
                        n7 = 0
                        for l, (b, m) in enumerate(Bs, 1):
                            if m & xbit: n7 |= 1 << (tq + k - l + 1)
                        for n in range(2, budget - used + 1):
                            for sig, msk in gS(n, 0, need):
                                if msk & n7: yield i, Bs, Cfull, sig, 8 + 4*k + 4*t + p + used + n
def buildP(k, t, p, i, Bs, Cfull, sig):
    body = V(p)
    for b, m in Bs: body = A(body, conv_c(b, p + 1))
    for _ in range(p + 1): body = L(body)
    Aterm = conv_c(sig, t - p + k + 1)
    for _ in range(k + t - p + 1): Aterm = L(Aterm)
    args = [Kc('j') if q == i else conv_c(Cfull[q - 1][0], 0) for q in range(1, t + 1)]
    return A(body, Aterm, *args)
if __name__ == '__main__':
    class TO(Exception): pass
    def h(*a): raise TO()
    signal.signal(signal.SIGALRM, h)
    count_only = '--count' in sys.argv; t0 = time.time(); stats = {}; caps = []; hits = []; tot = 0
    for p in range(1, 6):
        for k in range(1, 7):
            for t in range(p + 1, 8):
                budget = W - 8 - 4*k - 4*t - p
                if budget < 2*k + 7: continue
                c = 0
                for inst in instancesP(k, t, p, budget):
                    c += 1
                    if count_only: continue
                    R = buildP(k, t, p, *inst[:4])
                    signal.setitimer(signal.ITIMER_REAL, 0.3)
                    try: r = check2(R, nmax=3, fuel=1500, cap=20000)
                    except TO: r = ('timeout', None)
                    except RecursionError: r = ('recursion', None)
                    signal.setitimer(signal.ITIMER_REAL, 0)
                    stats[r[0]] = stats.get(r[0], 0) + 1
                    if r[0] == 'pass': hits.append((k, t, p, inst))
                    elif r[0] != 'fail': caps.append((k, t, p, inst, r))
                tot += c
                if c: print('p', p, 'k', k, 't', t, 'budget', budget, c, flush=True)
    print('total', tot, stats, f'{time.time()-t0:.1f}s'); print('hits', hits)
    if not count_only: pickle.dump(caps, open('fcP_caps.pkl', 'wb')); print('caps', len(caps))
