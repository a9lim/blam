#!/usr/bin/env python3
"""Role supports of a reader: position p is in the support of a law iff
replacing the subterm at p by a fresh rigid variable breaks the law
(= p is typed in every intersection-type derivation of that law; see NOTES).
Prints per-node role sets and the union accounting."""
import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd

def positions(t, path=()):
    yield path, t
    if t[0] == 'L':
        yield from positions(t[2], path + (0,))
    elif t[0] == 'A':
        yield from positions(t[1], path + (0,))
        yield from positions(t[2], path + (1,))

def replace(t, path, new):
    if not path: return new
    if t[0] == 'L': return ('L', t[1], replace(t[2], path[1:], new))
    if path[0] == 0: return ('A', replace(t[1], path[1:], new), t[2])
    return ('A', t[1], replace(t[2], path[1:], new))

def law_ok(R, law, fuel):
    try:
        if law == 0:
            z = rd.nf(('A', R, rd.Z('r')), [fuel]); return rd.alpha_eq(z, rd.parse('r j'))
        n = law
        v = rd.nf(('A', R, rd.U(n, 'N')), [fuel])
        want = rd.nf(('A', ('A', ('V', 'c'), rd.U(n-1, 'N')), ('V', 'N')), [fuel])
        return rd.alpha_eq(v, want)
    except (rd.Fuel, RecursionError):
        return False

def node_cost(t, env):
    """bits charged at this node itself (not children)."""
    if t[0] in ('L', 'A'): return 2
    x = t[1]
    if x in env: return 2 + env.index(x)
    if x == 'c': return 2 + len(env)
    if x == 'j': return 0
    raise ValueError(x)

def envs(t, env=(), path=()):
    yield path, t, list(env)
    if t[0] == 'L':
        yield from envs(t[2], (t[1],) + env, path + (0,))
    elif t[0] == 'A':
        yield from envs(t[1], env, path + (0,))
        yield from envs(t[2], env, path + (1,))

def label(t):
    if t[0] == 'V': return t[1]
    if t[0] == 'L': return '\\' + t[1]
    return '@'

def analyse(src, nmax=3, fuel=20000, show=True):
    R = rd.parse(src)
    assert all(law_ok(R, l, fuel) for l in range(nmax + 1)), 'not a reader'
    roles = {}
    for path, sub, env in envs(R):
        hole = ('V', 'HOLE#%d' % len(roles))
        R2 = replace(R, path, hole)
        rs = ''.join(('Z' if l == 0 else str(l)) for l in range(nmax + 1) if not law_ok(R2, l, fuel))
        roles[path] = (rs, node_cost(sub, env), label(sub), sub)
    tot = {}
    for path, (rs, cst, lab, sub) in roles.items():
        key = ('Z' if 'Z' in rs else '') + ('U' if any(ch.isdigit() for ch in rs) else '')
        # fillers: not in any support but parent is
        if key == '':
            par = path[:-1]
            if path and roles[par][0] != '':
                key = 'fill'
            else:
                key = 'inner' if path else 'root?'
        tot[key] = tot.get(key, 0) + (cst if key != 'fill' else subtree_cost(sub, path, R))
    if show:
        for path, (rs, cst, lab, sub) in roles.items():
            print('  ' * len(path) + f'{lab:<6} [{rs or "-":<5}] {cst}')
        print('totals by role:', tot)
        w = rd.weight(R)
        print('w =', w[0], 'cost', w[1], 'depth', w[2])
    return roles, tot

def subtree_cost(sub, path, R):
    # cost of the whole subtree at path (needs env): recompute
    env = None
    for p, t, e in envs(R):
        if p == path: env = e; break
    return sum(node_cost(t, e) for _, t, e in envs(sub, tuple(env)))

if __name__ == '__main__':
    for a in sys.argv[1:]:
        print('==', a); analyse(a)
