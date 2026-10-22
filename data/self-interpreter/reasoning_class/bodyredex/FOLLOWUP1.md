Coordinator follow-up, same lane and directory (tmp/round4/bodyredex/), same rules (BRIEF5.md caps: ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check).

Good narrowing (multiplicity ≤ 4, A contains a λ, linear ⇒ j ∈ A). A new
tool, to be used CONDITIONALLY and marked as such: the types lane
(tmp/round4/types/REPORT.md §§3, 5) reports, computer-checked with no
minimality hypothesis, that EVERY β-normal reader has w ≥ 46 (sharp at the
162). A fresh-context Codex review of that search is running now
(tmp/round4/review_types/); until it reports, treat the theorem as a
hypothesis H_nf and keep every conclusion that uses it labelled.

Consequence to exploit: a reader R with w ≤ 45 normalizes (laws are
preserved by β) to a β-normal reader of weight ≥ 46, so every route from R
to its normal form must raise the weight by at least 46 − w(R) ≥ 1. The
exact contraction prices are known: the let-saving formula
S = (k−1)|A| + (f_A − 1)M − 4 − 2k − T (class-bound.md §3), and the
kernel-checked SelfintSourceCost.contract_hoist_price /
SelfintLocalCost.weighted_beta_at. A linear let pays only through its index
tax, (f_A − 1)M > 6 + T. Please:
 (1) For your remaining case "linear let carrying j inside a λ-containing
     A": if contracting the let yields a β-normal term (no created redex),
     H_nf forces (f_A − 1)M − 6 − T ≥ 46 − w(R); combine with the source
     budget and see whether anything survives. If the contraction creates a
     redex (x in head position, A a λ), follow the created-redex chain with
     the same exact prices.
 (2) The same for nonlinear lets with 2–4 uses of a λ-containing A: the
     contraction raises the weight by (k−1)|A| + … ; together with H_nf and
     the budget, which (k, |A|, M, T) profiles survive? Price those.
 (3) State the resulting theorem exactly: "under H_nf, no minimum reader
     with w ≤ 45 has a first body redex" (or what survives).
Append to NOTES.md as you go; add a new section to REPORT.md at the end.
