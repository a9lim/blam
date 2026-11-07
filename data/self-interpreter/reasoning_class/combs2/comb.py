# Combinator-level head reducer for S_i Z, atoms A, c, j, Z, K, r.
# A u v -> v (u v) c ; Z f -> f K r ; K x y -> x.  Terms: str atoms or tuples (f, a).
import sys
def app(*xs):
    t = xs[0]
    for x in xs[1:]: t = (t, x)
    return t
def spine(t):
    args = []
    while isinstance(t, tuple): args.append(t[1]); t = t[0]
    return t, args[::-1]
def show(t):
    if isinstance(t, str): return t
    h, a = spine(t)
    return ' '.join([show(h)] + [x if isinstance(x, str) else '(' + show(x) + ')' for x in a])
def step(t):
    h, a = spine(t)
    if h == 'A' and len(a) >= 2: return app(a[1], app(a[0], a[1]), 'c', *a[2:])
    if h == 'Z' and len(a) >= 1: return app(a[0], 'K', 'r', *a[1:])
    if h == 'K' and len(a) >= 2: return app(a[0], *a[2:])
    return None
A = 'A'
S = {1: app(A, A, app(A, app(A, A)), 'j', 'Z'),
     2: app(A, app(A, A), app(A, A), 'j', 'Z'),
     3: app(A, A, app(A, A), A, 'j', 'Z')}
if __name__ == '__main__':
    i = int(sys.argv[1]); n = int(sys.argv[2])
    t = S[i]
    for k in range(n):
        print(k, show(t)[:300])
        t2 = step(t)
        if t2 is None: print('HNF'); break
        t = t2
