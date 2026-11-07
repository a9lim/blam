from lpe import *
import sys, collections
B = int(sys.argv[1])
root = A(L(A(V(0), V(0))), L(L(L(('h', 0)))), Kc('j'))
st, ps, cs = search(root, {0: 3}, B, node_cap=100000, time_cap=100)
def show(t):
    tag = t[0]
    if tag == 'v': return f'v{t[1]}'
    if tag == 'k': return t[1]
    if tag == 'h': return '?'
    if tag == 'l': return '(\\' + show(t[1]) + ')'
    return '(' + show(t[1]) + ' ' + show(t[2]) + ')'
c = collections.Counter(len(H) for P, H, name in cs); print('holes per cap', sorted(c.items()))
c2 = collections.Counter(name for P, H, name in cs); print('test', c2)
sig = lambda P: P[1][2][1][1][1]
for P, H, name in cs[:12]: print(show(sig(P)), len(H), name)
