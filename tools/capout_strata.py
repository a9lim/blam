#!/usr/bin/env python3
"""Stratify the tier-1 skeleton capouts (escalation docket item 1).

Input: the `blam q skeleton --capout-telemetry` side file, one line per
capout program: `<bits> reason=<steps|size> steps=N hw=M`.

The question this answers (docs/quantum/escalation.md, rung 3): how does
the capout population split between size-bound monotone growers (the
pattern-recurrence rung's population) and step-bound bounded-size terms
(which would justify another exact-cycle tier), stratified by source
size — and what do the steps/high-water distributions say about the
budgets either instrument needs?

Deterministic throughout: input order is the file's (bits-sorted), all
sampling is every-k-th selection within a stratum, no randomness.

Usage: capout_strata.py CAPOUTS [--exemplars N]
"""

import argparse
import sys
from collections import defaultdict


def pct(a, b):
    return f"{100.0 * a / b:.1f}%" if b else "-"


def quantiles(xs, qs=(0, 25, 50, 75, 90, 99, 100)):
    xs = sorted(xs)
    out = {}
    for q in qs:
        i = min(len(xs) - 1, (q * (len(xs) - 1) + 50) // 100)
        out[q] = xs[i]
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("capouts")
    ap.add_argument("--exemplars", type=int, default=3,
                    help="deterministic exemplars per (size, reason) stratum")
    args = ap.parse_args()

    # (size, reason) -> list of (steps, hw, bits)
    strata = defaultdict(list)
    with open(args.capouts) as f:
        for ln in f:
            parts = ln.split()
            if not parts:
                continue
            bits = parts[0]
            kv = dict(p.split("=", 1) for p in parts[1:])
            strata[(len(bits), kv["reason"])].append(
                (int(kv["steps"]), int(kv["hw"]), bits))

    sizes = sorted({n for (n, _) in strata})
    tot_steps = sum(len(v) for (_, r), v in strata.items() if r == "steps")
    tot_size = sum(len(v) for (_, r), v in strata.items() if r == "size")
    total = tot_steps + tot_size

    print(f"capouts {total}  steps-bound {tot_steps} ({pct(tot_steps, total)})"
          f"  size-bound {tot_size} ({pct(tot_size, total)})")
    print()
    print("per-size split (n: steps-bound size-bound  size-share)")
    for n in sizes:
        s = len(strata.get((n, "steps"), []))
        z = len(strata.get((n, "size"), []))
        print(f"  {n}: {s} {z}  {pct(z, s + z)}")

    for reason, label, col in (
            ("size", "size-bound growers (pattern-recurrence population)", 0),
            ("steps", "steps-bound at the 256-step cap (exact-cycle population)", 1)):
        pop = [t for n in sizes for t in strata.get((n, reason), [])]
        if not pop:
            continue
        print()
        print(f"{label}: {len(pop)}")
        if reason == "size":
            # Steps to breach the 16384-bit ceiling: growth speed.
            qs = quantiles([s for s, _, _ in pop])
            print(f"  steps-to-breach quantiles "
                  f"{ {k: v for k, v in qs.items()} }")
            hw = quantiles([h for _, h, _ in pop])
            print(f"  high-water quantiles {hw}")
        else:
            # Bounded-size loopers: how big do they sit at the step cap?
            hw = quantiles([h for _, h, _ in pop])
            print(f"  high-water quantiles {hw}")

    print()
    print(f"deterministic exemplars ({args.exemplars} per stratum, "
          "every-kth in bits order)")
    for n in sizes:
        for reason in ("steps", "size"):
            v = strata.get((n, reason), [])
            if not v:
                continue
            k = max(1, len(v) // args.exemplars)
            picks = v[::k][:args.exemplars]
            for s, h, bits in picks:
                print(f"  {n} {reason} steps={s} hw={h} {bits}")


if __name__ == "__main__":
    main()
