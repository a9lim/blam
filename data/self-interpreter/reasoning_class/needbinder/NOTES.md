# needbinder (wave 5) notes

## 0. Scope and evidence read

Read BRIEF.md, BRIEF5.md, class-bound.md sections 2-4, the hole lane's
sections 10-12 and report, review_hole's report and unary-only wrapper
checker, bridgeadv's report, close46's report and source-cost/let-sinking
modules. Current STATUS verifies that 162 is canonical; older memory's
unverified-162 status is obsolete. No independent consult is allowed.
All writes in this lane. No source search has been run.

Goal: either rule out globally lexicographically minimum R1 readers with
weight <=45 and a needed binder above the unary-output source anchor, or
construct and verify one. Global minimum means weight, then source lambda
count, then source-hole depth, among readers satisfying every unary law.

## 1. The cross-role premise needs an extra hypothesis

The existing no-cost sinking theorem `LetSink.lean` is for application
contexts. Its `AppContext` deliberately has no lambda constructor.
Crossing a lambda is separately priced in `LambdaSink.lean`:

    new - old = captures(A) + uses(y) - uses(x).

Thus "all x uses are inside the output subterm" does not by itself allow
sinking x all the way to that subterm without cost. The path may cross
binders. The known 29 -> 31 linear-let counterexample is exactly a
single-role capture-saving source. It is not a reader and does not refute
the desired numerical bound, but it blocks using unrestricted cross-role
sharing as an already proved reduction. Also, neededness is a residual
property, whereas the source let-sinking theorem uses source occurrences.
Created redexes and input-delivered values cannot be charged as fresh
source lets.

Next: derive the combined path charge rather than assume it vanishes;
then test whether the sub46 budget and rigid zero law eliminate its
positive-charge alternatives. In parallel reasoning, price the tail-opener
case with its actual binder indices, retaining the n=1 input.

## 2. Pinned cell-opener subcase, before computation

Consider the literal source family

    R = lambda s. s (lambda b t. b A1 ... Ak) j,

where all operands are arbitrary lambda terms in frame [t,b,s,c], with
internal redexes and all sharing allowed. This is a source-shape condition;
no normalization to this family is being asserted. It directly includes
needed opened-tail occurrences inside the eventual unary-output source.

At the candidate budget w<=45, |Y|<=37. The outer s application and two
opener lambdas cost 8, so B=b A1...Ak costs <=29. Its head b costs 3,
each spine application costs 2, and each Ai costs at least 2. Thus k<=6
and sum |Ai| <= 26-2k. At least one Ai contains c, since input data cannot
supply rigid c. This leaves exactly 60,389 sources by a cost-recursive
count, distributed by k=1,...,6 as
25,900; 21,517; 10,018; 2,684; 270; 0.

This is one pinned finite subcase, under the 100,000-source cap. Planned
check: exact zero and unary n=1,2,3; every rejected source must have a
wrong normal form or certified divergence. Any uncertified fuel/size
cutoff remains explicitly unresolved. Source grammar contains all three
constructors and every operand cost split, so no beta-normality or
disjoint-role premise is hidden in the count.

## 3. First opener result and a larger single pinned domain

The 60,389-source bit-headed check finished in 1.415 s, peak RSS 20 MiB,
with no cutoffs and no cycles. 56,880 sources fail zero by a concrete
normal form; the remaining 3,509 fail n=1 by a concrete normal form.

The same pinned opener case can include s-headed B without breaching the
cap: head s costs 4 rather than b's 3, so there are 32,145 more sources.
Total 92,534. The other rigid heads need no computation. A c-headed B
stays c-headed on zero. A t-headed B becomes r A1...Ak j on zero, so k
must be zero; B=t fails the shortest unary law. Thus the expanded single
check will close every source-rigid body B of a literal whole-cell opener.
It remains one bounded source domain, not a general reader search.

## 4. Leading-lambda opener bodies can be hoisted (handwritten)

For the exact source shape

    R = lambda s. s (lambda b t u. D) j,

let m_u,m_t,m_b,m_s count the indicated free occurrences in D. There is no
j in D. On each genuine input cell, u receives rigid j. Every u occurrence
is unary-dispensable (all n), and at most one source u occurrence can have
a residual surviving on zero, whose normal form is r j. At least one
exists. Keep that source occurrence; replace every other source u leaf by
t, hygienically. The reviewed simultaneous transfer lemma preserves both
laws. This costs exactly m_u-1 bits, as t is one slot outside u.

Now hoist u across the opened cell and the stream binder:

    R' = (lambda u s. s (lambda b t. D*)) j,

where D* has the corresponding permutation of its four ambient binders.
For an arbitrary cell cons B T, both readers reduce to the same D* with
u=j, s=cons B T, b=B, t=T. This equality is asserted on cells, not arbitrary
rigid s. The permutation adds 3 bits to the surviving u and removes one
bit from each t/b/s leaf; c is unchanged. j's source-depth tax drops by 4.
Combining replacement and hoisting gives exactly

    w(R') - w(R) = -1 - m_t - m_b - m_s,

where the counts on the right are those before replacement. Hence every
such reader has a strictly lighter full-law reader, with one source j at
depth zero. No weight budget is required. This excludes the lambda-headed
B case only under global minimality; it is not a bound for all R1 readers.

The residual-pruning step uses the reviewed transfer lemma. A planned
Lean file checks the arbitrary-body index permutation and source-cost
identity; it will not be presented as formalizing that residual lemma.

## 5. Critical linear redexes cannot fit inside the whole-cell opener

This is a new counting lemma, using the existing exact minimum-reader
linear inequality; it does not use an unpriced beta normalization.

Assume R=lambda s. s (lambda b t. B) j is a global lexicographic minimum
and w(R)<=45. Then |B|<=29, and all source c occurrences are in B. Choose
ANY source linear redex (lambda x.D) A inside B. Let F count A's free
leaves and d be the number of lambdas above D's unique x occurrence.
The source hole j is absent from A and D. The checked linear-redex theorem
in LocalCost.lean gives

    (F-1)d >= 7+T >= 7.

A contains at least F leaves and F-1 applications, so |A|>=4F-2. D has
at least d lambdas and its x leaf has index d, giving |D|>=3d+2. The
redex contributes another four bits. Thus |B|>=4F+3d+4 before c is charged.

There is an additional charge of at least THREE bits for the source c:
- if c is in A, its de Bruijn index is at least 3, because t,b,s are
  already outside the chosen redex; this adds at least 3 beyond the base
  two-bit leaf counted in 4F-2;
- if c is in D, it is a different leaf from the sole x leaf, with a joining
  application, adding at least 4 beyond the d-lambda/x path bound;
- if c is outside the redex, it is a different leaf of B, with a joining
  application, again adding at least 4.

Consequently |B|>=4F+3d+7. For nonnegative integers F,d with
(F-1)d>=7, the right side is at least31. Proof: if it were <=30 then
F<=5; F<=1 is impossible, F=2 forces d>=7, F=3 forces d>=4, F=4 forces
d>=3, F=5 forces d>=2; each violates 4F+3d+7<=30. Thus |B|>=31>29.
The subtraction F-1 here is ordinary integer subtraction; F>=2 follows
from the strict charge, so the Nat version is equivalent.

Result: this opener contains NO linear source redex at any position in a
minimum reader of weight<=45. Erasing source redexes are already excluded
by the checked general minimum-reader theorem. Together with sections3-4,
its first body head must therefore be a nonlinear source redex.

A crude multiplicity refinement: write B=((lambda x.D) A) C1...Ck, and
m=uses_x(D)>=2. The x leaves, connecting applications and contractor give
|B|>=|A|+4m+2. If c is in A then |A|>=5, so m<=5. If c is in D or a pending
operand, its extra leaf/application charge is at least8 in D and at least7 in a
pending operand (c's index is respectively >=4 or >=3), giving m<=4. Hence 2<=m<=5, and
m=5 requires c in A. These are necessary conditions, not an exclusion.

## 6. Final finite-check record

The expanded single opener domain had exactly92,534 sources. 87,428 fail
zero by wrong normal form; all5,106 zero survivors fail unary n=1 by wrong
normal form. No n=2/3 evaluation was needed, no cycle certificate was used,
and no fuel, size, or recursion cutoff occurred. Runtime44.343s under the
ambient host load; peak RSS20,873,216 bytes; one thread. The earlier
bit-only development run checked60,389 (the included subset), also with
zero cutoffs. This is Python evidence plus the explicit source-grammar
completeness argument, not a Lean-certified term inventory.


## 7. The first nonlinear opener redex has multiplicity at most four

The provisional m=5 case in section5 also fails by source counting.
It requires c in A and |A|<=7 in frame[t,b,s,c]. The only such c-containing
term is the literal c: a lambda above c already costs8, and an application
containing c costs at least9. Thus A=c costs5, leaving |D|<=20 and no
pending operand (one would cost at least4 on top of the27-bit minimum).
Five x leaves and their four connecting applications cost18. Any other
free leaf costs at least3 plus its joining application; any lambda above
an x adds at least3; a new internally bound leaf needs a lambda and a
joining application. None fits the two remaining bits. Hence D is a pure
application tree over five x leaves. Substituting c gives a c-headed tree,
contradicting zero. Therefore 2<=m<=4.

This does not exclude m=2,3,4 and does not cover a nonliteral opener or a
source let outside the opened-cell body. The needed-binder R1' goal is
still open.

## 8. Exact general path charge for sinking a single-role let [handwritten]

For a j-free let (lambda x.C[G]) A inside Y, assume all source x
occurrences are in G. Let the path through C to G cross k lambdas. Let
m count x occurrences in G, F count A's free leaves, H count G's references
to those k crossed binders, and T count references in the fixed pieces of
C to variables outside the original lambda x. Move the let to G,
permuting x past the k binders, and shift A under them. Each term is still
present exactly once; the new source is beta-equivalent to the old one.
The exact source-price difference is

    new - old = k(F-m) + H - T.

Proof by source leaves: A's free leaves gain k bits each; the m x leaves
lose k bits each; each crossed-binder reference in G gains one bit; each
outer reference in C loses one bit. Other variable indices and all
lambda/application counts stay unchanged. This specializes to -T for an
application context and to F-m+H for one lambda, matching LetSink and
LambdaSink. In R1 the source j is outside Y, so the weight difference is
the same as this wire difference. No residual neededness premise is needed
for this source identity.

A global minimum can keep such a single-role let only if
k(F-m)+H>=T. Thus the proposed unrestricted cross-role reduction has a
precise extra alternative: single-role capture savings along a lambda
path. The 29/31 counterexample is k=4,F=3,m=1,H=T=0, and sinking costs8
(the subsequent contraction saves6). This is consistent with, and
stronger bookkeeping than, simply calling all needed binders cross-role.
It does not prove a sub46 reader exists in that alternative.

## 9. Coordinator follow-up: nonlinear first heads in the opener

Target is exactly B=((lambda x.D) A) C1...Ck at |B|<=29, in
[t,b,s,c], with 2<=m=uses_x(D)<=4. The earlier whole-opener reduction
uses global lexicographic minimality. No normalization of B is allowed
before assigning its source budget.

The promoted modules are now in lean/Blc; integrate2/REPORT.md maps the
old Close46 namespaces to Selfint*. Read the actual promoted theorem
signatures. The contextual minimum_forget_fails applies at arbitrary
source positions, but the numeric body_needed_sharing theorem refers to
the first redex directly under the stream lambda; do not silently apply
that numeric statement under the two additional opener binders.

Use the disjoint c-location partition: c occurs in A; otherwise c occurs
in D; otherwise c occurs in a pending operand. Additional c occurrences
in later components are retained. Put a=|A|, L=lambda count(D),
M=sum of local depths of x in D), P=sum_i(|Ci|+2). The source count is

    |B| >= a + 4m + 2 + 2L + M + P,

with at least8 extra bits when D contains c (its index in D is at least4).
If a pending operand contains c then P>=7. Thus the initial argument
budgets are:

                  m=2   m=3   m=4
    c in A:       a<=19 a<=15 a<=11   (and a>=5)
    c in D:       a<=11 a<=7  a<=3
    c pending:    a<=12 a<=8  a<=4.

These are original-source inequalities. They do not charge a shared
argument repeatedly and do not assume it is productive on both runs.
A cost-recursive cardinality calculation will determine whether the
remaining small cases fit one pinned finite check; it will not enumerate
or evaluate terms before that cap is known.

## 10. Cardinality of the pinned target before evaluation

The exact original-source recurrence counts only18,640 candidates in the
ENTIRE remaining target. Counts by (m, first c location):

    m=2: A8571, D4716, pending1795.
    m=3: A1788, D964,  pending256.
    m=4: A390,  D140,  pending20.

Of these3,294 have lambda-headed A (by row:1162/1206/449,
198/200/44,30/0/5 respectively).
This cardinality calculation constructs no source terms and performs no
normalization. Its recursion tracks exact x multiplicity in D, presence
of c in each component, and every cost split, including arbitrary internal
redexes. Therefore a single complete finite check can settle the exact
coordinator target within the cap. It will retain even candidates that
minimum-source or let-saving inequalities could already remove; this
avoids trusting an additional semantic filter.

## 11. Target check and complete exception audit

All18,640 sources were checked in2.087s at42,254,336-byte peak RSS, one
thread.18,119 have a wrong zero normal form;497 have a wrong n=1 normal
form. The other24 originally gave17 exact normalizer cycles and7 resource
cutoffs. No source passed the probes.

The seven cutoffs cannot be excluded merely by running out of fuel. They
all lack free t and s in B. After opening the zero cell, r disappears;
reduction cannot create a missing free variable. In fact20 of the24
exceptional sources have this property. The other four reduce after four
weak steps of R Z to Omega with normal pending operands: Omega r c j,
Omega c r j, Omega (r c) j, Omega (c r) j. Each has exactly one redex,
which maps it to itself under every beta step, so has no normal form.

exception_cert.py generates NonlinearExceptions.lean for all24 original
sources. It imports Blc.SelfintNeededHead, uses the promoted advance_sound,
and proves each literal source is NOT SelfintClass.Reader. The missing-r
proof uses confluence and occ_betas_zero; the four loops use Spine and
headStep completeness, not a presumption that a fuel cap proves divergence.
The inventory and its completeness remain Python/handwritten evidence;
only these24 exceptions are kernel-certified.

Result: the pinned nonlinear opener target is CLOSED at |B|<=29.
Combining with the previous minimum-source reduction closes every literal
R=lambda s. s(lambda b t.B)j as a globally lexicographically minimum
sub46 reader. This does not close general R1', or nonliteral/created cell
openers, and it is not an unconditional lower bound for every reader of
this literal family without minimality.

## 12. Final verification and wrapper distinction

The successful NonlinearExceptions.log has24 theorem axiom reports, each
exactly [propext, Quot.sound], with no sorryAx. Every cutoff is covered by
the missing-r argument; no resource exhaustion is treated as divergence.
REPORT.md Section5 records the complete recurrence, nine-case table,
original source budgets, proof split, and remaining general R1' boundary.

The m=2 lambda-A slice has2,817 candidates, all excluded. The162 has
Y=s I V, V=lambda u.s(lambda q.c)(s s u). Its u has one source occurrence;
it is not the literal first nonlinear redex inside a two-binder opener.
No equality classification at weight46 was attempted. Final verification
will hash the new artifacts separately from the earlier report manifest.

## 13. General R1' follow-up: source cases before semantic dispatch

Read the live SourceFront theorem, jn report and notes, current class-bound
Section3, close46's source-body refinements, and zerolam's literal-j-let
theorem. R1 is literally lambda s.Y j: the ROOT-redex arm of
reader_source_head is absent. If Y is a lambda, its application to j is
the literal depth1 j-let excluded from a global minimum by zerolam. If Y
has a rigid head, it must be s and is an s-spine with final operand j.
Otherwise Y has its first head redex; its argument and pending operands
inside Y are j-free, with the final j appended after them. Multiplicity
is at most6, and minimum-source non-erasure gives at least1. A first body
redex has bodies headed by s, x with a lambda-containing argument, a
lambda, or another head redex. The classification does not identify which
binder is above the unary-output source node.

The generic-cell first-dispatch statement is semantic: the reduced body
has head b with >=2 operands, or r with exactly1. It is not a source-price
partition, and the former operands may overlap through source sharing.

In the 162's exact s I (lambda u.D) j shape, u receives rigid j on unary,
so every u leaf is unary-dispensable. Needed binders can still occur
INSIDE D, but jn already closes this entire selector shape for arbitrary
D. The known absorber is not an example of needed u.

For R=lambda s.s A (lambda u.D) j, with A in [s,c] and D in [u,s,c],

    w = 16+|A|+|D|, so |A|+|D|<=29 below46.

Cost recursion gives2,611,273 unconstrained pairs, so no general sweep is
appropriate. Every nonnormal A of size<=10 contains an identity or
erasing source redex (a nonlinear contractor alone requires >=12 bits),
which lowers weight on contraction. Thus A is normal in a minimum reader
in this cheap range. Listing its small normal-source inventory leaves I,
two strictly removable wrappers, or the two handlers lambda b.b s and
lambda b.b I; all other cases fail by an immutable wrong rigid head,
wrong rigid arity, or the zero result being a lambda.

Both surviving handlers belong to A=lambda b.b H. For this ENTIRE family
with arbitrary H, unary F erases H and gives

    R U_n = U_(n-1) (lambda u.D[U_n/s]) j.

Therefore c must occur in D. Since |A|=6+|H|>=8, the sub46 budget forces
|D|<=21. The complete callback-only domain has6,113 c-containing D trees
in [u,s,c], with every internal redex allowed. A pinned unary-only check
of this domain can close the whole family without enumerating H.

## 14. Second-cell callback exclusion and cheap-dispatch closure

callbacks.py checked exactly6,113 original D sources with c present and
wire<=21. ALL fail already at n=1 by a concrete wrong normal form; no
cycles, cutoffs, recursion errors or survivors. It ran in0.342s at
23,805,952-byte peak RSS, one thread. Thus every reader
lambda s.s(lambda b.b H)(lambda u.D)j has w>=46, without minimality and
with arbitrary H and D. This is a Python/handwritten completeness result.

r1_followup.py constructs all41 A sources of wire<=10 in [s,c]:33 normal
and8 nonnormal. Every nonnormal source contracts cheaper, forbidden by
global minimum. Among normal sources, I is the existing closed family;
A=lambda b t.s removes at saving10; A=lambda b t v.v removes at saving14;
the two callbacks lambda b.b s and lambda b.b I are now closed by the
callback bound. Every other source fails by rigid head/arity or zero
being lambda. Consequently a globally minimum sub46 reader of
s A(lambda u.D)j must have |A|>=11, |D|<=18. General source syntax,
including all internal redexes in D, was retained.

## 15. Needed-parameter and single-role capture witnesses

R66=lambda s.s(lambda b t v.b t(v t))(lambda u k.c u(u u k))j
has a genuinely unary-needed outer u: it receives the unary tail, and
the first output operand is that u. Zero selects r and returns r j;
unary gives c t(t t j)=c t N, including t=U0. Source costs A=24,V=28,
so w=14+24+28=66. The generic-tail trace and skip_self prove every unary
length in R1Followup.lean, not just the Python n<=8 validation.

R53=lambda s.s I((lambda x u.s(lambda q.c)(x u))(s s))j
is a single-role needed x (A=s s, F=2, m=1). Sinking x through u to
lambda u.(lambda x.s(lambda q.c)(x u))(s s) costs2: k=1,H=1,T=0.
Both53 and55 reduce in one source beta step to the162 reader, whose
weight is46. Their all-n laws and exact weights are kernel-checked.
They are not minimum readers; this refutes free sinking even for actual
R1 readers, not the sought sub46 bound.

A stronger local obstruction is R109, the162's unary body written as
(lambda x a b d e f.s(lambda q.c)x)(s s u) I I I I I under its u binder.
Here F=3,m=1,M=5,T_beta=2: contracting that let costs2 (109->111).
Sinking it across five lambdas costs10 (109->119): H=T_path=0.
All three are full readers and reduce to reader162; Lean checks all laws
and prices. The five erasing lambdas make the witness nonminimal. It
shows that both proposed local moves can be dearer even in a correct
reader; the small-budget exclusion still needs additional reasoning.

For any critical linear j-free let within Y, if its sole x is at depth d
and A has F free leaves, source cost gives |Y|>=4F+3d+5: A>=4F-2,
the x path>=3d+2, redex overhead4, and a source c adds at least1.
Together with (F-1)d>=7+T_beta, |Y|<=37 leaves only
F2:d7..8; F3:d4..6; F4:d3..5; F5:d2..4; F6:d2.
The numeric implication is kernel-checked; these are necessary count
profiles, not a completeness theorem for reader sources or a proof that
any profile contains a reader.

## 16. Small imported-value body and final boundary

R75=lambda s.s(lambda b t v k.b(t k)(v(c t)))(lambda u.u(s s u))j
is a full reader with |A|=43 and |D|=16. It supplies c tail to u, so the
source outer application of D becomes the unary output; u is genuinely
needed there. The other u leaf is an erased dummy to s s. This exposes a
different live case from R66: c can reside in the dispatcher, while D
imports the partially applied continuation. The created u application is
not an original source let to which source-contract pricing applies for
free. thin_full and thin_price are kernel-checked for all unary lengths.

For the EXACT D=u(s s u), w<=45 forces |A|<=13 and c must occur in A.
The full70-source check (arbitrary internal redexes) rejects66 on zero and4
on n=1, with no exceptions or survivors. This fixed-D family is therefore
closed below46 without minimality. It does not close arbitrary D<=18.

REPORT.md Section6 now gives the complete syntactic source-head tree,
its semantic first-dispatch overlay, inherited closures, callback and
cheap-dispatcher proofs, all-n witnesses, source let/capture formulas,
and twelve necessary linear profiles. The final Lean log has11 axiom
reports, all free of sorryAx and native-decision trust. The relevant open
branch remains s A(lambda u.D)j with A>=11,D<=18 outside the new slices,
plus the source-head let alternatives and single-role capture profiles.
No full R1' lower bound or sub46 reader was obtained.
