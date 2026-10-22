Lane "firstopj" (wave 5): s-spine readers whose non-λ first operand carries j.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 in full (current), then
tmp/round4/firstop/REPORT.md (all sections: the j-free branch closed, the
handler-sinking inequality, the kernel-checked contextual hoist price, the
((λx.D) j) P⃗ closure, the reification surcharge) and
tmp/round4/handlerlet/REPORT.md (the method).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/firstopj/ — write only there.

Problem. R = λs. s A1 A2 … Ak at depth 1 whose first operand A1 is not a
literal λ, has a β-redex on its head path, and contains j. Closed already:
j-free A1 (firstop); A1 = ((λx. D) j) P⃗; literal-λ A1 (handlerlet);
redex-free head paths (d1open). Open, per firstop: nontrivial j-bearing
shared arguments (A1 = ((λx. D) A) P⃗ with j inside A, A shared), other
j-bearing contexts, and j-bearing stream-headed first operands (s Q …).
Goal: no minimum reader (order: weight, λ count, depth) with w ≤ 45 in this
branch, or explicit priced survivors, or a reader with w ≤ 45 (splice into
the 162 in place of `list I V NEXT`, NEXT at the hole; battery; polish;
report at once).

Constraints to use: firstop's kernel-checked contextual hoist price — when
the depth-one j lies in a shared A, contracting and restoring one hole
changes the weight by (m−1)|A| + (s_A + c_A)M − 3m − s_D + c_C + m·c_A,
which must be ≥ 0 in a minimum; the reification surcharge
18 + 2F + 6·occ_j(Q); zcore's site theory (a reader below 46 dispatches
through at most one site saving 8–15; a closed s I anchor forces 46); the
copy lemma for a let-bound j (depth02: every non-surviving copy sits at
depth 0 in the let body). Then the handlerlet method per cell, each check
≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads, every normalizer exception
refuted in Lean (files ≤ 2 min, ≤ 2 GB). Do not argue through normal forms
(class-bound.md §3's caveat). Append to NOTES.md as you go; finish with
REPORT.md in the BRIEF.md format.
