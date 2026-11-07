Lane "audit1": adversarial statement audit of three kernel-checked lane results.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md (contract, compute rules,
OUTPUT DISCIPLINE). Lane directory: /Users/a9lim/Work/blam/tmp/round4/audit1/
— write only there.

Three Codex lanes produced Lean files that compile without sorry. A proof
that compiles can still prove the wrong statement: a definition that is
weaker than claimed, a hypothesis that is vacuous or unsatisfiable, a de
Bruijn slot mixed up, a law instantiated at the wrong probe. Your job is to
find any such gap. For each file, read the report's claims, then the Lean
definitions and the statements of the headline theorems, and decide whether
each statement says what the report says it says.

1. tmp/round4/widen/Widen.lean + REPORT.md. Headline: frontier_optimal_iff_reader_floor,
   frontier_dominated_full, unrestricted_next_assembly_lower,
   unrestricted_knot_multiplicity, sub162_knot_localization,
   counterexample_is_interpreter. Check: `assemble`, `RigidNext`,
   `FrontierPrice`, `FullReader`, `wire`, `cost`, `depth`, `freeLeaves`
   against the class in docs/classical/self-interpreter/class-bound.md and
   lean/Blc/SelfintClass.lean; that the knot hypothesis (FreeUnder 1 T,
   BetaJoin T (app (var 0) T)) really is "opaque fixed-point context";
   that FullReader's unary law is the class's law for every n >= 1.
2. tmp/round4/close46/ClosureBarrier.lean, BoundaryAlgebra.lean + REPORT.md.
   Headline: factories_cannot_read, sharing_cannot_read,
   represented_reader_impossible, near_reader_not_reader. Check the grammar
   of expressions, that `Paired` and the conclusion match the reader laws,
   and that "every n >= A+2" is what is proved.
3. tmp/round4/probelean/Probe.lean + REPORT.md. Headline: lemmaA,
   lemmaA_after_two, classify_continuation, probe_two_argument_corollary.
   Check `Solvable`/`HNF` (is "unsolvable" the standard notion, and is the
   probe v_W of the 162 really unsolvable in this sense?), slot conventions,
   and whether the corollary's hypotheses are the ones the escape lane's
   Lemma A corollary needs (tmp/round4/escape/REPORT.md §3).

You may compile (from lean/: LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean
lean -j2 FILE; no -o; each run under two minutes) and write small Lean
probes in your directory, e.g. `example` checks that a definition is not
vacuous, or #reduce on a small instance. Do not edit the audited files.

Report (REPORT.md in your directory, or in your returned text if the
harness refuses the write): for each headline theorem, VERIFIED (statement
matches the claim), WEAKER (true but says less than claimed — say exactly
what), or WRONG (with the concrete mismatch). Keep each response under
~10k output tokens and append to NOTES.md as you go.
