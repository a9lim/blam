# bodylin progress

Scope: minimum all-law one-hole readers ordered by weight, lambda count,
hole depth; weight at most 45; R = lambda s. ((lambda x.B) A) Cs;
one x in B, j at depth one inside lambda-containing A, B head-redex.
Only this directory is writable. No consultations or agents.

Read BRIEF, BRIEF5, current class-bound sections 2-4, bodylet and bodyredex
reports, handlerlet method, NestedLets and Followup.lean. Current live
sources supersede the older memory registry's 165/162 boundary.

Source price is w=10+a+b+p. The linear direct contraction must strictly
raise weight, since it removes one source lambda: (q+3)D >= 7+G, with
q=free s/c leaves of A, G=other outward B leaves. Independently, the
contract-and-root-hoist move must strictly raise weight: its source lambda
count is unchanged and hole depth falls from one to zero. Thus
q*D-3-s_B+c_A+c_C >= 1. All local j-free redexes must be non-improving,
and strict if their contraction lowers lambda count. All local hole lets
must satisfy the exact bodylet hoist condition, including its tie rule.

Plan: use these source constraints (no normalization assumptions) to count
the three first-c-location cells with B head-redex and outer m=1. Reuse
the reviewed bodylet constructor-feature recurrence locally, adding the
linear direct/tie filters. Run semantic checks only after cardinalities
are known and under the hard per-cell caps.

First inventory: 557 candidates, all fail zero, zero normalizer exceptions.
For the final inventory I removed the inherited s-I-site and closed-transport
semantic filters, since neither is needed to make this check small. The
broader inventory contains 569 sources (559 first c in A, 0 first c in B,
10 first c pending). This makes the lane independent of Theorem S and the
zero-lambda-parent exclusions. Only local exact-price/minimality filters
and the assigned source-shape hypotheses remain.

Final checks: 569/569 wrong-zero outputs, at most seven beta steps in
the comparison checker, no normalizer exceptions. Cases.lean kernel
replays a full-normal-form zero refutation for all 569 original sources.
The independent named reducer agrees on every source; 1,265 independently
generated small components check the recurrence, and four positive readers
(including a source-Omega reader) pass both engines on zero and n=1..8.

More useful diagnosis: the final inventory has only eleven distinct B's.
Each admits an explicit short beta reduction B ->* B' of strictly smaller
wire cost, from 18..23 down to 2..21. Even the two B' which copy x preserve
the single source j, since A remains outside the lambda x binder. The
generic BodyReplacement.lean theorem quantifies over arbitrary A and any
pending list, and excludes MinimumReader whenever this local j-free
replacement is cheaper. Bodies.lean instantiates it for all eleven B's.
This avoids any claim that a whole reader normalizes or that normalizing
the first outer let preserves minimality. The body enumeration coverage
remains handwritten/computer-checked; these eleven reductions, the generic
exclusion, all 569 probe refutations, and the strict linear-hoist tie rule
are kernel-checked.

Final audit passed: exactly 569 manifest entries, 569 matching original-source
Lean definitions/refutations, eleven body replacements, zero exceptions.
Largest Lean compile was 6.18 seconds / 585 MB; all source checks were under
two seconds / 109 MB. REPORT.md records the complete argument, exact eleven
identities, coverage boundary and reproduction commands. Final process check
found no active computation belonging to this lane.
