#!/usr/bin/env python3
r"""Lemma B, m = 2 closure: enumerate EVERY term t (one free h, occurring once as
the spine h H J) with ghost'(t) <= 36, both heads holding an outer leaf, and
refute t =beta h t t for each.  ghost' = ghostCost (lambda 2, app 2, bound var
i+2, h 0) + 3 per outer leaf of H + 4 per outer leaf of J.  Counting (NOTES)
shows any term with ghost' <= 36 has <= 6 bound leaves, so the space is finite;
the generator is exhaustive by exact cost.  Refutation (sound): principal hnf
of t (head reduction, cycle = no hnf) must be h X Y with no lambdas and exactly
two arguments, recursively for X and Y to depth DEPTH.  Single thread."""
import sys
from functools import lru_cache
sys.setrecursionlimit(10000)
MAXC = int(sys.argv[1]) if len(sys.argv) > 1 else 36
ALLM = "--all-m" in sys.argv
NOCHAIN = "--keep-chain" in sys.argv
TA, TB = (int(sys.argv[sys.argv.index("--tax") + 1]), int(sys.argv[sys.argv.index("--tax") + 2])) if "--tax" in sys.argv else (3, 4)
LAMCAP = int(sys.argv[sys.argv.index("--lamcap") + 1]) if "--lamcap" in sys.argv else 6
DEPTH, FUEL, CAP = 3, 4000, 4000
H = ('H',)

@lru_cache(maxsize=None)
def genx(d, cost, need, tax, k):
    """terms of exact cost; returns tuple of (term, leaves, lams, outer)."""
    out = []
    if cost < 2: return ()
    if not need:  # variable leaves
        for i in range(d):
            o = 1 if (tax and i >= k) else 0
            if i + 2 + (tax if o else 0) == cost:
                out.append((('V', i), 1, 0, o))
    for b, lv, lm, o in genx(d + 1, cost - 2, need, tax, k + 1 if tax else 0):
        if lm < LAMCAP: out.append((('L', b), lv, lm + 1, o))
    rest = cost - 2
    splits = [(False, False)] if not need else [(True, False), (False, True)]
    for cf in range(2, rest - 1):
        ca = rest - cf
        for nf_, na in splits:
            F = genx(d, cf, nf_, tax, k); A = genx(d, ca, na, tax, k)
            for f, l1, m1, o1 in F:
                for a, l2, m2, o2 in A:
                    if l1 + l2 <= 6 and m1 + m2 <= LAMCAP:
                        out.append((('A', f, a), l1 + l2, m1 + m2, o1 + o2))
    if need and not tax:  # the spine h H J at this position
        for ch in range(2 + TA, rest - 1):
            cj = rest - 2 - ch
            if cj < 2 + TB: continue
            for hh, l1, m1, o1 in genx(d, ch, False, TA, 0):
                if not o1: continue
                for jj, l2, m2, o2 in genx(d, cj, False, TB, 0):
                    if o2 and l1 + l2 <= 6 and m1 + m2 <= LAMCAP:
                        out.append((('A', ('A', H, hh), jj), l1 + l2, m1 + m2, 0))
    return tuple(out)

def occ(t, d=0, acc=None):
    """binder -> occurrence count, binders named by path."""
    pass

def binders(t):
    """list of (path, count) for every lambda."""
    res = []
    def walk(t, path, stack):
        if t[0] == 'V':
            stack[-1 - t[1]][1] += 1
        elif t[0] == 'L':
            rec = [path, 0]; res.append(rec)
            walk(t[1], path + 'L', stack + [rec])
        elif t[0] == 'A':
            walk(t[1], path + '0', stack); walk(t[2], path + '1', stack)
    walk(t, '', [])
    return res

def shift(t, dd, c=0):
    if t[0] == 'V': return ('V', t[1] + dd) if t[1] >= c else t
    if t[0] == 'L': return ('L', shift(t[1], dd, c + 1))
    if t[0] == 'A': return ('A', shift(t[1], dd, c), shift(t[2], dd, c))
    return t
def subst(t, j, s):
    if t[0] == 'V': return s if t[1] == j else (('V', t[1] - 1) if t[1] > j else t)
    if t[0] == 'L': return ('L', subst(t[1], j + 1, shift(s, 1)))
    if t[0] == 'A': return ('A', subst(t[1], j, s), subst(t[2], j, s))
    return t
def size(t):
    return 1 if t[0] in 'VH' else 1 + size(t[1]) + (size(t[2]) if t[0] == 'A' else 0)

def loops(R):
    """Sound certificate (True implies no hnf): head reduction of the redex R alone reaches R B1..Bj
    (j >= 0) without passing an argument-free lambda; then R B has no hnf."""
    t = R
    for _ in range(FUEL):
        u = t; args = []
        while u[0] == 'A': args.append(u[2]); u = u[1]
        args.reverse()
        if t is not R:
            v = t
            for _ in range(len(args) + 1):
                if v == R: return True
                if v[0] != 'A': break
                v = v[1]
        if u[0] != 'L' or not args: return False
        red = subst(u[1], 0, args[0])
        for a in args[1:]: red = ('A', red, a)
        if size(red) > CAP: return False
        t = red
    return False

def hnf(t):
    """('cycle',) | None (fuel/cap) | (lams, head, args)."""
    seen = set()
    for _ in range(FUEL):
        if t in seen: return ('cycle',)
        seen.add(t)
        n = 0; u = t; path = []
        while u[0] == 'L': n += 1; u = u[1]
        args = []
        while u[0] == 'A': args.append(u[2]); u = u[1]
        args.reverse()
        if u[0] == 'L' and args:
            red = subst(u[1], 0, args[0])
            for a in args[1:]: red = ('A', red, a)
            for _ in range(n): red = ('L', red)
            if size(red) > CAP or len(seen) > FUEL - 2:
                return ('cycle',) if loops(('A', u, args[0])) else None
            t = red; continue
        return (n, u, args)
    return None

def check(t, depth):
    """'ref:<why>' if refuted, 'open' if consistent to depth."""
    r = hnf(t)
    if r is None: return 'open'
    if r == ('cycle',): return 'ref:no-hnf'
    n, head, args = r
    if n or head != H or len(args) != 2: return 'ref:shape'
    if depth == 0: return 'open'
    for a in args:
        c = check(a, depth - 1)
        if c.startswith('ref'): return c
    return 'open'

total = m2 = 0; survivors = []; why = {}
for c in range(15, MAXC + 1):
    for t, lv, lm, o in genx(0, c, True, 0, 0):
        total += 1
        bs = binders(t); nl = [p for p, k in bs if k >= 2]
        if len(nl) != 2 and not ALLM: continue

        if not NOCHAIN and len(nl) == 2 and (nl[0].startswith(nl[1]) or nl[1].startswith(nl[0])): continue  # Chain
        m2 += 1
        v = check(t, DEPTH)
        why[v] = why.get(v, 0) + 1
        if v == 'open': survivors.append((c, t))
print(f"tax=({TA},{TB}) ghost'<= {MAXC}: terms {total}, inspected {m2}, verdicts {why}")
for c, t in survivors[:20]: print("  SURVIVOR", c, t)
