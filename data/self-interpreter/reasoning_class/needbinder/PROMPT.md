Lane "needbinder" (wave 5): the needed-binder case of the 162's own family.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
hard compute caps), then docs/classical/self-interpreter/class-bound.md §3,
tmp/round4/hole/NOTES.md §§10–12 and REPORT.md (Theorem 11.4 and the
index-shift lemma 11.1), tmp/round4/review_hole/REVIEW.md (its repair: the
unary-only wrapper check, wrapper_unfiltered.py), tmp/round4/bridgeadv/
REPORT.md (the let-saving formula and the two-productive-uses lemma) and
tmp/round4/close46/REPORT.md (source-cost balance, let-sinking, and the
linear-let counterexample in LambdaSink.lean).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/needbinder/ — write only there.

Problem. Family R1: R = λs. Y j with Y[Z(r)] =βη r, Y[U_n(N)] j = c U_(n−1) N,
31 ≤ |Y| ≤ 37 (the 162 has |Y| = 38, w = 46). Let ν be the source node of Y
that becomes the unary output. Reviewed result: if every binder above ν has
only unary-dispensable occurrences inside ν's subterm, a minimum reader of
this shape has w ≥ 46, with equality only through the 162's wrapper
s I (\u. x). Open (R1′): some binder x above ν carries a value that the
unary output needs — a let (λx. B) A whose A feeds ν, or a cell part that
the bit's handler opens (λb t. … with t used inside ν).

Goal: prove that a minimum reader in R1 has w ≥ 46 in the R1′ case too, or
construct a reader with w ≤ 45 (splice, battery, polish, report at once).
Ideas: a needed binder above ν means the value is shared between ν and
something else (otherwise let-sinking moves it into ν at no cost, close46).
So R1′ is cross-role sharing: price what the shared value must do in both
roles with the core lemmas, then charge the let by the exact formula
S = (k−1)|A| + (f_A − 1)M − 4 − 2k − T; for openers, split the hole at the
opened cell part and apply the index-shift lemma with the opener's binder
counted. State minimality explicitly wherever you replace a reader by a
lighter one.

Reason first; a finite check only to close one pinned sub-case, within the
caps in BRIEF5.md (≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads), with a
stated completeness argument. Lean welcome for pinned lemmas. Append to
NOTES.md as you go; finish with REPORT.md in the BRIEF.md format.
