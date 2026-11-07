"""Shared helpers: named-term templates -> dbn terms over [s, c] (M = body under \\s),
filler expansion and single-site insertion E W at every position, laws tested directly."""
import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
from dbn import *
import rd
Us = [U(n) for n in (1, 2, 3)]
cU = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
ZT = A(Kc('r'), Kc('j'))
def conv(t, env=()):
    """rd term (body, frame names env innermost first) -> dbn; '_' -> ('h',)"""
    if t[0] == 'V':
        if t[1] == '_': return ('h',)
        if t[1] in env: return V(env.index(t[1]))
        if t[1] == 's': return V(len(env))
        if t[1] == 'c': return V(len(env) + 1)
        if t[1] == 'j': return Kc('j')
        raise ValueError(t[1])
    if t[0] == 'L': return L(conv(t[2], (t[1],) + env))
    return A(conv(t[1], env), conv(t[2], env))
def body(src):
    t = rd.parse(src)
    assert t[0] == 'L'
    return conv(t[2], (t[1],))[0:] if False else conv_top(t)
def conv_top(t):
    # t = \s. B ; return B over frame [s, c]
    return conv(t[2], ())  if t[1] == 's' else None
def cost(t, d=0):
    tag = t[0]
    if tag == 'v': return 2 + t[1]
    if tag == 'k': return 4 * d if t[1] == 'j' else 0
    if tag == 'h': return 2
    if tag == 'l': return 2 + cost(t[1], d + 1)
    return 2 + cost(t[1], d) + cost(t[2], d)
def holes(t, path=(), d=0):
    if t[0] == 'h': yield path, d
    elif t[0] == 'l': yield from holes(t[1], path + (0,), d + 1)
    elif t[0] == 'a':
        yield from holes(t[1], path + (1,), d); yield from holes(t[2], path + (2,), d)
def positions(t, path=(), d=0):
    yield path, t, d
    if t[0] == 'a':
        yield from positions(t[1], path + (1,), d); yield from positions(t[2], path + (2,), d)
    elif t[0] == 'l':
        yield from positions(t[1], path + (0,), d + 1)
def get(t, path):
    for p in path: t = t[1] if p in (0, 1) else t[2]
    return t
def replace(t, path, new):
    if not path: return new
    if path[0] == 0: return ('l', replace(t[1], path[1:], new))
    if path[0] == 1: return ('a', replace(t[1], path[1:], new), t[2])
    return ('a', t[1], replace(t[2], path[1:], new))
_terms = {}
def terms_upto(c, nfree):
    k = (c, nfree)
    if k not in _terms: _terms[k] = [t for cc, t in enum_terms(c, nfree, None)]
    return _terms[k]
def laws(m, fuel=3000):
    """0 ok, else first failing law tag; caps reported as 'cap'"""
    try:
        if normalize(inst(m, Z()), fuel) != ZT: return 'z'
        for k in range(3):
            if normalize(inst(m, Us[k]), fuel) != cU[k]: return 'u%d' % (k + 1)
    except (Fuel, RecursionError):
        return 'cap'
    return 0
def expand(tmpl, slack):
    """fill every hole with terms; total extra cost over 2 per hole <= slack"""
    hs = list(holes(tmpl))
    def rec(t, i, sl):
        if i == len(hs):
            yield t, slack - sl; return
        path, d = hs[i]
        for f in terms_upto(2 + sl, d + 2):
            e = cost(f) - 2
            if e > sl or e < 0: continue
            yield from rec(replace(t, path, f), i + 1, sl - e)
    yield from rec(tmpl, 0, slack)
def insert_sites(core, emax, budget):
    """every E W at every position (E j-free, cost <= emax), |M| <= budget"""
    base = cost(core)
    for path, w, d in positions(core):
        for E in terms_upto(emax, d + 2):
            m = replace(core, path, A(E, w))
            if cost(m) > budget: continue
            yield m
def unary_ok(m, fuel=3000):
    try:
        return all(normalize(inst(m, Us[k]), fuel) == cU[k] for k in range(3))
    except (Fuel, RecursionError):
        return None
def zero_cert_fail(m):
    """True if the zero law certifiably fails (no_beta_eq_cert2 against r j)"""
    return no_beta_eq_cert2(inst(m, Z()), ZT)
