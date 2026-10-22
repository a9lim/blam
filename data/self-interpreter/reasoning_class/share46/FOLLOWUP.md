Coordinator follow-up, same lane and directory (tmp/round4/share46/), same
rules (constructive side, no enumeration, pinned checks only).

Context you did not have: the close46 lane has kernel-checked
(tmp/round4/close46/ClosureBarrier.lean, REPORT.md §1) that ANY application
tree over s, I, F, rigid parameters, continuation towers C_m = λ^m.c and
factories H_m = λx. x C_m — unlimited copies, different specialization
arguments, nonlinear lets — fails the reader laws. It also shows
(BoundaryAlgebra.lean) that Δ = λx. x x breaks its invariant:
D(s) = s Δ I (s s) j is j on zero, N for n >= 2, N j at n = 1. So the
factory grammar is closed; what is open is exactly your "unresolved
opportunity": helpers that build DIFFERENT CLOSURES (functions capturing
computed arguments, like the 162's λu. s C_1 (s s u)) before j is absorbed,
in particular with the stream supplying the specialization argument, and
helpers involving Δ.

Pursue that. For each candidate helper write its equations under each use
first, solve for the cheapest helper, and price the whole reader before
checking. Two concrete directions: (i) a shared helper G with G X1 = the
selector and G X2 = the absorbing arm λu. ..., where X2 is something the
stream already hands you (r, s s, s F, the bit); (ii) Δ-based sharing, since
Δ is the one cheap callback outside the closed grammar and close46's D(s)
already gets j/N right except at n = 1 — can a cheap repair of the n = 1
case beat 46 when combined with a cheap selector? Price the repair exactly.
Extend REPORT.md with a new section; record progress in NOTES.md.
