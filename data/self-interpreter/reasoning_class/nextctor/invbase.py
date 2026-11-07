# Inverse-beta expansions (levels 1-2, complete, non-erasing) above other
# normal bases that obey the laws: #1 continuation dispatch, #2 merged binder,
# #6 c as shared spine argument.  Reports min q per F at each level.
import sys, time
sys.path.insert(0, '.')
from chk import size, free_leaves, strip, parse, check
from invbeta2 import expansions
A='(\\e a. f (\\x y. x a (y e)))'; P='(\\e. f e (g e))'
bases = {
 '#1': f"\\b. p (b (\\f. c {A}) (\\f. p (\\g. c {P})))",
 '#2': "\\b. p (\\f. b c p (\\z. b (\\a. f (\\x y. x a (y z))) (c (\\e. f e (z e)))))",
 '#6': f"\\b. p (\\f. b (\\k. k {A}) (\\k. p (\\g. k {P})) c)",
}
for name, s in bases.items():
    t0 = time.time(); B = strip(parse(s))
    one = list(expansions(B)); b1 = {}; b2 = {}
    for Q1 in one:
        F = free_leaves(Q1); b1[F] = min(b1.get(F, 999), size(Q1))
        for Q2 in expansions(Q1):
            F = free_leaves(Q2); b2[F] = min(b2.get(F, 999), size(Q2))
    print(name, 'base', size(B), free_leaves(B), 'L1', dict(sorted(b1.items())), 'L2', dict(sorted(b2.items())), round(time.time()-t0,1), 's')
