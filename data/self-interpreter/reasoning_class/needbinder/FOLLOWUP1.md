Coordinator follow-up, same lane and directory (tmp/round4/needbinder/), same rules (BRIEF5.md caps: ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check).

Good result: the opener boundary is now B = ((λx. D) A) C1…Ck with
2 ≤ uses_x(D) ≤ 4 at |B| ≤ 29 inside λs. s (λb t. B) j. Please take exactly
that target next, by the route your §4 names: the original source budget,
the delivered values b ∈ {K, F}, t ∈ {r, U_(n−1)(N)}, and the exact let and
binder-path charges — B[K, r] j must reach r j and B[F, U_(n−1)] j must
reach c U_(n−1) N, so A is a value that both of those runs use (or the
let is single-role and your §2.2 sinking price applies).

Useful, now in the library (the close46 Lean was promoted into lean/Blc
this morning; import it as `Blc.SelfintNeededHead` etc., with
LEAN_PATH=lean/.lake/build/lib/lean — the namespace map is in
tmp/round4/integrate2/REPORT.md): SelfintNeededHead.minimum_forget_fails /
body_needed_sharing (for an x-headed D the extra uses are needed in a
minimum reader, one to five below 46), SelfintNestedLets (nested-let
display and exchange prices), SelfintLocalCost.minimum_linear_source_charge,
SelfintSourceCost.contract_hoist_price. The shared value's possible roles
are pinned by the core lemmas (unary core ≥ 20 and unique
s (λq. c) (s s j) through 23; zero core ≥ 12; a j/N operand ≥ 25).

Split by multiplicity (m = 2, 3, 4) and by where c sits (in A, in D, in a
pending operand), as your §3.3 does for m = 5. Each sub-case should end in
an inequality on |B| or a pinned finite check under the caps with a stated
completeness argument. If m = 2 with A a λ-term turns out to be where the
162's own wrapper lives (its u absorber), say so and give the exact
equality case. Then, if time remains, the single-role capture alternative
of §2.2 for general R1′.

Update NOTES.md as you go and REPORT.md at the end (a new section, not a
rewrite of the old ones).
