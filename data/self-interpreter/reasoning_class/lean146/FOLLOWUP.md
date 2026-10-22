Coordinator follow-up, same lane and directory (tmp/round4/lean146/),
same rules. Good progress: 140 kernel-checked, plus the minimum-reader
infrastructure (existence with lambda tie-break, no erasing redex, two live
binders, lambda-rooted sub-30 readers beta-normal and stream-headed) that
every later proof will need.

Please close the two exposed hypotheses of class_bound_146_of_coverage:
 (1) elimination of minimum non-lambda sources below weight 30 (the
     handwritten argument: a non-λ minimum has three live binders; prove
     it, or prove whatever weaker fact the coverage needs);
 (2) the generator's exhaustive membership bridge: every lambda-rooted
     sub-30 reader satisfying the five count rows, beta-normal and
     stream-headed, is (alpha-)equal to one of the 3,484 generated layouts.
     A natural route is a Lean enumerator of beta-normal stream-headed terms
     by count row whose completeness you prove, and whose output you check
     by `decide`/kernel reduction against the generated list; keep every
     file's check under two minutes by splitting rows.
Then state class_bound_146 unconditionally. If one gap resists, finish the
other and say exactly what is left. Record progress in NOTES.md as you go;
extend REPORT.md with a new section.
