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
