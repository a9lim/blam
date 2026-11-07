# Δ-root hand-off h=2: R = (λx. x x) (λz a. Σ2) j, Σ2 = z M1..Mp over [a,z,c], a and c used, |Σ2| <= 29 (w = 16+|Σ2|)
import sys, time, pickle, signal, itertools
from genk import make
from dbe import *
from fullchain import conv
g3 = make(3)
def tuples(p, rem):
    for sizes in itertools.product(range(2, rem + 1), repeat=p):
        if sum(sizes) > rem: continue
        for combo in itertools.product(*[g3(n, 0, 0) for n in sizes]):
            m = 0
            for _, mm in combo: m |= mm
            if m & 1 and m & 4: yield [t for t, _ in combo], sum(sizes)
def instances(B=29):
    for p in range(1, 9):
        rem = B - 3 - 2*p
        if rem < 2*p: break
        for Ms, s in tuples(p, rem):
            yield p, Ms, 16 + 3 + 2*p + s
DELTA = L(A(V(0), V(0)))
def build(Ms):
    sig = V(1)
    for M in Ms: sig = A(sig, M)
    return A(DELTA, L(L(conv(sig, 2))), Kc('j'))
if __name__ == '__main__':
    class TO(Exception): pass
    def h(*a): raise TO()
    signal.signal(signal.SIGALRM, h)
    lo, hi = int(sys.argv[1]), int(sys.argv[2]); i0, i1 = int(sys.argv[3]), int(sys.argv[4]); idx = -1; zz = 0; t0 = time.time(); stats = {}; caps = []; hits = []; n = 0
    for p, Ms, w in instances():
        if not (lo <= p <= hi): continue
        idx += 1
        if not (i0 <= idx < i1): continue
        n += 1
        if Ms[0] == ('v', 1):        # Σ2 = z z ..: certificate 2.4 (whnf λ if p = 1, else head loop)
            zz += 1; continue
        signal.setitimer(signal.ITIMER_REAL, 0.15)
        try: r = check2(build(Ms), nmax=3, fuel=800, cap=20000)
        except TO: r = ('timeout', None)
        except RecursionError: r = ('recursion', None)
        signal.setitimer(signal.ITIMER_REAL, 0)
        stats[r[0]] = stats.get(r[0], 0) + 1
        if r[0] == 'pass': hits.append((p, Ms, w))
        elif r[0] != 'fail': caps.append((p, Ms, w, r))
    print(lo, hi, i0, i1, n, 'zz-cert', zz, stats, f'{time.time()-t0:.1f}s'); print('hits', hits)
    pickle.dump(caps, open(f'h2_caps_{lo}_{hi}_{i0}.pkl', 'wb')); print('caps', len(caps))
def build_from_cap(item):
    p, Ms, w, r = item
    return build(Ms)
