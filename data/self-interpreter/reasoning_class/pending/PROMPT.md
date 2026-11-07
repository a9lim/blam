Lane "pending" (wave 5): root-let hand-offs with pending operands — a priced exposure.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 (current; "minimum" at
the top; the root-let paragraphs and the Open paragraph), then
tmp/round4/rootnarrow/REPORT.md and FILTERS.md (what closed for t = 0 and
why t ≥ 1 multiplies cells), tmp/round4/rootlow/REPORT.md (the exact
stream-binder exposure price, kernel-checked, and why equal-weight exposure
does not carry minimality at depth 0/1), tmp/round4/simplify/REPORT.md
(specialization prices), tmp/round4/shared/REPORT.md (Lift identity) and
tmp/round4/root/REPORT.md (pull lemma).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/pending/ — write only there.

Problem. Minimum readers R = (λx. B) A C₁ … C_t (t ≥ 1 pending operands),
nonlinear (2–4 uses of x), j at depth ≤ 1, w ≤ 45. rootnarrow closed the
t = 0 full-chain hand-offs; for t ≥ 1 the cells multiply by the operands'
shapes. The lever it names: a priced reduction that moves a pending operand
into the body (or into A) — an exposure with Δ < 0, or Δ = 0 with a λ-count
or depth decrease — preserving both laws for every n and one source j.
Goal: derive the exact price of every such move (pull a pending C_i under
the let; substitute it into B when B's head consumes it; the root lane's
pull lemma, generalized), kernel-check the prices and the law/one-hole
transport in Lean, and show which (t, operand shape) profiles admit a
strictly descending move — those are excluded from the minimum. For the
profiles that do not, give the exact residual shape; then, only if a
residual cell is under 100,000 sources after the minimality filters, close
it by the handlerlet method with every normalizer exception refuted in
Lean. Caps (hard): ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check;
Lean files ≤ 2 min, ≤ 2 GB; no cargo builds; modest JSON. No broad
enumeration: the over-cap cells stay over the cap unless a proven cut brings
them under. Append to NOTES.md; finish with REPORT.md in the BRIEF.md
format.
