import sys
from lpe2 import *
B = int(sys.argv[1])
root = A(L(A(V(0), V(0))), ('h', 0), Kc('j'))
st, ps, cs = search(root, {0: 0}, B, node_cap=100000, time_cap=100)
print(B, st, 'passes', len(ps), 'caps', len(cs))
