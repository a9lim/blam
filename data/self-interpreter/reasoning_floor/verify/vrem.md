Adversarial verification request. You are a fresh, independent reviewer; your
job is to find an error if there is one. Repository: /Users/a9lim/Work/blam.

Two handwritten lower bounds are under review.

(1) Every closed exact remainder extractor R — R (⌜M⌝ ++ N) =β N for every
closed M (divergent included) and rigid N — has |R| ≥ 27. Proof:
/Users/a9lim/Work/blam/tmp/overnight/remainder/REPORT.md §4 (with §3's Lean
theorem in RemainderChain.lean, and audit.py). An independent lane proved a
weaker 24 by a different route: /Users/a9lim/Work/blam/tmp/overnight/global/
PROJECTIONS.md.

(2) Every self-interpreter whose literal source is λc s. c A B has at least
70 bits: PROJECTIONS.md (same directory as above).

Background: docs/classical/self-interpreter/remainder.md, structural-bounds.md,
capture-width.md, head-decomposition.md; Lean modules lean/Blc/SelfintZero.lean,
SelfintNonlinearChain.lean, SelfintProjections.lean. Encoding: ⌜λM⌝ = 00⌜M⌝,
⌜M N⌝ = 01⌜M⌝⌜N⌝, var n = 1ⁿ0, K = λxy.x (0), F = λxy.y (1),
cons b r = λf. f b r; |M| = 2L + 4A + 2 + X.

Check every step, especially: the three-live-binder argument (is "closed in
isolation ⇒ copies keep their bodies ⇒ no nonlinear binder inside the exposed
lambda" sound for weak-head evaluation with arbitrary redexes?); the claim that
the allocation through 26 bits is exactly the listed cases; every reduction
table entry; the divergence recurrences; for (2), whether the width-three and
incomparable-pair requirements really sit inside A, whether |B| ≥ 22 is
justified for the open body, and whether anything is double counted. Small
fixed checks (seconds) are fine; no enumeration. Answer: verdict per claim
(correct / gap / error), every problem with location and counterexample or
failing step, and what you checked fully. Also write your review to
/Users/a9lim/Work/blam/tmp/overnight/verify/vrem_codex.md.
