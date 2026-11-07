from lpe import *
import sys
# Δ3 family via laziness only (no forced-use filter): (λx. x x) (λz a s. ?Σ) j, budget B
B = int(sys.argv[1])
root = A(L(A(V(0), V(0))), L(L(L(('h', 0)))), Kc('j'))
st, ps, cs = search(root, {0: 3}, B, node_cap=100000, time_cap=100)
print(B, st, 'passes', len(ps), 'caps', len(cs))
