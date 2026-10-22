# Complete sweep of long tag spines built on a two-arm dispatch b X Y:
# b (\z. X[z/SX]) (\z. Y[z/SY]) Z  for every Z liftable to the dispatch site
# from a subterm of X or Y and every pair of occurrence subsets (not both
# empty); level 2 adds a second shared argument the same way inside the new
# arms. Bases: Q0 (dispatch under \f), #1 (dispatch at p's argument),
# DF (dispatch first). Then one inverse-beta expansion of each level-1 result.
import itertools, sys
sys.path.insert(0, '.')
from chk import size, free_leaves, strip, parse, shift, check
from invbeta import positions, unshift, put, get, binders
from invbeta2 import expansions
A='(\\e a. f (\\x y. x a (y e)))'; P='(\\e. f e (g e))'
bases = {
 'Q0': f"\\b. p (\\f. b (c {A}) (p (\\g. c {P})))",
 '#1': f"\\b. p (b (\\f. c {A}) (\\f. p (\\g. c {P})))",
 'DF': f"\\b. b (p (\\f. c {A})) (p (\\f. p (\\g. c {P})))",
}
def occs_of(T, Z):     # paths in T whose subterm lifts to Z (relative to T's top)
    return [op for op, sub in positions(T) if unshift(sub, binders(op, T)) == Z]
def abst(T, ps):       # T under a new binder, occurrences ps replaced by it
    T1 = shift(1, 0, T)
    for p in ps: T1 = put(T1, p, ('V', binders(p, T)))
    return T1
def subsets(xs):
    for r in range(len(xs) + 1):
        for s in itertools.combinations(xs, r):
            if not any(a != b and a[:len(b)] == b for a in s for b in s): yield s
def extend(X, Y):      # all (X', Y', Z): b X' Y' Z with X' Z -> X, Y' Z -> Y
    cands = set()
    for T in (X, Y):
        for op, sub in positions(T):
            Z = unshift(sub, binders(op, T))
            if Z is not None: cands.add(Z)
    for Z in cands:
        ox, oy = occs_of(X, Z), occs_of(Y, Z)
        for sx in subsets(ox):
            for sy in subsets(oy):
                if sx or sy: yield ('L', abst(X, sx)), ('L', abst(Y, sy)), Z
def find_dispatch(B):  # path of the (b X Y) node: App(App(var b, X), Y)
    for p, t in positions(B):
        if t[0] == 'A' and t[1][0] == 'A' and t[1][1] == ('V', binders(p, B) - 1):
            return p, t[1][2], t[2]
for name, s in bases.items():
    B = strip(parse(s)); dp, X, Y = find_dispatch(B)
    bvar = t = get(B, dp)[1][1]
    best1, best2, bestx = {}, {}, {}
    def rec(d, Q):
        F = free_leaves(Q); q = size(Q); d[F] = min(d.get(F, 999), q)
    lvl1 = []
    for X1, Y1, Z in extend(X, Y):
        Q = put(B, dp, ('A', ('A', ('A', bvar, X1), Y1), Z)); lvl1.append((Q, X1, Y1, Z)); rec(best1, Q)
    for Q, X1, Y1, Z in lvl1:
        # second shared argument: inside arms' bodies (under the arm binder)
        for X2, Y2, Z2 in extend(X1[1], Y1[1]):
            Z2u = unshift(Z2, 1)       # must be liftable above the first arm binder
            if Z2u is None: continue
            Q2 = put(B, dp, ('A', ('A', ('A', ('A', bvar, ('L', X2)), ('L', Y2)), Z), Z2u))
            # arms are \z1.\z2. ...: Z (outer arg) binds z1, Z2u binds z2: fix order
            rec(best2, Q2)
        for Qx in expansions(Q): rec(bestx, Qx)
    print(name, 'base q', size(B), '| spine1', dict(sorted(best1.items())), '| spine2', dict(sorted(best2.items())), '| spine1+exp1', dict(sorted(bestx.items())), '| n1', len(lvl1))
