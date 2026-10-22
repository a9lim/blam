Lane "firstop" (wave 5): s-spine readers whose first operand is not a literal λ.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3
in full (current), then tmp/round4/handlerlet/REPORT.md, tmp/round4/loop/
REPORT.md §§5–6, tmp/round4/d1open/REPORT.md and tmp/round4/adv5/REPORT.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/firstop/ — write only there.

State. For s-spine readers R = λs. s A1 A2 … Ak (depth 1): every one whose
first operand reaches the first dispatch without a β-redex on its head path
has w ≥ 46 (d1open, unconditional); and no MINIMUM reader below 46 has a
literal λ as A1 (loop + handlerlet). What remains of the branch: A1 not a
literal λ, with a β-redex on its head path — A1 a redex ((λx. M) N) P⃗, or
stream-headed (s Q …) with a redex on the head path, or headed by another
variable that the dispatch reaches through a redex.

Goal: no minimum reader (order: weight, λ count, depth) with w ≤ 45 lies in
this branch — or a reader with w ≤ 45 (splice into the 162 in place of
`list I V NEXT`, NEXT at the hole; battery; polish; report at once).
Tools: adv5's identity s (s Q) Y… = s (λb t. Q b t b t) Y… for Q free of s
(a stream-headed first operand is a closed handler fed its cell twice, at
≥ 8 bits more); contracting a head redex of A1 turns it toward a literal λ
handler — price that contraction exactly (Blc.SelfintSourceCost.
contract_hoist_price, Blc.SelfintLocalCost.weighted_beta_at, the let-saving
formula, close46's multiplicity caps) and use minimality to land in the
closed literal-λ case or to bound the profile; the zcore lane's result that
a reader below 46 dispatches through at most one site saving 8–15 bits
(class-bound.md §3, "dispatch sites"). Optional conditional tool, label it
when used: H_nf, "every β-normal reader has w ≥ 46" (types lane, under
independent review in tmp/round4/review_types/).

Reason first; a finite check only to close one pinned sub-case, within
BRIEF5.md's caps (≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads), with a
stated completeness argument, cut-offs certified. Append to NOTES.md as you
go; finish with REPORT.md in the BRIEF.md format.
