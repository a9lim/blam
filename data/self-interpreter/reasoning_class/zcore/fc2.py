r"""FC2: shared dispatcher entered through a handler bit.
R = \s. (\g. s Hd D1..Dq) H,  H in {\y. y A W, \y z. y A W},
Hd in {\x. g x C1..Cp, \x t. g x C1..Cp}; g must occur again in some C_i or
D_i; j exactly once anywhere; all pieces of every shape (jn's enum_terms);
|M| <= BUD.  Pieces are enumerated by exact raw cost; the assembled body's
exact cost is recomputed and the laws tested (n = 1..3)."""
import sys, time, itertools
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
from dbn import *
from onesite import cost, is_reader
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
        pool[key] = [t for cc, t in enum_terms(c, nfree, 'any' if wj else None) if cc == c] if c >= 0 else []
    return pool[key]
def splits(k, left, minc=2):
    if k == 0: yield []; return
    for c in range(minc, left + 1):
        for rest in splits(k - 1, left - c, minc): yield [c] + rest
t0 = time.time(); n = 0; hits = []
for hshape in ('P1', 'P2'):
  for hb in (1, 2):                       # handler binders: x  or  x t
    for p in range(0, 3):
      for q in range(0, 3):
        # frames: A,W: nH free; C_i: hb + 3 free (x[,t], g, s, c); D_i: 3 free (g, s, c)
        nH = 3 if hshape == 'P1' else 4
        nC = hb + 3
        # skeleton cost (exact, from a dummy assembly with all pieces = j placeholders of cost 0)
        def assemble(Aa, Ww, Cs, Ds):
            hy = V(0) if hshape == 'P1' else V(1)
            Hb = A(A(hy, Aa), Ww)
            H = L(Hb) if hshape == 'P1' else L(L(Hb))
            gx = A(V(hb), V(hb - 1))          # g x inside the handler: g index hb, x index hb-1
            for Ci in Cs: gx = A(gx, Ci)
            hd = L(gx) if hb == 1 else L(L(gx))
            sp = A(V(1), hd)                  # s Hd inside \g: s = index 1
            for Di in Ds: sp = A(sp, Di)
            return A(L(sp), H)
        dummy = assemble(Kc('z'), Kc('z'), [Kc('z')] * p, [Kc('z')] * q)
        def cost0(t, d=0):
            tag = t[0]
            if tag == 'v': return 2 + t[1]
            if tag == 'k': return 0 if t[1] == 'z' else 4 * d
            if tag == 'l': return 2 + cost0(t[1], d + 1)
            return 2 + cost0(t[1], d) + cost0(t[2], d)
        skel = cost0(dummy)
        room = BUD - skel
        if room < 4: continue
        npieces = 2 + p + q
        for jpos in range(npieces):
          for cs in splits(npieces, room):
            # outer j tax per piece: A,W under H's lambdas; C under \g + handler; D under \g
            outer = [4 * (1 if hshape == 'P1' else 2)] * 2 + [4 * (1 + hb)] * p + [4] * q
            frames = [nH, nH] + [nC] * p + [3] * q
            lists = []
            ok = True
            for i in range(npieces):
                if i == jpos:
                    L_ = terms(frames[i], cs[i] - outer[i], True)
                else:
                    L_ = terms(frames[i], cs[i], False)
                if not L_: ok = False; break
                lists.append(L_)
            if not ok: continue
            for combo in itertools.product(*lists):
                Aa, Ww = combo[0], combo[1]
                Cs, Ds = list(combo[2:2 + p]), list(combo[2 + p:])
                # second call of g: g = index hb (+inner) inside C, index 0 inside D
                if not (any(occ(Ci, hb) for Ci in Cs) or any(occ(Di, 0) for Di in Ds)): continue
                M = assemble(Aa, Ww, Cs, Ds)
                n += 1
                if cost(M) > BUD: continue
                if is_reader(M): hits.append((cost(M), hshape, hb, p, q, show(M)))
print('BUD', BUD, 'candidates', n, 'readers', len(hits), f'{time.time()-t0:.1f}s')
for h in hits[:20]: print(' ', h)
