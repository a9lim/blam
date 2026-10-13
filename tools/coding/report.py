#!/usr/bin/env python3
"""Coding-theorem report over a full per-output Solomonoff table
(docs/classical/coding.md).

Reads a `blam solomonoff MIN MAX --table FILE --dump-max-x 63` dump and prints:
  - the Solomonoff and Levin coding gaps g = K + log2 m and
    gS = Kt + log2 S_beta, their largest values (lower bounds on the machine's
    coding-theorem constants) with witnesses, and quantiles by K;
  - where compression begins: per normal-form size n, how many closed normal
    forms have K < n, against the exact count of closed normal forms.

K is exact for K below the smallest frontier term (`--exact`, default 32:
every program shorter than 33 bits is adjudicated), and m_N(x) <= m(x), so
each printed gap with K <= exact is a certified lower bound on that output's
true gap.

usage: report.py TABLE MAX [--exact E]
"""

import math
import sys
from collections import Counter, defaultdict
from functools import lru_cache

sys.setrecursionlimit(10000)


def show(bits):
    """BLC bits -> lambda term with 1-based de Bruijn indices."""
    def go(i):
        if bits[i:i + 2] == "00":
            b, j = go(i + 2)
            return "λ" + b, j
        if bits[i:i + 2] == "01":
            f, j = go(i + 2)
            a, k = go(j)
            if f.startswith("λ"):
                f = "(" + f + ")"
            if " " in a or a.startswith("λ"):
                a = "(" + a + ")"
            return f + " " + a, k
        n = 0
        while bits[i + n] == "1":
            n += 1
        return str(n), i + n + 1
    return go(0)[0]


@lru_cache(maxsize=None)
def nf_count(n, k):
    """Normal forms of size n valid under k binders."""
    return ne_count(n, k) + (nf_count(n - 2, k + 1) if n >= 4 else 0)


@lru_cache(maxsize=None)
def ne_count(n, k):
    """Neutral normal forms of size n valid under k binders."""
    v = 1 if 1 <= n - 1 <= k else 0
    return v + sum(ne_count(a, k) * nf_count(n - 2 - a, k) for a in range(2, n - 3))


def main():
    args = sys.argv[1:]
    exact = int(args[args.index("--exact") + 1]) if "--exact" in args else 32
    table, N = args[0], int(args[1])
    rows = []
    for line in open(table):
        if line.startswith("#") or not line.strip():
            continue
        p = line.split()
        x, n, K, cnt, mass, minp, kt, slo = p[0], int(p[1]), int(p[2]), int(p[3]), int(p[4]), p[5], int(p[6]), int(p[9])
        own = 4 <= n <= N          # the analytic self-program (beta gauge: T = 1)
        m = mass * 2.0 ** -64 + (2.0 ** -n if own else 0.0)
        S = slo * 2.0 ** -128 + (2.0 ** -n if own else 0.0)
        rows.append((x, n, K, cnt, K + math.log2(m), kt + math.log2(S), kt, minp))

    ex = [r for r in rows if r[2] <= exact]
    print(f"# blam coding-theorem report: programs 4..{N}, {len(rows)} outputs with a nontrivial program")
    print(f"# gaps certified (K exact) for K <= {exact}: {len(ex)} outputs; untabulated outputs have g = 0")
    for name, idx in (("g = K + log2 m(x)", 4), ("gS = Kt + log2 S_beta(x)", 5)):
        print(f"\n== largest {name} (K <= {exact}) ==")
        for r in sorted(ex, key=lambda r: -r[idx])[:12]:
            print(f"  {r[idx]:6.3f}  |x|={r[1]:2d} K={r[2]:2d} Kt={r[6]:2d} progs={r[3]:6d}  x = {show(r[0])}")
    by = defaultdict(list)
    for r in ex:
        by[r[2]].append(r[4])
    print("\n== g quantiles by K (tabulated outputs) ==")
    for K in sorted(by):
        v = sorted(by[K])
        q = lambda f: v[min(len(v) - 1, int(f * len(v)))]
        print(f"  K={K:2d}  n={len(v):7d}  median {q(.5):.3f}  p90 {q(.9):.3f}  max {v[-1]:.3f}")

    comp, gain, first = Counter(), Counter(), {}
    for r in rows:
        x, n, K = r[0], r[1], r[2]
        if K < n:
            comp[n] += 1
            gain[n] += n - K
            if n not in first or (n - K, -K) > first[n][:2]:
                first[n] = (n - K, -K, x, r[7])
    print("\n== compressible closed normal forms by size (K < |x|) ==")
    print(f"  {'n':>3} {'normal forms':>13} {'K<n':>8} {'fraction':>9} {'mean gain':>9}  best")
    for n in range(min(comp), max(comp) + 1):
        tot = nf_count(n, 0)
        tag = "" if n <= N else "  (K <= MAX only: lower bound)"
        best = f"{show(first[n][2])} <- {show(first[n][3])}" if n in first and n <= 30 else ""
        print(f"  {n:3d} {tot:13d} {comp[n]:8d} {comp[n] / tot:9.5f} {gain[n] / max(comp[n], 1):9.2f}{tag}  {best}")


if __name__ == "__main__":
    main()
