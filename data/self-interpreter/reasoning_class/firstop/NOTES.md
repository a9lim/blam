# Firstop lane, wave 5

## Orientation and source of truth

Read BRIEF, BRIEF5, current class-bound section 3 (also sections 1,2,4,5),
handlerlet, d1open, adv5 and loop sections 5-6, and current STATUS.
Writes restricted to this directory; no consults or delegation.
The task is a global lex-minimum exclusion, not a theorem about every
reader of a syntactic family. All inherited finite exclusions are being
used as stated, not independently rerun.

## Initial exact-cost audit

The identity s (s Q) Y... = s (lambda b t. Q b t b t) Y... is valid on
cells, including when Q mentions s (hygienic shifting). But its displayed
right side costs 18+2F MORE before beta-reduction when Q is j-free, where
F counts Q's free leaves. The claim that the left side necessarily costs
at least 8 more than an equivalent literal handler does not follow from
this identity. adv5/NOTES section 10 constructs a particular Q from H;
that does not classify all Q. A useful lower-cost equivalent may still
exist for reader-compatible Q, but needs proof.

## Head-redex source budget

For R=lambda s. s (((lambda x.D) A) P1...Pp) T1...Tq, depth(j)=1,
if j is outside D,A, t=p+q>=1 and local tail prices S put j at zero:
  w = 14+2t+|A|+|D|+S.
No hole lies in D because its x binder would make depth at least two.
The exact contraction delta is
  (m-1)|A|+(F_A-1)M-4-2m-G_D.
A minimum requires delta>=0, and delta=0 with lambdaCount(A)=0 is
forbidden. If j lies in A, that formula must be replaced by the weighted
one and a hole-restoring hoist for nonlinear contraction.

## Closed pinned subcase: every linear redex inside a j-free first operand

R=lambda s. s H T1...Tq, q>=1, H j-free, exactly one j in the tails at
any depth. Mark H=C[(lambda x.D) A], local context depth ell. The exact
source budget is w=14+2q+a+d+k+p, with k the context price and p the
local weighted tail sum. A minimum's linear redex has
  (F_A-1) M -6-G_D >= 1.
The constructor recurrence, retaining arbitrary C,A,D and all tails,
leaves 727 sources: (q,ell)=(1,0):673; (1,1):38; (2,0):16.
Every source is unique. 712 fail zero, 15 fail n=1. No resource cutoff,
cycle or unknown. Run: 0.061 seconds, 26 MB, one compute thread plus
watchdog. linear_count.py, linear_check.py, linear_check.json and full
refutation manifest retained. Each concrete refutation exported to Lean;
proof uses exact beta reductions to a distinct normal form, not eta.
Completeness is handwritten induction on source constructors, not a Lean
exhaustion theorem. It uses the existing exact minimum-linear-price lemma.

## Count-only obstruction; not candidate searches

The unrefined direct-head-redex inventory with j in pending operands
has 366,864 base layouts, 853,044 after splitting pending operands into
inside/outside-the-first-operand lists. This is an upper inventory because
the tails permit deeper j. No such sources were instantiated or checked.
Restricting flat arguments to their known contextual representatives
still leaves 707,568 layouts. The counts only diagnose that this is not
a permissible finite closure under BRIEF5.

## Hole-bearing argument: exact new contextual hoist formula

Let the marked redex lie at binder depth one, its A have the unique j at
local depth zero, and every other part of the reader be j-free. Write m
for x multiplicity, M for the sum of its local depths in D, sA/cA for
A's s/c leaves, sD for D's s leaves, and cC for c leaves outside the redex.
Contract and hoist all resulting j copies to the reader root. The change is
  (m-1)|A| + (sA+cA)M -3m-sD+cC+m*cA.
D's c leaves cancel exactly. This uses raw |A| in frame [s,c,j], where j
costs four, not the local zero-priced hole convention. The source weight
is raw wire exactly because its unique j is at global depth one.
This is a price constraint, not a semantic exhaustion theorem.

## Kernel verification

All 727 concrete refutations compile: LinearInventory.lean, 10.642s,
708,018,176-byte sampled RSS, two threads. Every printed dependency list is
[propext, Quot.sound]. The generator's completeness remains handwritten.
Prices.lean proves the source price, linear filter, reification price,
let-sink price, and depth-one contextual contract-and-hoist identity. Its
final check is 0.445s, 454,115,328-byte sampled RSS, two threads; no sorry.

## Stronger lambda-sink restriction

For a j-free first operand ((lambda x. lambda b.B) A), with no pending
operands inside it, move the x let beneath b. The result is a literal first
handler, has the same number of lambdas, preserves hole depth, and changes
weight by F_A + occ_b(B) - occ_x(B). Hence the inherited exclusion of
literal-handler GLOBAL minima upgrades the ordinary nonnegative sink
constraint to the STRICT inequality
  occ_x(B) < F_A + occ_b(B).
At equality the transformed reader is another global minimum (all three
ordering components agree), so handlerlet applies. This deduction uses
handlerlet's reviewed exclusion as a premise, not H_nf.

## High multiplicity in an arbitrary j-free first operand

For H=C[(lambda x.D) A], w<=45, q>=1, H<=33. If m>=6, body counting gives
|D|>=4m-2 and redex cost>=4m+2+|A|. With source c outside A:
- in D: extra c leaf+join costs >=6, giving H>=34;
- in C: context costs >=5 (plus 2 per lambda on the hole path), forcing
  m=6, A=s, and no contextual lambda; contraction then saves >=6;
- only in the tails: H<=28, forcing m=6, A=s, empty C and a pure x tree;
  contraction again saves >=6.
Thus c must occur in A. The source budget leaves m=7 with A=c, pure D,
empty C; or m=6 with A among c, lambda u.c, c s, s c (at context depth
zero), or A=c under one context lambda. No other c-containing term fits:
A<=7-2ell, c costs ell+3, a lambda adds 3 to that occurrence, and a joining
application plus another leaf adds at least4. With A=c, D has at most four
bits beyond its pure-x tree; every additional leaf would need at least5
(external) or6 (local after introducing its binder), so only x leaves and
vacuous lambdas remain. Its head cannot be such a vacuous source redex in a
minimum, nor a leading lambda (would cost 2+m>=8). Hence its head is x,
which becomes rigid c. The possible <=4-bit contexts cannot repair that:
empty, an application with s, or one lambda. For A=lambda u.c the body is a
pure x tree and applies A, exposing c. For A=c s or s c the body is a pure
x tree and A has rigid c head on zero. All violate zero's r head.
Therefore every source redex anywhere in a j-free first operand of a
minimum reader below46 has multiplicity2..5, after the linear inventory.
This extension is handwritten, with the exact price identities in Lean.

## Final status

REPORT.md saved in the requested four-part format. The full lane target
is explicitly open. No reader<=45, no complete interpreter, no H_nf use.
New closure: every redex in a j-free first operand of a global minimum
below46 has multiplicity2..5; linear exhaustion has727 individual Lean
refutations, high multiplicity is handwritten. Added strict lambda-sink
necessary condition and kernel-checked contextual hole-restoring price.
Final Price check:0.554s,464,568,320-byte sampled peak. verification.json
records hashes and checks all727 printed axiom lists and final Price log.
No live child run remains from this lane.

## Coordinator follow-up: nonlinear first operands

Accepted correction: H_nf neither ensures reader normalizability nor keeps
contracted terms in the one-hole class. It remains unused.

Pinned source family: R=lambda s.s H T1...Tq with H j-free and non-lambda,
j at global depth1, and a marked2..5-use redex anywhere inside H. Exact
price remains14+2q+a+d+k+p. Per-redex nonnegative delta, lambda-count tie,
strict whole-first-operand lambda sinking, and rigid-c-head exclusions
reduce counts. Enforcing the minimum-source redex conditions recursively
inside BOTH marked A and D is the decisive further narrowing. The count
state carries all free-variable multiplicities/depth sums and the root
lambda's parameter profile, so root-redex admissibility is checked during
construction rather than by generating an oversized inventory.

After these filters: arity1 has164451 markings, partitioned by the genuine
source alternatives marked redex at H root(79071) versus below it(85380).
Whole arities2/3/4 have52844/8535/648. Higher arities have zero. Thus every
check is under100000 without slicing a larger cell arbitrarily. Context
siblings and all trailing operands remain unrestricted; j is constrained
to depth1 by the inherited minimum-depth reduction.

The generators retain redexes inside terms, and have exact per-block count
assertions. The arity4 check finished with648 sources,595 wrong-zero NFs,
1 wrong-unary NF,52 normalizer exceptions,0 hits. Exceptions are pending
individual kernel certificates and are NOT yet refutations.

Follow-up checks so far: q3 gives8535 unique sources,8056 wrong-zero NFs,
17 wrong-unary NFs,462 exceptions,0 hits(12.274s/40MB). q2 gives52844
markings,52832 unique,49132 wrong-zero,1706 wrong-unary,1994 exceptions,
0 hits(12.257s/62MB). After q3 the evaluator bounds were reduced to300
beta steps/2000 nodes; exceptions remain explicitly unresolved until
certified. This changes no candidate coverage or correctness criterion.
All incomplete runs will have individual Lean refutations.

All five nonlinear source checks completed. q1root:79071 unique,
76636 wrong-zero,414 wrong-unary,2021 evaluator exceptions; q1nested:
85380 markings,85368 unique,82346 wrong-zero,528 wrong-unary,2494
exceptions. No hits. q1root16.418s/81MB; q1nested24.353s/86MB.
All7023 evaluator exceptions now have individual Lean refutations:
7020 ordinary missing-head/rigid-head/prefix-cycle/mixed-cycle certificates
and3 family recurrences in NonlinearResidual.lean. The latter prove
perpetual weak-head reduction for arbitrary carried arguments or tower
pairs, without eta or H_nf. All16 ordinary certificate modules passed,
slowest40.286s,largest1183481856bytes,under updated2GB Lean cap.
NonlinearFamilies.lean1.148s/441MB; NonlinearResidual.lean0.695s/419MB.
The expanded count-only context-depth loop ell0..11 reproduces all counts,
so no unverified shallow-depth ceiling remains. Tree bound ell<=10 and
q<=6 follows from a>=2,d>=6,k>=2ell,p>=2(q-1),w<=45.

The main follow-up result is complete: the nonlinear2..5 j-free-H
inventory has no surviving readers, all7023 exceptions individually
kernel-refuted. Combined with prior linear/high-multiplicity and inherited
d1open exclusions, no depth-one global minimum below46 has j-free first
operand. Constructor-exhaustion remains handwritten/computer-checked;
there is no monolithic Lean enumeration theorem.

Additional closure: H=((lambda x.D) j) P1..Pp, arbitrary outer tails.
Strict bare-j hoist charge m-4-sD+cOutside>=1 is kernel-checked with an
EXPLICIT third-coordinate DepthMinimum hypothesis (LexMinimumReader only
has the first two coordinates). All4188 admissible source terms, across
all pending placements, fail zero within6 beta steps. Every one has a Lean
normal-form refutation in JBare1..5; no evaluator exceptions. Check1.368s,
62.9MB. All5 Lean files pass; slowest53.465s,largest1032601600bytes.
General reification price now kernel-checked with j:
  weight1(reify Q)-weight1(s Q)=18+2F_Q+6occ_j(Q).
One j therefore costs24+2F MORE before contractions.

REPORT.md section5 appended with exact completeness argument, counts,
limits and remaining j-bearing boundary. followup_verification.json audits
all7023 exception theorems and4188 bare-j source theorems,27 Lean modules,
all concrete axiom lists exactly[propext,Quot.sound],no sorry/native_decide.
All work stayed inlane; no delegation/consult/commit. No lane child process
remains. The original coordinator wrapper is live and was not touched.

Independent feature/DP validation extended to20bits so it includes admitted
nonlinear redexes (Omega is18bits). Count-only gate before generation:
36597 raw terms,15430 admissible,frames2/3/4,all sets match. Both j-free
and jbare implementations pass. Report and artifact hashes refreshed.
