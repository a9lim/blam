# combinatory head-reduction simulator for the four Hk Hk.
# terms: str (combinator) or tuple (f, x). Rules: name -> (arity, fn(args)->term)
import sys
def app(*xs):
    t = xs[0]
    for x in xs[1:]: t = (t, x)
    return t
SYS = {
 1: {'H': (1, lambda y: app(y, 'A', y)), 'A': (2, lambda z, w: app(w, app(z, w)))},
 2: {'H': (1, lambda y: app(y, 'I', ('A', y))), 'A': (2, lambda z, w: app(w, app(z, w))), 'I': (1, lambda x: x)},
 3: {'H': (1, lambda y: app(y, 'B', y)), 'B': (2, lambda z, w: app(z, app(w, z)))},
 4: {'H': (1, lambda y: app(y, app(y, ('K', y)), ('T', y))), 'K': (2, lambda y, z: y), 'T': (2, lambda y, z: app(z, y))},
}
def show(t):
    if isinstance(t, str): return t
    f, x = t
    xs = show(x)
    if isinstance(x, tuple): xs = '(' + xs + ')'
    return show(f) + ' ' + xs
def size(t):
    return 1 if isinstance(t, str) else size(t[0]) + size(t[1])
def run(k, steps, verbose=0, maxn=None):
    rules = SYS[k]
    head = app('H', 'H'); stack = []; fresh = [0]
    lw = []
    for i in range(steps):
        while isinstance(head, tuple): stack.append(head[1]); head = head[0]
        if head not in rules:
            return ('HNF', i, head, [show(s) for s in reversed(stack)])
        ar, fn = rules[head]
        while len(stack) < ar:   # under a leading lambda: supply a fresh variable at the bottom
            stack.insert(0, 'x%d' % fresh[0]); fresh[0] += 1
        if verbose and (maxn is None or len(stack) <= maxn):
            print(i, len(stack), head, ' '.join('[' + show(s) + ']' for s in reversed(stack)))
        args = [stack.pop() for _ in range(ar)]
        head = fn(*args)
        lw.append(len(stack))
    return ('RUN', steps, lw, fresh[0])
if __name__ == '__main__':
    k = int(sys.argv[1]); n = int(sys.argv[2]); v = int(sys.argv[3]) if len(sys.argv) > 3 else 0
    mx = int(sys.argv[4]) if len(sys.argv) > 4 else None
    r = run(k, n, v, mx)
    if r[0] == 'HNF': print(r)
    else:
        m = r[2]
        print('RUN', n, 'fresh vars', r[3], 'final stack', m[-1], 'suffix-min every', [min(m[j:]) for j in range(0, len(m), max(1, len(m)//10))])
