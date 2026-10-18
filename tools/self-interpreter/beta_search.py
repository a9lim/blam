#!/usr/bin/env python3
"""Bidirectional beta/eta neighborhood search for a compiled .lam interpreter.

Explores the connected component of the start term T0 under single moves,
restricted to terms of at most |T0| + SLACK bits, and reports everything in
that sublevel set smaller than T0 (and its size ties).  Every move preserves
beta-eta equivalence, so every term found is the same algorithm written
differently; improvements and ties are still run through harness.py's battery.

Moves, each one step:
  reduce    (\\v. B) A  ->  B[v := A]                 at any redex
  eta-      \\x. M x    ->  M                         x not free in M
  eta+      M          ->  \\x. M x                    at any subterm
  abstract  N  ->  (\\v. N[S := v]) S                 one or all occurrences of
                                                    a subterm S whose free
                                                    variables point above N
  antiunify N  ->  (\\g. N[S1 := g A1.., S2 := g A2..]) (\\x... G)
            for two subterms sharing a skeleton G; their differing parts
            become G's parameters.  A macro for two abstractions and a CSE,
            so helpers like cons' and skipvar sit one step away instead of
            ~15 bits uphill.

Tromp's optimizer (blcc.py) searches reductions only; this adds the
expansions.  It cannot change a data representation: every reachable term is
beta-eta-equal to T0.

Usage: beta_search.py FILE.lam [--slack S] [--workers W] [--no-au] [--no-eta]
"""

from concurrent.futures import ProcessPoolExecutor
from pathlib import Path
import os
import sys
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(HERE.parent))

import blcc

sys.setrecursionlimit(100000)

# ------------------------------------------------------------------ terms


def encode(t):
    return blcc.encode(t)


def decode(bits):
    pos = 0

    def go():
        nonlocal pos
        if bits[pos] == "0":
            if bits[pos + 1] == "0":
                pos += 2
                return ("L", go())
            pos += 2
            f = go()
            return ("A", f, go())
        n = 0
        while bits[pos] == "1":
            n += 1
            pos += 1
        pos += 1
        return ("V", n - 1)

    return go()


def shift(t, d, c=0):
    k = t[0]
    if k == "V":
        return ("V", t[1] + d) if t[1] >= c else t
    if k == "L":
        return ("L", shift(t[1], d, c + 1))
    return ("A", shift(t[1], d, c), shift(t[2], d, c))


def minfree(t, c=0):
    """Smallest free index of t as seen from t's own position (inf if closed)."""
    k = t[0]
    if k == "V":
        return t[1] - c if t[1] >= c else float("inf")
    if k == "L":
        return minfree(t[1], c + 1)
    return min(minfree(t[1], c), minfree(t[2], c))


def occurs(i, t):
    k = t[0]
    if k == "V":
        return t[1] == i
    if k == "L":
        return occurs(i + 1, t[1])
    return occurs(i, t[1]) or occurs(i, t[2])


def positions(t, path=(), depth=0):
    yield path, t, depth
    if t[0] == "L":
        yield from positions(t[1], path + (1,), depth + 1)
    elif t[0] == "A":
        yield from positions(t[1], path + (1,), depth)
        yield from positions(t[2], path + (2,), depth)


def put(t, p, new):
    if not p:
        return new
    parts = list(t)
    parts[p[0]] = put(t[p[0]], p[1:], new)
    return tuple(parts)


def nested(p1, p2):
    return p1[: len(p2)] == p2 or p2[: len(p1)] == p1


def apps(head, args):
    for a in args:
        head = ("A", head, a)
    return head


def show(t, d=0):
    names = "abcdefghijklmnopqrstuvwxyz"
    k = t[0]
    if k == "V":
        return names[d - 1 - t[1]] if t[1] < d else f"#{t[1] - d}"
    if k == "L":
        return "\\" + names[d] + "." + show(t[1], d + 1)
    f, a = show(t[1], d), show(t[2], d)
    if t[1][0] == "L":
        f = "(" + f + ")"
    if t[2][0] != "V":
        a = "(" + a + ")"
    return f + " " + a


# ------------------------------------------------------------------ moves


def reductions(T):
    for p, t, _ in positions(T):
        if t[0] == "A" and t[1][0] == "L":
            yield put(T, p, blcc.subst(0, t[2], t[1][1])), "reduce"
        if t[0] == "L" and t[1][0] == "A" and t[1][2] == ("V", 0) and not occurs(0, t[1][1]):
            yield put(T, p, shift(t[1][1], -1)), "eta-"


def eta_expansions(T):
    for p, t, _ in positions(T):
        yield put(T, p, ("L", ("A", shift(t, 1), ("V", 0)))), "eta+"


def abstractions(T):
    for q, N, _ in positions(T):
        liftable = {}
        for p, S, k in positions(N):
            # k binders sit between N and S; S must not reference any of them.
            if p and minfree(S) >= k:
                liftable.setdefault(shift(S, -k), []).append((p, k))
        for lifted, occ in liftable.items():
            sets = [[o] for o in occ]
            if len(occ) > 1 and not any(
                a != b and nested(a, b) for a, _ in occ for b, _ in occ
            ):
                sets.append(occ)
            for chosen in sets:
                body = shift(N, 1)
                for p, k in chosen:
                    body = put(body, p, ("V", k))
                yield put(T, q, ("A", ("L", body), lifted)), (f"abstract{len(chosen)}", q, [])


def antiunify(S1, k1, S2, k2):
    """Skeleton shared by S1 (k1 binders below N) and S2 (k2 below N), with
    holes for their differences.  Returns (skeleton, holes) or None.  Skeleton
    leaves: ('V', i) bound inside the skeleton, ('O', m) the variable m above
    N, ('H', j) hole j.  holes[j] = (A1, A2), each in its own site's context."""
    holes = []

    def hole(u1, u2, d):
        if minfree(u1) < d or minfree(u2) < d:
            return None  # the difference mentions a skeleton binder
        a = (shift(u1, -d), shift(u2, -d))
        if a in holes:
            return ("H", holes.index(a))
        holes.append(a)
        return ("H", len(holes) - 1)

    def walk(u1, u2, d):
        if u1[0] == u2[0] == "L":
            b = walk(u1[1], u2[1], d + 1)
            return None if b is None else ("L", b)
        if u1[0] == u2[0] == "A":
            mark = len(holes)
            f = walk(u1[1], u2[1], d)
            a = None if f is None else walk(u1[2], u2[2], d)
            if a is not None:
                return ("A", f, a)
            del holes[mark:]  # the whole application becomes one hole
            return hole(u1, u2, d)
        if u1[0] == u2[0] == "V":
            i1, i2 = u1[1], u2[1]
            if i1 < d and i1 == i2:
                return ("V", i1)
            if i1 >= d + k1 and i2 >= d + k2 and i1 - d - k1 == i2 - d - k2:
                return ("O", i1 - d - k1)
        return hole(u1, u2, d)

    skel = walk(S1, S2, 0)
    if skel is None or skel[0] == "H":
        return None
    return skel, holes


def build_skeleton(skel, h, d=0):
    k = skel[0]
    if k == "V":
        return skel
    if k == "O":
        return ("V", skel[1] + h + d)
    if k == "H":
        return ("V", d + h - 1 - skel[1])
    if k == "L":
        return ("L", build_skeleton(skel[1], h, d + 1))
    return ("A", build_skeleton(skel[1], h, d), build_skeleton(skel[2], h, d))


def antiunifications(T):
    for q, N, _ in positions(T):
        sites = [(p, S, k) for p, S, k in positions(N) if p and S[0] != "V"]
        for i, (p1, S1, k1) in enumerate(sites):
            for p2, S2, k2 in sites[i + 1 :]:
                if S1[0] != S2[0] or nested(p1, p2):
                    continue
                r = antiunify(S1, k1, S2, k2)
                if r is None:
                    continue
                skel, holes = r
                h = len(holes)
                if h == 0:
                    continue  # a CSE: abstractions() already has it
                G = build_skeleton(skel, h)
                for _ in range(h):
                    G = ("L", G)
                body = shift(N, 1)
                body = put(body, p1, apps(("V", k1), [shift(a, 1, k1) for a, _ in holes]))
                body = put(body, p2, apps(("V", k2), [shift(a, 1, k2) for _, a in holes]))
                yield put(T, q, ("A", ("L", body), G)), (f"antiunify{h}", q, [(p1, h), (p2, h)])


# ------------------------------------------------------------------ self-test


def reduce_at(T, p):
    t = T
    for i in p:
        t = t[i]
    assert t[0] == "A" and t[1][0] == "L", "no redex at the claimed site"
    return put(T, p, blcc.subst(0, t[2], t[1][1]))


def invert(T2, info):
    """Undo an expansion by beta: the let at q, then each site's h-argument
    application chain, innermost redex first."""
    _, q, sites = info
    T = reduce_at(T2, q)
    for p, h in sites:
        for i in range(h):
            T = reduce_at(T, q + p + (1,) * (h - 1 - i))
    return T


def selftest(T):
    """Every expansion must beta-reduce back to T exactly; every eta+ must
    eta-reduce back.  Returns per-family counts."""
    counts = {}
    for gen in (abstractions, antiunifications):
        for T2, info in gen(T):
            assert invert(T2, info) == T, f"{info[0]} at {info[1]} does not invert"
            counts[info[0]] = counts.get(info[0], 0) + 1
    for T2, _ in eta_expansions(T):
        assert any(T3 == T for T3, l in reductions(T2) if l == "eta-"), "eta+ does not invert"
        counts["eta+"] = counts.get("eta+", 0) + 1
    return counts


# ------------------------------------------------------------------ search

CFG = {}


def init(cfg):
    CFG.update(cfg)


def expand(keys):
    """Neighbors of each frontier term that fit under the limit."""
    out = []
    limit = CFG["limit"]
    for key in keys:
        T = decode(key)
        gens = [reductions(T), abstractions(T)]
        if CFG["eta"]:
            gens.append(eta_expansions(T))
        if CFG["au"]:
            gens.append(antiunifications(T))
        seen = set()
        for gen in gens:
            for T2, label in gen:
                label = label if isinstance(label, str) else label[0]
                k2 = encode(T2)
                if len(k2) <= limit and k2 not in seen:
                    seen.add(k2)
                    out.append((k2, key, label))
    return out


def main():
    args = sys.argv[1:]

    def opt(flag, default, conv=int):
        if flag in args:
            i = args.index(flag)
            v = conv(args[i + 1])
            del args[i : i + 2]
            return v
        return default

    slack = opt("--slack", 8)
    workers = opt("--workers", 8)
    cfg = {"au": "--no-au" not in args, "eta": "--no-eta" not in args}
    args = [a for a in args if a not in ("--no-au", "--no-eta")]
    from harness import check

    for path in args:
        _, _, T0 = blcc.compile_lam(path)
        k0 = encode(T0)
        base = len(k0)
        cfg["limit"] = base + slack
        print(f"{path}: {base} bits, slack {slack} (limit {base + slack}), "
              f"au={cfg['au']} eta={cfg['eta']}, {workers} workers", flush=True)
        parent = {k0: (None, "start")}
        frontier = [k0]
        layer = 0
        t0 = time.time()
        with ProcessPoolExecutor(workers, initializer=init, initargs=(cfg,)) as ex:
            while frontier:
                layer += 1
                chunk = max(1, len(frontier) // (workers * 8))
                batches = [frontier[i : i + chunk] for i in range(0, len(frontier), chunk)]
                nxt = []
                for res in ex.map(expand, batches):
                    for k2, k1, label in res:
                        if k2 not in parent:
                            parent[k2] = (k1, label)
                            nxt.append(k2)
                frontier = nxt
                print(f"  layer {layer}: +{len(frontier)} new, {len(parent)} total, "
                      f"{time.time() - t0:.1f}s", flush=True)
        hist = {}
        for k in parent:
            hist[len(k) - base] = hist.get(len(k) - base, 0) + 1
        print(f"  component under the limit: {len(parent)} terms, "
              f"size histogram (delta: count) {dict(sorted(hist.items()))}")
        for k in list(parent)[:200]:  # moves invert exactly on a sample of the set
            selftest(decode(k))
        better = sorted((k for k in parent if len(k) < base), key=len)
        ties = [k for k in parent if len(k) == base and k != k0]
        print(f"  {len(ties)} other term(s) tie at {base} bits")
        for k in better + ties[:5]:
            path_labels = []
            j = k
            while parent[j][0] is not None:
                path_labels.append(f"{parent[j][1]}->{len(j)}")
                j = parent[j][0]
            T = decode(k)
            battery = check(T) if len(k) < base else "-"
            print(f"  {len(k)} bits  battery={battery}  via {' '.join(reversed(path_labels))}")
            print(f"    {show(T)}")
        if not better:
            print(f"  nothing below {base} bits in the component under the limit")


if __name__ == "__main__":
    main()
