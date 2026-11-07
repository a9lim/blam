#!/usr/bin/env python3
"""Check Lemma T on concrete whole-prefix readers: R' meets the whole-prefix
reader laws, R = R'[kappa/c] (contracted) meets the raw class laws."""
from lab import *
# free context, innermost first: c j N r  (rigid)
FR = ["c", "j", "N", "r"]
c, j, N, r = (("V", i) for i in range(4))
def laws(R, raw):
    ok = eq(app(R, cons(K, r)), app(r, j))
    for n in range(1, 5):
        val = U(n - 1, N) if raw else U(n, N)
        ok &= eq(app(R, U(n, N)), app(c, val, N))
    return ok
cases = {
 "162 shape": (r"\s. s (\a.a) (\u. c s (s s u)) j",
               r"\s. s (\a.a) (\u. s (\q. c) (s s u)) j"),
 "let-bound c": (r"(\k. \s. s (\a.a) (\u. k s (s s u)) j) c",
                 r"(\k. \s. s (\a.a) (\u. k s (s s u)) j) (\v. v (\q. c))"),
 "165 shape": (r"(\n. \s. s (\b. b (\u. \r. r n) (\r. c s)) (s s s)) j",
               r"(\n. \s. s (\b. b (\u. \r. r n) (\r. s (\q. c))) (s s s)) j"),
}
for name, (wp, rw) in cases.items():
    A, B = parse(wp, FR), parse(rw, FR)
    print(f"{name:12s} whole-prefix laws {laws(A, False)}  size {size(A)}"
          f" | transferred raw laws {laws(B, True)}  size {size(B)}"
          f"  (+{size(B)-size(A)})")
