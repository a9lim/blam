"""Shared program generator for the run-family differentials: every closed
BLC term up to a size, plus a seeded sample of larger random closed terms,
and a printer into Tromp's λ-notation (binders named by depth, as
`Lambda.lhs`'s `toLC` names them)."""
import random


def closed(n, depth=0):
    """Wire strings of the closed-under-`depth` terms of exactly n bits."""
    if n < 2:
        return
    if 1 <= n - 1 <= depth:
        yield "1" * (n - 1) + "0"
    if n >= 4:
        for b in closed(n - 2, depth + 1):
            yield "00" + b
    for i in range(2, n - 2):
        for f in closed(i, depth):
            for a in closed(n - 2 - i, depth):
                yield "01" + f + a


def sample(max_exhaustive=20, random_count=2500, seed=7, lo=21, hi=64):
    terms = [t for n in range(4, max_exhaustive + 1) for t in closed(n)]
    rng = random.Random(seed)

    def rand(depth, budget):
        r = rng.random()
        if budget <= 4 or r < 0.3:
            return "0010" if depth == 0 else "1" * rng.randint(1, depth) + "0"
        if r < 0.6:
            return "00" + rand(depth + 1, budget - 2)
        return "01" + rand(depth, budget // 2) + rand(depth, budget // 2)

    extra = set()
    while len(extra) < random_count:
        t = rand(0, rng.randint(20, 60))
        if lo <= len(t) <= hi:
            extra.add(t)
    return terms + sorted(extra)


def to_lam(bits):
    """Tromp's `Show (LC Int)` of a wire term."""
    i = 0

    def go(d):
        nonlocal i
        if bits[i] == "1":
            n = 0
            while bits[i] == "1":
                n += 1
                i += 1
            i += 1
            return ("v", d - n)
        i += 1
        if bits[i] == "0":
            i += 1
            return ("l", d, go(d + 1))
        i += 1
        f = go(d)
        return ("a", f, go(d))

    def show(t, p=0):
        if t[0] == "v":
            return str(t[1])
        if t[0] == "l":
            s = f"\\{t[1]}." + show(t[2], 0)
            return f"({s})" if p > 0 else s
        s = show(t[1], 1) + " " + show(t[2], 2)
        return f"({s})" if p > 1 else s

    return show(go(0))
