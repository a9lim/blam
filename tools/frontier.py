#!/usr/bin/env python3
"""Frontier-unknowns analysis: group census unknowns by lambda-wrap seed.

A closed term X of size n yields a closed term 00X of size n+2 with identical
normalization behavior, so unknowns propagate up the size table as 00-chains.
This groups an adjudication run's lines by their innermost closed seed and
flags any verdict disagreement within a chain (which would indicate
threshold-dependence or an engine bug).

Usage:
  frontier.py <adjudicated.txt>     # lines: "<bits> <verdict...>"
  frontier.py --seeds <unknowns.txt> # lines: "<bits>"; just list seed groups
"""

import sys
from collections import defaultdict


def parse(bits, i=0):
    """Parse one BLC term at offset i. Returns (max_free, j) where max_free
    is the largest free de Bruijn index (0 if closed) and j the end offset.
    Raises ValueError on malformed input."""
    if i >= len(bits):
        raise ValueError("eof")
    if bits[i] == "1":
        j = i
        while j < len(bits) and bits[j] == "1":
            j += 1
        if j >= len(bits):
            raise ValueError("eof in var")
        n = j - i  # de Bruijn index, 1-based
        return n, j + 1
    if bits[i : i + 2] == "00":
        f, j = parse(bits, i + 2)
        return max(0, f - 1), j
    if bits[i : i + 2] == "01":
        f1, j = parse(bits, i + 2)
        f2, k = parse(bits, j)
        return max(f1, f2), k
    raise ValueError("bad prefix")


def is_closed_complete(bits):
    try:
        f, j = parse(bits)
    except ValueError:
        return False
    return f == 0 and j == len(bits)


def seed_of(bits):
    """Strip leading 00-wraps while the remainder is a complete closed term."""
    while bits.startswith("00") and is_closed_complete(bits[2:]):
        bits = bits[2:]
    return bits


def main():
    args = sys.argv[1:]
    seeds_only = args and args[0] == "--seeds"
    if seeds_only:
        args = args[1:]
    lines = [
        ln.strip() for ln in open(args[0]) if ln.strip()
    ]

    groups = defaultdict(list)  # seed -> [(bits, verdict)]
    for ln in lines:
        parts = ln.split(None, 1)
        bits = parts[0]
        verdict = parts[1] if len(parts) > 1 else ""
        assert is_closed_complete(bits), f"not a closed term: {bits}"
        groups[seed_of(bits)].append((bits, verdict))

    print(f"{len(lines)} terms -> {len(groups)} seed groups\n")
    inconsistent = []
    by_class = defaultdict(list)
    for seed in sorted(groups, key=lambda s: (len(s), s)):
        members = groups[seed]
        verdicts = {v.split()[0] if v else "?" for _, v in members}
        tag = "/".join(sorted(verdicts))
        by_class[tag].append(seed)
        if len(verdicts) > 1:
            inconsistent.append(seed)
        wraps = len(members) - (1 if any(b == seed for b, _ in members) else 0)
        star = " !!" if len(verdicts) > 1 else ""
        print(f"[{tag}] seed {seed} ({len(seed)}b) +{wraps} wraps{star}")
        if not seeds_only:
            for b, v in sorted(members, key=lambda m: len(m[0])):
                print(f"    {len(b):2}b {v}" + ("" if b == seed else "  (wrap)"))

    print("\nsummary by verdict class:")
    for tag, seeds in sorted(by_class.items()):
        print(f"  {tag}: {len(seeds)} seeds")
    if inconsistent:
        print(f"\nWARNING: {len(inconsistent)} seed groups with mixed verdicts:")
        for s in inconsistent:
            print(f"  {s}")


if __name__ == "__main__":
    main()
