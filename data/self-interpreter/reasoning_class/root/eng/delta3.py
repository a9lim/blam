# pinned check: R = (λx. x x) (λz a s. Σ) j, Σ over [s,a,z,c] using all four, |Σ| <= 27 (w = 18+|Σ| <= 45)
import sys, time, pickle
from gensig import gen
from dbe import *
def conv(t, d=0, outer=3):
    tag = t[0]
    if tag == 'v': return Kc('c') if t[1] == d + outer else t
    if tag == 'l': return ('l', conv(t[1], d + 1, outer))
    return ('a', conv(t[1], d, outer), conv(t[2], d, outer))
DELTA = L(A(V(0), V(0)))
def build(sig): return A(DELTA, L(L(L(conv(sig)))), Kc('j'))
if __name__ == '__main__':
    NMAX = int(sys.argv[1]); t0 = time.time(); stats = {}; caps = []; hits = []
    for n in range(2, NMAX + 1):
        for sig, m in gen(n, 0, 15):
            r = check(build(sig), nmax=3, fuel=3000, cap=20000)
            stats[r[0]] = stats.get(r[0], 0) + 1
            if r[0] == 'pass': hits.append(sig)
            elif r[0] == 'cap': caps.append((n, sig, r[1]))
    print(stats, f'{time.time()-t0:.1f}s'); print('hits', hits)
    pickle.dump(caps, open(f'delta3_caps_{NMAX}.pkl', 'wb'))
    print('caps', len(caps))
    for c in caps[:10]: print(c)
