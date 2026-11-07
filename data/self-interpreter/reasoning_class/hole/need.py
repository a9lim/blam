#!/usr/bin/env python3
"""Need-set split of a reader (hole lane).  For each source position p,
replace the subterm at p by Omega and test the zero law and the unary law
(n = 1..NMAX).  Prints the four classes (shared / U-only / Z-only /
neither) with their node prices, so that
    w = shared + U-only + Z-only + neither + 4 d(j).
Probe-based (n <= NMAX): a sanity tool, not a proof."""
import sys
import rd

OMEGA = rd.parse(r'(\x. x x) (\x. x x)')
NMAX = 4

def positions(t, path=()):
    yield path, t
    if t[0] == 'L':
        yield from positions(t[2], path + (0,))
    elif t[0] == 'A':
        yield from positions(t[1], path + (0,))
        yield from positions(t[2], path + (1,))

def replace(t, path, s):
    if not path: return s
    if t[0] == 'L': return ('L', t[1], replace(t[2], path[1:], s))
    if path[0] == 0: return ('A', replace(t[1], path[1:], s), t[2])
    return ('A', t[1], replace(t[2], path[1:], s))

def law_zero(R, fuel=20000):
    try:
        return rd.alpha_eq(rd.normalize(('A', R, rd.Z('r')), fuel), rd.parse('r j'))
    except (rd.Fuel, RecursionError):
        return False

def law_unary(R, n, fuel=20000):
    try:
        v = rd.normalize(('A', R, rd.U(n, 'N')), fuel)
        want = rd.normalize(('A', ('A', ('V', 'c'), rd.U(n - 1, 'N')), ('V', 'N')), fuel)
        return rd.alpha_eq(v, want)
    except (rd.Fuel, RecursionError):
        return False

def node_prices(t):
    """price of each node in place: dict path -> price"""
    out = {}
    def go(t, env, path):
        if t[0] == 'V':
            if t[1] in env: out[path] = 2 + env.index(t[1])
            elif t[1] == 'c': out[path] = 2 + len(env)
            elif t[1] == 'j': out[path] = 0
            else: raise ValueError(t[1])
        elif t[0] == 'L':
            out[path] = 2; go(t[2], [t[1]] + env, path + (0,))
        else:
            out[path] = 2; go(t[1], env, path + (0,)); go(t[2], env, path + (1,))
    go(t, [], ())
    return out

def split(src, verbose=True):
    R = rd.parse(src)
    assert law_zero(R) and all(law_unary(R, n) for n in range(1, NMAX + 1)), 'not a reader'
    price = node_prices(R)
    cls = {}
    for path, sub in positions(R):
        R2 = replace(R, path, OMEGA)
        nz = not law_zero(R2)
        nu = not all(law_unary(R2, n) for n in range(1, NMAX + 1))
        cls[path] = (nu, nz)
    tot = {'shared': 0, 'U-only': 0, 'Z-only': 0, 'neither': 0}
    for p, (nu, nz) in cls.items():
        k = 'shared' if nu and nz else 'U-only' if nu else 'Z-only' if nz else 'neither'
        tot[k] += price[p]
    w = rd.weight(R)
    if verbose:
        print(f"w={w[0]} d={w[2]} :: {src}")
        print('   ', tot, ' core(Need_U)=', tot['shared'] + tot['U-only'],
              ' Need_Z=', tot['shared'] + tot['Z-only'])
    return tot, w

if __name__ == '__main__':
    for a in sys.argv[1:]:
        split(a)
