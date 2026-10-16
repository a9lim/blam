#!/usr/bin/env python3
"""Statistical estimate of the true Omega (docs/classical/omega.md §6). It is
an estimate, not a certificate.

Reads `blam adjudicate --file` verdict lines for the stratified sample written
by sample.py (sizes 42..NMAX). The divergent mass beyond 41 bits is estimated
size by size as w(n) times the sampled fraction, with UNKNOWN verdicts
bracketed both ways. The exact parts are:
  - Omega = C − D(<=41) − D(>41);
  - C is the certified closed-term mass from bound.py;
  - D(<=41) is the census's proven-divergent mass, with the frontier
    bracketed.
Sizes above NMAX are extrapolated at the top window's rate; they carry about
6e-7 of mass.

usage: estimate.py VERDICTS NMAX [--resolve FILE] [--census FILE]
                   [--unknowns FILE] [--halts FILE] [--floors FILE]

--resolve FILE: verdict lines from a bigger-budget rerun of the UNKNOWN terms;
they replace those terms' UNKNOWN verdicts.
"""

import math
import sys
from collections import defaultdict
from fractions import Fraction

import bound
from sample import Sampler


def binary(x, k):
    out = ""
    for _ in range(k):
        x *= 2
        out += "1" if x >= 1 else "0"
        x -= int(x)
    return out


def main():
    args = sys.argv[1:]
    opt = lambda name, d: (args[args.index(name) + 1] if name in args else d)
    path, NMAX = args[0], int(args[1])
    resolved = {}
    if "--resolve" in args:
        for line in open(opt("--resolve", None)):
            p = line.split()
            if len(p) >= 2:
                resolved[p[0]] = p[1]
    cnt = defaultdict(lambda: [0, 0, 0])
    for line in open(path):
        p = line.split()
        if len(p) >= 2:
            v = resolved.get(p[0], p[1]) if p[1] == "UNKNOWN" else p[1]
            cnt[len(p[0])][("HALT", "DIVERGE", "UNKNOWN").index(v)] += 1
    S = Sampler(NMAX + 200)
    lo = hi = var_lo = var_hi = 0.0
    for n in range(42, NMAX + 1):
        h, d, u = cnt[n]
        m = h + d + u
        p_lo, p_hi = d / m, (d + u) / m
        lo += S.mass(n) * p_lo
        hi += S.mass(n) * p_hi
        var_lo += S.mass(n) ** 2 * p_lo * (1 - p_lo) / (m - 1)
        var_hi += S.mass(n) ** 2 * p_hi * (1 - p_hi) / (m - 1)
    top = range(NMAX - 19, NMAX + 1)
    f_top = sum(cnt[n][1] for n in top) / sum(sum(cnt[n]) for n in top)
    beyond = sum(S.mass(n) for n in range(NMAX + 1, NMAX + 201))
    se_lo, se_hi = math.sqrt(var_lo), math.sqrt(var_hi)

    closed, halt, frontier, halters = bound.certified_census(args)
    two = lambda n: Fraction(1, 2 ** n)
    Cf = bound.depth_mass_bound()
    C = float(Cf)
    d41 = float(sum((closed[n] - halt[n]) * two(n) for n in closed)
                - sum(two(len(p)) for p in halters) - sum(two(len(p)) for p in frontier))
    fr = float(sum(two(len(p)) for p in frontier))
    # Mass above NMAX + 200: at most C minus everything counted below it.
    resid = C - float(sum(closed[n] * two(n) for n in closed)) - sum(S.mass(n) for n in range(42, NMAX + 201))
    om_hi = C - d41 - lo - beyond * f_top
    om_lo = C - d41 - fr - hi - beyond * f_top - max(resid, 0.0)
    cons = C - d41 - lo          # every term above NMAX and every UNKNOWN taken as halting
    t = 129 / 1024
    total = sum(sum(v) for v in cnt.values())
    print(f"# blam omega estimate: {total} uniform samples over sizes 42..{NMAX}, blam's full ladder")
    print(f"divergent mass 42..{NMAX}: {lo:.5e} proven (SE {se_lo:.2e}) .. {hi:.5e} with UNKNOWN (SE {se_hi:.2e})")
    print(f"mass {NMAX + 1}..{NMAX + 200}: {beyond:.2e}, extrapolated at the top-window rate {f_top:.4f}; above that <= {max(resid, 0.0):.1e}")
    print(f"proven divergent mass 4..41 (census): {d41:.6e}; frontier {fr:.2e}")
    print(f"Omega ~ [{om_lo:.10f}, {om_hi:.10f}]  (1 SE: {se_hi:.1e} low end, {se_lo:.1e} high end)")
    print(f"Omega - 129/1024 ~ [{om_lo - t:+.3e}, {om_hi - t:+.3e}]")
    print(f"without extrapolation (all larger terms and UNKNOWNs halting): Omega <~ {cons:.10f}, "
          f"{(cons - t) / se_lo:+.1f} SE from 129/1024")
    lb, ub = binary(om_lo - 2 * se_hi, 32), binary(om_hi + 2 * se_lo, 32)
    k = next((i for i in range(32) if lb[i] != ub[i]), 32)
    print(f"binary (2 SE band): 0.{lb}\n                    0.{ub}\n  shared prefix: 0.{lb[:k]}…  ({k} bits)")
    print("per-size counts (n halt diverge unknown):")
    for n in range(42, NMAX + 1):
        h, d, u = cnt[n]
        print(f"  {n} {h} {d} {u}")


if __name__ == "__main__":
    main()
