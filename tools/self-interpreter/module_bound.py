#!/usr/bin/env python3
"""A conditional lower bound: the 168 is optimal in a module grammar.

The 168 splits into modules: the knot, the parser's administration, the
dispatch handler with its VAR branch, the NEXT header with ABS and APP, the
cons' cell inside ABS, and the lifted application inside APP. Each module is
searched exhaustively at its own de Bruijn depth. Every term up to the
reference size is generated, and its neighbouring modules are replaced by
fresh rigid symbols. A module passes when its β-normal forms on rigid probes
equal the law it must satisfy. Each search finds the 168's own module as the
unique minimum. Filling the minima back into one another reproduces the 168
bit for bit, so within this grammar there is no gap:

    knot 22 + administration 12 + dispatch 20 + VAR 22 + NEXT 17
    + ABS 40 (16 + cell 24) + APP 35 (16 + lift 19) = 168.

The grammar (docs/classical/self-interpreter/interpreter.md §4) is narrower than every
interpreter:
- modules are opaque and composed hygienically;
- the laws hold with neighbours rigid;
- the capture layout is the 168's;
- the knot treats the body as opaque.

A smaller interpreter has to break at least one of those clauses. The
`*_packed` cases re-search five modules with only their own live variables
in scope. They are 8 bits cheaper in all, and that is exactly the price the
168 pays for its shared lexical layout. It is not a candidate size.

    module_bound.py certify [CASE...]   every module search (default: all)
    module_bound.py knot                every closed context of <= 20 bits
    module_bound.py assemble            fill the minima in; must equal the 168
    module_bound.py audit               cross-check the normalizer (Python, Rust)

Searches are exact and β-only: a repeated normal-order state proves a loop,
and an unresolved reduction fails the run. Results go to
data/self-interpreter/module_bound/.
"""
from concurrent.futures import ThreadPoolExecutor
from functools import cache
import json
from pathlib import Path
import random
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
sys.path[:0] = [str(HERE), str(HERE.parent)]
import lc  # noqa: E402

OUT = ROOT / "data" / "self-interpreter" / "module_bound"
INT168 = ("010001101000010000010000011000000101110011011110010111111010010110101000"
          "011110000101110011110000001111000000101110111001101111001111100001111100"
          "001011110100111010011010")


def V(i):
    return ("V", i)


def L(b):
    return ("L", b)


def A(f, *args):
    for a in args:
        f = ("A", f, a)
    return f


K = L(L(V(1)))  # bit 0
F = L(L(V(0)))  # bit 1


@cache
def step(t):
    """One leftmost-outermost β step, or None at a normal form."""
    if t[0] == "V":
        return None
    if t[0] == "L":
        b = step(t[1])
        return None if b is None else L(b)
    if t[1][0] == "L":
        return lc.beta(t[1], t[2])
    f = step(t[1])
    if f is not None:
        return A(f, t[2])
    a = step(t[2])
    return None if a is None else A(t[1], a)


def normal(t):
    """β-normal form; 'CYCLE' if normal order revisits a state (a proof that
    there is none), 'UNKNOWN' past the step or size budget. No η."""
    seen = set()
    for _ in range(1024):
        if t in seen:
            return "CYCLE"
        seen.add(t)
        if lc.size(t) > 10000:
            return "UNKNOWN"
        u = step(t)
        if u is None:
            return t
        t = u
    return "UNKNOWN"


def enc(t):
    if t[0] == "H":
        return "[" + t[1] + "]"
    if t[0] == "V":
        return "1" * (t[1] + 1) + "0"
    if t[0] == "L":
        return "00" + enc(t[1])
    return "01" + enc(t[1]) + enc(t[2])


def expand(t, hole, depth=0):
    """Replace each hole by hole(name, depth below the search root)."""
    if t[0] == "H":
        return hole(t[1], depth)
    if t[0] == "V":
        return t
    if t[0] == "L":
        return L(expand(t[1], hole, depth + 1))
    return A(expand(t[1], hole, depth), expand(t[2], hole, depth))


def replace_free(t, repls, depth=0):
    """Substitute closed-over-the-frame terms for free indices."""
    if t[0] == "V":
        i = t[1] - depth
        return lc.shift(depth, 0, repls[i]) if t[1] >= depth and i in repls else t
    if t[0] == "L":
        return L(replace_free(t[1], repls, depth + 1))
    return A(replace_free(t[1], repls, depth), replace_free(t[2], repls, depth))


class Grammar:
    """Every term of exact BLC cost n under d local binders with k ambient
    variables, using exactly the hole set hs (bitmask over `holes`). Holes
    cost 0 and need at least their minimum binder depth. Each term comes with
    the mask of ambient variables it mentions."""

    def __init__(self, k, holes):
        self.k = k
        self.holes = holes

    @cache
    def terms(self, n, d, hs):
        out = []
        if hs == 0 and n >= 2 and n - 2 < self.k + d:
            i = n - 2
            out.append((V(i), 0 if i < d else 1 << (i - d)))
        if n == 0 and hs and hs & (hs - 1) == 0:
            name, min_depth = self.holes[hs.bit_length() - 1]
            if d >= min_depth:
                out.append((("H", name), 0))
        if n >= 2:
            out.extend((L(b), m) for b, m in self.terms(n - 2, d + 1, hs))
            # Applications split the hole set exactly, so each hole occurs
            # once.
            sub = hs
            while True:
                for i in range(n - 1):
                    for f, fm in self.terms(i, d, sub):
                        for a, am in self.terms(n - 2 - i, d, hs ^ sub):
                            out.append((A(f, a), fm | am))
                if sub == 0:
                    break
                sub = (sub - 1) & hs
        return tuple(out)


# Each case: (ambient variables, holes as (name, min depth), required ambient
# indices, max cost, probes). probes(t) yields (term, wanted normal form).
# Ambient frames, innermost first, are noted in each case's comment.

def _var(t):
    k = 7  # [s b list next c p x]; wants c s n
    for bits in ["0", "10", "110"]:
        s = lc.bitlist(bits, V(k))
        yield replace_free(t, {0: s}), A(V(4), s, V(k))


def _dispatch_stream(t):
    k = 7  # [s b list next c p x]; D[K, s] = s next, D[F, s] = VAR
    e = expand(t, lambda h, d: V(k + d))
    for bits in ["0", "10"]:
        r = lc.bitlist(bits, V(k + 1))
        for bit, want in [(K, normal(A(r, V(3)))), (F, V(k))]:
            yield replace_free(e, {0: r, 1: bit}), want


def _dispatch(t):
    k = 7  # arbitrary stream s
    e = expand(t, lambda h, d: V(k + d))
    for bit, want in [(K, A(V(0), V(3))), (F, V(k))]:
        yield replace_free(e, {1: bit}), want


def _lift(t):
    # [g f b c p x]; L e = f e (g e)
    yield A(lc.shift(1, 0, t), V(0)), A(V(2), V(0), A(V(1), V(0)))


def _abs(t):
    k = 5  # [f b c p x]; the cell R arg env is rigid
    e = expand(t, lambda h, d: A(V(k + d), V(0), V(1)))
    yield e, A(V(2), L(L(A(V(2), A(V(k + 2), V(0), V(1))))))


def _app(t):
    k = 5  # [f b c p x]; the lift V f g is rigid
    e = expand(t, lambda h, d: A(V(k + d), V(d), V(0)))
    yield e, A(V(3), L(A(V(3), A(V(k + 1), V(1), V(0)))))


def _next(t):
    k = 4  # body of \bit1, frame [b c p x]; ABS f / APP f rigid
    e = expand(t, lambda h, d: A(V(k + d + (h == "APP")), V(0)))
    for bit, i in [(K, 0), (F, 1)]:
        yield replace_free(e, {0: bit}), A(V(2), L(A(V(k + 1 + i), V(0))))


def _admin(t):
    # frame [p]; wants \c \list. list (H c (J c)) with H, J rigid
    def hole(h, d):
        return A(V(1 + d), V(2), V(1)) if h == "HANDLER" else A(V(2 + d), V(0))
    yield expand(t, hole), L(L(A(V(0), A(V(3), V(1), A(V(4), V(1))))))


def _cell(reachable):
    def probes(t):
        # [arg env]: T K n = arg ...
        yield A(lc.shift(1, 0, t), K, V(0)), V(1)
        if not reachable:  # ... and T F r = r env for arbitrary r
            yield A(lc.shift(1, 0, t), F, V(0)), A(V(0), V(2))
            return
        # ... or only the reachable one: T(a, T(b, e)) F (0 : n) = b
        tail = replace_free(t, {0: V(2), 1: V(3)})
        outer = replace_free(t, {0: V(0), 1: tail})
        yield A(outer, F, lc.bitlist("0", V(4))), V(2)
    return probes


def _var_packed(t):
    k = 2  # [s c]
    for bits in ["0", "10", "110"]:
        s = lc.bitlist(bits, V(k))
        yield replace_free(t, {0: s}), A(V(1), s, V(k))


def _dispatch_packed(t):
    k = 3  # [s b next]
    e = expand(t, lambda h, d: V(k + d))
    for bit, want in [(K, A(V(0), V(2))), (F, V(k))]:
        yield replace_free(e, {1: bit}), want


def _abs_packed(t):
    k = 2  # [f c]
    e = expand(t, lambda h, d: A(V(k + d), V(0), V(1)))
    yield e, A(V(1), L(L(A(V(2), A(V(k + 2), V(0), V(1))))))


def _app_packed(t):
    k = 3  # [f c p]
    e = expand(t, lambda h, d: A(V(k + d), V(d), V(0)))
    yield e, A(V(2), L(A(V(2), A(V(k + 1), V(1), V(0)))))


def _next_packed(t):
    k = 2  # [b p]
    e = expand(t, lambda h, d: A(V(k + d + (h == "APP")), V(0)))
    for bit, i in [(K, 0), (F, 1)]:
        yield replace_free(e, {0: bit}), A(V(1), L(A(V(k + 1 + i), V(0))))


CASES = {
    "var": (7, [], [0, 4], 22, _var),
    "dispatch": (7, [("VAR", 0)], [0, 1, 3], 16, _dispatch),
    "dispatch_stream": (7, [("VAR", 0)], [0, 1, 3], 16, _dispatch_stream),
    "cell": (2, [], [0, 1], 24, _cell(False)),
    "cell_reachable": (2, [], [0, 1], 24, _cell(True)),
    "lift": (6, [], [0, 1], 19, _lift),
    "abs": (5, [("CELL", 2)], [0, 2], 16, _abs),
    "app": (5, [("LIFT", 1)], [2, 3], 16, _app),
    "next": (4, [("ABS", 1), ("APP", 1)], [0, 2], 15, _next),
    "admin": (1, [("HANDLER", 3), ("NEXT", 1)], [], 12, _admin),
    "var_packed": (2, [], [0, 1], 19, _var_packed),
    "dispatch_packed": (3, [("VAR", 0)], [0, 1, 2], 15, _dispatch_packed),
    "abs_packed": (2, [("CELL", 2)], [0, 1], 15, _abs_packed),
    "app_packed": (3, [("LIFT", 1)], [1, 2], 14, _app_packed),
    "next_packed": (2, [("ABS", 1), ("APP", 1)], [0, 1], 14, _next_packed),
}


def certify(name):
    k, holes, must, max_cost, probes = CASES[name]
    g = Grammar(k, holes)
    need = sum(1 << i for i in must)
    hs = (1 << len(holes)) - 1
    total = tested = unknown = cycles = 0
    hits, rows = [], []
    t0 = time.monotonic()
    for n in range(max_cost + 1):
        cand = g.terms(n, 0, hs)
        n_tested = n_hits = 0
        for t, mask in cand:
            total += 1
            # A required rigid output symbol can only come from its input.
            if mask & need != need:
                continue
            tested += 1
            n_tested += 1
            for got, want in probes(t):
                ans = normal(got)
                if ans == "UNKNOWN":
                    unknown += 1
                    break
                if ans == "CYCLE":
                    cycles += 1
                    break
                if ans != want:
                    break
            else:
                hits.append({"cost": n, "bits_with_holes": enc(t)})
                n_hits += 1
        rows.append({"cost": n, "all": len(cand), "tested": n_tested, "hits": n_hits})
        step.cache_clear()
    result = {"name": name, "ambient": k, "holes": holes, "required": must,
              "max_cost": max_cost, "all": total, "tested": tested,
              "unknown": unknown, "cycles": cycles, "hits": hits, "rows": rows}
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / f"{name}.json").write_text(json.dumps(result, indent=1) + "\n")
    best = ", ".join(f"{h['cost']} {h['bits_with_holes']}" for h in hits) or "none"
    print(f"{name:16s} {total:7d} generated {tested:6d} tested  unknown {unknown}"
          f"  minimum: {best}  ({time.monotonic() - t0:.2f}s)")
    assert unknown == 0, f"{name}: unresolved reductions"


def weak_step(t):
    if t[0] != "A":
        return None
    if t[1][0] == "L":
        return lc.beta(t[1], t[2])
    f = weak_step(t[1])
    return None if f is None else A(f, t[2])


def knot_verdict(t):
    """Does the context keep weak-head-unfolding the unary rigid H (index 0)?
    Accepts any eventual cycle of H unfoldings; rejects on a proved loop
    without one, or on a stuck head that is not H."""
    seen_outer = set()
    for _ in range(1024):
        if t in seen_outer:
            return "H_CYCLE"
        seen_outer.add(t)
        seen = set()
        while True:
            prefix = t
            while prefix[0] == "A":
                if prefix in seen:
                    return "DIVERGE"
                prefix = prefix[1]
            if prefix in seen:
                return "DIVERGE"
            seen.add(t)
            if len(seen) > 1024 or lc.size(t) > 10000:
                return "UNKNOWN"
            u = weak_step(t)
            if u is None:
                break
            t = u
        if t[0] != "A" or t[1] != V(0):
            return "WRONG"
        t = t[2]
    return "UNKNOWN"


def knot():
    """Every closed context of <= 20 bits around one opaque body hole."""
    g = Grammar(0, [("H", 0)])
    total = unknown = diverge = 0
    hits, rows = [], []
    for n in range(21):
        cand = g.terms(n, 0, 1)
        n_hits = 0
        for t, _ in cand:
            total += 1
            r = knot_verdict(expand(t, lambda h, d: V(d)))
            unknown += r == "UNKNOWN"
            diverge += r == "DIVERGE"
            if r == "H_CYCLE":
                hits.append({"cost": n, "bits_with_holes": enc(t)})
                n_hits += 1
        rows.append({"cost": n, "all": len(cand), "hits": n_hits})
        step.cache_clear()
    result = {"name": "knot", "all": total, "unknown": unknown,
              "diverge": diverge, "hits": hits, "rows": rows}
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "knot.json").write_text(json.dumps(result, indent=1) + "\n")
    best = ", ".join(f"{h['cost']} {h['bits_with_holes']}" for h in hits) or "none"
    print(f"knot             {total:7d} contexts  unknown {unknown}  minimum: {best}"
          " (+2 for the body's \\p)")
    assert unknown == 0, "knot: unresolved reductions"


def parse_holes(bits):
    def p(i):
        if bits[i] == "[":
            j = bits.index("]", i)
            return ("H", bits[i + 1:j]), j + 1
        if bits[i:i + 2] == "00":
            b, j = p(i + 2)
            return L(b), j
        if bits[i:i + 2] == "01":
            f, j = p(i + 2)
            a, k = p(j)
            return A(f, a), k
        j = i
        while bits[j] == "1":
            j += 1
        return V(j - i - 1), j + 1
    t, n = p(0)
    assert n == len(bits)
    return t


def assemble():
    """Fill each certified unique minimum into its parent: the literal 168."""
    def minimum(name):
        hits = json.loads((OUT / f"{name}.json").read_text())["hits"]
        assert len(hits) == 1, f"{name}: minimum is not unique"
        return parse_holes(hits[0]["bits_with_holes"])
    cell, var, lift = minimum("cell_reachable"), minimum("var"), minimum("lift")
    abs_ = expand(minimum("abs"), lambda h, d: cell)
    app = expand(minimum("app"), lambda h, d: lift)
    nxt = L(expand(minimum("next"), lambda h, d: abs_ if h == "ABS" else app))
    handler = L(L(expand(minimum("dispatch_stream"), lambda h, d: var)))
    admin = expand(minimum("admin"),
                   lambda h, d: handler if h == "HANDLER" else nxt)
    whole = expand(minimum("knot"), lambda h, d: L(admin))
    sizes = {n: lc.size(t) for n, t in [
        ("cell", cell), ("VAR", var), ("lift", lift), ("ABS", abs_), ("APP", app),
        ("NEXT", nxt), ("handler", handler), ("admin", admin), ("whole", whole)]}
    print("  ".join(f"{n} {s}" for n, s in sizes.items()))
    assert enc(whole) == INT168, "assembly differs from the 168"
    print("assembly equals the 168 bit for bit")


def audit():
    """Re-normalize every tested probe with lc.nf, and a sample (every winner
    plus 1 in 128) with the Rust machine, closed under λs."""
    import battery
    rng = random.Random(168)
    picked, count = [], 0
    for name, (k, holes, must, max_cost, probes) in CASES.items():
        hits = {h["bits_with_holes"]
                for h in json.loads((OUT / f"{name}.json").read_text())["hits"]}
        g = Grammar(k, holes)
        need = sum(1 << i for i in must)
        hs = (1 << len(holes)) - 1
        for n in range(max_cost + 1):
            for t, mask in g.terms(n, 0, hs):
                if mask & need != need:
                    continue
                for got, want in probes(t):
                    ans = normal(got)
                    assert ans == lc.nf(got, [10000]), (name, enc(t))
                    count += 1
                    if enc(t) in hits or rng.randrange(128) == 0:
                        picked.append((got, ans))
                    if ans != want:
                        break
            step.cache_clear()
        g.terms.cache_clear()

    def free_depth(t, d=0):
        if t[0] == "V":
            return max(0, t[1] - d + 1)
        if t[0] == "L":
            return free_depth(t[1], d + 1)
        return max(free_depth(t[1], d), free_depth(t[2], d))

    def rust(row):
        t, want = row
        for _ in range(max(free_depth(t), free_depth(want))):
            t, want = L(t), L(want)
        assert battery.normalize(enc(t), 1 << 16) == enc(want)
        return 1
    with ThreadPoolExecutor(4) as ex:
        n_rust = sum(ex.map(rust, picked))
    print(f"audit: {count} Python cross-checks, {n_rust} Rust, 0 disagreements")


def main():
    args = sys.argv[1:]
    if not args or args[0] not in ("certify", "knot", "assemble", "audit"):
        sys.exit(__doc__)
    if args[0] == "certify":
        for name in args[1:] or CASES:
            certify(name)
    elif args[0] == "knot":
        knot()
    elif args[0] == "assemble":
        assemble()
    else:
        audit()


if __name__ == "__main__":
    main()
