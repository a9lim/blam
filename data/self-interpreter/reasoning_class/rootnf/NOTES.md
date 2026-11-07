# rootnf notes

## 1. Orientation and first obstruction

Read BRIEF, BRIEF5, class-bound §3 (and §2/4), root REPORT all sections,
and types REPORT §§3/5 plus its L4 split identity. Read the exact source
cost and local cost Lean theorem statements. H_nf remains a hypothesis;
no claim here upgrades the other lane's independent review.

The proposed normal-form inference needs two extra hypotheses: a reader
need not itself have a beta normal form, and source beta reduction may
copy j, whereas H_nf quantifies over exactly one source occurrence.
ReaderLaws.beta in SelfintSourceCost deliberately preserves only the laws;
ReaderLaws.hoist restores one hole but reintroduces a root redex.

Even when both hypotheses hold, weight(NF)>=46 supplies only a lower bound
on the sum of beta prices. A positive pre-stream expansion is compatible
with that lower bound. No compensating decrease is required. Need inspect
minimality and scalar source budgets before deciding what this can close.

No enumeration started, no interpreter built, no files outside this lane
written. Relevant current source supersedes the older memory's 165-era status.

## 2. A stronger source multiplicity bound, independent of H_nf

Three live source binders for a non-lambda minimum follows from the existing
Reader30 two-live skeleton proof, using only nonerasure. Ported that proof
correctly to full all-n-law minimality (not minimum among finite probes).
At a root redex the root binder owns k leaves, the other two live binders
own at least three (one of them must be nonlinear), and c and j own two.
Thus V >= k+5, L >= 3. Exact one-hole size gives

  w >= 4k + 22 + 4 depth(j).

RootProfile.lean kernel-checks this with only propext and Quot.sound.
Consequently k <= 5 below 46, and k <= 4 at positive hole depth. This
improves the pre-existing root cap 7; no H_nf, enumeration, or beta
normalization is used.

The sole k=5 band has d=0, V=10, and either L=3 with tax<=3 or L=4 with
tax<=1. The free c multiplicity is exactly one. This is a genuinely pinned
possible finite subcase; count its exact grammar before deciding to run it.

## 3. The normal-form bridge, with the missing premises exposed

Four fixed readers were checked on Z and U_1..U_8 (witnesses.py/jsonl):
- the 165 reader has source w=49 and beta-normal w=54;
- copied_j has w=52 and a beta-normal form of extended weight 52 with two
  j leaves at depths 2 and 1;
- replacing the unused depth-2 j by c gives a one-hole normal reader w=48;
- recursive has w=106 and all reader laws by an induction on unary length,
  but no beta normal form. Every source binder is live, so this is stronger
  than placing Omega in an erased filler. It is not a minimum reader or a
  below-46 witness.

For any beta-normal multi-j law reader N, colour each source j separately.
The zero reduction outputs one colour; all other colours vanish on zero and
all colours vanish on unary. Replace every non-surviving colour by c.
The normal, one-hole result still obeys all laws. Each replaced j at depth
h saves exactly 3h-2 in the additive extended weight. Since normal law
readers are lambda-rooted, h>=1. Under H_nf, therefore

  W(N) >= 46 + sum_non_survivors (3h-2) >= 46 + (#j(N)-1).

This repairs the multiplicity gap, but not the existence-of-NF gap. Summing
exact beta prices along an actual terminating normalization yields a
necessary positive NET expansion, not a need to cancel positive root
expansion. normal_root_contraction_gap in RootProfile.lean formalizes the
one-step, j-free-argument, normal-contractum case with H_nf explicit.

## 4. The pinned five-use grammar exceeds the term cap

RootProfile.lean now also kernel-checks the exact necessary k=5 rows:
  d=0, V=10, #c=1, and (L=3,tax<=3) or (L=4,tax<=1).
Combining ownership equality shows the other binders have use multiplicities
2 and 1, with zero or one vacuous binder. A coefficient-counting grammar
(k5_live.py) counts these trees without generating a term or testing a law.
A must contain a lambda here; A=j is the previously excluded direct-hole
family. There are 570,716 trees. Counts by (L,tax):
  (3,0) 16,072; (3,1) 71,848; (3,2) 67,488; (3,3) 78,888;
  (4,0) 32,704; (4,1) 303,716.
All factors were below the script's saturation guard, so these totals are
exact for this necessary grammar, not estimates. Only 978 count states,
0.01s, 24MB. No term inventory or semantic check was run; do not call this
an exclusion. The larger unrefined k5.py count was also count-only.

No complete interpreter was built, no battery or polish invoked, no
sub-162 claim, no writes outside the lane, no consult or delegation.

## 5. Final strengthening and scalar witness

The Lean inequality retains all non-j index tax:
  w >= 4k + 22 + 4d + tax_1(R).
Consequently M + #c(B) <= 23-4k-4d, since each root-binder use contributes
its depth M to tax and each c in B has index at least one. The tight rows
apply whenever k+d=5: V=k+5, #c=1, L=3/tax<=3 or L=4/tax<=1. In particular
(k,d)=(4,1) shares the same tight index budget as (5,0). Both general rows
and the retained-tax bound are kernel-checked in RootProfile.lean.

A sharp scalar witness (not a reader) is
  (lambda x. x x x x x) (lambda y. y y) I c j.
It has w=42, k=5, |A|=8, M=T=d=0; contracting the root raises weight to60
(S=18). Its head has Delta Delta and diverges on every probe. This makes
explicit why the scalar accounting is not a semantic reader classification.
