# certify lazy-enumerator caps: expand remaining holes into all completions within budget,
# re-check each concrete term (fuel 3000, lazy comparison); remaining caps -> blam zero-instance probes
import itertools, pickle, signal
from lpe import *
from genk import make
from dbe import check3
from toblc import close
_g = {}
def fills(d, n):
    if d + 1 not in _g: _g[d + 1] = make(d + 1)
    return [conv_c(t, d) for t, m in _g[d + 1](n, 0, 0)]
def conv_c(t, cidx, dd=0):
    tag = t[0]
    if tag == 'v': return Kc('c') if t[1] == dd + cidx else t
    if tag == 'l': return ('l', conv_c(t[1], cidx, dd + 1))
    return ('a', conv_c(t[1], cidx, dd), conv_c(t[2], cidx, dd))
def completions(P, H, budget):
    hs = sorted(H); slack = budget - cost(P)
    def rec(P, i, slack):
        if i == len(hs): yield P; return
        h = hs[i]
        for extra in range(0, slack + 1):
            for f in fills(H[h], 2 + extra):
                yield from rec(replace(P, h, f), i + 1, slack - extra)
    yield from rec(P, 0, slack)
class TO(Exception): pass
def _h(*a): raise TO()
def certify(caps, budget, probefile):
    signal.signal(signal.SIGALRM, _h)
    n = 0; stats = {}; probes = []
    for P, H, name in caps:
        for Q in completions(P, H, budget):
            n += 1
            signal.setitimer(signal.ITIMER_REAL, 0.3)
            try: r = check3(Q, nmax=3, fuel=3000)
            except TO: r = ('timeout', None)
            signal.setitimer(signal.ITIMER_REAL, 0)
            stats[r[0]] = stats.get(r[0], 0) + 1
            if r[0] == 'pass': print('PASS!!', Q)
            elif r[0] != 'fail': probes.append(Q)
    with open(probefile, 'w') as out:
        for Q in probes: out.write(close(A(Q, Z(Kc('r'))), ['c', 'j', 'r']) + '\n')
    pickle.dump(probes, open(probefile + '.pkl', 'wb'))
    return n, stats, len(probes)
if __name__ == '__main__':
    import sys
    B = int(sys.argv[1])
    root = A(L(A(V(0), V(0))), L(L(L(('h', 0)))), Kc('j'))
    st, ps, cs = search(root, {0: 3}, B, node_cap=100000, time_cap=100)
    print(st)
    print('completions', certify(cs, B, f'lpe_d3_{B}.bits'))
