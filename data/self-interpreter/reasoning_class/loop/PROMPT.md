Lane "loop" (wave 5): a pumping lemma for the unary run — a new technique.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
hard compute caps), then docs/classical/self-interpreter/class-bound.md
§2–§3 and tmp/round4/coord/SYNTHESIS.md (last third).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/loop/ — write only there.

Why this lane. Every bound on the reader weight so far is either syntactic
(cost accounting, which cannot bound sharing: counting allows let-contracted
readers of ~91 bits) or a finite check. a9 believes going below or proving
162 needs a fundamentally new technique. One semantic handle has not been
used: the variable law holds for EVERY n, R U_n(N) =β c U_(n−1)(N) N, so a
fixed finite term must extract N from an arbitrarily long unary prefix. The
162 does it with s s u (U U →* U' U' →* … →* N). Since R is finite and n is
unbounded, its normal-order run on U_n must be periodic in n.

Goal. (1) State and prove a pumping/periodicity lemma: for n beyond some
bound depending on R, the run on U_n(N) passes through configurations
D[U_(n−k)(N)] for a fixed "period" context and the period is assembled from
residuals of source subterms of R (copies through β included). Pin down
exactly what a period must contain (a stream self-application? a
continuation that re-enters?) and what it costs in terms of R's source,
with sharing accounted: a source subterm whose residuals serve in the period
and in another role is charged once. (2) Use it to re-derive, by reasoning
and independent of syntax (lets and redexes included), the round's
finite-check facts: the unary core costs ≥ 20 bits, and through 23 bits the
only core is s (\q. c) (s s j). (3) Push toward w ≥ 46: combine the period
cost with what the zero law and the c U_(n−1) output require; identify the
weakest extra hypothesis under which your argument gives w ≥ 46, and test it
against the readers in BRIEF5.md and the 164/165 readers
(`λs. s (λb. b F c) (s I (s s) j)`, the 165's at depth 4).

This is a theory lane. Small computations to test a lemma on specific
readers are fine; any finite check stays within BRIEF5.md's caps
(≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads). Lean welcome once a lemma
is pinned (the repo's Blc/NormalOrder and the lane Lean under
tmp/round4/close46/ have reduction machinery). Append to NOTES.md as you
go; finish with REPORT.md in the BRIEF.md format, including your honest
read of whether the technique can close w ≥ 46.
