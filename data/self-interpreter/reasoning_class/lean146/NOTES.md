# lean146 progress

Read BRIEF.md first; read the class contract, reader30 handwritten coverage,
STATE46, existing Reader/price proofs, recorded-layout generators, Widen and
close46 infrastructure. The existing Reader uses only zero and unary-one probes.

Plan: prove weighted minimum existence and absence of erasing redexes;
then prove the two-live-binder obstruction using a paired value algebra.
All writes remain in this lane. No consults and no term searches.

The full 146 theorem still needs coverage of minimum non-lambda sources,
normality of surviving rows, and a kernel-checked generator membership bridge.
The 3484 separate refutations alone do not supply these steps.

Completed Minimum.lean (0.22 s, Lean -j2): distributed weighted cost,
erasing contraction strictly lowers cost in every context, preserves Reader
and exactly one j; minimum weight/lambda existence; arbitrary-bound minimum
counterexample has no erasing redex. Axiom audit: propext, Quot.sound;
minimum existence additionally Classical.choice. No sorryAx.

Completed Live.lean, most recent check 0.66 s:
- source live-substitution identity;
- unbounded paired zero/unary-one algebra for all vacuous-binder terms;
- reader_two_live, without source normality, minimality, or a hole-count limit;
- leaf charge occ c + occ j + 3 <= leaves;
- all five lambda-rooted sub-30 count rows;
- every lambda-rooted sub-30 reader is beta-normal and stream-headed;
- depth >=5 implies reader weight >=46.
All axiom audits are within propext, Classical.choice, Quot.sound.

Remaining to complete 146: minimum non-lambda-source elimination (including
its three-live-binder provenance step and the rigid c/j application trap),
and a formal completeness bridge from the five-row normal grammar to the
recorded 3484 candidates. Lambda normality/count coverage are now proved.

Final verification passed: 17 Lean files, 3484 recorded Reader refutations,
3520 axiom audits, 35.36 s total, longest child 2.66 s. Exact result and
source hashes are in verification.json. The final Live module additionally
proves unconditional reader_weight_24 and class_bound_140. The full 146
claim remains conditional on the two explicit coverage propositions in
All.lean; REPORT.md documents them.

Operational correction: the first scratch creation used a relative path
with cwd=lean and briefly created lean/tmp/round4/lean146. Both scratch
files were immediately moved into the actual lane and the empty temporary
directories removed. No such files remain outside the lane.

Follow-up started: targeting the two explicit coverage hypotheses. Built an
exact-count Lean normal-layout enumerator (relative hole-depth sum, source
L/V/X/c/j counts); its recursion is bounded structurally, not by evaluation
fuel. Symbolic row counts from the archived Python states confirm only
10668 beta-normal intermediate source layouts across the five rows, with
3484 surviving the recorded head/live/nonlinear filter. No new term search.

Follow-up: both analytical pieces now close. Accounting.lean checks in
2.12 s with minimumLambdaCoverage unconditional. NonLambdaTail proves a
minimum non-lambda Reader has at least three live binders, without the
sub-30 restriction. AccountingTail proves the weighted linear-head charge,
restricts the sub-30 case to a rigid c j / j c argument, and excludes that
case via SelfintInert.replace_inert. All audit dependencies are standard
propext, Classical.choice, Quot.sound; no sorryAx.

The exact-count normal-source enumerator and membership theorem check.
Finite coverage uses five list equalities against the 3484 archived
layouts plus a sound checker for archived normalization certificates.
CompactRow2 already checks in 41.23 s. Final aggregate check is next.

FULL RESULT: Final146.lean kernel-checks in 67.66 seconds (-j2, no -o).
Blc.Lean146Final.reader_weight_30 and class_bound_146 have only the
original two-probe Reader / one-hole / separated-class hypotheses.
Both exposed coverage propositions are discharged. The complete theorem
axiom sets are [propext, Classical.choice, Quot.sound]. No sorryAx or
native-decide trust is present.

The initial aggregate decide checks hit the 110-second watchdog. Using
Lean's decide +kernel avoids duplicate elaborator reduction and brings
the entire assembled proof below the two-minute limit, with every finite
equality and certificate still checked by Lean's kernel. Final generation
and verification scripts are being frozen with exact hashes/logs.

Final reproducible verification: all 3484 layouts, row counts
[364, 1762, 1070, 230, 58]; complete Final146.lean checked in 65.95 s,
regeneration plus check 66.64 s, 44 axiom audits.
SHA256 Final146.lean: cffd53539a9bb6700a3a49f7f7c17eeed78f8948f05a736ddd9078b52496de06.
REPORT.md now has the requested follow-up section and full proof boundary.
Git status is clean; no lane Lean processes remain.
