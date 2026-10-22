import sys, pickle
from lpe import *
from lpe_caps import completions
from toblc import close
B = int(sys.argv[1])
root = A(L(A(V(0), V(0))), L(L(L(('h', 0)))), Kc('j'))
st, ps, cs = search(root, {0: 3}, B, node_cap=100000, time_cap=100)
print(st)
qs = [Q for P, H, name in cs for Q in completions(P, H, B)]
print('completions', len(qs))
with open(f'lpe_d3_{B}.bits', 'w') as out:
    for Q in qs: out.write(close(A(Q, Z(Kc('r'))), ['c', 'j', 'r']) + '\n')
pickle.dump(qs, open(f'lpe_d3_{B}.pkl', 'wb'))
