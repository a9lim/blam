from lpe import *
# validation: (λn s. s ?D (s s s)) j, budget 49 must find the 165 (D = λb. b (λu r. r n) c)
root = A(L(L(A(V(0), ('h', 0), A(V(0), V(0), V(0))))), Kc('j'))
st, ps, cs = search(root, {0: 2}, 49)
print(st); print([p for p in ps][:3]); print('caps', len(cs))
