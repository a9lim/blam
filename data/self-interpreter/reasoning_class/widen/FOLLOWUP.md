Coordinator follow-up, same lane and directory (tmp/round4/widen/), same
rules. Excellent result; the price frontier is the right repaired target.

Next, close H2 completely: prove that every RigidNext Q satisfies
q >= 92 and q + 3F >= 104 (equivalently, exclude the three regions
q <= 91; F = 2, q <= 97; F = 3, q <= 94). Suggested route (your call):
a minimum-counterexample argument on Q (minimum q, then fewest source
lambdas) in the style of your AdminBeta theorem — show a minimum
counterexample's redexes are either removable within the exact
linear_beta_delta budget (then the old 92-bit / four-leaf normal-form
theorem applies), or nonlinear sharings whose overhead you can price
exactly (your shareParameters costs +13 for F = 2; a single-parameter share
appears to cost about +8 for F = 3, giving q ~ 100), or longer tag spines
whose arms must close over p and c (Qfour 113). Your F >= 2, live-capture
and nonlinear-binder facts bound the cheap end. If a full proof is out of
reach, settle the cheapest sub-region you can and state exactly what is
left.

If that lands with time to spare, move to H3 (value representations), as
in your original brief: the reader returns c V_n N on unary input for some
family V_n, and NEXT builds values with arbitrary constructors; find the
cheapest representation or a bound over all of them.

Record progress in NOTES.md as you go (capacity errors have cut several of
your turns); extend REPORT.md with a new section at the end.
