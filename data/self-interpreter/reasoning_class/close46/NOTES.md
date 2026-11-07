# close46 working notes

Read the round-4 brief, class-bound, STATE46, reader30, shallow-readers,
role-pricing, prove46 REPORT/COUNTS and refute46 REPORT. Live canonical status
supersedes the older memory note: the 162 exists and is formally verified.

The universal weight-46 claim is open. The inherited leaf-floor and global
serial-dispatch arguments in refute46 are not established by a disjoint
source charge, and are not premises for this lane. The task is to price a
sharing context or find an actual smaller reader. No term enumeration is
permitted. Initial direction: paired zero/unary residual semantics, with
special attention to synthesizing selectors from the data itself and sharing
one source continuation occurrence. Writes stay in this directory. No other
agent will be consulted.

## New proved result

`ClosureBarrier.lean` proves an unbounded paired application algebra for
atoms s, I, F, rigid parameters, C_m = lambda^m.c, and H_m = lambda x.x C_m.
The grammar permits arbitrary applications, arbitrary numbers of copies,
and different arguments at every use. If its zero evaluation is r j, its
unary evaluation fails c U_(n-1) N for every n >= apps+2.
`SharingContext`, `share_reduces`, and `sharing_cannot_read` include a literal
nonlinear let; `represented_reader_impossible` transfers through beta-equal
representations and repeated let expansions. This is a complete semantic
exclusion of a sharing family, not a numeric universal reader bound.
All new main theorems currently compile; dependency audit only propext and
Quot.sound. No finite term search was performed.

## Boundary that blocks a universal extension

Adding Delta = lambda x.x x breaks the invariant that a zero result j must
also be j on unary input. Define D(s)=s Delta I (s s) j. It gives j on Z(r),
N j on U_1(N), and N on every U_(n+2)(N). `BoundaryAlgebra.lean` proves these
for every n; eight fixed rigid probes and prices are in `BoundaryChecks.lean`.
The derived near-reader s I (s C_1) D(s) has w=56 and fails precisely n=1,
so it was not spliced into an interpreter. This is not a new algorithm or a
counterexample to 46. Flat H_0 costs 10 in [s,c], H_1 costs 13; H_0 K=C_1
and H_1 I=C_1 cost the same 17 bits including their respective argument.

The missing step remains a source-cost theorem for callbacks outside the
static continuation/factory algebra, especially nonlinear ones such as
Delta, stream-capturing factories, and functions that capture computed
continuation arguments. No whole arithmetic profile is claimed removed.

## Follow-up: source-cost bridge in progress

Coordinator asks for minimum-reader normalization/source-cost bridge (same
lane, no sweeps, two threads and <2 minutes per finite check). Audited jn's
NOTES.md: its I/K closures depend on computer arm classifications, and its
depth-1 dispatch inventory still has no general completeness proof. The
first-dispatch statement itself is reasonable, but copying a j-bearing
argument can duplicate the unique source hole before that dispatch.

A useful exact extension of the contraction+hoist method emerged. At the
root first redex R=((lambda x.B) A) C1...Ck, suppose A contains the unique
j. Let m=occ_x(B), D=sum of depths of those x occurrences, d=depth(j,A),
f_A=count_c(A), f_C=count_c(pending spine). After contraction let R' be the
reduct; it has m holes, so it need not lie in the one-hole class. Hoisting
ALL those holes into one binder restores the class. The exact proposed
identity (now being formalized) is

  w(H(R')) - w(R)
    = (m-1)(wire(A)-3) + f_A*(D+m) + f_C - 3d.

This includes arbitrary nonlinear m, and generalizes the old linear
identity. It follows particularly cleanly from the all-multiplicity hoist
formula w(H(T)) = wire(T)+4+count_c(T)-count_j(T). No source-origin
classification is needed for this formula. It is a necessary inequality for
a minimum reader, not yet a proof that the remaining arguments are small
or belong to the paired-value grammar.

## Follow-up: kernel-checked source-cost results

New files SourceCost.lean, LocalCost.lean, SourceFront.lean compile. The
copied dependency ReaderHoist.lean stays in this lane. There are no admits
or native-decide axioms. The cost/shape proofs use propext and Quot.sound;
the hoist semantic/cost bridge additionally uses Classical.choice.

The new full ReaderLaws predicate checks zero and EVERY unary length;
MinimumReader and LexMinimumReader minimize over that predicate, not over
the old two-probe Reader. All beta transformations preserve those full laws.
The old Reader is used only where two probes already imply a structural
obstruction.

Proved:
- weighted_beta_at: exact weighted beta balance at any ambient depth;
- minimum_source_non_erasing: no erasing redex anywhere in a minimum reader;
- minimum_linear_source_charge: at every linear source redex, the effective
  free-capture count F and occurrence-depth D satisfy (F-1)D >= 7+G, where
  G is the body's outer free count, with each j charged as four captures;
- minimum_source_sharing_charge: a nonlinear let with no j in its argument
  must be nonshrinking under the exact weighted balance;
- ReaderLaws.hoist and contract_hoist_price: copying a j-bearing argument
  can be followed by an all-copy hoist that restores exactly one source j,
  with the exact whole-context price recorded above;
- reader_source_head: every source reader is literally an s-spine, or has
  its first source head redex at the root, or immediately under its stream
  lambda. This is NOT a theorem that the redex cases can be eliminated;
- reader_head_multiplicity_le_seven: first root-redex m<=7 under w<=45;
- body_head_multiplicity: first body-redex m<=6 under w<=45. Consuming that
  redex from a two-lambda source would leave a one-lambda reader, proving
  the three-lambda input needed for the sharper cap without handwritten
  assumptions;
- source argument budgets, retaining D and the number L_B of lambdas in B:
    root, no j in A: wire(A)+D+2L_B+4m <=43;
    root, j in A: wire(A)+3 depth_j(A)+D+2L_B+4m <=46;
    body (under s): wire(A)+D+2L_B+4m <=41.
These are bounds on the ORIGINAL source redex. They cannot be iterated
through expanded reducts as though the weight stayed <=45.

Read jn's live notes/scripts, without running its enumerators. Its K-family
argument has a small repair: with j in A2 and |A2|<=2, the only possibility
is literal j (zero operand cost), not s. That still fails the zero law by
retaining head j. DispatchAudit.lean checks both the tiny-operand fact and
that rigid-head contradiction. This repairs that intermediate step; it
neither refutes nor formally certifies the full K-family bound. The finite
core/arm inventories and their capped cases were not re-run or upgraded to
Lean certificates here.

Remaining: the bounded source arguments are not classified into a finite
semantic basis. In particular positive-cost linear capture lets and m>=2
sharing arguments with dynamic input capture remain. No new reader was
built, no interpreter was spliced, and no whole count profile is removed.

Final follow-up verification: verify.py passed all 11 child runs (nine
Lean modules and the version/fixed-probe steps) in 3.64 seconds, longest
child 0.97 seconds, two threads. REPORT.md section 6 contains the complete
new source-cost statements and the remaining boundary. No proof of 46,
no sub-46 reader, and no new interpreter.

## Third follow-up: semantic source bridge

The immediate-under-stream case at source hole depth one has no j in B:
the lambda x would otherwise place j at depth at least two. The useful next
step is to formalize the handwritten flat-operand dominance lemma from
shallow-readers.md, rather than assume its six-member basis. An arbitrary
lambda-free argument over s,c,j has one of six relevant paired meanings
(s, c, j, s s, s s s, s s s j), or is a rigid normal operand absent from
both target outputs and therefore contextually replaceable. The claim is
for every unary length, including one. Its inert-replacement principle is
already kernel-checked in Blc/SelfintInert.lean. This is an algebraic
classification, not a source-term enumeration.

The all-redex closure is still not proved. In particular the general
lambda-dispatcher family in jn covers only its recorded operand window;
a larger reduct cannot be fed into a w<=45 closure without a separate
nonincrease proof. I will not treat the two-lambda-50 handwritten result
or those finite inventories as Lean-certified premises.

Kernel-checked now: FlatSemantics.lean gives an exact source-aware paired
algebra at every unary length (n=1 included), with rigid/normal/Avoid
certificates for all irrelevant flat arguments. FlatMinimum.lean transports
those certificates through arbitrary functions and pending spines, allowing
unlimited nonlinear use of the argument. minimum_flat_argument proves that
a minimum reader's lambda-free first-body argument is literally one of
s, c, j, s s, s s s, s s s j. The erased payload in (s s) A or (s s) A j
must be the cheapest leaf s; that replacement itself permits arbitrary A,
not just lambda-free A. minimum_flat_capture gives the effective free count
<=7, and no_shallow_linear_flat excludes a linear first body redex with
D<=1. Both new files compile; the complete classification uses propext,
Classical.choice, Quot.sound only. No term enumeration has occurred.

Further kernel-checked results in this follow-up:
- minimum_flat_four reduces the first body redex's flat argument under
  w<=45 to exactly j, s s, s s s, or s s s j. Literal s always contracts
  cheaper; literal c contradicts the verified m<=6 bound.
- no_three_lambda_linear excludes ALL linear first body redexes with at
  most three source lambdas, without using the handwritten two-lambda-50
  result. The non-flat argument case has D=0; the flat case uses the new
  seven-capture bound and D<=1.
- RootFlat.minimum_root_flat_is_hole reduces every lambda-free root
  first-redex argument of a minimum reader to literal j. No w<=45 or
  multiplicity hypothesis is needed.
- FlatPrefix.reader_flat_prefix proves that a reader lambda s.T C1...Ck
  with lambda-free T must have T literally s, for arbitrary C_i. Hence
  minimum_not_flat_flat excludes first body redexes with both B and A
  lambda-free, even with arbitrary lambdas in the pending spine.
- LetSink provides a new general cost-preserving semantic transformation:
  (lambda x.C[G]) A -> C_down[(lambda x.G) A] for any application context
  C whose fixed pieces do not use x. The definition A is not copied, the
  source j multiplicity is unchanged, and all unary laws are preserved.
  The exact saved weight is sum over fixed pieces F of
    freeLeaves(1,F) + 3 count_j(F),
  with the correct local j index. This works both at the root and under s.
  In a minimum reader that charge is zero. In particular an s-spine body
  cannot use x in only one operand: no_one_operand_spine_let is checked for
  arbitrary before/after operands, arbitrary shared A, and any multiplicity.
  Sharing must reach at least two distinct operands, or involve lambdas on
  the path that this application-context transformation does not cross.

The full redex closure remains open. The residual flat body-redex arguments
are explicit, but nonlinear sharing of them across two operands is not
excluded. Lambda-containing arguments are still not given a complete small
semantic basis. No jn finite inventory is a premise of these results. All
five new Lean files compile, with standard axioms only; the sink, root-flat,
and flat-prefix results need just propext and Quot.sound. Preparing the
complete verification record and REPORT section 7 now.

Final verification for this follow-up: all 16 child runs passed in
5.319 seconds, longest 0.981 seconds, two threads per Lean child. The runner
now compiles fourteen Lean modules plus the fixed boundary/version steps.
No sorry/admit/native_decide remains in the five new files. REPORT.md
section 7 records the semantic proofs, exact let-sink price, and open
sharing-across-operands boundary. Tracked git status is still clean; all
writes remained in the lane directory. No complete interpreter or sub-46
reader was built, so no new battery or polish result is claimed.

## Fourth follow-up: cross-operand callback sharing

Stable kernel result in HelperPair.lean: every reader of either exact shape

  lambda s. ((lambda g. s (g F) (g s)) A) j
  (lambda g s. s (g F) (g s) j) A

has weight >=46. A is arbitrary source syntax, including internal redexes;
there is no minimum-reader or normal-form hypothesis. One source j is
required. The whole-source prices are 36+wire(A) locally and 40+wire(A) at
the root. Below46, c-liveness and the one-hole condition restrict A to the
complete eight-member local basis c, C1, C2, c s, c c, c I, s c, I c, or the
two-member root basis c,C1. The basis is proved by structural inequalities,
not enumerated. All ten fixed instances have checked exact zero normal
forms different from r j. No cap is accepted as an exclusion. The file
compiles in0.29s on two threads with propext,Classical.choice,Quot.sound.
This closes the proposed G_c specialization TEMPLATE, not every possible
selector/unary shared helper context. It does not show G_c is minimum or
prove that a helper costs at least its inlined roles at every weight.

Premise correction: LetSink only says a surviving let in an ALREADY
s-headed redex body must cross operands. SourceFront has not proved that
all remaining first-redex bodies are s-spines; x-headed bodies and further
source head redexes are still possible. jn's generic first-dispatch residual
is not a source-cost normal form and cannot fill that missing step.

Stronger stable extension: ClosedSpecializer.lean proves both placements
for ANY closed specializer P, not only F. A is still arbitrary source syntax.
Local cost=30+wire(P)+wire(A). Eight symbolic-P zero reductions force A>=10;
underw<=45 this forces P=I and A<=11. The complete 26-distinct-term A basis
is proved structurally, with exact zero/length-one rejection. A=F c (11bits)
is the important45-bit zero-passing boundary: it erases c and becomes I,
so lambda s.s I s j fails unary. Root cost=34+wire(P)+wire(A); P>=4 leaves
A<=7, hence c,C1,c c, all symbolic-P zero c-head failures.

Exact inlining deltas are kernel checked: local wire(A)-10; root
wire(A)+2freeLeaves(A)-14. They can be positive; no universal dominance
claim. Capturing G_c's prices31/30 and weights67/70 are now kernel checked,
as are whole-source beta reductions to reader162 (all stream arguments).
Both new modules compile with only propext,Classical.choice,Quot.sound.
REPORT8 now includes the general closed-P theorem and unchanged universal
source-normalization boundary. The final verifier includes both modules.

Final verification:18 child runs (16 Lean modules +2 auxiliary steps) in6.37s, longest0.94s, two threads. All hashes/logs pinned in verification.json. New discardedC declarations kernel-check weight45, exact zero success, exact length-one output j F U_0, and non-reader status. Tracked git status remains clean; no consults, subagents, term sweeps, engine mutations, or commits. Full weight46 remains open.

## Fifth follow-up: premise gap, first stable increment

Read bridgeadv REPORT2 and depth02 REPORT (claims only, no imported finite
inventories). Bridgeadv's unrestricted 'linear lets never pay' is false:
A=(s s)c, B=lambda y1 y2 y3 y4.x. The linear source (lambda x.B)A has
weight29 at ambientdepth1; its contraction has weight31. Kernel-checked
in LambdaSink.linear_saving_counterexample. This is a numeric source-cost
counterexample, NOT a reader or a counterexample to46. Deep capture is
precisely the exception already retained by LocalCost.

LambdaSink.lean now kernel-checks a no-copy conversion across a leading
lambda: (lambda x y.B)A =beta lambda y.(lambda x.swap(B)) (shift A),
where swap exchanges x/y's de Bruijn positions. At ambientdepthd its exact
cost change is freeLeaves(A)+3occ_j(A)+uses_y(B)-uses_x(B). The source hole
count is exactly preserved, even if A contains j; full ReaderLaws preserved
in both root/body first-redex placements with arbitrary pending operands.
Consequently a minimum must satisfy uses_x <= uses_y+freeLeaves(A)+3occ_j(A).
This prices lambda-headed bodies, but does not eliminate the cases where
the charge is nonnegative. Filecompiles0.27s,2threads,onlystandardaxioms.

SourceBody.lean compiles: complete body alternatives understream for a
minimum reader are s-spine; x-spine withlambda-containingA; lambda y.D
withnonempty pendingC; nestedheadredex. x-headedflatA forcesliterallys by
FlatPrefix forarbitraryoperands, thencontracts cheaper. Root alternatives
needonlyReader(no minimality): x-spine withlambda-containingA,lambdahead,
nestedheadredex; c/j-headfailsrigidity. REPORT9.3 records this no-overclaim
classification. Root sourceB cannotbe literalsspines before streambinder.

StreamSpecializer.lean first increment compiles: localWith A P with P in
frame[g,s] (FreeUnder2, maydependong aswellass) hasexactprice30+wireP+wireA.
For the eight c-containingA<=9, arbitrary P is never inspected before a
rigidc zerohead. smallC_anyP checks this symbolically by16 weakhead steps
forUNRESTRICTEDP (no closedness/normalization assumption), using an actual
reduct plus rigidhead certificate, not fuel failure. ThusReader forcesA>=10;
w<=45 forcesP<=5 andA<=13. small_specializer isstructuralcomplete: only
P=g,s,I,lambda u.g. specializer_boundary pinsallthis. Inparticularss,sF,
and all application-rootedP alreadyfailbyoriginalbudget. Next planned:
structurally classify c-containingj-freeA<=13 (~70distinct) andcheck these
four specialization cases; no termgenerators/sweeps, constanttinybases.


Fifth follow-up completed: StreamHelpers.lean structurally classifies all
c-containing j-free helpers A<=13 in [s,c,j], including lambdas/redexes.
StreamSpecializer.local_stream_floor proves weight>=46 for arbitrary
A and arbitrary P in [g,s] in lambda s.((lambda g.s(gP)(gs))A)j.
Needs only zero/shortest-unary Reader laws and one sourcej; no minimality.
The P<=5 boundary leaves g,s,I,lambda u.g; capture13_reject checks every
structurally complete case within sourceweight45 using actual wrong NFs.
No failed cap can certify anything. Also root_stream_floor proves the
same bound for (lambda g s.s(gP)(gs)j)A with arbitrary P in [s,g]. RootA<=9
has ten complete shapes: eight symbolic-P c-head failures plus lambda u.cu
and lambda u.uc; for those P must literallys, and exact probes reject.
Both families now include arbitrary stream/g-dependent specializers.

REPORT9.4-9.6 contain the proof and boundary; general s-spine normalization
is not solved. SourceBody retains x-headed/lambda-containing arguments and
nested source head redexes; LambdaSink prices the leading-lambda case.
The numeric linear-let saving counterexample is not a reader. Full46 open.
Final verification:22 runs (20 Lean modules+2 auxiliary),10.75s total,
1.66s max child,2 threads. Exact hashes/logs inverification.json.
Only propext,Classical.choice,Quot.sound. No source changes outside lane.
Concurrent tracked changes to README/docs/lean umbrella appeared during
this pass; they were untouched. No consultation, subagent, sweep or commit.


## Sixth follow-up: x-headed uses, nested lets, and the needed-binder interface

Read hole REPORT and NOTES10-12 as unreviewed claims only. NOTES12 still
explicitly retains R2b/R3 alongside needed-binder sharing; no claim that
all lambda/depth1 sources reduce to only one case is imported.

NeededHead.lean proves an exact cheaper comparison for any source context:
C[(lambda x.x B1...Bk)A] -> C[A B1'...Bk'], identifying every non-headx
with the nearest outer variable (s at first body redex, c at root), then
lowering other indices. A remains once, every sourcej and scope preserved.
Exact saving =6+sum freeLeaves1(Bi)+3sum occ_j(Bi), independent of m/depth.
This is NOT claimed beta-equivalent. minimum_forget_fails says a minimum
full reader cannot survive this replacement. If no non-headx occurs, it
IS the beta contractum, hence minimum_extra_use excludes that case. At
first bodyw<=45 there are1..5 non-headx uses. unary_needed_if_zero proves
that preservingzero forces someunarylength tofail; no output-node origin
claim or joint-dispensability lemma assumed.

NestedLets.lean proves pending operand absorption beneath a lambda, all
ReaderLaws/holes preserved, exact extraF(Bs)=sum freeLeaves0+3sumj. It then
swaps independent adjacent lets with exactdeltaF(A)-F(E)+uses_yD-uses_xD.
Arbitrary pendingBs version combines both: deltaabove+G, whereG=sum
freeLeaves1Bs+3sumj, excludingx fromcapturedleaves. Definitions/syntax kept
once; everyouterocc preserved. minimum_nested_alternative atANYcontext:
innerE containsx, OR the independent swap's exactcharge is nonnegative.
This is a structural dependence/cost dichotomy, not exclusion. No imported
inventory premises; no token/bit-opened input binder cost claimed.

REPORT10 records formal results, explicit interface, and openprovenance:
sourcefirstlet isnotyetidentifiedwithbinderabovetheunaryoutputnode;
createdredexorigins and inputcell/bitdeliveredvalues stillopen. Full46open.
Final verification24runs(22Lean+2aux),17.85s,max2.37s,2threads.
Onlystandardaxioms,newmoduleswarningfree,exacthashescurrent. Nonscratch
trackededits elsewherebelongtootherwork andwereuntouched. Nosweeps,
consults,subagents,commits,enginechanges,ornewcandidate.
