#!/usr/bin/env python3
"""Try to falsify the single-object theorem on small terms.

Enumerates every closed BLC term up to MAXBITS, decides SO (every live
abstraction factors through one object) and tests pairing behaviour:
T x y K ->w x and T x y F ->w y, with a Krivine machine capped in steps.
The theorem says: no SO term passes. Non-SO terms that pass are the positive
control (the pairing combinator itself is 19 bits).

Terms: ('v', i) de Bruijn 0-based, ('l', body), ('a', f, x), ('c', name) atom.
"""
import sys
from functools import lru_cache

MAXBITS = int(sys.argv[1]) if len(sys.argv) > 1 else 28
STEPS = 3000


@lru_cache(maxsize=None)
def gen(n, depth):
    out = []
    if n >= 2 and n - 2 < depth:
        out.append(('v', n - 2))
    if n >= 4:
        for b in gen(n - 2, depth + 1):
            out.append(('l', b))
        for k in range(2, n - 3):
            fs = gen(k, depth)
            if not fs:
                continue
            xs = gen(n - 2 - k, depth)
            for f in fs:
                for x in xs:
                    out.append(('a', f, x))
    return tuple(out)


def occurs(t, i):
    k = t[0]
    if k == 'v':
        return t[1] == i
    if k == 'l':
        return occurs(t[1], i + 1)
    if k == 'a':
        return occurs(t[1], i) or occurs(t[2], i)
    return False


def shift(t, by, cut=0):
    k = t[0]
    if k == 'v':
        return ('v', t[1] + by) if t[1] >= cut else t
    if k == 'l':
        return ('l', shift(t[1], by, cut + 1))
    if k == 'a':
        return ('a', shift(t[1], by, cut), shift(t[2], by, cut))
    return t


def min_free(t, d=0):
    """Smallest free index of t relative to depth d, or None."""
    k = t[0]
    if k == 'v':
        return t[1] - d if t[1] >= d else None
    if k == 'l':
        return min_free(t[1], d + 1)
    if k == 'a':
        a, b = min_free(t[1], d), min_free(t[2], d)
        if a is None:
            return b
        if b is None:
            return a
        return min(a, b)
    return None


def has_outer(t, d):
    """Does t (at depth d inside the body Q) mention a variable bound outside λu?"""
    k = t[0]
    if k == 'v':
        return t[1] > d
    if k == 'l':
        return has_outer(t[1], d + 1)
    if k == 'a':
        return has_outer(t[1], d) or has_outer(t[2], d)
    return False


def candidates(t, d, acc):
    """u-free, inner-binder-free subterms of the body, lowered to the outer scope."""
    m = min_free(t)
    if m is not None and m > d:            # all free indices point outside λu
        acc.add(shift(t, -(d + 1)))
    k = t[0]
    if k == 'l':
        candidates(t[1], d + 1, acc)
    elif k == 'a':
        candidates(t[1], d, acc)
        candidates(t[2], d, acc)


def covered(t, d, R):
    """Every outer variable of t lies inside a copy of R."""
    if t == shift(R, d + 1):
        return True
    k = t[0]
    if k == 'v':
        return t[1] <= d
    if k == 'l':
        return covered(t[1], d + 1, R)
    if k == 'a':
        return covered(t[1], d, R) and covered(t[2], d, R)
    return True


def factors(Q):
    if not has_outer(Q, 0):
        return True
    acc = set()
    candidates(Q, 0, acc)
    return any(covered(Q, 0, R) for R in acc)


def so(t):
    k = t[0]
    if k == 'l':
        if not so(t[1]):
            return False
        return (not occurs(t[1], 0)) or factors(t[1])
    if k == 'a':
        return so(t[1]) and so(t[2])
    return True


K = ('l', ('l', ('v', 1)))
F = ('l', ('l', ('v', 0)))


def whead(t):
    """Krivine machine. Returns the atom name reached with an empty stack, else None."""
    env, stack = (), []
    for _ in range(STEPS):
        k = t[0]
        if k == 'a':
            stack.append((t[2], env))
            t = t[1]
        elif k == 'l':
            if not stack:
                return None
            env = (stack.pop(),) + env
            t = t[1]
        elif k == 'v':
            t, env = env[t[1]]
        else:
            return t[1] if not stack else None
    return 'CAP'


def pair_like(T):
    X, Y = ('c', 'x'), ('c', 'y')
    a = whead(('a', ('a', ('a', T, X), Y), K))
    if a != 'x':
        return a == 'CAP' and 'cap' or False
    b = whead(('a', ('a', ('a', T, X), Y), F))
    if b == 'y':
        return True
    return b == 'CAP' and 'cap' or False


def show(t):
    k = t[0]
    if k == 'v':
        return str(t[1])
    if k == 'l':
        return 'λ.' + show(t[1])
    if k == 'a':
        f = show(t[1])
        x = show(t[2])
        if t[2][0] != 'v':
            x = '(' + x + ')'
        if t[1][0] == 'l':
            f = '(' + f + ')'
        return f + ' ' + x
    return t[1]


tot = so_n = pairs = so_pairs = caps = so_caps = 0
for n in range(4, MAXBITS + 1):
    row = [0, 0, 0, 0]
    for T in gen(n, 0):
        s = so(T)
        p = pair_like(T)
        row[0] += 1
        row[1] += s
        if p is True:
            row[2] += 1
            if s:
                row[3] += 1
                print("COUNTEREXAMPLE", n, show(T))
            elif row[2] <= 2:
                print("  pair, not SO:", n, show(T))
        elif p == 'cap':
            caps += 1
            so_caps += s
    tot += row[0]; so_n += row[1]; pairs += row[2]; so_pairs += row[3]
    print(f"bits {n}: terms {row[0]} SO {row[1]} pair-like {row[2]} of them SO {row[3]}", flush=True)
print(f"total {tot} terms, {so_n} SO, {pairs} pair-like, {so_pairs} SO pair-like, "
      f"{caps} capped first/second probe ({so_caps} SO)")
