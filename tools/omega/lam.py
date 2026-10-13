"""De Bruijn terms for the Omega-bits tools: enumeration, encoding, and a
reference normal-order normalizer.

Terms are tuples: (0, i) is the variable with 0-based index i (wire 1^(i+1) 0,
size i + 2), (1, body) is an abstraction, (2, f, a) an application. "Depth k"
means valid under k binders: every free index is < k.
"""

import sys
from functools import lru_cache

sys.setrecursionlimit(1 << 20)


@lru_cache(maxsize=None)
def gen(n, k):
    """All terms of size n valid under k binders, as a tuple."""
    out = []
    if 1 <= n - 1 <= k:
        out.append((0, n - 2))
    if n >= 4:
        out.extend((1, b) for b in gen(n - 2, k + 1))
    for a in range(2, n - 3):
        fs, xs = gen(a, k), gen(n - 2 - a, k)
        out.extend((2, f, x) for f in fs for x in xs)
    return tuple(out)


def size(t):
    if t[0] == 0:
        return t[1] + 2
    if t[0] == 1:
        return 2 + size(t[1])
    return 2 + size(t[1]) + size(t[2])


def encode(t):
    if t[0] == 0:
        return "1" * (t[1] + 1) + "0"
    if t[0] == 1:
        return "00" + encode(t[1])
    return "01" + encode(t[1]) + encode(t[2])


def maxfree(t, d=0):
    """Largest free index, 1-based (0 for a closed term)."""
    if t[0] == 0:
        return t[1] - d + 1 if t[1] >= d else 0
    if t[0] == 1:
        return maxfree(t[1], d + 1)
    return max(maxfree(t[1], d), maxfree(t[2], d))


def uses(t, i, d=0):
    """Does t mention its free variable with 0-based index i?"""
    if t[0] == 0:
        return t[1] == i + d
    if t[0] == 1:
        return uses(t[1], i, d + 1)
    return uses(t[1], i, d) or uses(t[2], i, d)


def free_vars(t, d=0, acc=None):
    """Free indices of t, 0-based relative to t's top."""
    if acc is None:
        acc = set()
    if t[0] == 0:
        if t[1] >= d:
            acc.add(t[1] - d)
    elif t[0] == 1:
        free_vars(t[1], d + 1, acc)
    else:
        free_vars(t[1], d, acc)
        free_vars(t[2], d, acc)
    return acc


def shift(t, d, c=0):
    if t[0] == 0:
        return (0, t[1] + d) if t[1] >= c else t
    if t[0] == 1:
        return (1, shift(t[1], d, c + 1))
    return (2, shift(t[1], d, c), shift(t[2], d, c))


def subst(t, j, s):
    if t[0] == 0:
        return s if t[1] == j else t
    if t[0] == 1:
        return (1, subst(t[1], j + 1, shift(s, 1)))
    return (2, subst(t[1], j, s), subst(t[2], j, s))


def beta(lam, arg):
    return shift(subst(lam[1], 0, shift(arg, 1)), -1)


def nodes(t):
    n, stack = 0, [t]
    while stack:
        u = stack.pop()
        n += 1
        if u[0] == 1:
            stack.append(u[1])
        elif u[0] == 2:
            stack.append(u[1])
            stack.append(u[2])
    return n


class OutOfFuel(Exception):
    pass


def normalize(t, fuel=1000, cap=50000):
    """Normal-order normal form of t, or OutOfFuel after `fuel` beta steps or
    when the term exceeds `cap` nodes. Free variables are rigid."""
    left = [fuel]

    def go(t):
        while True:
            args, h = [], t
            while h[0] == 2:
                args.append(h[2])
                h = h[1]
            args.reverse()
            if h[0] == 1 and args:
                left[0] -= 1
                if left[0] < 0:
                    raise OutOfFuel
                t = beta(h, args[0])
                for a in args[1:]:
                    t = (2, t, a)
                if left[0] % 32 == 0 and nodes(t) > cap:
                    raise OutOfFuel
                continue
            if h[0] == 1:
                return (1, go(h[1]))
            r = h
            for a in args:
                r = (2, r, go(a))
            return r

    return go(t)


def run_deep(fn, *args):
    """Run fn on a thread with a large stack (deep recursion on big terms)."""
    import threading

    box = {}

    def target():
        try:
            box["value"] = fn(*args)
        except BaseException as e:  # re-raised on the caller's thread
            box["error"] = e

    threading.stack_size(1 << 29)
    th = threading.Thread(target=target)
    th.start()
    th.join()
    if "error" in box:
        raise box["error"]
    return box.get("value")
