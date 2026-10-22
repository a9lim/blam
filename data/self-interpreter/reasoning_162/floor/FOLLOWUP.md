Follow-up from the coordinator, same lane, same rules (BRIEF.md; files only
in tmp/round3/floor/; light checks only; at most 2 threads, no run over two
minutes).

Your reduction is the cleanest statement the round has: within your class,
the 162 is optimal iff every reader R with free variables c, j (one j) that
satisfies the independent rigid laws
    R (cons K r) =β r j,      R U_n(N) =β c U_(n-1)(N) N   (n ≥ 1)
has cost(R) + 4·depth(j) ≥ 46. Attack exactly this now, both ways:

1. Prove it. Your current argument reaches 22. Raise it in stages
   (depth 0 needs cost ≥ 46, depth 1 ≥ 42, depth 2 ≥ 38, depth ≥ 3 ≥ 46-4d)
   by a case analysis on R's head structure that keeps the fusions the 162
   and 165 use, without assuming modules. Small finite checks that close a
   case completely (a few thousand terms, under two minutes, two threads)
   are welcome once the case is pinned by hand; state their completeness
   argument. Lean for any lemma whose statement is fixed.
2. Refute it. Any reader below 46 is immediately a sub-162 interpreter by
   |E_R| = 116 + cost(R) + 4d; when a proof step fails, build the reader
   that breaks it, splice it into the 162 frame, battery and polish it.

Note the two depths priced differently: at depth 0 the hole is outside all
reader λs (the 165's let-bound next), at depth 1 inside one (the 162). A
reader with a cheap let for j at depth 0 is in the class too.

A Claude lane is attacking the same reader question independently; do not
coordinate with it. Append your results to REPORT.md as a new section,
keeping the existing content.
