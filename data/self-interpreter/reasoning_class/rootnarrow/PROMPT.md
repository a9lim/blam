Lane "rootnarrow" (wave 5): close the remaining root lets by needed narrowing with minimality filters.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 (current; "minimum" defined
at its top; the Open paragraph), then tmp/round4/adv6/REPORT.md and NOTES.md
(narrowing on root prefixes; what closed; what overflowed), the engine
tmp/round4/types/narrow.py / narrow2.py with both reviews
(tmp/round4/review_types/REVIEW.md, review_types_gemini/REVIEW.md: tabling is
sound for joint laws, also with redexes per tmp/round4/shared/REPORT.md §3.3),
tmp/round4/shared/cert.py (cut-off certifier), and the root-let reports
tmp/round4/rootlow/REPORT.md, rootnf/REPORT.md, root/REPORT.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/rootnarrow/ — write only there.
A Codex lane ("rootnl", tmp/round4/rootnl/) is attacking the same residue by
exact prices and per-cell checks; you are the independent method. Read its
NOTES.md if present, and do not duplicate its cells.

Residue (minimum readers, w ≤ 45): nonlinear root lets R = (λx. B) A C⃗,
2–4 uses of x, j at depth ≤ 1. adv6 closed the stream-λ-headed ones
(λg s. B) A for every helper it reached, with no minimality; what overflowed:
A = j (pure hoist), A = λy. j, A itself a redex, (λg n s. _) I j,
(λg n s. _) (λy. c) j, (λn g s. _) j (λy. y _), and hand-offs where B is
not stream-λ-headed (A runs before the stream arrives), with pending
operands.

Method: extend the narrowing engine with minimality price filters applied
to every COMPLETE subterm as soon as it is filled — no erasing redex; a
linear redex must satisfy the index tax (F − 1)D ≥ 7 + G (close46,
Blc.SelfintLocalCost.minimum_linear_source_charge); a nonlinear let must
satisfy Δ ≥ 0 by the exact contraction/hoist price (rootlow, bodylet
Prices.lean); no η-redex (rootcert's kernel-checked η rule) — and with the
profile bound w ≥ 4k + 22 + 4d + tax for the root let. Write down why each
filter is sound for minimum readers (they are only valid under minimality,
unlike adv6's no-minimality runs: label results accordingly). Then run the
overflowing cells, each check ≤ 100,000 states, ≤ 2 min, ≤ 1 GB, 1–2 threads,
every cut-off certified (cert.py, Lemma SF, a hand proof, or Lean); if a cell
still overflows, record its frontier and why. Never rerun a probe just to see
it again; keep aggregate compute proportionate.

OUTPUT DISCIPLINE: every response under ~10k output tokens, one idea per
turn; append progress to NOTES.md after every step. Finish with REPORT.md in
the BRIEF.md format (if the write is refused, return it as your final text).
