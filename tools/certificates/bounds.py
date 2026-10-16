#!/usr/bin/env python3
"""Exact post-certificate census and speed-prior bounds; no new evaluation.

The raw measurements stay unchanged. Checked divergers remove upper mass;
checked unclocked halters add halting mass but retain their speed upper floors.
An exact partition and per-program totals prevent double/stale accounting.
"""

import re
from collections import Counter
from fractions import Fraction

from bb import ROOT, census_unknowns, halting_sizes, require


def main():
    raw = set(census_unknowns())
    ratchet_rows = [s.split("\t")[1] for s in
                   (ROOT / "data/certificates/ratchet_kills.tsv").read_text().splitlines()]
    bb_rows = [s.split("\t")[0] for s in
               (ROOT / "data/certificates/bb_kills.tsv").read_text().splitlines()
               if s and not s.startswith("#")]
    ratchets, bb = set(ratchet_rows), set(bb_rows)
    require(len(ratchets) == len(ratchet_rows) and len(bb) == len(bb_rows),
            "duplicate divergence certificate")
    require(not ratchets & bb, "overlapping certificate ledgers")
    kills = ratchets | bb
    halters = halting_sizes()
    require(not kills & halters.keys(), "halting/divergence ledgers overlap")
    frontier_rows = (ROOT / "data/classical/unknowns.txt").read_text().splitlines()
    frontier = set(frontier_rows)
    require(len(frontier) == len(frontier_rows), "duplicate frontier term")
    require(kills | halters.keys() <= raw and frontier == raw - kills - halters.keys(),
            "frontier subtraction mismatch")
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
    certified_halt_mass = mass(halters)
    lower = halt_mass + certified_halt_mass
    upper = lower + mass(frontier)
    print("# Exact certificate trim of the canonical census; no engine verdicts changed")
    print(f"raw_unknowns {len(raw)} = frontier {len(frontier)} + ratchet {len(ratchets)} + bb_diverge {len(bb)} + bb_halt {len(halters)}")
    print("# BB_lambda(n) is the maximum NF wire size among closed inputs of EXACT size n.")
    print("# Exactness below relies on the exhaustive Rust census plus checked adjudications;")
    print("# the enumeration and halting engine are not formalized in Lean.")
    print("n closed raw_halt raw_unknown certified_diverge certified_halt remaining max_nf status witness")
    raw_counts, kill_counts = Counter(map(len, raw)), Counter(map(len, kills))
    for n in range(32, max(map(len, halters)) + 1):
        row = rows[n]
        extra = {b: size for b, size in halters.items() if len(b) == n}
        remaining = raw_counts[n] - kill_counts[n] - len(extra)
        status = "exact_modulo_census" if remaining == 0 else "lower_bound"
        max_nf, witness = max([(row[6], witnesses[n])] + [(s, b) for b, s in extra.items()])
        print(n, row[1], row[2], raw_counts[n], kill_counts[n], len(extra), remaining,
              max_nf, status, witness)
    print(f"halt_mass {halt_mass}")
    print(f"certified_halt_mass {certified_halt_mass}")
    print(f"certificate_mass {mass(kills)}")
    print(f"bb_certificate_mass {mass(bb)}")
    print(f"frontier_mass {mass(frontier)}")
    print(f"Omega_finite_lower {lower}")
    print(f"Omega_finite_upper {upper}")
    print(f"Omega_finite_preview [{float(lower):.15f}, {float(upper):.15f}]")

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
        require(kind == "unknown", "expected a raw unknown floor")
        require(int(n) == len(bits), "speed floor size mismatch")
        floors[bits] = tuple(map(int, hi))
        require(len(floors[bits]) == 3, "invalid speed floor columns")
    require(set(floors) == raw, "floor inventory mismatch")
    print("# Speed bounds below are directed-rounded integer units of 2^-128.")
    print("# open includes the certified halters with no measured clock, at their raw upper floors.")
    for i, gauge in enumerate(("beta", "trans", "honest")):
        match = re.search(rf"^  {gauge}\s+halt=\[(\d+), (\d+)\] open=(\d+)$", summary, re.MULTILINE)
        require(match is not None, f"missing {gauge} speed units")
        lo, hi, total = map(int, match.groups())
        require(sum(v[i] for v in floors.values()) == total, f"{gauge} floor total mismatch")
        removed = sum(floors[b][i] for b in kills)
        remaining = total - removed
        unclocked = sum(floors[b][i] for b in halters)
        print(f"{gauge} halt_lo={lo} halt_hi={hi} removed_open={removed} unclocked_halt_open={unclocked} open={remaining} upper={hi + remaining}")
        print(f"{gauge}_preview [{lo / 2**128:.15f}, {(hi + remaining) / 2**128:.15f}] open={remaining / 2**128:.9e}")


if __name__ == "__main__":
    main()
