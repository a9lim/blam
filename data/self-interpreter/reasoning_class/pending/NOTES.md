# Pending lane notes

## 1. Reading and exact target
Read BRIEF/BRIEF5, the current class-bound sections 2–4 and Open paragraph,
and rootnarrow, rootlow, simplify, shared, root reports. Current canonical
162 supersedes the old memory boundary. All writes remain in this lane.
No consult-back, delegation, cargo build or broad source enumeration.

A minimum is global for all-n ReaderLaws, one source j, ordered by weight,
lambda count, then hole depth. Existing stream exposure has Delta = F(A)
+ sum F(C_i) + (t+1)occ_s - sum prefix uses; at depth <=1 a tie increases
j depth, so does not transfer minimality.

## 2. Pending moves under construction
* Moving a root pending prefix beneath x costs +sum F(C_i), never a
  negative price. The inverse pull saves exactly that charge.
* New useful move for a literal body lambda: simultaneous argument/binder
  exchange `(lambda x y.D) A C =beta (lambda y x.Dswap) C A` costs exactly
  `occ_y(D)-occ_x(D)`, with lambda count and every external hole depth
  unchanged. The capture prices of A and C cancel: neither crosses a
  binder in the final source. Thus prefix use counts must be nondecreasing
  from outside inward in a minimum with pending operands.
* Consuming C under the retained x let changes weight by
  `(m-1)w(C)+m F(C)+(F(C)-1)D-2m-4-G`, with m=occ_y(D), D=depthsum_y(D),
  G=occ_x(D)+weighted outer captures(D). The lambda change is
  `(m-1)L(C)-1`; one hole is preserved if j absent from C or m=1.
  These are exact source moves, not claims about full head normal forms.

## 3. Kernel progress and narrowed inventories
Prices.lean now checks exchange, consume, exact extended weight/lambda/hole
count/hole-depth equations, scope and all-n law transport. Moves.lean checks
arbitrary-context exchange, independent-suffix pull including all-n transport,
its exact hole-depth change, and the strict c-consumption charge.
PrefixExchange.lean checks arbitrary adjacent binder/operand exchanges in a
literal saturated prefix; the earlier operands need not be closed. Hence all
consumed prefix use counts are nondecreasing, not merely the first pair.

Coefficient boundary over the existing rootnl minimum grammar, followed by
new exchange and first-operand consumption filters and the established
depth-0 direct-hole-chain exclusion:
(k,d)=(2,0): 4304 sources, (2,1): 9185, (3,0),(3,1),(4,0): zero.
Both residual checks are whole (k,d) families, not cap-sized shards.
No solution: zero law definitively rejects 4287 and 9182; 17+3 exceptions.
All 20 are individually refuted in Exceptions0/1.lean by replayed head
prefix cycles. Axioms: propext and Quot.sound only. Coefficient completeness
is the inherited handwritten grammar argument plus the explicit new cuts;
not a Lean-certified enumerator. All checks under 8s and 700MB so far.

Consequence, conditional on the current established structural/minimality
filters: no minimum reader below 46 has t>=1 and a literal lambda-headed B.
The x-headed and nested-redex-headed pending handoffs are not closed by this.

## 4. Final boundary and validation
Boundary.lean checks zero-capture push transport under the complete
three-coordinate minimum, and a tiny counterexample to simply folding C
into A: `(lambda x.x x) K I j -> lambda v.j`, whereas
`(lambda x.x x)(K I) j -> j`. Both weights are 25 and both have one j;
neither is claimed to be a reader. General into-A specialization remains
conditional on call behavior.

Final compiler pass via verify.py: six Lean modules, all successful,
0.24--0.41s each, max RSS 475742208 bytes. Generic exchange proofs use
propext/Classical.choice/Quot.sound; all 20 original-source cycle refutations
use only propext/Quot.sound. controls.py recovered all three known-reader
controls and rejected the 40-weight near miss. No lane process remains.

A final coefficient-only shape audit explicitly checked h rather than
inferring it from t: every surviving B is exactly one leading lambda;
(2,0) has t=2, m=2/3; (2,1) t=1 m=2/3 or t=2 m=2. Counts unchanged.
REPORT.md records the result and the inherited completeness assumptions.
No general x-headed/nested-headed pending cell was enumerated.

## 5. Coordinator follow-up: nested-head flattening and call invariant
Read current NeededHead/NestedLets and simplify specialization prices.
NeededHead's actual quantifier is joint: replacing every non-head occurrence
must break some law. It does not certify each call's necessity, equal call
arguments, or that dynamic arguments remain literal after substituting A.

For independent nested E (x absent), write
R=(lambda x. ((lambda y.D) E) Pvec) A Cvec.
Flatten to F=(lambda x y.D Pvec_up) A E_down Cvec, or exchange x/y and A/E.
Let kD=uses_x(D), kP=uses_x(Pvec), m=uses_y(D), FE=#c(E)+4#j(E),
FP=#c(Pvec)+4#j(Pvec). Exact prices expected:
Delta_xy=kP+FP-FE; Delta_yx=m-kD+FP-FE.
Lambda count stays; j-depth change is #j(Pvec)-#j(E).
The endpoint has literal lambda-headed B and a pending E, so the previous
closure applies at a tie iff the hole does not get deeper. In particular,
independent E with no trailing body operands always transports to that
excluded family, even if the weight ties.
Dependent E cannot be pulled. A closure-lift reconstruction costs positive
bits in the 2--4-use profiles; this will be kept distinct from a blanket
normalization theorem. No general x-headed handoff reduction follows yet.

## 6. Follow-up proof and nested closure
Nested.lean now kernel-checks both flattenings, exact prices, lambda/hole
counts and depths, scope, all-length laws, and complete three-coordinate
minimum transport to an explicitly assumed literal-prefix floor. Independent
E with no trailing body operands is always covered. Dependent E is not.
Uniform.lean checks the common first-argument invariant B=D[x P/z], including
arbitrary inner lambdas/redexes, and the exact saving
(k-1)(w(P)+2)+F(P)(k+q). One source j and k>=2 force P j-free; both all-n laws
transfer to (lambda z.D)(A P) Cvec. This strictly excludes such a minimum.
NeededHead does not supply the required common-argument invariant.

All five complete nested-head (k,d) families are below 100000 before the
new flatten cut. Before/cut/remaining: (2,0) 53867/1174/52693;
(2,1) 18683/543/18140; (3,0) 48583/110/48473;
(3,1) 14970/96/14874; (4,0) 12011/0/12011. Every residual source fails.
There are 142614 finite mismatches (one at unary length1, all others zero),
and 3577 original-source Lean refutations in NestedExceptions00--11.
3372 simple loops,156 missing rigid leaves,4 lark,1 template,36 mixed cycles,
and8 owl trees. All twelve modules compiled, at most2.97s/628.3MB each;
axioms propext and Quot.sound. verify_followup.py checks all hashes and
source-to-theorem coverage. Generator completeness remains inherited [H/C].

The entire newly under-cap x cell (k,d,location,t,h)=(2,0,Cs,3,1) was counted
as98442 after simplify's known cuts before source generation, and then
checked once:86081 finite zero mismatches,12361 normalizer exceptions,
no finite passes;57.33s/732.3MB. Baseline loop/missing certificates resolve
10266. A generic family search reached its110s watchdog, producing no
accepted output. Flow annotations resolve775, longer head clocks/replicator
resolve153, mixed-cycle proofs on102 literal cores resolve1104 more.
63 exceptions remain at this point;12 further flow developments discovered,
with kernel compilation pending. No unresolved outcome is a negative verdict.

## 7. Follow-up final verification and honest remainder
Final x result:86081 finite zero failures +12310 individual Lean refutations
+51 unresolved exceptions =98442 sources. The remaining51 have12 literal
let cores, all B=x x, weights43(3),44(6),45(42); exact source/hash files
X_REMAINING.tsv/json and x_opened.json. No unresolved outcome is a verdict.
All accepted x proofs compile in XBasic00--38, XFlow00--15, XDevelop00--11.
The twelve development-flow proofs initially exceeded the configured Lean
memory budget when combined; individual files pass in<=5.77s, maxRSS
1761214464 bytes. No hard2GB limit was exceeded. One110s family-discovery
watchdog and bounded unsuccessful51-case probes are recorded as no-result.
verify_followup.py passed both nested and x coverage/hash/resource audits:
3577 nested exception proofs and12310 x exception proofs, all actual
original-source statements. The exact copy of rootcert2/Flow.lean was
compiled in this lane; no upstream/other-lane files were changed.

The eight x-headed over-cap cells after simplify's stated rules total
2102856. Uniform's additional source-pattern theorem is not coefficient-
counted in those envelopes. No over-cap source construction or probing.
REPORT.md section6 records formulas, full nested closure, partial x-cell
result, exact remaining inventory, and the inherited completeness boundary.
The general46-reader floor and162 optimality remain open.
