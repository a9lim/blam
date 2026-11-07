Lane "bodylin" (wave 5): the last body-let case — a linear let carrying j with a nested head redex.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 in full (current), then
tmp/round4/bodylet/REPORT.md (esp. §4 "Remaining route" and its exact hoist
and sink identities), tmp/round4/bodyredex/REPORT.md (linear lets: j must
lie in A, A contains a λ; contracting never yields a β-normal term
directly — Followup.lean) and tmp/round4/handlerlet/REPORT.md (the method).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/bodylin/ — write only there.

Problem. Minimum readers (order: weight, λ count, depth) with w ≤ 45 of the
form R = λs. ((λx. B) A) C⃗, j at depth 1, x used exactly once, j inside A
(A contains a λ), and B containing a nested head redex. Every other body
let is excluded (nonlinear: bodylet; linear without a nested head redex or
with λ-headed B: bodyredex). Close this case, or list explicit priced
survivors with witnesses, or construct a reader with w ≤ 45 (splice into
the 162 in place of `list I V NEXT`, NEXT at the hole; battery; polish;
report at once).
Tools: close46's kernel-checked SelfintNestedLets (a nested head redex
((λy. D) E) B⃗ displays as adjacent lets at an exact capture charge, and
independent adjacent lets interchange at an exact price); bodylet's exact
local hoist and sink identities; the linear-let index-tax condition (a
linear let pays only when (f_A − 1)M > 6 + T); the selective pruning price
for a j-sharing let (firstopj); Theorem S (no minimum reader below 46 has a
syntactic dispatch site) and the β-normal bound (with class-bound.md §3's
caveat: do not argue through normal forms). Then the handlerlet method per
cell, each check ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads, every
normalizer exception refuted in Lean (files ≤ 2 min, ≤ 2 GB). Keep
generated JSON dumps modest (summaries, not every source, unless needed for
the certificate manifest). Append to NOTES.md as you go; finish with
REPORT.md in the BRIEF.md format.
