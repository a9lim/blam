#!/usr/bin/env python3
"""Finite checks for the identities and lemmas in REPORT.md.  Rigid variables are
bound by outer lambdas; the recursive parser is kept rigid where its unfolding
would not normalize (its `next` and knot are free symbols).  No search."""
import sys
from pathlib import Path
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import h

def eq(label, a, b):
    na, nb = h.normalize_src(a), h.normalize_src(b)
    ok = na is not None and na == nb
    print(("PASS " if ok else "FAIL ") + label)
    if not ok:
        print("   ", h.pretty(na) if na else na)
        print("   ", h.pretty(nb) if nb else nb)
    return ok

K = r"(\a \b. a)"
F = r"(\a \b. b)"
# The 165's reader with `next` and `cont` rigid (free in the frame below).
READER = r"(\cont \list. list (\bit0. bit0 (\unused \r. r next) cont) (list list list))"
H = r"(\bit0. bit0 (\unused \r. r next) k)"          # handler closed over k
Z = r"(\unused \r. r next)"

ok = True
# 1. The parser applied to a Boolean as its stream.
ok &= eq("P k K = H_k",        rf"\next \k. {READER} k {K}", rf"\next \k. {H}")
ok &= eq("P k F = F",          rf"\next \k. {READER} k {F}", rf"\next \k. {F}")
ok &= eq("P k K F = k",        rf"\next \k. {READER} k {K} {F}", r"\next \k. k")
ok &= eq("P k K X Y = X Z_k k Y", rf"\next \k \X \Y. {READER} k {K} X Y", rf"\next \k \X \Y. X {Z} k Y")
ok &= eq("P k F X Y = Y",      rf"\next \k \X \Y. {READER} k {F} X Y", r"\next \k \X \Y. Y")

# 2. A one-cell fake variable stream returns its tail as the value and X X s as the rest.
CONS = lambda b, t: rf"(\f. f {b} {t})"
ok &= eq("P c (cons F X) = c X (X X (cons F X))",
         rf"\next \c \X. {READER} c {CONS(F, 'X')}",
         rf"\next \c \X. c X (X X {CONS(F, 'X')})")

# 3. V_abs and k_app have distinct beta-normal forms (both already normal).
VABS = r"(\args \arg. exp (\zx \zy. zx arg (zy args)))"
KAPP = r"(\exp2. cont (\args. exp args (exp2 args)))"
na, nb = h.normalize_src(rf"\exp \cont. {VABS}"), h.normalize_src(rf"\exp \cont. {KAPP}")
print(("PASS " if na != nb else "FAIL ") + "V_abs and k_app are distinct normal forms")
ok &= na != nb
# V_abs applied as a continuation: no cont at the head.
print(h.pretty(h.normalize_src(rf"\exp \cont \e \r. {VABS} e r")))

# 4. The skip of a one-cell fake stream evaluates V_abs: not a rest.
ok &= eq("V_abs V_abs s = exp (cell s V_abs)",
         rf"\exp \s. {VABS} {VABS} s",
         rf"\exp \s. exp (\zx \zy. zx s (zy {VABS}))")

# 5. Zero-arm with one binder: the duplicate lands after rest.
ok &= eq("(\\r. r next) r r = next b r2 r (cons b r2 = r)",
         rf"\next \b \r2. (\r. r next) {CONS('b','r2')} {CONS('b','r2')}",
         rf"\next \b \r2. next b r2 {CONS('b','r2')}")

print("ALL PASS" if ok else "SOME FAILED")
