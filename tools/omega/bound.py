#!/usr/bin/env python3
"""Certified bounds on the true halting probability Omega of closed BLC terms,
and the binary digits they pin (docs/classical/omega.md).

Lower bound: the census's witnessed halting mass through 41 bits, plus the
exact Kraft mass of terms of sizes 42..N certified weakly normalizing by the
label function of omega.md, counted by an exact integer DP over leaf tables
from `blam omega leaves HL`.

Upper bound: census halting plus frontier mass through 41 bits, plus a
certified bound on the closed-term Kraft mass beyond 41 bits. That bound comes
from rational q_k >= U_k (U_k = Kraft mass of terms valid at depth k),
each checked exactly against V_k + q_{k+1}/4 + q_k^2/4 <= q_k.

usage: bound.py LEAVES [--max N] [--census FILE] [--unknowns FILE] [--brief]
"""

import sys
from collections import defaultdict
from fractions import Fraction
from math import isqrt


def read_leaves(path):
    A, H, halt, hl = defaultdict(int), defaultdict(int), {}, None
    for line in open(path):
        if line.startswith("#"):
            if "HL=" in line:
                hl = int(line.split("HL=")[1].split()[0])
                if " sizes " in line:   # a leaf table must cover the complete horizon 4..HL
                    lo, hi = line.split(" sizes ")[1].split()[0].split("..")
                    assert (int(lo), int(hi)) == (4, hl), ("not a complete leaf table", lo, hi, hl)
            continue
        p = line.split()
        if p[0] == "A":
            A[tuple(map(int, p[1:4]))] = int(p[4])
        elif p[0] == "H":
            H[tuple(map(int, p[1:5]))] = int(p[5])
        elif p[0] == "halt":
            halt[int(p[1])] = int(p[2])
    return hl, A, H, halt


def certified_counts(hl, A, H, N):
    """Exact label counts: T (all terms), cN/cO (label l), zN/zO (l0), aN/aO
    (l0 avoiding var j, indexed [s][k][j] for 1 <= j <= k).

    Arrays are indexed [s][k] (size s, valid at depth k) with s + 2k <= N,
    which every subterm of a closed term of size <= N satisfies.
    """
    KM = lambda s: (N - s) // 2
    new = lambda: [[0] * (KM(s) + 2) for s in range(N + 1)]
    T, cN, cO, zN, zO = new(), new(), new(), new(), new()
    aN = [[None] * (KM(s) + 2) for s in range(N + 1)]
    aO = [[None] * (KM(s) + 2) for s in range(N + 1)]

    def lA(t, s, k):
        return A.get((t, s, k), 0)

    def lH(t, s, k, j):
        return H.get((t, s, k, j), 0) if j <= k else lA(t, s, k)

    def avN(s, k, j):
        return aN[s][k][j] if j <= k else zN[s][k]

    def avO(s, k, j):
        return aO[s][k][j] if j <= k else zO[s][k]

    for s in range(2, N + 1):
        J = (hl - s) // 2 if s <= hl else -1
        ks = range(KM(s) + 1)
        apps = [(a, s - 2 - a) for a in range(2, s - 3)]
        reds = [(a, s - 4 - a) for a in range(2, s - 5)]     # (lam M) P: |M| = a, |P| = b
        projs = list(range(s - 6, 1, -3))                    # (lam lam^r r+1) P: |P| = s - 6 - 3r

        def var(k, j=None):
            return 1 if (1 <= s - 1 <= k and s - 1 != j) else 0

        for k in ks:
            T[s][k] = var(k) + (T[s - 2][k + 1] if s >= 4 else 0) + sum(T[a][k] * T[b][k] for a, b in apps)

        def split(St, t, k):
            # leaf-known iff maxfree <= J; structural terms have maxfree in (J', k]
            Jp = min(k, J)
            return St[k] if Jp < 0 else lA(t, s, Jp) + St[k] - St[Jp]

        def lam_any(X, Y, a, k):     # lambda-rooted terms of size a labelled N/O at depth k
            return (X[a - 2][k + 1] + Y[a - 2][k + 1]) if a >= 4 else 0

        # l0: the label without R3
        S0N, S0O = [0] * (KM(s) + 1), [0] * (KM(s) + 1)
        for k in ks:
            S0N[k] = (var(k)
                      + sum(zN[a][k] * (zN[b][k] + zO[b][k]) for a, b in apps)       # R6
                      + sum(zN[a][k + 1] * zN[b][k] for a, b in reds))              # R4
            S0O[k] = (((zN[s - 2][k + 1] + zO[s - 2][k + 1]) if s >= 4 else 0)     # lambda
                      + sum((zO[a][k] - lam_any(zN, zO, a, k)) * zN[b][k] for a, b in apps)  # R10
                      + sum(zO[a][k + 1] * zN[b][k] for a, b in reds)               # R4
                      + sum(zO[b][k] for b in projs))                               # projection
        for k in ks:
            zN[s][k], zO[s][k] = split(S0N, 0, k), split(S0O, 1, k)

        # l0 restricted to terms avoiding free variable j (1 <= j <= k)
        SAN = [[0] * (k + 1) for k in ks]
        SAO = [[0] * (k + 1) for k in ks]
        for k in ks:
            for j in range(1, k + 1):
                SAN[k][j] = (var(k, j)
                             + sum(avN(a, k, j) * (avN(b, k, j) + avO(b, k, j)) for a, b in apps)
                             + sum(avN(a, k + 1, j + 1) * avN(b, k, j) for a, b in reds))
                lamA = lambda a: (avN(a - 2, k + 1, j + 1) + avO(a - 2, k + 1, j + 1)) if a >= 4 else 0
                SAO[k][j] = (((avN(s - 2, k + 1, j + 1) + avO(s - 2, k + 1, j + 1)) if s >= 4 else 0)
                             + sum((avO(a, k, j) - lamA(a)) * avN(b, k, j) for a, b in apps)
                             + sum(avO(a, k + 1, j + 1) * avN(b, k, j) for a, b in reds)
                             + sum(avO(b, k, j) for b in projs))
        for k in ks:
            aN[s][k], aO[s][k] = [0] * (k + 1), [0] * (k + 1)
            Jp = min(k, J)
            for j in range(1, k + 1):
                if Jp < 0:
                    aN[s][k][j], aO[s][k][j] = SAN[k][j], SAO[k][j]
                else:
                    # structural part at depth Jp: avoidance of j > Jp is automatic there
                    subN = SAN[Jp][j] if j <= Jp else S0N[Jp]
                    subO = SAO[Jp][j] if j <= Jp else S0O[Jp]
                    aN[s][k][j] = lH(0, s, Jp, j) + SAN[k][j] - subN
                    aO[s][k][j] = lH(1, s, Jp, j) + SAO[k][j] - subO

        # l: R3 applies to (lam M) P when M avoids var 1 and l0(M) != X, any P with l(P) != N
        SN, SO = [0] * (KM(s) + 1), [0] * (KM(s) + 1)
        for k in ks:
            SN[k] = (var(k)
                     + sum(cN[a][k] * (cN[b][k] + cO[b][k]) for a, b in apps)
                     + sum(cN[a][k + 1] * cN[b][k] + avN(a, k + 1, 1) * (T[b][k] - cN[b][k]) for a, b in reds))
            SO[k] = (((cN[s - 2][k + 1] + cO[s - 2][k + 1]) if s >= 4 else 0)
                     + sum((cO[a][k] - lam_any(cN, cO, a, k)) * cN[b][k] for a, b in apps)
                     + sum(cO[a][k + 1] * cN[b][k] + avO(a, k + 1, 1) * (T[b][k] - cN[b][k]) for a, b in reds)
                     + sum(cO[b][k] for b in projs))
        for k in ks:
            cN[s][k], cO[s][k] = split(SN, 0, k), split(SO, 1, k)
        for arr in (T, cN, cO, zN, zO):
            assert all(x >= 0 for x in arr[s][:KM(s) + 1]), ("negative count", s)
    return dict(T=T, cN=cN, cO=cO, zN=zN, zO=zO, aN=aN, aO=aO)


def depth_mass_bound(K=80, digits=40):
    """Rational q_0 >= U_0 = Kraft mass of closed terms, by backward recursion
    from q_K = 1 (every U_k <= 1, the code being prefix-free), each q_k
    rounded up and checked exactly: V_k + q_{k+1}/4 + q_k^2/4 <= q_k."""
    scale = 10 ** digits
    q = Fraction(1)
    for k in range(K - 1, -1, -1):
        c = Fraction(1, 2) - Fraction(1, 2 ** (k + 1)) + q / 4     # V_k + q_{k+1}/4
        # smaller root of x^2/4 - x + c = 0 is 2 - 2 sqrt(1 - c); round up
        disc = 1 - c
        r = isqrt(disc.numerator * scale * scale // disc.denominator)
        x = Fraction(2 * scale - 2 * r + 2, scale)
        assert c + x * x / 4 <= x, ("q_k check failed", k)
        q = x
    return q


def census(path):
    halt, closed = {}, {}
    for line in open(path):
        p = line.split()
        if line.startswith("#") or len(p) < 5 or not p[0].isdigit():
            continue
        closed[int(p[0])], halt[int(p[0])] = int(p[1]), int(p[2])
    return closed, halt


def binary(x, n):
    out = ""
    for _ in range(n):
        x *= 2
        out += "1" if x >= 1 else "0"
        x -= int(x)
    return out


def decimal_bound(x, upward, digits=15):
    """Round an exact bound outward; a printed inequality must stay true."""
    scale = 10 ** digits
    q, r = divmod(x.numerator * scale, x.denominator)
    q += int(upward and r != 0)
    return f"{q // scale}.{q % scale:0{digits}d}"


def main():
    args = sys.argv[1:]
    opt = lambda name, d: (args[args.index(name) + 1] if name in args else d)
    N = int(opt("--max", "240"))
    hl, A, H, leaf_halt = read_leaves(args[0])
    closed, halt = census(opt("--census", "data/classical/census_table.txt"))
    # Halt counts must equal the census's at every size of the horizon.
    for n in range(4, hl + 1):
        assert leaf_halt.get(n, 0) == halt.get(n, 0), ("leaf table disagrees with census", n, leaf_halt.get(n), halt.get(n))
    frontier = [line.strip() for line in open(opt("--unknowns", "data/classical/unknowns.txt"))
                if line.strip() and not line.startswith("#")]
    top = max(closed)

    arr = certified_counts(hl, A, H, N)
    T0 = [arr["T"][n][0] for n in range(N + 1)]
    cert = [arr["cN"][n][0] + arr["cO"][n][0] for n in range(N + 1)]
    for n in range(4, top + 1):
        assert T0[n] == closed[n], ("closed-term count disagrees with census", n)
    two = lambda n: Fraction(1, 2 ** n)
    halt_mass = sum(halt[n] * two(n) for n in halt)
    frontier_mass = sum(two(len(p)) for p in frontier)
    closed_mass = sum(closed[n] * two(n) for n in closed)
    tail_cert = sum(cert[n] * two(n) for n in range(top + 1, N + 1))
    tail_all = sum(T0[n] * two(n) for n in range(top + 1, N + 1))
    U0 = depth_mass_bound()
    lower = halt_mass + tail_cert
    upper = halt_mass + frontier_mass + (U0 - closed_mass)
    assert lower <= upper
    lb, ub = binary(lower, 48), binary(upper, 48)
    pinned = next(i for i in range(48) if lb[i] != ub[i])

    print(f"# blam omega bound: leaves HL={hl}, certified sizes {top + 1}..{N}, census 4..{top}")
    print(f"census halting mass (4..{top})        = {float(halt_mass):.15f}")
    print(f"census frontier mass (4..{top})       = {float(frontier_mass):.6e}  ({len(frontier)} terms)")
    print(f"closed Kraft mass (4..{top})          = {float(closed_mass):.15f}")
    print(f"closed Kraft mass, all sizes         <= {decimal_bound(U0, True)}")
    print(f"certified WN mass ({top + 1}..{N})          = {float(tail_cert):.15f}"
          f"  ({float(tail_cert / tail_all):.4%} of those sizes' {float(tail_all):.6e})")
    print(f"Omega >= {decimal_bound(lower, False)}")
    print(f"Omega <= {decimal_bound(upper, True)}")
    print(f"binary: lower 0.{lb[:16]}…")
    print(f"        upper 0.{ub[:16]}…")
    print(f"pinned bits: {pinned}  ->  Omega = 0.{lb[:pinned]}…")
    if "--brief" not in args:
        print(f"lower_num {lower.numerator}\nlower_den {lower.denominator}")
        print(f"upper_num {upper.numerator}\nupper_den {upper.denominator}")


if __name__ == "__main__":
    main()
