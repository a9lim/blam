Lane "lean146": make the separated class's 146-bit bound fully kernel-checked.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first, then
docs/classical/self-interpreter/class-bound.md §2–3,
data/self-interpreter/reasoning_162/floor/reader30.md (the handwritten
w >= 30 proof), floor/STATE46.md, floor/reader29.py and reader29_lean.py
(the generator of the 3,484 kernel-checked layout refutations), and
lean/Blc/SelfintClass.lean. Also tmp/round4/widen/Widen.lean (FullReader,
RigidNext, the frontier theorem) and tmp/round4/close46/REPORT.md (paired
algebra, ClosureBarrier.lean) for infrastructure you may reuse.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/lean146/ — write only there.

Status: |E| >= 116 + w(R) and >= 138 are in Lean; w(R) >= 30, hence 146,
rests on a handwritten minimum-counterexample coverage argument (a minimum
counterexample has no erasing redex; a non-λ one has three live binders;
the count rows then reduce every reader of weight below 30 to 3,484
β-normal layouts, each refuted in Lean). Goal: a Lean theorem
`∀ R, FullReader R → occ 1 R = 1 → 30 ≤ cost R + 4 * depth R` (or the
two-probe `Reader` version, if the handwritten proof only needs the zero
and length-one instances — say which), with no sorry, and the 146 class
corollary. The hard part is the coverage step: formalizing "take a
minimum-weight counterexample" and the source-shape lemmas, so that the
3,484 refutations (regenerate them with reader29_lean.py rather than
copying 2.2 MB) cover every remaining source. If the full theorem is too
large, formalize the minimum-counterexample normalization lemmas (no
erasing redex; live-binder counts) as standalone theorems, and state
precisely what remains handwritten.

This infrastructure matters beyond 30: the same normalization lemmas are
what any proof of w >= 46 will need. Rules: Lean files in your lane
directory only; compile with LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean
lean -j2 FILE (no -o); each run under two minutes (split large generated
files); no term searches beyond regenerating the recorded layouts. Write
REPORT.md with theorem statements, axiom audit and build commands; record
progress in NOTES.md as you go.
