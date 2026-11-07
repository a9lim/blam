from lpe import *
import sys
# whole Δ-root family: (λx. x x) ?A j, A over [c] at depth 0, w = 12 + |A|
B = int(sys.argv[1])
root = A(L(A(V(0), V(0))), ('h', 0), Kc('j'))
st, ps, cs = search(root, {0: 0}, B, node_cap=100000, time_cap=100)
print(B, st, 'passes', len(ps), 'caps', len(cs))
