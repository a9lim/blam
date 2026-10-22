Lane "types" (wave 5): intersection-type role supports — a new technique for the cross-role sharing gap.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md
§2–§3 in full (the current state), and the last third of
tmp/round4/coord/SYNTHESIS.md. Lane directory:
/Users/a9lim/Work/blam/tmp/round4/types/ — write only there.

Why. Every open case of w ≥ 46 now comes down to one missing theorem:
bounding how much reader source the zero role and the unary role can
share (the 164 splits c, N and its single j across both roles; R84/R75
share a value through a let or a captured cell part; counting alone allows
let-contracted readers of ~91 bits, so the bound must be semantic). A Codex
lane is attacking it through causal ancestry on the reduction. You attack
it with a different, standard tool: intersection types.

Idea, yours to develop, repair or refute:
 - Intersection type systems (idempotent, or non-idempotent/quantitative)
   are syntax-directed on the SOURCE term, redexes included, and enjoy
   subject reduction and subject expansion. So from R Z(r) →* r j and
   R U_n(N) →* c U_(n−1) N one gets derivations of R against role types
   (τ_0 for the zero law, τ_n for the unary law at length n), with rigid
   type atoms for c, j, N, r. In a non-idempotent system, a subterm that is
   erased in a run is typed with the empty multiset: untyped positions are
   exactly the dispensable ones of the hole lane's machinery.
 - The support of a role is the set of source nodes its derivation types.
   w ≥ weight(support_0 ∪ support_1 ∪ …), with shared nodes counted once
   (the loop lane's union accounting). A node in two supports carries an
   intersection of a zero-role and a unary-role type. The question becomes:
   which small subterms can inhabit such intersections, and what do they
   cost?
 - In a β-normal term every application's interface type is fixed by its
   head variable's type, so for normal readers the typing is driven by the
   environment types of s, c, j alone — a search over TYPES, not terms,
   might be finite and decide the β-normal case exactly. Redexes are where
   an interface type σ must be chosen (the let's argument type): that is
   precisely where sharing lives, and close46's kernel-checked source
   structure (lean/Blc/SelfintSourceCost, SelfintLocalCost,
   SelfintSourceFront, SelfintNeededHead: minimum readers have few, priced
   redexes) bounds where those choices can occur.

Goals, in order: (1) set up the system and the role types exactly (the
unary law for all n needs care: what finite family of τ_n suffices, given
U_m U_m →* … →* N?); check it on the 162, 164, 165 and R84/R75 readers by
hand — their supports and overlaps. (2) Decide what the method says about
β-normal readers: is there a sound, finite type-directed argument that
every β-normal reader has w ≥ 46? If so, prove it (Lean welcome for the
finite part, kernel-checked against lean/Blc/SelfintClass's Reader). (3) For
readers with redexes: what must the interface type of a shared let carry,
and does that bound the shared cost? (4) An honest read of whether the
method can close w ≥ 46.

COMPUTE (hard, from BRIEF5.md): no check over 100,000 terms, 2 minutes,
1 GB or 2 threads. A type-directed search counts its states toward the cap;
if the type space is too large to finish under the cap, the argument needs
a better abstraction, not a bigger run.

OUTPUT DISCIPLINE: keep every response under ~10k output tokens, one idea
per turn; append progress to NOTES.md after every step, in several small
writes. Finish with REPORT.md in the BRIEF.md format (if the write is
refused, return the report as your final text). Mark every claim
handwritten, computer-checked or kernel-checked, with its hypotheses.
