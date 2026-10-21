#!/usr/bin/env python3
"""Fixed equations from the two reviewed proofs; no term enumeration.

Uses blcc only as a parser. Substitution and reduction are independent of
the lc.py reducer used by the author's audit. No timeout is a proof here:
every assertion checks an exact finite trace or a finite common normal form.
"""
import json
from pathlib import Path
import sys
import time

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'tools'))
import blcc


def parse(src):
    p = blcc.P(src)
    term = blcc.to_db(blcc.p_lc(p))
    p.ws()
    assert p.i == len(src)
    return term


def var(n):
    return ('V', n)


def lam(b):
    return ('L', b)


def apps(f, *args):
    for a in args:
        f = ('A', f, a)
    return f


def shift(t, amount, cutoff=0):
    if t[0] == 'V':
        return var(t[1] + amount) if t[1] >= cutoff else t
    if t[0] == 'L':
        return lam(shift(t[1], amount, cutoff + 1))
    return apps(shift(t[1], amount, cutoff), shift(t[2], amount, cutoff))


def subst(body, arg, depth=0):
    if body[0] == 'V':
        if body[1] == depth:
            return shift(arg, depth)
        return var(body[1] - 1) if body[1] > depth else body
    if body[0] == 'L':
        return lam(subst(body[1], arg, depth + 1))
    return apps(subst(body[1], arg, depth), subst(body[2], arg, depth))


def step(t, full=False):
    if t[0] == 'A':
        if t[1][0] == 'L':
            return subst(t[1][1], t[2])
        f = step(t[1], full)
        if f is not None:
            return apps(f, t[2])
        if full:
            a = step(t[2], full)
            if a is not None:
                return apps(t[1], a)
    elif t[0] == 'L' and full:
        b = step(t[1], full)
        if b is not None:
            return lam(b)
    return None


K = parse(r'\a\b.a')
F = parse(r'\a\b.b')
I = parse(r'\x.x')
D = parse(r'\x.x x')
J = lam(D)
O = apps(D, D)


def cell(b, r):
    return lam(apps(var(0), shift(b, 1), shift(r, 1)))


def stream(bits, tail):
    for bit in reversed(bits):
        tail = cell(K if bit == '0' else F, tail)
    return tail


def at(body, s):
    return subst(parse('\\s.' + body)[1], s)


records = []


def reaches(label, t, expected, full=False, steps=None):
    start = t
    bound = steps if steps is not None else 100
    for n in range(bound + 1):
        if t == expected and (steps is None or n == steps):
            records.append({'label': label, 'steps': n,
                            'strategy': 'full-leftmost' if full else 'weak-head'})
            return
        if n == bound:
            break
        t = step(t, full)
        if t is None:
            break
    if steps is None:
        # Some displayed non-normal targets require a different redex order.
        # Example: D(s D) reaches K K by first reducing its argument s D.
        def normal(term):
            for _ in range(1000):
                next_term = step(term, full=True)
                if next_term is None:
                    return term
                term = next_term
            raise AssertionError((label, 'normalization did not finish'))
        if normal(start) == normal(expected):
            records.append({'label': label, 'strategy': 'common-normal-form'})
            return
    raise AssertionError((label, 'expected', expected, 'actual', t, 'start', start))


start = time.perf_counter()
ds = r'(\x.x x)'
js = r'(\z.\x.x x)'

# REPORT lines 285-292: symbolic first zero cell, all six rows.
r = var(0)
s = cell(K, r)
for name, body, target in [
    ('sDD', f's {ds} {ds}', apps(K, D)),
    ('DsD', f'{ds} s {ds}', r),
    ('DDs', f'{ds} {ds} s', apps(O, s)),
    ('s(DD)', f's ({ds} {ds})', apps(O, K, r)),
    ('D(sD)', f'{ds} (s {ds})', apps(K, K)),
    ('D(Ds)', f'{ds} ({ds} s)', r),
]:
    reaches('zero-three-' + name, at(body, s), target)

# REPORT lines 303-316: symbolic first two zero cells, all twelve rows.
u = var(0)
r = cell(K, u)
s = cell(K, r)
for name, body, target in [
    ('sDJ', f's {ds} {js}', apps(K, J)),
    ('sJD', f's {js} {ds}', u),
    ('DsJ', f'{ds} s {js}', r),
    ('DJs', f'{ds} {js} s', apps(K, r)),
    ('JsD', f'{js} s {ds}', O),
    ('JDs', f'{js} {ds} s', apps(K, r)),
    ('s(DJ)', f's ({ds} {js})', K),
    ('s(JD)', f's ({js} {ds})', K),
    ('D(sJ)', f'{ds} (s {js})', u),
    ('D(Js)', f'{ds} ({js} s)', O),
    ('J(sD)', f'{js} (s {ds})', D),
    ('J(Ds)', f'{js} ({ds} s)', D),
]:
    t = at(body, s)
    if name == 'D(Js)':
        # Contract J s in argument position before the outer diagonal.
        reduced_arg = step(t[2])
        assert reduced_arg == D
        t = apps(t[1], reduced_arg)
    reaches('zero-four-' + name, t, target)
reaches('vacuous-wrap-Omega-right', apps(s, lam(O)), apps(O, r))
reaches('vacuous-wrap-Omega-left', apps(lam(O), s), O)

# REPORT lines 337-344: all six dependent helpers, with exact quote(I,n).
s = stream('0010', var(0))
r = stream('010', var(0))
u = stream('10', var(0))
for body, target_kind in [
    ('x x s', 'grow-s'), ('x s x', 'I'), ('s x x', 'KH'),
    ('x (x s)', 'u'), ('x (s x)', 'KK'), ('s (x x)', 'grow-Kr'),
]:
    h = at('\\x.' + body, s)
    x = apps(h, h)
    target = {'grow-s': apps(x, s), 'I': I, 'KH': apps(K, h),
              'u': u, 'KK': apps(K, K), 'grow-Kr': apps(x, K, r)}[target_kind]
    reaches('dependent-' + body, x, target,
            steps={'grow-s': 1, 'grow-Kr': 2}.get(target_kind))

# REPORT lines 371-378: all six closed leading-affine cases.
n = parse(r'\x\y.x x y')
reaches('closed-xxy-cycle', apps(n, n, s), apps(n, n, s), steps=2)
n = parse(r'\x\y.x y x')
reaches('closed-xyx', apps(n, n), parse(r'\y.y (\x\y.x y x) y'), full=True)
n = parse(r'\x\y.y x x')
reaches('closed-yxx', apps(n, n, s), K)
n = parse(r'\x\y.x (x y)')
reaches('closed-x(xy)-two-lambdas', apps(n, n),
        parse(r'\y\z.((\x\y.x (x y)) y) (((\x\y.x (x y)) y) z)'),
        full=True, steps=2)
n = parse(r'\x\y.x (y x)')
reaches('closed-x(yx)-two-lambdas', apps(n, n),
        parse(r'\y\z.(y (\x\y.x (y x))) (z (y (\x\y.x (y x))))'),
        full=True, steps=2)
n = parse(r'\x\y.y (x x)')
reaches('closed-y(xx)-return-X', apps(n, n, s), apps(n, n), steps=7)

# REPORT lines 390-407: both reducible helpers and both recurrence families.
for source in [r'\x.(\y.x y) x', r'\x.(\y.y x) x']:
    reaches('nonleading-contract-' + source, parse(source), D, full=True, steps=1)


def eta(t):
    return lam(apps(shift(t, 1), var(0)))


def flip(t):
    return lam(apps(var(0), shift(t, 1)))


ne = parse(r'\x.x (\y.x y)')
reaches('eta-D-entry', apps(ne, D), apps(D, eta(D)), steps=1)
reaches('eta-D-cycle', apps(D, eta(D)), apps(D, eta(D)), steps=2)
for k in (0, 1, 3):
    e = ne
    for _ in range(k):
        e = eta(e)
    reaches('eta-self-growing-' + str(k), apps(ne, e), apps(ne, eta(e)), steps=k + 1)
nf = parse(r'\x.x (\y.y x)')
reaches('flip-D', apps(nf, D), O, steps=4)
reaches('flip-self-entry', apps(nf, nf), apps(nf, flip(nf)), steps=1)
reaches('flip-self-cycle', apps(nf, flip(nf)), apps(nf, flip(nf)), steps=3)

# PROJECTIONS lines 60-94: vacuous boxes are literal lambdas, not K applications.
dk = parse(r'\x.x (\u.x)')
v = parse(r'\x\u.x x')
for label, term, target in [
    ('D(KD)', apps(D, lam(D)), D),
    ('deltaK-D', apps(dk, D), D),
    ('D-deltaK', apps(D, dk), dk),
    ('V-D', apps(v, D), lam(O)),
    ('D-V', apps(D, v), lam(apps(v, v))),
    ('D(K(KD))', apps(D, lam(lam(D))), lam(D)),
    ('D(KdeltaK)', apps(D, lam(dk)), dk),
    ('deltaK(KD)', apps(dk, lam(D)), D),
]:
    reaches('bound24-' + label, term, target)

# REPORT lines 122-123: the two fixed bootstrap traces, with symbolic r.
q = parse(r'\t\u\d.t u (u d d) d d')
d = parse(r'\b\r.r (b (\t\u\d.t u (u d d) d d) r)')
r = var(0)
s = cell(K, r)
x = apps(q, q, d)
y = apps(x, q, q)
a = apps(d, q, q)
b = apps(a, q, q)
c = apps(a, q, b)
reaches('bootstrap-zero', apps(d, d, d, s),
        apps(y, s, apps(s, K, K), K, K, r), steps=12)
reaches('bootstrap-all-Q-prefix', y,
        apps(q, q, q, q, apps(q, q, q), q, q, c, q, q, q, q), steps=13)

elapsed = time.perf_counter() - start
output = {'checks': len(records), 'passed': len(records), 'elapsed_s': elapsed,
          'scope': 'Fixed proof equations only; no enumeration.', 'records': records}
Path(__file__).with_suffix('.json').write_text(json.dumps(output, indent=2) + '\n')
print(f'{len(records)}/{len(records)} fixed equations passed in {elapsed:.6f}s')
