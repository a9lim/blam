# bodyredex notes

## Orientation and source budget

Read BRIEF.md, BRIEF5.md, class-bound.md sections 2–4 in full, current STATUS,
and the last third of coord/SYNTHESIS.md; read promoted SourceFront,
SourceBody and FlatMinimum. No consults, no writes outside this directory.
The current live sources supersede the older memory entry about 162.

For R = λs. ((λx.B) A) C1…Ck with one j at depth exactly 1:
- B is j-free. The hole lies in A or one Ci, outside every lambda there.
- In the source frame B has x=0,s=1,c=2; A/Ci have s=0,c=1,j=2.
- Let ordinary local costs price j at zero. Then
  w(R) = 10 + |B| + |A| + sum_i(2+|Ci|).
- Equivalently w(R) = 2L + 4V + X, where V counts all leaves, X counts
  non-j indices. This is special to one hole at depth 1.
- A source head c is excluded already; source B is s-headed, x-headed
  with lambda-containing A, lambda-headed with a pending operand, or has
  another head redex (SourceBody.minimum_body_alternatives).

Starting proof split: use the very small remaining structural budget at
multiplicity 5 or 6. These are bounded subcases, not a purported complete
reader search. Any finite check will first count its candidates and respect
100,000 / 120 s / 1 GB / 2 threads. Low multiplicity is the main obstacle.

Caution: class-bound.md retains the unclosed s-spine skeleton
λs. s (λb. b X1) T1 T2. Do not silently use the stronger statement that
all redex-free s-spines have been excluded.

## Multiplicity six: structural reduction

Let m=6. There are at least six x leaves plus one s, c, j each, and
SourceFront.body_head_three_lambdas gives L>=3. Thus V>=9 and
2L+4V+X<=45 force V=9: precisely those nine leaves. No additional binder
can have an occurrence; every lambda beyond λs,λx is vacuous. Each such
lambda contributes at least one index bit (its body has a non-j leaf),
and the c leaf contributes another. Hence X >= (L-2)+1 = L-1;
2L+36+(L-1)<=45 gives L<=3. Thus L=3, X<=3.

If A is flat, minimum_flat_four leaves j, s s, s s s, s s s j. The latter
three have >=2 s leaves and violate V=9. A=j is excluded for a minimum
below 49 by the live literal-j-let lemma (zerolam, class-bound §3).
Therefore the sole additional lambda is in A. Since A's available leaves
are just the unique s and/or c (j cannot be beneath it), A is literally
λy.s, λy.c, λy.s c, or λy.c s. B and all pending operands are lambda-free.

The four residual source bases at w<=45 contain 2,268 layouts:
- A=λy.s: B is a binary application tree with six x leaves and one c,
  then pending [j] (7*Catalan(6)=924); or B has six x leaves and the
  pending part is [c,j], [j,c], [c j], [j c] (4*Catalan(5)=168).
- A=λy.c: symmetric with s in place of c: 924+168.
- A=λy.s c or λy.c s: B has six x leaves and pending [j]: 2*42=84.
All frames and costs will be independently asserted in the checker.
This is a complete finite closure of one pinned subcase, not an attempt
to enumerate the entire branch.

### Correction before checking

The four-closure / 2,268-layout claim immediately above is NOT complete.
A may be an application containing its sole lambda, and j may be beside
that lambda in A. Do not use that basis. The V/L argument remains valid.
The exact cardinality recurrence with lambda-containing A, all application
shapes and all allowed hole positions gives:
- m=6, one additional lambda: 7,476 sources containing s,c;
- m=5, one additional lambda: 61,236;
- m=5, two additional lambdas: 21,840.
These sum to 90,552, before checking semantics.
For m=5 the flat basis leaves only A=s s besides the already excluded A=j:
A=s s s or s s s j would require V>=10 and w>=47. For m=6 even A=s s
requires V>=10. The flat s s remainder will be separately counted.
For m=5, L<=4: V>=9 implies this from 2L+4V+X<=45 and X>=1;
if V=8, all extra lambdas are vacuous, so X>=L-1 and 3L+31<=45.
All lambda-containing A terms (including A's internal lets) remain admitted;
no source-normality assumption is made.

## High multiplicity result (complete finite closure)

The corrected check passed: high_check.json records 92,480 complete sources,
91,006 refuted by zero and 1,474 by unary-one; no survivors, no exceptions,
11.37 s, 105.8 MB peak RSS, one thread. The source-domain split is
7,476 (m=6,L=3), 61,236 (m=5,L=3), 21,840 (m=5,L=4), and 1,928 flat-A=s s
sources (m=5,L=3). Counts come from independent cardinality recurrences;
source constructor generation checks each product count and deduplicates.

A useful reason the check is decisive, beyond fuel bookkeeping: V<=9 and
m>=5 leave at most one source occurrence bound by any lambda other than
λs and the designated λx. Hence all those binders are affine. Contract the
first let before instantiating s; all remaining binders are affine, and the
Scott probe cells/Booleans are affine. The checker asserts this for every
contracted probe. Each beta step then strictly shrinks node count, so fuel
chosen as the initial node count is a proved sufficient bound. Max observed:
176 probe nodes, 35 beta contractions. There are no timeout/cycle exclusions.

Combined with the established minimum-flat-four theorem and the live
handwritten literal-j-let exclusion, this proves: a lexicographic minimum
full-law reader of weight <=45 with j at depth1 has first-body-redex
multiplicity <=4. This headline remains handwritten + computer-checked,
not a Lean theorem. The first lambda-count lower bound is kernel-checked.

## Flat argument s s s j: excluded at every multiplicity

There is now a kernel-checked mechanism in FlatRestHole.lean:
- restJ_unary: (s s s j)[U_(n+1)/s] ->* N j, all n.
- replace_unary_restJ: N j is rigid, normal and absent from the required
  unary output, hence may be replaced in ANY applied context, no linearity.
- dropped_unary: T = B[s/x] C1…Ck meets all unary laws.
- dropped_price: w(R) = 22 + |T| + G, G=# outward s,c leaves of B.
  This is literal source pricing; T is not beta-normalized.

At w<=45 the j-free unary T has |T|<=23. The already reviewed complete
inventory (hole/arms23.log; review_hole/check.py) has exactly
T22 = s (λq.c) (s s s), T23 = s (λq.c) (s s c).
Inverting B[s/x] structurally and every spine cut, then filtering the price,
leaves exactly FIVE sources. All five fail the zero probe in Lean.
preimages_complete and spineSplits_complete certify this inverse coverage.
restJ_exclusion is kernel-checked conditional on the explicit predicate
TinyUnaryClassification; it has no minimality, multiplicity or normality
hypothesis. The inventory remains computer-checked, not a Lean axiom.
Thus the combined exclusion is handwritten/computer-checked with its
transfer, pricing, inverse completeness, and five refutations in Lean.
Compile: lean -j2 FlatRestHole.lean, clean (0.47 s); permitted axioms only.

## Linear flat arguments: handwritten closing argument

A=j is already excluded in a minimum; A=s s s j is excluded above.
Write D for the depth of the unique x in B and G for its other free leaves.
Minimum linear charge: (F-1)D >= 7+G. B is j-free. A=s s or s s s
contains no c or j, so c occurs in B or in the pending forest, and j occurs
in that forest. A pending forest containing j costs >=2; containing c,j
costs >=7 (ordinary costs with j zero).

A=s s: w=16+|B|+pending. If c in B, G>=1, D>=8,
|B|>=3D+8>=32, and w>=50. If c is in the forest, D>=7,
|B|>=3D+2>=23 and w>=16+23+7=46. Contradiction.

A=s s s: w=20+|B|+pending and 2D>=7+G, hence D>=4.
If c occurs in B, |B|<=23. A leaf count gives at most two leaves in B:
x plus c; a third leaf would cost >=3D+12>=24. Every other binder in B is
therefore vacuous. On both probe families the two free leaves become rigid
(x=r on zero, x=N on unary, c unchanged). A term with only rigid leaves and
vacuous binders, under any pending arguments, either remains a lambda or
has the same designated rigid head on both probes. It cannot be r-headed
on zero and c-headed on unary. (Pending terms are either erased by vacuous
binders or remain arguments of a rigid head.)

If c does NOT occur in B, pending>=7, so |B|<=18. Any source s leaf in B
would require |B|>=3D+7>=19. Thus B has x and at most one inner-bound leaf.
With no inner-bound leaf it is λ^D.x, which cannot return c on unary.
With one inner-bound leaf, equality forces D=4, exactly four lambdas,
and that leaf has index 0. Up to h=1..4 leading lambdas the body is
  y_h (λ^(4-h).x), or (λ^(4-h).x) y_h.
The second is vacuously erasing internally when h<4 (forbidden in a
minimum), and is x-headed on unary when h=4. In the first, the <=7-bit
pending forest containing c,j is precisely [c,j], [j,c], [c j], or [j c].
Too few operands leave a lambda; otherwise y_h receives a rigid c/j-headed
term, so zero cannot have head r. This excludes every linear flat first
body redex in a minimum reader below46. No new finite sweep used here.

## Every flat A excluded in a minimum first body let below46

For A=s s or s s s, a source s outside A is mandatory: otherwise after
reducing A the zero and unary source residuals differ only by r→N
(A is respectively K r/K N or r/N). Substituting N for rigid r in the
zero equality would force unary result N j, a contradiction.

With that additional s, count V>=m+5 for s s and V>=m+6 for s s s.
Combining w=2L+4V+X<=45, L>=3, X>=1, and (when all leaves are already
accounted for) X>=L-1, gives finite lambda budgets:
- s s, m2: L<=6; m3: L<=4; m4: L=3.
- s s s, m2: L<=4; m3: L=3; m>=4 impossible by V/L.
A flat first argument creates no lambdas when copied; its contraction removes
one lambda. Lexicographic minimality therefore requires STRICT positive
weight growth. For arity a=2 or 3 this is
(m-1)(4a-2)+(a-1)M-2m-4-G >= 1.
In particular s s,m2 requires M>=3+G, hence at least two lambdas in B.

These semantic and arithmetic restrictions leave 47,328 complete sources
across the two fixed flat arguments (flat_count.log), rather than checking
the unfiltered 180,246 m2/s s sources. flat_check.json: 45,789 fail zero,
1,539 fail unary-one, no survivors or exceptions; 2.81 s, 57.8 MB, one thread.
All contracted probes affine (asserted); max 148 nodes and 23 beta steps.
Together with m>=5, the handwritten linear-flat exclusion, the literal-j-let
lemma, and the restJ theorem, minimum_flat_four now leaves NO flat first
body argument. Thus a minimum reader in this branch below46 has a
lambda-containing A, for every possible head of B.

## Linear lambda-containing arguments with j OUTSIDE A

Further handwritten exclusion (not theoremed as a reader result in Lean):
let F=#free s/c leaves of A, D=depth of the unique x in B, E=#other leaves
of B, G=#outer leaves of B. A is j-free, contains a lambda; j is pending.
Minimality gives (F-1)D>=7+G, hence F>=2. Argument pricing gives
|A|>=4F+1, and >=4F+2 if c occurs in A. Proof: if A has a bound leaf,
wire=2L+4V-2+X already gives the extra charge; if all leaves are free,
each lambda contributes a capture bit and the c leaf adds its baseline bit.
Body pricing: |B|>=3D+2+4E, with another +1 for an outer s leaf, +2 for c.
Pending costs >=2 for its j, >=7 if it also supplies c.

- E>=2: w>=23+4F+3D>=47. The product constraint forces
  4F+3D>=24 (scalar lemma in Lean).
- E=0: B=λ^D.x. At least D pending operands are required even to remove
  these leading lambdas. They cost >=4D-2. Continuation c must occur in
  A or the pending forest and adds another bit, so w>=12+4F+7D>=46
  (scalar minimum 34 in Lean).
- E=1: 4F+3D<=26, so only (F,D)=(3,4),(4,3),(5,2) remain
  (linear_pair_options in Lean). The second leaf of B is:
  * c: capture +2 and G>=1 leave only (3,4), with all prices saturated:
    B=c (λ^4.x) or (λ^4.x) c, pending=[j]. These have head c or leave
    lambdas on zero.
  * s: c must be in A (else pending>=7); +1 capture +1 for c in A leave
    only (3,4), again saturated: B=s (λ^4.x) or (λ^4.x) s, pending=[j].
    Z supplies two callback arguments and j one more, fewer than the four
    vacuous lambdas above x; zero leaves a lambda.
  * an inner-bound variable y: c must be in A, and only (3,4) or (4,3)
    survive. Pending=[j]; every lambda of B lies above x, since the budget
    has at most one spare bit. There is at least one leading lambda.
    With >=2 leading lambdas, j leaves one; with exactly one, the forms are
    λy. y (λ^(D-1).x) and λy. (λ^(D-1).x) y. The former is j-headed on
    zero and the latter leaves D-2>=1 lambdas. All fail.

Consequently any remaining LINEAR minimum first body let below46 must
carry the unique j in its lambda-containing argument A. Nonlinear cases
have multiplicity 2..4 and A containing a lambda. This does not close them.

## Final verification and handoff

REPORT.md saved with four requested sections, full completeness arguments,
exact proof statuses, and the remaining branch stated explicitly. No
interpreter built; no sub46 reader found. verify.py compares six generated
sources against the named normalizer/cost calculator and checks reader162
at zero/unary1..8. It recompiles all 221 Lean lines: 0.68 s, 467.7 MB, 2
threads, no errors or sorryAx. Source hashes are in verification.json.
Both source checks finished; no lane worker remains running. No files were
written outside this lane and no commit was made.

## Coordinator follow-up: BN46 is conditional; first structural consequences

H_nf means the types lane's one-source-j beta-normal-reader floor, pending
review. It does not itself imply that an arbitrary reader normalizes:
Rinf = λs. s I (λu. s (λq.c) (s s Ω)) j satisfies every law and has no
source beta normal form. This is not a minimum and is not a sub46 example;
it isolates a missing premise in the proposed normalization consequence.

For the remaining linear case, j is in A at depth zero. Hence A is NOT
lambda-rooted. Substitution at an x-headed application cannot create a
beta redex by placing a lambda there. The remaining creation mechanism is
a lambda-headed B consuming a pending operand; pre-existing redexes in A/B
may of course remain.

More strongly, a minimum LINEAR first body let cannot have rigid B:
- if B is x-headed, NeededHead.minimum_extra_use contradicts m=1;
- if B is s-headed, its unique x lies in one operand and LetSink's
  no_one_operand_spine_let contradicts minimum weight;
- rigid c/j heads violate the zero law.
SourceBody.minimum_body_alternatives therefore leaves only a lambda-headed
B with a pending operand, or a nested head redex in B. In the first case
contraction creates a root redex; in the second it retains a source redex.
Thus NO minimum linear first-body reader has a beta-normal immediate
contractum, independently of H_nf. This closes the requested no-created-
redex-and-normal-result subcase by source structure, not by an inequality.

For nonlinear j-bearing A, the first contractum has m copies of j and
H_nf cannot be applied to it directly. A possible correction is labelled
hole pruning: on the zero normal-order run, retain the unique source j
label that supplies its output j and replace other source j occurrences
by a nearest bound variable; all j occurrences are dispensable on unary
runs. If the source is beta-normal, variable replacement preserves it.
This gives a one-hole normal reader and an exact saving sum(4*d_i-2)
over discarded holes (all d_i>=1). The argument is handwritten and needs
explicit proof/review; it is not smuggled into H_nf as an assumption.

## BN46 review received; uniform repeated-helper branch closed

review_types/REVIEW.md now accepts BN46 for the joint zero/U1/U2 laws,
with a needed-occurrence/orphan lemma repairing the report's overly broad
single-law tabling claim. I read that review; I did not rerun its searches.
BN46 remains computer-checked with handwritten completeness, not Lean.

Pinned subcase R=λs.((λx.s x...x) A)j, m=2..4:
- c must occur in A; j is absent from A; A contains a lambda by the first
  report. No source-normality assumption on A.
- w=15+4m+a, a=wire(A), hence a<=22/18/14 respectively.
- minimum-source sharing charge: (m-1)a>=2m+5.
- If A is normal, the immediate contractum is normal and H_nf additionally
  gives 10+2m+m*a>=46. For m=2,3,4 the scalar survivors are respectively
  a=16..22, 10..18, 7..14. These are only price profiles, not readers.

repeated_helper.py checks the broader family without relying on H_nf:
14,150 sources (12,900 / 1,145 / 105), 13,264 fail zero, 883 fail unary-one,
2 have exact head-state cycles, one reaches the fuel guard. No successes.
0.55 s, 59.0 MB, one thread. The guard is NOT counted as failure.
The one exception is m=2, A=λx.x(λz.z z c), w44. Let D=λz.z z c.
Its zero run reaches D D c j, and D D Cvec -> D D c Cvec forever.
Followup.lean proves the 9-step zero trace and badR_not_reader, using an
arbitrary-spine head-divergence invariant. Thus all 14,150 sources are
excluded: finite check plus a kernel-checked exception, no unresolved fuel.

Followup.lean also kernel-checks the unrestricted theorem
minimum_linear_contractum_not_normal. It assumes only MinimumReader and
one use in the first body-let, not the 45-bit budget, hole depth or H_nf.

## Final follow-up synthesis

The lambda-headed linear B case is now excluded. Swapping x/y and A/C
changes weight by uses_y-1, keeps all lambdas and hole depth, and preserves
laws (exchange_price and exchange_join in Followup.lean). Thus uses_y=0
improves weight; uses_y=1 gives another lex minimum with a j-free linear
first argument, excluded by the earlier handwritten REPORT3.3 (flat C) / REPORT3.5 theorem.
For uses_y>=2, source budget + linear charge force q<=3,a<=15,b<=25,p<=12.
The complete 13,296-source residual (linear_lambda.py) has no survivors,
cut-offs or cycles: 13,292 zero failures, 4 unary-one failures, maximum12
beta contractions; 0.73s and34.8MB. The exact budget proof is in REPORT5.3.

REPORT5 appends the conditional H_nf accounting, explicitly states the
missing normalizability premise, and gives a handwritten labelled-hole
pruning repair for nonlinear copied j. General raw price region and the
root-hoist formula are recorded. The final conclusion remains partial:
linear minimum first-body lets must now have a nested head redex in B;
nonlinear m2..4 lambda-containing arguments remain outside closed families.
followup_verify.py checks four independent named-term price controls, six
selected new finite sources, the chain weights42,44,33,20, and compiles all
new Lean. It retains the raw fuel exception and records its Lean discharge.
