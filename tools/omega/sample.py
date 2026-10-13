#!/usr/bin/env python3
"""Uniform random closed BLC terms, stratified for estimating the true Omega
(docs/classical/omega.md §6).

Chunk i of a stratified sample. Sizes 42..NMAX are allocated in proportion to
w(n)·sqrt(f(n)(1 − f(n))), the optimal (Neyman) allocation. Here w(n) is the
Kraft mass of closed terms of size n, and f(n) a pilot non-halting rate.
Within a size the sampler is exact up to float rounding of the counts
(2^-52 relative), far below sampling noise. Chunks use independent seeds
and randomized rounding, so their union is an unbiased stratified sample.

usage: sample.py M NMAX NCHUNKS I     (terms on stdout, one bit string per line)
"""

import bisect
import math
import random
import sys


class Sampler:
    def __init__(self, N):
        K = N // 2 + 2
        T = [[0.0] * (K + 2) for _ in range(N + 1)]
        for n in range(2, N + 1):
            for k in range(K + 1):
                v = 1.0 if 1 <= n - 1 <= k else 0.0
                if n >= 4:
                    v += T[n - 2][k + 1]
                for a in range(2, n - 3):
                    v += T[a][k] * T[n - 2 - a][k]
                T[n][k] = v
            T[n][K + 1] = T[n][K]
        self.T, self.K, self.cache = T, K, {}

    def mass(self, n):
        """Kraft mass of closed terms of size n."""
        return self.T[n][0] * 2.0 ** -n

    def _table(self, n, k):
        key = (n, k)
        if key not in self.cache:
            T, K = self.T, self.K
            k = min(k, K)
            opts, acc, s = [], [], 0.0
            if 1 <= n - 1 <= k:
                s += 1.0
                opts.append(None)
                acc.append(s)
            if n >= 4:
                s += T[n - 2][min(k + 1, K)]
                opts.append(0)
                acc.append(s)
            for a in range(2, n - 3):
                s += T[a][k] * T[n - 2 - a][k]
                opts.append(a)
                acc.append(s)
            self.cache[key] = (opts, acc, s)
        return self.cache[key]

    def sample(self, n, rng, k=0):
        out, stack = [], [(n, k)]
        while stack:
            n, k = stack.pop()
            opts, acc, s = self._table(n, k)
            i = min(bisect.bisect_right(acc, rng.random() * s), len(opts) - 1)
            o = opts[i]
            if o is None:
                out.append("1" * (n - 1) + "0")
            elif o == 0:
                out.append("00")
                stack.append((n - 2, k + 1))
            else:
                out.append("01")
                stack.append((n - 2 - o, k))
                stack.append((o, k))
        return "".join(out)


# Pilot non-halting rates (blam's ladder on uniform samples); only the
# allocation depends on them, never the estimate.
PILOT = [(42, .0037), (60, .0058), (80, .0065), (100, .0113), (120, .0135), (150, .014), (200, .0178), (300, .025)]


def pilot(n):
    for (a, fa), (b, fb) in zip(PILOT, PILOT[1:]):
        if a <= n <= b:
            return fa + (fb - fa) * (n - a) / (b - a)
    return PILOT[-1][1]


def main():
    M, NMAX, NCH, i = map(int, sys.argv[1:5])
    S = Sampler(NMAX)
    z = {n: S.mass(n) * math.sqrt(pilot(n) * (1 - pilot(n))) for n in range(42, NMAX + 1)}
    Z = sum(z.values())
    rng = random.Random(1_000_003 * i + 17)
    out = []
    for n in z:
        m = M * z[n] / Z / NCH
        k = int(m) + (1 if rng.random() < m - int(m) else 0)
        out.extend(S.sample(n, rng) for _ in range(k))
    rng.shuffle(out)
    sys.stdout.write("".join(t + "\n" for t in out))


if __name__ == "__main__":
    main()
