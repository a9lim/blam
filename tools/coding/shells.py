#!/usr/bin/env python3
"""Disjoint-shell coding-theorem test (docs/classical/coding.md §4).

Hide the shortest programs and ask whether an output's mass among strictly
longer programs predicts K(x). Uses full per-output Solomonoff tables at
N, N+2, N+4. The cohort is outputs with K <= 32 (certified exact) and at least 8
nontrivial programs in each shell (lengths N+1..N+2 and N+3..N+4). Each shell's
mass is trimmed by one program's maximum contribution, so no single alternative
program can carry the signal. The script reports Spearman rank correlations,
tie-corrected, within each |x| on both shells, with a shuffled-K null.

usage: shells.py TABLE_N TABLE_N+2 TABLE_N+4 N
"""

import math
import random
import sys
from collections import defaultdict


def load(path):
    d = {}
    for line in open(path):
        if line.startswith("#") or not line.strip():
            continue
        p = line.split()
        d[p[0]] = (int(p[1]), int(p[2]), int(p[3]), int(p[4]))   # |x|, K, count, nontrivial mass (2^-64)
    return d


def ranks(v):
    order = sorted(range(len(v)), key=lambda i: v[i])
    r, i = [0.0] * len(v), 0
    while i < len(order):
        j = i
        while j + 1 < len(order) and v[order[j + 1]] == v[order[i]]:
            j += 1
        for k in range(i, j + 1):
            r[order[k]] = (i + j) / 2
        i = j + 1
    return r


def spearman(a, b):
    ra, rb = ranks(a), ranks(b)
    n = len(a)
    ma, mb = sum(ra) / n, sum(rb) / n
    num = sum((p - ma) * (q - mb) for p, q in zip(ra, rb))
    den = math.sqrt(sum((p - ma) ** 2 for p in ra) * sum((q - mb) ** 2 for q in rb))
    return num / den if den else float("nan")


def auc(pos, neg):
    """P(a positive outranks a negative), ties counted half."""
    vals = [(v, 1) for v in pos] + [(v, 0) for v in neg]
    r = ranks([v for v, _ in vals])
    rp = sum(ri for ri, (_, lab) in zip(r, vals) if lab)
    return (rp - len(pos) * (len(pos) - 1) / 2) / (len(pos) * len(neg))


def main():
    t0, t1, t2 = (load(p) for p in sys.argv[1:4])
    N = int(sys.argv[4])
    rows = []
    for x, (n, K, c0, m0) in t0.items():
        if K > 32 or x not in t1 or x not in t2:
            continue
        _, _, c1, m1 = t1[x]
        _, _, c2, m2 = t2[x]
        T1 = (m1 - m0) - 2 ** (64 - (N + 1))
        T2 = (m2 - m1) - 2 ** (64 - (N + 3))
        if c1 - c0 >= 8 and c2 - c1 >= 8 and T1 > 0 and T2 > 0:
            rows.append((n, K, -math.log2(T1 * 2.0 ** -64), -math.log2(T2 * 2.0 ** -64), T1, T2))
    print(f"# shell test: cohort {len(rows)} outputs (K <= 32, >= 8 programs per shell), "
          f"shells {N + 1}-{N + 2} and {N + 3}-{N + 4}")
    K = [r[1] for r in rows]
    print(f"pooled Spearman: K vs |x| {spearman(K, [r[0] for r in rows]):+.3f}, "
          f"K vs -log2 shell1 {spearman(K, [r[2] for r in rows]):+.3f}, "
          f"K vs -log2 shell2 {spearman(K, [r[3] for r in rows]):+.3f}")
    print("AUC: P(an output with K < |x| has more shell mass than one with K = |x|), within |x|")
    print(f"{'|x|':>4} {'outputs':>8} {'K<|x|':>6} {'AUC shell1':>11} {'AUC shell2':>11} {'rho shell1':>11} {'rho shell2':>11} {'null':>7}")
    random.seed(1)
    by = defaultdict(list)
    for r in rows:
        by[r[0]].append(r)
    for n in sorted(by):
        v = by[n]
        if len(v) < 30 or len({r[1] for r in v}) < 2:
            continue
        Kv = [r[1] for r in v]
        null = Kv[:]
        random.shuffle(null)
        comp = [r for r in v if r[1] < n]
        flat = [r for r in v if r[1] == n]
        a1 = f"{auc([r[4] for r in comp], [r[4] for r in flat]):11.3f}" if comp and flat else f"{'-':>11}"
        a2 = f"{auc([r[5] for r in comp], [r[5] for r in flat]):11.3f}" if comp and flat else f"{'-':>11}"
        print(f"{n:4d} {len(v):8d} {len(comp):6d} {a1} {a2} "
              f"{spearman(Kv, [r[2] for r in v]):+11.3f} {spearman(Kv, [r[3] for r in v]):+11.3f} "
              f"{spearman(null, [r[2] for r in v]):+7.3f}")


if __name__ == "__main__":
    main()
