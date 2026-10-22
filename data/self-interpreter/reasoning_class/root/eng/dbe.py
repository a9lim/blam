# minimal de Bruijn normal-order engine with fuel and size cap; rigid constants ('k',name)
import sys
sys.setrecursionlimit(100000)
class Cap(Exception): pass
def shift(t, d, c=0):
    tag = t[0]
    if tag == 'v': return ('v', t[1] + d) if t[1] >= c else t
    if tag == 'l': return ('l', shift(t[1], d, c + 1))
    if tag == 'a': return ('a', shift(t[1], d, c), shift(t[2], d, c))
    return t
def subst(t, s, j=0):
    # replace var j by s (s already shifted for depth j), decrement vars > j
    tag = t[0]
    if tag == 'v':
        i = t[1]
        if i == j: return shift(s, j) if j else s
        return ('v', i - 1) if i > j else t
    if tag == 'l': return ('l', subst(t[1], s, j + 1))
    if tag == 'a': return ('a', subst(t[1], s, j), subst(t[2], s, j))
    return t
def size(t):
    n = 0; st = [t]
    while st:
        x = st.pop(); n += 1
        if x[0] == 'l': st.append(x[1])
        elif x[0] == 'a': st.append(x[1]); st.append(x[2])
    return n
class Eng:
    def __init__(self, fuel=3000, cap=20000): self.fuel = fuel; self.cap = cap
    def whnf(self, t):
        spine = []
        while True:
            if t[0] == 'a': spine.append(t[2]); t = t[1]; continue
            if t[0] == 'l' and spine:
                self.fuel -= 1
                if self.fuel < 0: raise Cap('fuel')
                t = subst(t[1], spine.pop())
                if self.fuel % 8 == 0 and size(t) > self.cap: raise Cap('size')
                continue
            for x in reversed(spine): t = ('a', t, x)
            return t
    def nf(self, t):
        t = self.whnf(t)
        if t[0] == 'l': return ('l', self.nf(t[1]))
        if t[0] == 'a':
            h, args = t, []
            while h[0] == 'a': args.append(h[2]); h = h[1]
            h = self.nf(h) if h[0] == 'l' else h
            for x in reversed(args): h = ('a', h, self.nf(x))
            return h
        return t
def L(b): return ('l', b)
def A(*xs):
    t = xs[0]
    for x in xs[1:]: t = ('a', t, x)
    return t
def V(i): return ('v', i)
def Kc(n): return ('k', n)
KK = L(L(V(1))); FF = L(L(V(0)))
def cons(b, r): return L(A(V(0), shift(b, 1), shift(r, 1)))
def Z(r): return cons(KK, r)
def U(n, N):
    t = cons(KK, N)
    for _ in range(n): t = cons(FF, t)
    return t
def check(R, nmax=3, fuel=3000, cap=20000):
    """returns ('pass'|'fail'|'cap', detail). fail = some law has a definite wrong nf."""
    capped = []
    tests = [('zero', A(R, Z(Kc('r'))), A(Kc('r'), Kc('j')))]
    for n in range(1, nmax + 1):
        tests.append((f'u{n}', A(R, U(n, Kc('N'))), A(Kc('c'), U(n - 1, Kc('N')), Kc('N'))))
    for name, t, want in tests:
        e = Eng(fuel, cap)
        try:
            v = e.nf(t); w = Eng(10**6, 10**7).nf(want)
            if v != w: return ('fail', name)
        except (Cap, RecursionError) as ex:
            capped.append(name)
    return ('cap', capped) if capped else ('pass', None)

def hnf_parts(e, t):
    lams = 0
    while True:
        t = e.whnf(t)
        if t[0] == 'l': lams += 1; t = t[1]; continue
        args = []
        while t[0] == 'a': args.append(t[2]); t = t[1]
        return lams, t, args[::-1]
def lazy_eq(e, t, w):
    """w is a normal form. Returns True/False; raises Cap if undecided."""
    lt, ht, at = hnf_parts(e, t)
    lw, hw, aw = hnf_parts(Eng(10**6, 10**7), w)
    if lt != lw or ht != hw or len(at) != len(aw): return False
    for x, y in zip(at, aw):
        if not lazy_eq(e, x, y): return False
    return True
def check2(R, nmax=3, fuel=3000, cap=20000):
    capped = []
    tests = [('zero', A(R, Z(Kc('r'))), A(Kc('r'), Kc('j')))]
    for n in range(1, nmax + 1):
        tests.append((f'u{n}', A(R, U(n, Kc('N'))), A(Kc('c'), U(n - 1, Kc('N')), Kc('N'))))
    for name, t, want in tests:
        e = Eng(fuel, cap)
        try:
            if not lazy_eq(e, t, want): return ('fail', name)
        except (Cap, RecursionError):
            capped.append(name)
    return ('cap', capped) if capped else ('pass', None)

def lazy_eq2(e, t, w):
    """incremental: a λ against a non-λ target fails at once (Church-Rosser); raises Cap if undecided."""
    t = e.whnf(t)
    if t[0] == 'l':
        if w[0] != 'l': return False
        return lazy_eq2(e, t[1], w[1])
    if w[0] == 'l': return False
    at = []
    while t[0] == 'a': at.append(t[2]); t = t[1]
    aw = []
    while w[0] == 'a': aw.append(w[2]); w = w[1]
    if t != w or len(at) != len(aw): return False
    for x, y in zip(reversed(at), reversed(aw)):
        if not lazy_eq2(e, x, y): return False
    return True
def check3(R, nmax=3, fuel=3000, cap=50000):
    capped = []
    tests = [('zero', A(R, Z(Kc('r'))), A(Kc('r'), Kc('j')))]
    for n in range(1, nmax + 1):
        tests.append((f'u{n}', A(R, U(n, Kc('N'))), A(Kc('c'), U(n - 1, Kc('N')), Kc('N'))))
    for name, t, want in tests:
        e = Eng(fuel, cap)
        try:
            if not lazy_eq2(e, t, Eng(10**6, 10**7).nf(want)): return ('fail', name)
        except (Cap, RecursionError):
            capped.append(name)
    return ('cap', capped) if capped else ('pass', None)
