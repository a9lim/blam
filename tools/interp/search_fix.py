#!/usr/bin/env python3
"""Exhaust one-hole BLC contexts for small weak-head fixed-point knots.

The distinguished closed atom H has size zero: replacing it by any closed
term adds exactly that term's BLC size.  A context is accepted when weak-head
reduction first exposes H applied to a term that occurred earlier on the same
reduction path.  Thus C[H] ->* H Y with Y a reduct of C[H].
"""

from functools import cache
import sys

H = ("H",)


@cache
def terms(depth, bits, holes):
    out = set()
    if holes == 1 and bits == 0:
        out.add(H)
    if holes == 0:
        for index in range(depth):
            if index + 2 == bits:
                out.add(("V", index))
    if bits >= 2:
        for body in terms(depth + 1, bits - 2, holes):
            out.add(("L", body))
        for left_bits in range(bits - 1):
            right_bits = bits - 2 - left_bits
            for left_holes in range(holes + 1):
                right_holes = holes - left_holes
                for left in terms(depth, left_bits, left_holes):
                    for right in terms(depth, right_bits, right_holes):
                        out.add(("A", left, right))
    return frozenset(out)


def shift(delta, cutoff, term):
    kind = term[0]
    if kind == "H":
        return term
    if kind == "V":
        return ("V", term[1] + delta) if term[1] >= cutoff else term
    if kind == "L":
        return ("L", shift(delta, cutoff + 1, term[1]))
    return (
        "A",
        shift(delta, cutoff, term[1]),
        shift(delta, cutoff, term[2]),
    )


def subst(index, replacement, term):
    kind = term[0]
    if kind == "H":
        return term
    if kind == "V":
        return replacement if term[1] == index else term
    if kind == "L":
        return (
            "L",
            subst(index + 1, shift(1, 0, replacement), term[1]),
        )
    return (
        "A",
        subst(index, replacement, term[1]),
        subst(index, replacement, term[2]),
    )


def beta(function, argument):
    return shift(-1, 0, subst(0, shift(1, 0, argument), function[1]))


def weak_head_step(term):
    if term[0] != "A":
        return None
    function, argument = term[1], term[2]
    if function[0] == "L":
        return beta(function, argument)
    reduced_function = weak_head_step(function)
    if reduced_function is None:
        return None
    return ("A", reduced_function, argument)


def head_h_argument(term):
    if term[0] == "A" and term[1] == H:
        return term[2]
    return None


def fixed_path(term, fuel=200):
    path = [term]
    seen = {term}
    for _ in range(fuel):
        argument = head_h_argument(path[-1])
        if argument is not None:
            try:
                prior = path.index(argument)
            except ValueError:
                return None
            return path, prior
        nxt = weak_head_step(path[-1])
        if nxt is None or nxt in seen:
            return None
        path.append(nxt)
        seen.add(nxt)
    return None


def render(term, names=()):
    kind = term[0]
    if kind == "H":
        return "H"
    if kind == "V":
        return names[term[1]] if term[1] < len(names) else f"#{term[1]}"
    if kind == "L":
        name = chr(ord("a") + len(names) % 26)
        return f"(\\{name}.{render(term[1], (name,) + names)})"
    return f"({render(term[1], names)} {render(term[2], names)})"


if __name__ == "__main__":
    limit = int(sys.argv[1]) if len(sys.argv) > 1 else 20
    total = 0
    winners = []
    for bits in range(limit + 1):
        candidates = terms(0, bits, 1)
        total += len(candidates)
        found = []
        for candidate in candidates:
            result = fixed_path(candidate)
            if result is not None:
                path, prior = result
                found.append((candidate, len(path) - 1, prior))
        winners.extend((bits, *row) for row in found)
        print(
            f"overhead {bits:2d}: {len(candidates):5d} contexts, "
            f"{len(found):2d} knots"
        )
    print(f"tested {total} contexts through overhead {limit}")
    for bits, candidate, steps, prior in winners:
        print(
            f"  {bits:2d} bits, {steps} beta steps, returns path[{prior}]: "
            f"{render(candidate)}"
        )
