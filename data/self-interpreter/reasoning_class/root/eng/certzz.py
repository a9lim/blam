# certificate: Σ's spine is z z X Y ... (>=3 args, first z) => A A X Y.. -> A A X' Y' ..: no hnf
import sys, pickle
def spine(t):
    args = []
    while t[0] == 'a': args.append(t[2]); t = t[1]
    return t, args[::-1]
left = pickle.load(open(sys.argv[1], 'rb')); bad = []
for n, sig, r in left:
    h, args = spine(sig)
    if not (h == ('v', 2) and len(args) >= 3 and args[0] == ('v', 2)): bad.append(sig)
print('uncertified', len(bad), bad[:5])
# second certificate: Σ = z z M (exactly 2 args, first z): A A j s -> A A M' = λs'. ... : whnf is a λ, never r j
bad2 = []
for sig in bad:
    h, args = spine(sig)
    if not (h == ('v', 2) and len(args) == 2 and args[0] == ('v', 2)): bad2.append(sig)
print('uncertified after whnf-λ rule', len(bad2))
