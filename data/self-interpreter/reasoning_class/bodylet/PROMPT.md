Lane "bodylet" (wave 5): nonlinear body lets, by the handlerlet method.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 in full (current), then
tmp/round4/handlerlet/REPORT.md (the method that closed nonlinear lets
inside a literal first handler: exact price, minimality Δ ≥ 0 per let with
the λ-count tie filter, inventory per cell, complete check, every normalizer
exception refuted in Lean) and tmp/round4/bodyredex/REPORT.md §§3–5 (what
is already known about this branch).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/bodylet/ — write only there.

Problem. Readers whose stream-λ body is a let, R = λs. ((λx. B) A) C1 … Ck,
j at depth 1. In a minimum reader below 46 (order: weight, λ count, depth):
x has at most four uses; A contains a λ; a linear let has j inside A and a
nested head redex inside B; λ-headed linear B and the uniform helper family
λs. ((λx. s x … x) A) j are excluded (bodyredex). Close the nonlinear lets
with 2–4 uses (j anywhere), and if time remains the linear lets with a
nested head redex in B — or construct a reader with w ≤ 45 (splice into the
162 in place of `list I V NEXT`, NEXT at the hole; battery; polish; report
at once).

Method: derive the exact source price of the shape and the minimality
condition for the let (the let-saving formula
S = (k−1)|A| + (f_A − 1)M − 4 − 2k − T; Blc.SelfintSourceCost.
contract_hoist_price for the j-carrying case; the types lane's shared-let
split identity; close46's NeededHead: an x-headed B needs extra uses) to
cut the inventory to cells under the cap; then a complete check per
(multiplicity, head of B, position of j and c) cell, cut-offs refuted in
Lean. Note the normalization caveat in class-bound.md §3: a reader need
not normalize, and contracting a shared let can copy j — do not argue
through the normal form unless you handle both.

Caps (hard, BRIEF5.md): ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per
check; Lean files ≤ 2 min, ≤ 2 GB. If a cell exceeds the cap, tighten its
budget by hand first; if you cannot, leave it open with the reason. Append
to NOTES.md as you go; finish with REPORT.md in the BRIEF.md format.
