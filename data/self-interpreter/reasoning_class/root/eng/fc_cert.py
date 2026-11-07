# certificates for full-chain caps: Σ's spine is z_l [z_l, M..] with B_l ->β x (so z_l's value ->β A).
# p = #args of z_l, q = k+t+1 (A's chain): p < q => whnf is a λ (never r j); p >= q => head loop A' A' .. forever.
import sys, pickle
from fullchain import *
from dbe import Eng
def spine(t):
    args = []
    while t[0] == 'a': args.append(t[2]); t = t[1]
    return t, args[::-1]
def reduces_to_x(b):
    e = Eng(100, 1000)
    try: return e.nf(conv(b, 1)) == ('v', 0)
    except Exception: return False
bad = []; kinds = {}
for f in sys.argv[1:]:
    for k, t, inst, r in pickle.load(open(f, 'rb')):
        i, Bs, Cs, sig, w = inst
        h, args = spine(sig)
        ok = False
        for l in range(1, k + 1):
            zi = idx_z(l, t, k)
            if h == ('v', zi) and args and args[0] == ('v', zi) and reduces_to_x(Bs[l - 1][0]):
                q = k + t + 1; kind = 'whnf-lambda' if len(args) < q else 'head-loop'
                kinds[kind] = kinds.get(kind, 0) + 1; ok = True
        if not ok: bad.append(inst)
print(kinds, 'uncertified', len(bad))
