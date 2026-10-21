Lane "global": toward an unconditional optimality proof. Your lane directory is
/Users/a9lim/Work/blam/tmp/overnight/global/ (write only there). Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md first, then structural-bounds.md,
capture-width.md, head-decomposition.md and remainder.md in
docs/classical/self-interpreter/, and skim the Lean modules they cite in
lean/Blc/ (Selfint*.lean).

Unconditionally, the best known global floor is 34 bits (handwritten) and 18
(Lean); the best interpreter is 165. Purely structural counts (nonlinear
binders, width, captures) are attained by ~33-bit non-interpreters, so they
cannot go much further. A comprehensive proof needs SEMANTIC necessities
priced in syntax, with an account of sharing (the 165 itself shows that the
natural module decomposition is false: its reader fuses dispatch, VAR and
skip).

Your job, in order of value:
1. Prove the strongest unconditional lower bound you can, rigorously. Ideas
   to evaluate: (i) the interpreter must read unboundedly long unary indices
   and stop at their 0 — any term doing this needs a self-application of
   something stream-derived or a fixed point; (ii) it must distinguish three
   constructors and return an exact remainder (remainder.md: an exact
   remainder extractor is ≥ ? and must grow code); (iii) it must build
   output abstractions whose bodies depend on input, and output applications;
   (iv) it must preserve sharing-free correctness on divergent sources. Turn
   any of these into a size-priced lemma, then combine without double
   counting. Test every candidate invariant against the known correct
   interpreters (165, 168, 170, 204 β-normal, 584/742 two-nonlinear, 672
   typed — all in data/self-interpreter/machines/) and against near-miss
   non-interpreters before relying on it.
2. A decomposition theorem: a statement of the form "every interpreter
   contains disjoint (or accountably shared) subterms realizing roles X, Y, Z
   with costs ≥ a, b, c", even if you can prove only part of it. Say precisely
   what is proved and what is conjectured.
3. If you conclude that a comprehensive proof is out of reach by any known
   method, say exactly why and what tool would be needed (e.g. a sound
   demand-driven search with which pruning theorems, and its estimated size).

Lean is welcome for statements you have pinned down (keep new files in your
lane directory or a scratch copy; do not edit existing modules). Report as the
brief says.
