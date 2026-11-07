Lane "lean138": kernel-check the round's class lower bound.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md (contract, size measure,
compute rules). Lane directory: /Users/a9lim/Work/blam/tmp/round3/lean138/ —
write files only there; do not edit existing modules under lean/.

The proof to formalize is /Users/a9lim/Work/blam/tmp/round3/floor/floor138.md
(with floor/REPORT.md sections 1-3 and floor/Facts.lean). Two independent
reviews found it correct: tmp/round3/review138/REVIEW.md (Codex) and
tmp/round3/review138/gemini.md (Gemini); read the Codex review's notes on
quantifiers (the exact-price equality is for the canonical NEXT and the
attaining knot; for every other member it is a lower bound) and on the
citation of fixedpoint_has_hole vs fixedpoint_hole_multiplicity.

Goal, in order of priority:
1. A Lean module (in your lane directory, importing existing Blc modules,
   e.g. Blc.SelfintKnot, Blc.SelfintNonlinearChain, Blc.SelfintWireCost,
   Blc.SelfintSharp, Blc.Selfint162) proving the reader lemmas for every
   source tree R with free variables only c, j satisfying the independent
   rigid reader laws: (i) R has a nonlinear binder; (ii) R has at least two
   source lambdas (the application-tree algebra S S ->* W, S W ->* N P,
   W X ->* N, S (z A...) ->* z A... F P, and the first-argument invariant);
   (iii) the hole-depth charges cost(R) >= 22 at depth 0, >= 18 at depth 1,
   >= 17 at depth >= 2.
2. The assembly: for T with T =β h T (opaque knot, k holes) and
   H = λp c. R[Q/j] with Q satisfying the size facts you take as an explicit
   hypothesis (|Q| >= 92 and at least four free c/p occurrences — the
   handwritten nine-form NEXT classification stays a stated hypothesis
   unless you can formalize it cheaply), prove |T[H/h]| >= 138 and the
   general inequality |E| >= 116 + cost(R) + 4·depth(j).
3. If time permits, the NEXT classification itself.

State precisely which hypotheses remain unformalized. Builds must use at
most two Lean threads (`lake env lean -j2 FILE` from lean/). Keep
`#print axioms` to propext/Quot.sound (no sorry, no new axioms). Report the
theorem names, statements, axiom lines, and build time.
