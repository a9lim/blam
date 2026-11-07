r"""FC1: shared dispatcher entered through the stream itself.
R = \s. (\g. s g C1 .. Cm) H,  H = \y. y A W  (P1)  or  H = \y z. y A W  (P2),
g occurring in some C_i (a second call), j exactly once anywhere (taxed 4 per
lambda above it inside the body), every A, W, C_i of every shape (jn's
enum_terms), |M| <= BUD.  Tests both laws (n = 1..3)."""
import sys, time
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
from onesite import cost, has_j, is_reader
BUD = int(sys.argv[1]) if len(sys.argv) > 1 else 39
def occ(t, i):
    tag = t[0]
    if tag == 'v': return 1 if t[1] == i else 0
    if tag == 'k': return 0
    if tag == 'l': return occ(t[1], i + 1)
    return occ(t[1], i) + occ(t[2], i)
pool = {}
def terms(nfree, c, wj):
    key = (nfree, c, wj)
    if key not in pool:
        pool[key] = [t for cc, t in enum_terms(c, nfree, 'any' if wj else None) if cc == c]
    return pool[key]
t0 = time.time(); n = 0; hits = []
s1, g0 = V(1), V(0)
for shape in ('P1', 'P2'):
    nH = 3 if shape == 'P1' else 4            # free vars visible to A, W
    hfix = 2 + 4 + 2 + (2 if shape == 'P2' else 0) + (1 if shape == 'P2' else 0)  # lambdas, apps, y leaf
    base = 4 + hfix + 7                       # let (lambda+app) + H skeleton + s g
    room = BUD - base
    for m in range(1, 5):
        if room < 4 + 4 * m: break
        # choose which piece carries j: 'A', 'W' or C index
        for jpos in ['A', 'W'] + list(range(m)):
            jtaxH = 4 * (1 if shape == 'P1' else 2)   # lambdas of H above A, W
            def piece_costs(k, left):
                # yield lists of k C-costs (each >=2) with 2 per app, sum <= left
                if k == 0: yield []; return
                for c in range(2, left - 2 * k + 1):
                    for rest in piece_costs(k - 1, left - c - 2):
                        yield [c] + rest
            for ca in range(2, room + 1):
                for cw in range(2, room - ca + 1):
                    left = room - ca - cw
                    if left < 4 * m: continue
                    for ccs in piece_costs(m, left):
                        # raw enum costs: j piece raw cost = cost - outer tax
                        def raw(c, outer): return c - outer
                        As = terms(nH, raw(ca, jtaxH) if jpos == 'A' else ca, jpos == 'A') if (jpos != 'A' or ca >= jtaxH) else []
                        if not As: continue
                        Ws = terms(nH, raw(cw, jtaxH) if jpos == 'W' else cw, jpos == 'W') if (jpos != 'W' or cw >= jtaxH) else []
                        if not Ws: continue
                        Cls = []
                        ok = True
                        for i, cc in enumerate(ccs):
                            if jpos == i:
                                if cc < 4: ok = False; break
                                LL = terms(3, cc - 4, True)
                            else:
                                LL = terms(3, cc, False)
                            if not LL: ok = False; break
                            Cls.append(LL)
                        if not ok: continue
                        import itertools
                        for Cs in itertools.product(*Cls):
                            if not any(occ(Ci, 0) for Ci in Cs): continue
                            for Aa in As:
                                for Ww in Ws:
                                    body = A(A(V(0) if shape == 'P1' else V(1), Aa), Ww)
                                    H = L(body) if shape == 'P1' else L(L(body))
                                    sp = A(s1, g0)
                                    for Ci in Cs: sp = A(sp, Ci)
                                    M = A(L(sp), H)
                                    n += 1
                                    if cost(M) > BUD: continue
                                    if is_reader(M): hits.append((cost(M), shape, show(M)))
print('BUD', BUD, 'candidates', n, 'readers', len(hits), f'{time.time()-t0:.1f}s')
for h in hits[:20]: print(' ', h)
