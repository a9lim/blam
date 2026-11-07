#!/usr/bin/env python3
"""Reader-law checker. Named lambda terms, normal-order normalizer with fuel.

Syntax: \\x y. body ; application by juxtaposition; parentheses; free names
are rigid. check(R) tests  R Z(r) = r j  and  R U_n(N) = c U_(n-1)(N) N  for
n=1..3, and prints the weight w = cost + 4*depth(j) in frame [c,j].
"""
import sys, re
sys.setrecursionlimit(1000000)

# terms: ('V',name) ('L',name,body) ('A',f,a)
MACROS = {'I': '(\\a. a)', 'K': '(\\x y. x)', 'F': '(\\x y. y)'}
def parse(s):
    s = re.sub(r'(?<![A-Za-z0-9_#])([IKF])(?![A-Za-z0-9_#])', lambda m: MACROS[m.group(1)], s)
    toks = s.replace('(', ' ( ').replace(')', ' ) ').replace('.', ' . ').replace('\\', ' \\ ').split()
    pos = [0]
    def peek(): return toks[pos[0]] if pos[0] < len(toks) else None
    def eat(): pos[0] += 1; return toks[pos[0]-1]
    def term():
        if peek() == '\\':
            eat(); names = []
            while peek() != '.': names.append(eat())
            eat(); b = term()
            for n in reversed(names): b = ('L', n, b)
            return b
        t = atom()
        while peek() not in (None, ')', '.'):
            if peek() == '\\': t = ('A', t, term()); break
            t = ('A', t, atom())
        return t
    def atom():
        if peek() == '(':
            eat(); t = term(); assert eat() == ')'; return t
        return ('V', eat())
    t = term(); assert pos[0] == len(toks), toks[pos[0]:]
    return t

_ctr = [0]
def fresh(n):
    _ctr[0] += 1; return f"{n.split('#')[0]}#{_ctr[0]}"

def fv(t):
    if t[0] == 'V': return {t[1]}
    if t[0] == 'L': return fv(t[2]) - {t[1]}
    return fv(t[1]) | fv(t[2])

def subst(t, x, s):
    if t[0] == 'V': return s if t[1] == x else t
    if t[0] == 'A': return ('A', subst(t[1], x, s), subst(t[2], x, s))
    if t[1] == x: return t
    if t[1] in fv(s):
        y = fresh(t[1]); return ('L', y, subst(subst(t[2], t[1], ('V', y)), x, s))
    return ('L', t[1], subst(t[2], x, s))

class Fuel(Exception): pass

def whnf(t, fuel):
    while True:
        if t[0] == 'A':
            f = whnf(t[1], fuel)
            if f[0] == 'L':
                fuel[0] -= 1
                if fuel[0] < 0: raise Fuel()
                t = subst(f[2], f[1], t[2]); continue
            return ('A', f, t[2])
        return t

def nf(t, fuel):
    t = whnf(t, fuel)
    if t[0] == 'L': return ('L', t[1], nf(t[2], fuel))
    if t[0] == 'A': return ('A', nf(t[1], fuel), nf(t[2], fuel))
    return t

def alpha_eq(a, b, env=None):
    env = env or {}
    if a[0] != b[0]: return False
    if a[0] == 'V': return env.get(a[1], a[1]) == b[1]
    if a[0] == 'A': return alpha_eq(a[1], b[1], env) and alpha_eq(a[2], b[2], env)
    e = dict(env); e[a[1]] = b[1]; return alpha_eq(a[2], b[2], e)

def show(t):
    if t[0] == 'V': return t[1].split('#')[0] if t[1].startswith(('a#','b#')) else t[1]
    if t[0] == 'L':
        names = []; b = t
        while b[0] == 'L': names.append(b[1]); b = b[2]
        return '\\' + ' '.join(n.split('#')[0] + ('' if '#' not in n else "'") for n in names) + '. ' + show(b)
    f = show(t[1]); a = show(t[2])
    if t[1][0] == 'L': f = '(' + f + ')'
    if t[2][0] != 'V': a = '(' + a + ')'
    return f + ' ' + a

def normalize(s, fuel=20000):
    t = parse(s) if isinstance(s, str) else s
    return nf(t, [fuel])

K = parse('\\x y. x'); F = parse('\\x y. y')
def cons(b, r): return ('L', 'f', ('A', ('A', ('V', 'f'), b), r))
def Z(r): return cons(K, ('V', r))
def U(n, N):
    t = ('V', N)
    t = cons(K, t)
    for _ in range(n): t = cons(F, t)
    return t

# weight in frame [c, j]: cost with j leaf free + 4*depth(j)
def weight(t):
    """returns (cost, depth, L, V, X, f) where leaves exclude nothing; j priced 0."""
    info = {'L': 0, 'V': 0, 'X': 0, 'f': 0, 'd': None, 'A': 0, 'jcount': 0}
    def go(t, env):
        if t[0] == 'V':
            info['V'] += 1
            if t[1] in env:
                info['X'] += env.index(t[1])
            elif t[1] == 'c':
                info['f'] += 1; info['X'] += len(env)
            elif t[1] == 'j':
                info['jcount'] += 1; info['d'] = len(env)
            else:
                raise ValueError('free ' + t[1])
        elif t[0] == 'L':
            info['L'] += 1; go(t[2], [t[1]] + env)
        else:
            info['A'] += 1; go(t[1], env); go(t[2], env)
    go(t, [])
    L, V, X, f, A = info['L'], info['V'], info['X'], info['f'], info['A']
    # cost: every node 2 bits, each non-j leaf 2+index, j leaf 0.
    cost = 2*L + 2*A + 2*(V - info['jcount']) + X
    d = info['d'] if info['d'] is not None else 0
    return cost + 4*d, cost, d, L, V, X, f, info['jcount']

def check(src, nmax=3, fuel=20000, verbose=True):
    R = parse(src)
    ok = True
    try:
        z = normalize(('A', R, Z('r')), fuel)
        want = parse('r j')
        if not alpha_eq(z, want):
            ok = False
            if verbose: print('  zero law FAILS:', show(z))
    except Fuel:
        ok = False
        if verbose: print('  zero law: fuel')
    except RecursionError:
        ok = False
        if verbose: print('  zero law: recursion')
    for n in range(1, nmax+1):
        try:
            v = normalize(('A', R, U(n, 'N')), fuel)
            want = ('A', ('A', ('V', 'c'), U(n-1, 'N')), ('V', 'N'))
            want = normalize(want, fuel)
            if not alpha_eq(v, want):
                ok = False
                if verbose: print(f'  unary law n={n} FAILS:', show(v))
        except Fuel:
            ok = False
            if verbose: print(f'  unary law n={n}: fuel')
        except RecursionError:
            ok = False
            if verbose: print(f'  unary law n={n}: recursion')
    w = weight(R)
    if verbose:
        print(f"{'PASS' if ok else 'fail'} w={w[0]} cost={w[1]} d={w[2]} L={w[3]} V={w[4]} X={w[5]} f={w[6]} j={w[7]} :: {src}")
    return ok, w

if __name__ == '__main__':
    for a in sys.argv[1:]:
        check(a)
