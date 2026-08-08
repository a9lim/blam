#!/usr/bin/env python3
"""Build the canonical skeleton-kill manifest (docs/quantum/escalation.md,
"Canonical recording of skeleton kills").

Inputs: the frontier terms file (the q census --dump-unknowns output the
sweep consumed), the q skeleton verdict stream over it, and the
--residuals provenance side file. The verdict stream is
completion-order nondeterministic; every digest here is over the
bits-sorted stream (LC_ALL=C line sort — closed-program codes are
prefix-free, so full-line byte-lex equals program-bits order).

All masses are exact dyadic fractions accumulated as integers over the
common denominator 2^SCALE; the emitted fractions are reduced.

Usage:
  skel_manifest.py FRONTIER VERDICTS RESIDUALS \
      --commit SHA --sig "h meas new cnot t" \
      --steps 256 --size 16384 \
      --omega-lower NUM/DEN --frontier-source "..." > manifest.txt
"""

import argparse
import hashlib
import sys
from fractions import Fraction


def sorted_digest(lines):
    h = hashlib.sha256()
    for ln in sorted(lines):
        h.update(ln.encode())
        h.update(b"\n")
    return h.hexdigest()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("frontier")
    ap.add_argument("verdicts")
    ap.add_argument("residuals")
    ap.add_argument("--commit", required=True)
    ap.add_argument("--sig", required=True)
    ap.add_argument("--steps", type=int, required=True)
    ap.add_argument("--size", type=int, required=True)
    ap.add_argument("--omega-lower", required=True,
                    help="exact Omega_success lower endpoint NUM/DEN")
    ap.add_argument("--census-upper", required=True,
                    help="exact pre-kill census upper endpoint NUM/DEN "
                         "(lower + raw unknown LEAF mass; the bracket is "
                         "leaf-mass accounting, not source-program mass)")
    ap.add_argument("--classical-frontier", default=None,
                    help="unknowns.txt for residual source-membership rows")
    args = ap.parse_args()

    with open(args.frontier) as f:
        inputs = [ln.strip() for ln in f if ln.strip()]
    with open(args.verdicts) as f:
        verdicts = [ln.strip() for ln in f if ln.strip()]
    with open(args.residuals) as f:
        residual_rows = [ln.strip() for ln in f if ln.strip()]

    if len(inputs) != len(verdicts):
        sys.exit(f"count mismatch: {len(inputs)} inputs, {len(verdicts)} verdicts")

    in_digest = sorted_digest(inputs)
    v_digest = sorted_digest(verdicts)

    # Per-size, per-verdict counts; Div split by via; exact masses.
    per_size = {}   # size -> {verdict: count}
    div_via = {"oracle": 0, "bb": 0}
    killed = Fraction(0)
    unknown_rest = Fraction(0)   # holedemanded + capout + residual-unknown
    halt_mass = Fraction(0)
    cap_steps = cap_size = 0
    for ln in verdicts:
        parts = ln.split()
        bits = parts[0]
        n = len(bits)
        kv = dict(p.split("=", 1) for p in parts[1:] if "=" in p)
        verdict = kv["skel2"] if "skel2" in kv else None
        if verdict is None:
            sys.exit(f"bad verdict line: {ln}")
        row = per_size.setdefault(n, {})
        row[verdict] = row.get(verdict, 0) + 1
        w = Fraction(1, 2**n)
        if verdict in ("loop", "div"):
            killed += w
            if verdict == "div":
                div_via[kv.get("via", "?")] = div_via.get(kv.get("via", "?"), 0) + 1
        elif verdict in ("holedemanded", "capout", "residual-unknown"):
            unknown_rest += w
        elif verdict in ("halt", "halt-inert"):
            halt_mass += w
        else:
            sys.exit(f"unknown verdict `{verdict}` in: {ln}")

    lo_num, lo_den = args.omega_lower.split("/")
    lower = Fraction(int(lo_num), int(lo_den))
    cu_num, cu_den = args.census_upper.split("/")
    census_upper = Fraction(int(cu_num), int(cu_den))
    # Leaf-mass accounting: killed programs are single-branch (a
    # hole-inert infinite chain never forks), so their full 2^-|p| is
    # unknown leaf mass and subtracting the stream's killed sum from the
    # census unknown term is exact. Surviving programs may carry
    # already-resolved Halt/Err mass, so their program-mass sum
    # (`unknown_rest`) OVERSTATES the remaining unknown leaf mass; it is
    # reported below only as a cross-check bound.
    raw_unknown = census_upper - lower
    remaining = raw_unknown - killed
    upper = lower + remaining

    verdict_names = ["loop", "halt-inert", "holedemanded", "capout",
                     "halt", "div", "residual-unknown"]
    totals = {v: sum(r.get(v, 0) for r in per_size.values())
              for v in verdict_names}

    frontier_members = set()
    if args.classical_frontier:
        with open(args.classical_frontier) as f:
            frontier_members = {ln.strip() for ln in f if ln.strip()}

    def frac(x):
        return f"{x.numerator}/{x.denominator}"

    print("# Canonical skeleton-kill manifest "
          "(docs/quantum/escalation.md, recording protocol)")
    print(f"# generated by tools/skel_manifest.py at commit {args.commit}")
    print()
    print(f"commit            {args.commit}")
    print(f"signature         {args.sig}")
    print(f"skeleton caps     steps={args.steps} size_bits={args.size}")
    print("residual ladder   oracle -> KN 65536 beta -> escalation cap 2000000"
          " (TransferCaps::default, work_mult 16, probe_fuel 4096)")
    print(f"inputs            {len(inputs)} programs")
    print(f"sorted-input sha256    {in_digest}")
    print(f"sorted-verdict sha256  {v_digest}")
    print()
    print("verdict totals")
    for v in verdict_names:
        if totals[v]:
            print(f"  {v:<17} {totals[v]}")
    print(f"  div via oracle    {div_via.get('oracle', 0)}")
    print(f"  div via bb        {div_via.get('bb', 0)}")
    print()
    print(f"killed mass        {frac(killed)}")
    print(f"census unknown     {frac(raw_unknown)}  (leaf mass, pre-kill)")
    print(f"remaining unknown  {frac(remaining)}  (leaf mass)")
    print(f"survivor program-mass sum {frac(unknown_rest)}  "
          "(cross-check upper bound on remaining; excess is survivors' "
          "already-resolved share)")
    if halt_mass != 0:
        print(f"halt mass          {frac(halt_mass)}  (slow halters!)")
    print(f"bracket lower      {frac(lower)}")
    print(f"bracket upper      {frac(upper)}")
    print()
    print("per-size verdict counts (size: verdict=count ...)")
    for n in sorted(per_size):
        row = per_size[n]
        cols = " ".join(f"{v}={row[v]}" for v in verdict_names if v in row)
        print(f"  {n}: {cols}")
    print()
    print(f"residual-unknown provenance ({len(residual_rows)} rows;"
          " sha256 over the residual's ASCII wire string)")
    for ln in sorted(residual_rows):
        bits = ln.split()[0]
        member = "yes" if bits in frontier_members else "no"
        print(f"  {ln} classical_frontier_source={member}")
    print()
    print("regeneration")
    print("  target/release/blam q census 4 41 --dump-unknowns FRONTIER")
    print("  target/release/blam q skeleton FRONTIER \\")
    print("      --capout-telemetry CAPOUTS --residuals RESIDUALS > VERDICTS")
    print("  tools/skel_manifest.py FRONTIER VERDICTS RESIDUALS ...")


if __name__ == "__main__":
    main()
