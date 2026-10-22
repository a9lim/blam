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
