#!/usr/bin/env python3
"""Price a NEXT candidate Q in frame [c,p] and check its rigid branch laws.
Usage: chk.py 'SOURCE' [more sources...]   (\\x y. body; juxtaposition; parens)
Free names allowed: c, p (frame: c idx0, p idx1). Prints q, F, laws."""
import sys, re
sys.setrecursionlimit(100000)
FRAME = ['c', 'p']           # innermost first
def tok(s):
    return re.findall(r"\\|\.|\(|\)|[A-Za-z_][A-Za-z0-9_']*", s)
def parse(s, frame=FRAME):
    ts = tok(s); pos = [0]
    def peek(): return ts[pos[0]] if pos[0] < len(ts) else None
    def take(): t = ts[pos[0]]; pos[0] += 1; return t
    def term(env):
        if peek() == '\\':
            take(); vs = []
            while peek() != '.': vs.append(take())
            take(); e = env
            for v in vs: e = [v] + e
            body = term(e)
            for _ in vs: body = ('L', body)
            return body
        f = atom(env)
        while peek() not in (None, ')'):
            if peek() == '\\': f = ('A', f, term(env)); break
            f = ('A', f, atom(env))
        return f
    def atom(env):
        t = take()
        if t == '(':
            x = term(env); assert take() == ')'; return x
        if t in env: return ('V', env.index(t))
        if t in frame: return ('V', len(env) + frame.index(t), t)
        raise SyntaxError('unbound ' + t)
    x = term([]); assert pos[0] == len(ts), ts[pos[0]:]
    return x
def size(t):
    if t[0] == 'V': return 2 + t[1]
    if t[0] == 'L': return 2 + size(t[1])
    return 2 + size(t[1]) + size(t[2])
def free_leaves(t, d=0):
    if t[0] == 'V': return 1 if t[1] >= d else 0
    if t[0] == 'L': return free_leaves(t[1], d + 1)
    return free_leaves(t[1], d) + free_leaves(t[2], d)
def strip(t):
    if t[0] == 'V': return ('V', t[1])
    if t[0] == 'L': return ('L', strip(t[1]))
    return ('A', strip(t[1]), strip(t[2]))
def shift(d, c, t):
    if t[0] == 'V': return ('V', t[1] + d) if t[1] >= c else t
    if t[0] == 'L': return ('L', shift(d, c + 1, t[1]))
    return ('A', shift(d, c, t[1]), shift(d, c, t[2]))
def subst(j, s, t):
    if t[0] == 'V': return s if t[1] == j else t
    if t[0] == 'L': return ('L', subst(j + 1, shift(1, 0, s), t[1]))
    return ('A', subst(j, s, t[1]), subst(j, s, t[2]))
def beta(f, a): return shift(-1, 0, subst(0, shift(1, 0, a), f[1]))
class Fuel(Exception): pass
def nf(t, fuel):
    def whnf(t):
        while t[0] == 'A':
            f = whnf(t[1])
            if f[0] != 'L': return ('A', f, t[2])
            fuel[0] -= 1
            if fuel[0] < 0: raise Fuel
            t = beta(f, t[2])
        return t
    t = whnf(t)
    if t[0] == 'L': return ('L', nf(t[1], fuel))
    if t[0] == 'A': return ('A', nf(t[1], fuel), nf(t[2], fuel))
    return t
# context for laws: free vars c,p,t at top: env order innermost first [t?]
# We work with closed-under-frame terms: frame for law checking = [c, p, t]
def ctx(s, extra=('t',)):
    return strip(parse(s, frame=list(FRAME) + list(extra)))
K = '(\\x y. x)'; Fb = '(\\x y. y)'
ABS = '(\\e a. f (\\x y. x a (y e)))'
APP = '(\\e. f e (g e))'
T0 = 'p (\\f. c ' + ABS + ') t'
T1 = 'p (\\f. p (\\g. c ' + APP + ')) t'
def check(src, fuel=200000):
    q = parse(src); qs = size(q); F = free_leaves(q)
    res = {}
    for tag, tgt in (('K', T0), ('F', T1)):
        lhs = ctx('(' + src + ') ' + (K if tag == 'K' else Fb) + ' t')
        try:
            a = nf(lhs, [fuel]); b = nf(ctx(tgt), [fuel])
            res[tag] = (a == b)
        except Fuel:
            res[tag] = 'fuel'
    return qs, F, res
if __name__ == '__main__':
    for s in sys.argv[1:]:
        qs, F, res = check(s)
        print(f"q={qs} F={F} q+F={qs+F} laws K={res['K']} F={res['F']}  :: {s}")
