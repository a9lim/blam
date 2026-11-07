import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/data/self-interpreter/reasoning_162/refute46')
import rd
P = r"((\x. x x) (\x. (\intL. \cont. \list. list I (\u. list (\q. cont) (list list u)) (\bit1. intL (\exp. bit1 (cont (\args \arg. exp (\zx \zy. zx arg (zy args)))) (intL (\exp2. cont (\args. exp args (exp2 args))))))) (x x)))"
NEXT = r"(\bit1. %s (\exp. bit1 (c (\args \arg. exp (\zx \zy. zx arg (zy args)))) (%s (\exp2. c (\args. exp args (exp2 args))))))" % (P, P)
def U(n, tail='N'):
    s = r"(\f. f K %s)" % tail
    for _ in range(n): s = r"(\f. f F %s)" % s
    return s
for k in [int(a) for a in sys.argv[1:]]:
    src = "%s (\\x y z. z) %s" % (NEXT, U(k))
    try:
        print(k, rd.show(rd.normalize(src, fuel=20000)))
    except Exception as e:
        print(k, 'no nf within fuel:', type(e).__name__)
