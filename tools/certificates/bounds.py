#!/usr/bin/env python3
"""Exact post-certificate census and speed-prior bounds; no new evaluation.

The raw measurements stay unchanged. Every subtraction is by an explicitly
listed, kernel-checked diverger. Requiring the frontier/kill identity and the
per-program floor totals prevents double subtraction and stale inventories.
"""

from collections import Counter
from fractions import Fraction
import re

from bb import ROOT, census_unknowns, require


def main():
    raw = set(census_unknowns())
    ratchets = {s.split("\t")[1] for s in
                (ROOT / "data/certificates/ratchet_kills.tsv").read_text().splitlines()}
    bb = {s.split("\t")[0] for s in
          (ROOT / "data/certificates/bb_kills.tsv").read_text().splitlines()
          if s and not s.startswith("#")}
    require(not ratchets & bb, "overlapping certificate ledgers")
    kills = ratchets | bb
    frontier = set((ROOT / "data/classical/unknowns.txt").read_text().splitlines())
    require(kills <= raw and frontier == raw - kills, "frontier subtraction mismatch")
    rows, witnesses, size = {}, {}, None
    for line in (ROOT / "data/classical/census_table.txt").read_text().splitlines():
        parts = line.split()
        if parts and parts[0].isdigit():
            size = int(parts[0])
            rows[size] = [int(v) for v in parts[:8]]
        elif line.startswith("#   max|nf| witness:"):
            witnesses[size] = parts[-1]
    halt_mass = sum((Fraction(r[2], 2 ** n) for n, r in rows.items()), Fraction())
    mass = lambda bits: sum((Fraction(1, 2 ** len(b)) for b in bits), Fraction())
    upper = halt_mass + mass(frontier)
    print("# Exact certificate trim of the canonical census; no engine verdicts changed")
    print(f"raw_unknowns {len(raw)} = frontier {len(frontier)} + ratchet {len(ratchets)} + bb {len(bb)}")
    print("# BB_lambda(n) is the maximum NF wire size among closed inputs of EXACT size n.")
    print("# Exactness below relies on the exhaustive Rust census plus checked exclusions;")
    print("# the enumeration and halting engine are not formalized in Lean.")
    print("n closed halt raw_unknown certified remaining max_nf status witness")
    raw_counts, kill_counts = Counter(map(len, raw)), Counter(map(len, kills))
    for n in range(32, 35):
        row = rows[n]
        remaining = raw_counts[n] - kill_counts[n]
        status = "exact_modulo_census" if remaining == 0 else "lower_bound"
        print(n, row[1], row[2], raw_counts[n], kill_counts[n], remaining, row[6], status, witnesses[n])
    print(f"halt_mass {halt_mass}")
    print(f"certificate_mass {mass(kills)}")
    print(f"bb_certificate_mass {mass(bb)}")
    print(f"frontier_mass {mass(frontier)}")
    print(f"Omega_finite_lower {halt_mass}")
    print(f"Omega_finite_upper {upper}")
    print(f"Omega_finite_preview [{float(halt_mass):.15f}, {float(upper):.15f}]")

    summary = (ROOT / "data/classical/solomonoff.txt").read_text()
    raw_units = re.search(r"unknown_mass\s*=\s*(\d+) \* 2\^-64", summary)
    halt_units = re.search(r"halt_mass\s*=\s*(\d+) \* 2\^-64", summary)
    require(raw_units is not None and halt_units is not None, "missing raw mass units")
    require(Fraction(int(raw_units[1]), 2 ** 64) == mass(raw), "raw mass mismatch")
    require(Fraction(int(halt_units[1]), 2 ** 64) == halt_mass, "halt mass mismatch")
    floors = {}
    for line in (ROOT / "data/classical/speed_floors.txt").read_text().splitlines():
        if not line or line.startswith("#"):
            continue
        kind, bits, n, _, _, *hi = line.split()
        require(bits not in floors, "duplicate speed floor")
        require(kind == "unknown", "unclocked halters need separate speed accounting")
        require(int(n) == len(bits), "speed floor size mismatch")
        floors[bits] = tuple(map(int, hi))
        require(len(floors[bits]) == 3, "invalid speed floor columns")
    require(set(floors) == raw, "floor inventory mismatch")
    print("# Speed bounds below are directed-rounded integer units of 2^-128.")
    for i, gauge in enumerate(("beta", "trans", "honest")):
        match = re.search(rf"^  {gauge}\s+halt=\[(\d+), (\d+)\] open=(\d+)$", summary, re.M)
        require(match is not None, f"missing {gauge} speed units")
        lo, hi, total = map(int, match.groups())
        require(sum(v[i] for v in floors.values()) == total, f"{gauge} floor total mismatch")
        removed = sum(floors[b][i] for b in kills)
        remaining = total - removed
        print(f"{gauge} halt_lo={lo} halt_hi={hi} removed_open={removed} open={remaining} upper={hi + remaining}")
        print(f"{gauge}_preview [{lo / 2**128:.15f}, {(hi + remaining) / 2**128:.15f}] open={remaining / 2**128:.9e}")


if __name__ == "__main__":
    main()
