"""Audit minfilt's redex prices against direct contraction on random terms.
For every redex in a random term: compute S_formula as minfilt does, contract the redex
in place (capture-avoiding de Bruijn), and compare weight(after)-weight(before)."""
import random, sys
sys.path.insert(0, '.')
import minfilt as M

def weight(t, d=0):
    k = t[0]
    if k == 'L': return 2 + weight(t[1], d + 1)
    if k == 'A': return 2 + weight(t[1], d) + weight(t[2], d)
    if k == 'V': return 2 + t[1]
    return 2 + d if t[1] == 'c' else 4 * d

def shift(t, s, c=0):
    k = t[0]
    if k == 'V': return ('V', t[1] + s) if t[1] >= c else t
    if k == 'L': return ('L', shift(t[1], s, c + 1))
    if k == 'A': return ('A', shift(t[1], s, c), shift(t[2], s, c))
    return t
def subst(t, a, j=0):
    k = t[0]
    if k == 'V':
        if t[1] == j: return shift(a, j)
        return ('V', t[1] - 1) if t[1] > j else t
    if k == 'L': return ('L', subst(t[1], a, j + 1))
    if k == 'A': return ('A', subst(t[1], a, j), subst(t[2], a, j))
    return t

def rand(d, n):
    if n <= 1 or random.random() < 0.25:
        r = random.random()
        if d and r < 0.6: return ('V', random.randrange(d))
        return ('C', 'c') if r < 0.85 else ('C', 'j')
    r = random.random()
    if r < 0.35: return ('L', rand(d + 1, n - 1))
    if r < 0.6:
        return ('A', ('L', rand(d + 1, n // 2)), rand(d, n // 2))
    return ('A', rand(d, n // 2), rand(d, n // 2))

def positions(t, path=()):
    yield path, t
    if t[0] == 'L': yield from positions(t[1], path + (1,))
    if t[0] == 'A':
        yield from positions(t[1], path + (1,)); yield from positions(t[2], path + (2,))

def replace(t, path, new):
    if not path: return new
    if path[0] == 1 and t[0] == 'L': return ('L', replace(t[1], path[1:], new))
    if path[0] == 1: return ('A', replace(t[1], path[1:], new), t[2])
    return ('A', t[1], replace(t[2], path[1:], new))

def depth_of(t, path):
    d = 0
    for p in path:
        if t[0] == 'L': d += 1; t = t[1]
        else: t = t[p]
    return d

def formula(red, delta):
    B = red[1][1]; A = red[2]
    xs = M.xocc(B); m = len(xs); D = sum(xs)
    G = 0
    for kk, v, l in M.leaves_abs(B, 1, []):
        if kk == 'V': G += v >= l
        else: G += 4 if v == 'j' else 1
    F = 0
    for kk, v, l in M.leaves_abs(A, 0, []):
        if kk == 'V': F += v >= l
        else: F += 4 if v == 'j' else 1
    wA = weight(A, delta)
    return (m - 1) * wA + (F - 1) * D - 2 * m - 4 - G

random.seed(1)
n = bad = 0
for _ in range(20000):
    t = rand(0, random.randrange(4, 18))
    for path, s in positions(t):
        if s[0] == 'A' and s[1][0] == 'L':
            delta = depth_of(t, path)
            after = replace(t, path, subst(s[1][1], s[2]))
            S = weight(after) - weight(t)
            n += 1
            if S != formula(s, delta): bad += 1
print('redexes', n, 'mismatches', bad)

# direct audit of minfilt.price via summ's leaf lists
n2 = bad2 = 0
random.seed(2)
for _ in range(20000):
    t = rand(0, random.randrange(4, 18))
    for path, s in positions(t):
        if s[0] == 'A' and s[1][0] == 'L':
            delta = depth_of(t, path)
            try:
                cf, lf, nf, laf = M.summ(s[1], delta, None)
                ca, la_, na, laa = M.summ(s[2], delta, None)
            except M.Prune:
                continue
            S = M.price(lf, la_, na, delta)[5]
            after = replace(t, path, subst(s[1][1], s[2]))
            n2 += 1
            if S != weight(after) - weight(t): bad2 += 1
print('minfilt.price audit: redexes', n2, 'mismatches', bad2)
