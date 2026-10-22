"""Bounded check of NOTES §10: no closed T <= MAXBITS turns raw unary values
into curried pair-selectors v_1 = K, v_{n+1} = \a e. e v_n  (T U_n(N) = v_n,
n = 1..3, N rigid).  Also checks the whole-prefix variant (T s_n = v_n)."""
import sys
sys.path.insert(0, "tmp/round3/values"); sys.path.insert(0, "tools/self-interpreter")
from lab import *
import battery
MAXBITS = int(sys.argv[1]) if len(sys.argv) > 1 else 24
N = ("V", 0)                      # rigid tail: free index 0 at top level
def U(n): return bits("1" * n + "0", N)
def v(n):
    t = K
    for _ in range(n - 1):
        t = ("L", ("L", ("A", ("V", 0), shift(2, 0, t))))   # \a e. e t
    return t
raw = [shift(1, 0, U(n - 1)) for n in (1, 2, 3)]     # raw tails, N -> index 1 under T? no: T closed
# T is closed, so T applied to U sits at top level with N = index 0 free.
raw = [U(n - 1) for n in (1, 2, 3)]
whole = [U(n) for n in (1, 2, 3)]
want = [nf(v(n)) for n in (1, 2, 3)]
terms = []
for n in range(4, MAXBITS + 1):
    terms += battery.closed_terms(n)
print("closed terms <=", MAXBITS, ":", len(terms))
for label, vals in (("raw", raw), ("whole", whole)):
    hits = []
    for T in terms:
        ok = True
        for s, w in zip(vals, want):
            r = nf(("A", T, s), fuel=2000)
            if r != w:
                ok = False; break
        if ok: hits.append(T)
    print(label, "survivors:", len(hits), [show(t) for t in hits[:5]])
