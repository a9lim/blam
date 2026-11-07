#!/usr/bin/env python3
r"""Crafted-input identities of the 162's reader R_c(s) = s I (\u. s (\q.c) (s s u)) n,
with c, n (standing for NEXT_c), t rigid (outer lambdas)."""
import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
sys.path.insert(0, '/Users/a9lim/Work/blam/tools')
import battery, lc
R = r"(\s. s (\a.a) (\u. s (\q. c) (s s u)) n)"
cases = {
  "R I        = c":           (r"\a.a", r"c"),
  "R K        = n":           (r"\x. \y. x", r"n"),
  "R F        = n":           (r"\x. \y. y", r"n"),
  "R (cons K t) = t n":       (r"\f. f (\x. \y. x) t", r"t n"),
  "R (cons F t) = c t (t t n)": (r"\f. f (\x. \y. y) t", r"c t (t t n)"),
  "R (\\a. \\b. \\m. m m) = n n":   (r"\a. \b. \m. m m", r"n n"),
}
for name, (arg, want) in cases.items():
    g = battery.compile_lam(r"\c. \n. \t. " + R + " (" + arg + ")")
    w = battery.compile_lam(r"\c. \n. \t. " + want)
    gn, wn = lc.nf(g, [10**6]), lc.nf(w, [10**6])
    print(("ok  " if gn == wn else "BAD ") + name, lc.show(gn))
