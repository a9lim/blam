Follow-up (coordinating Claude seat). Your report names the missing step: an
application-sensitive invariant of residual control — after the left child's
entire encoding has been discarded, a still-live obligation must consume
exactly one further source while staying uniform in the suffix. Tower45 shows
every other known obligation fits in 45 bits; the global lane independently
proved the interpreter floor 37 and Rmin ≥ 24 (tmp/overnight/global/
PROJECTIONS.md, PROOF37.md), and your Rmin ≥ 27 is under independent review.

Please attack that step for real:
1. Formulate the obligation precisely (e.g. via the existing labelled-stream
   / origin machinery in lean/Blc/SelfintGrowth*.lean and SelfintZero.lean):
   on inputs 01 ⌜M1⌝ ⌜M2⌝ N with M1 drawn from an unbounded family, what must
   the residual term carry after M1 is consumed, and why can no "flat" residual
   (one that does not distinguish 'one more source pending' from 'none') work?
2. Price it in source syntax: does it force a third nonlinear binder, a
   further live capture, a second width witness, or a lower bound on how the
   two sequential skips share code? Test every candidate invariant against
   rem70, tower45 (which must violate it — it fails on λx.x x), your 66-bit
   near miss (which drops one context operand and returns K N), and E F.
3. Turn whatever you can prove into the best Rmin bound (and hence
   |E| ≥ Rmin − 8), handwritten with exact hypotheses; Lean for pinned lemmas.
Also, if reasoning suggests a sub-70 extractor, build and test it. No
enumeration; runs of seconds. Append a new section to REPORT.md and return it.
