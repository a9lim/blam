Lane "leanbn" (wave 5): toward a kernel-checked "every β-normal reader has w ≥ 46".

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §§2–3 (the bullet "every
β-normal reader: w ≥ 46"), tmp/round4/types/REPORT.md §§3, 5 and the code
narrow2.py / narrow3.py, then both reviews: tmp/round4/review_types/REVIEW.md
(Codex: the needed-occurrence repair of tabling; single-law tabling is
unsound) and tmp/round4/review_types_gemini/REVIEW.md (a fresh Claude
reviewer: sound for joint laws; hand proofs of all seven cut-offs).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/leanbn/ — write only there.

The result is computer-checked by a Python needed-narrowing search
(depth ≥ 2: 99,562 states; depth 1 by root arity k: 45,497 / 78,828 /
59,550 / 32,810 states). Its trust boundary is that search. The precedent
for closing such a gap is lean/Blc/SelfintReader30.lean: Codex's complete
Lean enumerator for the reader weight 30 (3,484 layouts), with the class's
Reader, cost and depth from lean/Blc/SelfintClass.lean.

Task: (1) Design how to kernel-check BN46 against
lean/Blc/SelfintClass.lean's definitions (β-normality, the laws Z, U₁, U₂,
weight): a verified decision procedure evaluated in the kernel, an exported
certificate tree that Lean checks node by node (refinement steps, the lower
bound, memo hits justified by the needed-occurrence lemma, cut-off
certificates), or another route; estimate the size and kernel time of each
from the state counts, honestly. (2) Prove the soundness lemmas the design
needs (the needed-occurrence/orphan lemma; the lower bound's admissibility;
the shape lemma "a β-normal reader satisfying Z is λs. s A₁ … A_k"). (3) If
the design is feasible, check the smallest chunk end to end (k ≥ 4,
32,810 states, or a smaller sub-chunk), and report the measured kernel time
and memory so the rest can be scheduled.

Caps: no Python search over 100,000 states; each Lean file must compile in
at most 2 minutes and 2 GB with `lean -j2` (from lean/, LEAN_PATH=
/Users/a9lim/Work/blam/lean/.lake/build/lib/lean; keep files in your lane
directory; split certificates across files if needed). If the full
certificate would need more than about thirty such files, say so and stop
at the design plus the soundness lemmas. Do not edit lean/Blc. Append to
NOTES.md as you go; finish with REPORT.md in the BRIEF.md format.
