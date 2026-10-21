import sys; sys.path.insert(0, '.')
from lab import *
# The 162 reader pieces with rigid k (cont), p (intL): we treat NEXT as a rigid name "NEXT" to see reader behaviour.
R = r"\list. list (\a. a) (\u. list (\q. k) (list list u)) NEXT"
free = ["NEXT", "k"]
Rt = parse(R, free=free)
def ap(*ts):
    return app(*ts)
tests = {
 "R I": ap(Rt, I),
 "R K": ap(Rt, K),
 "R F": ap(Rt, F),
 "R (K X)": ap(Rt, ("L", ("L", ("V", len(free)+2)))),  # K X with X rigid = next free name index
}
# add rigid X as another free name
free2 = ["X"] + free  # X innermost? careful: free list is innermost-first; show() uses same order
Rt2 = parse(R, free=free2)
tests2 = {
 "R I": ap(Rt2, I),
 "R K": ap(Rt2, K),
 "R F": ap(Rt2, F),
 "R (K X)": ap(Rt2, ("L", ("L", ("V", 1+0)))),  # \a\b. X -> X is free index 0 in free2 -> inside 2 binders index 2
}
Xref = ("V", 0)
KX = ("L", ("L", shift(2,0,Xref)))   # \a \b. X  where X = free 0
KKX = ("L", ("L", ("L", shift(3,0,Xref))))
tests2 = {
 "R I": ap(Rt2, I),
 "R K": ap(Rt2, K),
 "R F": ap(Rt2, F),
 "R (K X)": ap(Rt2, ("L", shift(1,0,Xref))),
 "R (K (K X))": ap(Rt2, KX),
 "R [0]X": ap(Rt2, cons(K, Xref)),
 "R [1]X": ap(Rt2, cons(F, Xref)),
 "R [1][0]X": ap(Rt2, cons(F, cons(K, Xref))),
 "R [1][1][0]X": ap(Rt2, cons(F, cons(F, cons(K, Xref)))),
}
for n, t in tests2.items():
    print(n, "=", pretty(nf(t), free=free2))
print("size of 162:", closed_size(open('/Users/a9lim/Work/blam/tmp/overnight/self/int162.lam').read()))
