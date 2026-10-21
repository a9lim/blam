import sys; sys.path.insert(0, '.')
from lab import *
# Reader with intL rigid (P), cont rigid (k), rest rigid (N). NEXT written out with P.
BODY = r"\cont. \list. list (\a. a) (\u. list (\q. cont) (list list u)) (\bit1. P (\exp. bit1 (cont (\args \arg. exp (\zx \zy. zx arg (zy args)))) (P (\exp2. cont (\args. exp args (exp2 args))))))"
free = ["N", "P"]
Eb = parse(BODY, free=free)
Nv = ("V", 0); Pv = ("V", 1)
kfree = ["k"] + free   # k innermost
Eb2 = parse(BODY, free=kfree); Nv2 = ("V", 1); Pv2 = ("V", 2); kv = ("V", 0)
var1 = cons(F, cons(K, Nv2)); var2 = cons(F, cons(F, cons(K, Nv2)))
print("E F var1 =", pretty(nf(app(Eb2, F, var1)), kfree))
print("E F var2 =", pretty(nf(app(Eb2, F, var2)), kfree))
print("E K var1 =", pretty(nf(app(Eb2, K, var1)), kfree))
print("E K var2 =", pretty(nf(app(Eb2, K, var2)), kfree))
print("E k I    =", pretty(nf(app(Eb2, kv, I)), kfree))
NEXTk = parse(r"\bit1. P (\exp. bit1 (k (\args \arg. exp (\zx \zy. zx arg (zy args)))) (P (\exp2. k (\args. exp args (exp2 args)))))", free=kfree)
print("E k K == NEXT_k ?", nf(app(Eb2, kv, K)) == nf(NEXTk))
print("E k F == NEXT_k ?", nf(app(Eb2, kv, F)) == nf(NEXTk))
cands = {
 "162": open('/Users/a9lim/Work/blam/tmp/overnight/self/int162.lam').read(),
 "trailing_fail": r"(\x. x x) (\x. (\intL. \cont. \list. list (\b. b (\a. a) cont) (\bit1. intL (\exp. bit1 (cont (\args \arg. exp (\zx \zy. zx arg (zy args)))) (intL (\exp2. cont (\args. exp args (exp2 args))))))) (x x))",
}
for n, s in cands.items():
    print(n, closed_size(s))
