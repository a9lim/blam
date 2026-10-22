# De Bruijn (1-indexed) head reducer for checking the four H_k H_k claims at the lambda level.
import sys
sys.setrecursionlimit(100000)
class T:
    __slots__ = ('k', 'a', 'b', 'fv', 'sz')
    def __init__(s, k, a, b=None):
        s.k, s.a, s.b = k, a, b
        if k == 'v': s.fv, s.sz = a, 1
        elif k == 'l': s.fv, s.sz = max(0, a.fv - 1), a.sz + 1
        else: s.fv, s.sz = max(a.fv, b.fv), a.sz + b.sz + 1
def V(n): return T('v', n)
def L(b): return T('l', b)
def A(*xs):
    t = xs[0]
    for x in xs[1:]: t = T('a', t, x)
    return t
def shift(t, d, c=0):            # add d to free vars > c
    if t.fv <= c: return t
    if t.k == 'v': return V(t.a + d)
    if t.k == 'l': return L(shift(t.a, d, c + 1))
    return T('a', shift(t.a, d, c), shift(t.b, d, c))
def subst(t, j, s):              # t[j := s], free vars > j decremented; s lives at depth j-1 relative to t's outside
    if t.fv < j: return t
    if t.k == 'v':
        if t.a == j: return shift(s, j - 1)
        return V(t.a - 1) if t.a > j else t
    if t.k == 'l': return L(subst(t.a, j + 1, s))
    return T('a', subst(t.a, j, s), subst(t.b, j, s))
def eq(x, y):
    st = [(x, y)]
    while st:
        p, q = st.pop()
        if p is q: continue
        if p.k != q.k or p.sz != q.sz or p.fv != q.fv: return False
        if p.k == 'v':
            if p.a != q.a: return False
        elif p.k == 'l': st.append((p.a, q.a))
        else: st.append((p.a, q.a)); st.append((p.b, q.b))
    return True
def spine(t):
    args = []
    while t.k == 'a': args.append(t.b); t = t.a
    return t, args[::-1]
def hstep(t):
    """one head beta-step; returns (new term, lambdas_skipped) or None if t is in hnf."""
    lams = 0; u = t
    while u.k == 'l': u = u.a; lams += 1
    h, args = spine(u)
    if h.k == 'v': return None
    assert h.k == 'l' and args
    r = A(subst(h.a, 1, args[0]), *args[1:])
    for _ in range(lams): r = L(r)
    return r
def parse(s):
    # tiny parser: \x y. body, application by juxtaposition, parens, named vars
    toks = s.replace('(', ' ( ').replace(')', ' ) ').replace('.', ' . ').replace('\\', ' \\ ').split()
    pos = [0]
    def peek(): return toks[pos[0]] if pos[0] < len(toks) else None
    def nxt(): pos[0] += 1; return toks[pos[0] - 1]
    def term(env):
        if peek() == '\\':
            nxt(); names = []
            while peek() != '.': names.append(nxt())
            nxt()
            e = env
            for n in names: e = [n] + e
            b = term(e)
            for _ in names: b = L(b)
            return b
        fs = []
        while peek() not in (None, ')'):
            if peek() == '\\': fs.append(term(env)); break
            if peek() == '(':
                nxt(); fs.append(term(env)); assert nxt() == ')'
            else:
                n = nxt(); fs.append(V(env.index(n) + 1))
        return A(*fs)
    return term([])
def show(t, names=None):
    names = names or []
    if t.k == 'v':
        i = t.a - 1
        return names[i] if i < len(names) else 'f%d' % (t.a - len(names))
    if t.k == 'l':
        n = 'x%d' % len(names)
        return '\\' + n + '. ' + show(t.a, [n] + names)
    f = show(t.a, names); x = show(t.b, names)
    if t.a.k == 'l': f = '(' + f + ')'
    if t.b.k != 'v': x = '(' + x + ')'
    return f + ' ' + x
def run_to(t, target, limit):
    """head-reduce t; return number of steps at which the term equals target, or None."""
    for i in range(limit + 1):
        if eq(t, target): return i
        t2 = hstep(t)
        if t2 is None: return None
        t = t2
    return None
