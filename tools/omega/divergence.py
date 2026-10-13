#!/usr/bin/env python3
"""Divergence-prover probes for Omega's tenth bit (docs/classical/omega.md §6).

Bit 10 needs certified non-normalizing mass >= 8.70e-6 beyond 41 bits, about 80%
of the estimated divergent tail. These probes measure, per term, how much of
that a candidate class-level prover would certify. They run on mass-weighted
samples of ladder-proven divergent terms from scripts/omega-estimate.sh. They
are feasibility measurements, not certificates: a count over all terms is
still required.

  bt D [NS]         abstract evaluation over Böhm trees truncated at depth D
  alphabet D [NS]   the same, with labels restricted to the K most frequent
                    (learned from random terms' subterms, capped at 64 nodes;
                    all others become holes) for several K
  propagate HL [NS] the label DP's propagation rules, with leaves decided by
                    blam's ladder up to horizon HL

usage: divergence.py VERDICTS NMAX MODE ARG [NS]
"""

import collections
import os
import random
import subprocess
import sys
import threading

import lam
from sample import Sampler

HOLE, BOT = (3,), (4,)
ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..")
BLAM = os.path.join(ROOT, "target", "release", "blam")
TMP = os.path.join(ROOT, "tmp")


def shift(t, d, c=0):
    k = t[0]
    if k == 0:
        return (0, t[1] + d) if t[1] >= c else t
    if k == 1:
        return (1, shift(t[1], d, c + 1))
    if k == 2:
        return (2, shift(t[1], d, c), shift(t[2], d, c))
    return t


def subst(t, j, s):
    k = t[0]
    if k == 0:
        return s if t[1] == j else t
    if k == 1:
        return (1, subst(t[1], j + 1, shift(s, 1)))
    if k == 2:
        return (2, subst(t[1], j, s), subst(t[2], j, s))
    return t


def beta(lam_, arg):
    return shift(subst(lam_[1], 0, shift(arg, 1)), -1)


def spine(t):
    n = 0
    while t[0] == 1:
        n += 1
        t = t[1]
    args = []
    while t[0] == 2:
        args.append(t[2])
        t = t[1]
    args.reverse()
    return n, t, args


def rebuild(n, h, args):
    for a in args:
        h = (2, h, a)
    for _ in range(n):
        h = (1, h)
    return h


def nodes(t):
    c, st = 0, [t]
    while st:
        u = st.pop()
        c += 1
        if u[0] == 1:
            st.append(u[1])
        elif u[0] == 2:
            st.append(u[1])
            st.append(u[2])
    return c


def recurs(R, fuel, cap):
    """R ->h* lam^b (R W...) at the skeleton level (holes never inspected): R is unsolvable."""
    t = R
    for _ in range(fuel):
        n, h, args = spine(t)
        if h[0] != 1 or not args:
            return False
        t = rebuild(n, beta(h, args[0]), args[1:])
        _, h2, a2 = spine(t)
        if h2 == R[1] and a2 and a2[0] == R[2]:
            return True
        if nodes(t) > cap:
            return False
    return False


class BohmEval:
    """Bottom-up abstract values: Böhm trees truncated at depth D, HOLE = untracked, BOT = unsolvable."""

    def __init__(self, D, fuel=300, cap=3000):
        self.D, self.fuel, self.cap = D, fuel, cap

    def reduce(self, t, d):
        seen = set()
        for _ in range(self.fuel):
            n, h, args = spine(t)
            if h == HOLE or h == BOT:
                return h
            if h[0] == 0:
                if d == 0:
                    return HOLE if args else rebuild(n, h, [])
                return rebuild(n, h, [self.reduce(a, d - 1) for a in args])
            R = (2, h, args[0])
            if R in seen and recurs(R, self.fuel, self.cap):
                return BOT
            seen.add(R)
            t = rebuild(n, beta(h, args[0]), args[1:])
            if nodes(t) > self.cap:
                return HOLE
        return HOLE

    def ev(self, t, memo):
        if t in memo:
            return memo[t]
        if t[0] == 0:
            r = t
        elif t[0] == 1:
            b = self.ev(t[1], memo)
            r = BOT if b == BOT else self.reduce((1, b), self.D)
        else:
            f, a = self.ev(t[1], memo), self.ev(t[2], memo)
            r = BOT if f == BOT else self.reduce((2, f, a), self.D)
        memo[t] = r
        return r

    def verdict(self, t):
        v = self.ev(t, {})
        if v == BOT:
            return "U"
        st = [v]
        while st:
            u = st.pop()
            if u == BOT:
                return "D"
            if u[0] == 1:
                st.append(u[1])
            elif u[0] == 2:
                st.append(u[1])
                st.append(u[2])
        return None


class RestrictedEval(BohmEval):
    """Labels outside a fixed alphabet (keyed by binder depth) become holes: a sound coarsening."""

    def __init__(self, D, cap=64, alpha=None):
        super().__init__(D)
        self.cap, self.alpha, self.freq = cap, alpha, collections.Counter()

    def evk(self, t, memo, k=0):
        key = (t, k)
        if key in memo:
            return memo[key]
        if t[0] == 0:
            r = t
        elif t[0] == 1:
            b = self.evk(t[1], memo, k + 1)
            r = BOT if b == BOT else self.reduce((1, b), self.D)
        else:
            f, a = self.evk(t[1], memo, k), self.evk(t[2], memo, k)
            r = BOT if f == BOT else self.reduce((2, f, a), self.D)
        if r not in (BOT, HOLE) and nodes(r) > self.cap:
            r = HOLE
        if self.alpha is None:
            self.freq[(k, r)] += 1
        elif r not in (BOT, HOLE) and (k, r) not in self.alpha:
            r = HOLE
        memo[key] = r
        return r

    def verdict(self, t):
        v = self.evk(t, {})
        if v == BOT:
            return "U"
        st = [v]
        while st:
            u = st.pop()
            if u == BOT:
                return "D"
            if u[0] == 1:
                st.append(u[1])
            elif u[0] == 2:
                st.append(u[1])
                st.append(u[2])
        return None


def parse(bits, i=0):
    if bits[i:i + 2] == "00":
        b, j = parse(bits, i + 2)
        return (1, b), j
    if bits[i:i + 2] == "01":
        f, j = parse(bits, i + 2)
        a, k = parse(bits, j)
        return (2, f, a), k
    n = 0
    while bits[i + n] == "1":
        n += 1
    return (0, n - 1), i + n + 1


def weighted_divergent(path, nmax, ns, seed=11):
    """ns divergent terms, sizes drawn in proportion to their share of divergent tail mass."""
    div, tot = collections.defaultdict(list), collections.Counter()
    for line in open(path):
        b, v = line.split()[:2]
        tot[len(b)] += 1
        if v == "DIVERGE":
            div[len(b)].append(b)
    S = Sampler(nmax)
    sizes = sorted(div)
    weight = [S.mass(n) * len(div[n]) / tot[n] for n in sizes]
    rng = random.Random(seed)
    return [parse(rng.choice(div[n]))[0] for n in rng.choices(sizes, weights=weight, k=ns)]


def propagate(terms, HL):
    size = lambda t: lam.size(t)

    def closure(t):
        m, u = lam.maxfree(t), t
        for _ in range(m):
            u = (1, u)
        return u, m

    def hnf_lams(t, fuel=200000):
        for _ in range(fuel):
            n, h, args = spine(t)
            if h[0] != 1 or not args:
                return n
            t = rebuild(n, beta(h, args[0]), args[1:])
        return None

    keys = {}

    def leaves(t):
        if size(t) + 2 * lam.maxfree(t) <= HL:
            c, _ = closure(t)
            keys.setdefault(lam.encode(c), c)
        if t[0] == 1:
            leaves(t[1])
        elif t[0] == 2:
            leaves(t[1])
            leaves(t[2])

    for t in terms:
        leaves(t)
    os.makedirs(TMP, exist_ok=True)
    leaf_file = os.path.join(TMP, f"divergence_leaves_{HL}.txt")
    with open(leaf_file, "w") as f:
        f.write("".join(k + "\n" for k in keys))
    out = subprocess.run([BLAM, "adjudicate", "--file", leaf_file,
                          "--threads", "12", "--work-mult", "2"], capture_output=True, text=True).stdout
    verdict = {ln.split()[0]: ln.split()[1] for ln in out.split("\n") if ln.strip()}
    unsolv = BohmEval(1)
    leaf = {}
    for k, c in keys.items():
        v = verdict.get(k)
        if v == "HALT":
            leaf[k] = ("WN", hnf_lams(c))
        elif v == "DIVERGE":
            leaf[k] = ("DIV", "U" if unsolv.ev(c, {}) == BOT else "D")
        else:
            leaf[k] = ("X",)
    memo = {}

    def lab(t, r3=True):
        key = (t, r3)
        if key in memo:
            return memo[key]
        if size(t) + 2 * lam.maxfree(t) <= HL:
            c, m = closure(t)
            cls = leaf[lam.encode(c)]
            if cls[0] == "WN" and cls[1] is not None:
                r = "O" if cls[1] > m else "N"
            else:
                r = cls[1] if cls[0] == "DIV" else "X"
        elif t[0] == 0:
            r = "N"
        elif t[0] == 1:
            r = {"N": "O", "O": "O", "U": "U", "DN": "D", "D": "D"}.get(lab(t[1], r3), "X")
        elif t[1][0] == 1:
            M, P = t[1][1], t[2]
            lm, lp = lab(M, r3), lab(P, r3)
            if lm == "U":
                r = "U"
            elif lm in ("N", "O", "DN", "D") and lp == "N":
                r = lm
            elif r3 and not lam.uses(M, 0) and lab(M, False) in ("N", "O", "DN", "D"):
                r = lab(M, False)
            else:
                r = "X"
        else:
            lf, lp = lab(t[1], r3), lab(t[2], r3)
            if lf == "U":
                r = "U"
            elif lf == "DN":
                r = "DN"
            elif lf == "N":
                r = "N" if lp in ("N", "O") else ("DN" if lp in ("U", "DN", "D") else "X")
            elif lf == "O" and lp == "N":
                r = "O"
            else:
                r = "X"
        memo[key] = r
        return r

    return [lab(t) for t in terms]


def main():
    path, nmax, mode, arg = sys.argv[1], int(sys.argv[2]), sys.argv[3], int(sys.argv[4])
    ns = int(sys.argv[5]) if len(sys.argv) > 5 else 1000
    terms = weighted_divergent(path, nmax, ns)
    if mode == "alphabet":
        S, rng = Sampler(nmax), random.Random(5)
        sizes = list(range(42, nmax + 1))
        train = [parse(S.sample(n, rng))[0] for n in rng.choices(sizes, weights=[S.mass(n) for n in sizes], k=3000)]
        learn = RestrictedEval(arg)
        for t in train:
            learn.evk(t, {})
        ranked = [lab for lab, _ in learn.freq.most_common()]
        for K in (100, 1000, len(ranked)):
            R = RestrictedEval(arg, alpha=set(ranked[:K]))
            res = collections.Counter(R.verdict(t) for t in terms)
            print(f"alphabet {arg}: top {K} of {len(ranked)} labels -> certified {(res['U'] + res['D']) / ns:.1%}")
        return
    if mode == "bt":
        E = BohmEval(arg)
        res = collections.Counter(E.verdict(t) for t in terms)
        cert = res["U"] + res["D"]
    else:
        res = collections.Counter(propagate(terms, arg))
        cert = res["U"] + res["D"] + res["DN"]
    print(f"{mode} {arg}: certified {cert / ns:.1%} of {ns} mass-weighted divergent tail samples ({dict(res)})")


if __name__ == "__main__":
    threading.stack_size(1 << 29)
    th = threading.Thread(target=main)
    th.start()
    th.join()
