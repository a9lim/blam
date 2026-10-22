# Firstopj working notes

## Scope and inherited facts

Read BRIEF, BRIEF5, current class-bound sections 2--4, firstop's full report,
handlerlet's full report, and the depth02 copy lemma. Work is lane-local.
No consult back, subagents, repository edits, or interpreter claim.
Memory's old 162 status is superseded by the live repository and briefs.

The remaining family is R = lambda s. s H T... at source-j depth one,
H nonliteral-lambda and j-bearing, with a source head redex. Every
ancestor of j below the stream lambda is an application. In particular,
if j belongs to an argument A of a marked redex, that redex has context
depth exactly one and A's j has local depth zero.

## New candidate pricing move: selective hole restoration

At C[(lambda x.D) A], let m be x multiplicity, M the sum of x depths,
a=wire(A), L_A=lambda count(A), F=s_A+c_A, G=s_D+c_D. There is one j in A,
at its local depth zero. Contract just this source redex; do not normalize
the reader. On the zero run exactly one of the resulting source j leaves
has a residual that survives in r j. Choose its source x-use depth d.
All other source j leaves are erased on zero and on every unary run.
Replace each of these other leaves by the nearest bound variable at that
position (there is always at least the stream binder). The needed-support
replay lemma preserves all laws, while restoring a single source j.

The exact change in weight is

  S = (m-1)a + (F-1)M + 4d - 2 - 4m - G.

Derivation: raw beta charge is (m-1)a+F M-4-2m-G. The retained j at total
depth 1+d has weighted-versus-wire surcharge 3d. Each discarded j at
total depth 1+d_i costs d_i+4 raw, replaced by a two-bit variable: savings
sum_{i!=survivor}(d_i+2) = M-d+2(m-1). Their combination gives S.
The lambda change is (m-1)L_A-1. Therefore S>=0 in a minimum, and S>=1
when m=1 or L_A=0. A necessary syntactic filter can replace d by the
maximum x-use depth; no occurrence can then satisfy the price if even
that maximum fails. This is stronger/different than root-hoisting and
uses the semantic support lemma, not full normalization or an assumption
that all copies of A are erased. Only their j leaves are replaced.

Need to formalize the arithmetic separately and keep the support argument
explicitly handwritten unless an appropriate repository theorem is found.
The let-bound-j copy lemma does NOT license replacing whole copies of a
nontrivial A: their s/c parts may be needed. The distinction is central.

## Direct-head source cases checked

The new selective-hole price reduces the direct nontrivial j-argument
inventory to six genuine cells (total pending arity t, splitting t=0 by
linear/nonlinear). Counts: 31,517; 76,787; 68,906; 22,845; 3,756; 230.
All 204,041 sources fail zero or unary length one. Six evaluator exceptions
have explicit Lean weak-head-cycle refutations in Exceptions.lean.
Prices.lean checks general strict hoist for linear or lambda-free A, the
selective arithmetic identity and safe direct-cell ceilings. Its replay
premise is handwritten, not silently supplied by the arithmetic theorem.

Second direct-head alternative: j is in one of the pending operands P_i,
so A and D are j-free. Ordinary minimum-redex pricing plus the same
admissible operand grammar yields 53,819; 43,146; 13,950; 1,640 sources,
all failing or raising an exception, no finite-probe survivors. Exception
certification is in progress; 2,829/2,838 have automatic certificates, the
nine others include three inherited divergence families and six short
mixed-cycle/alternate-probe cases.

## Stream-headed first operand

R=lambda s. s (s P1...Pp) T1...Tq, t=p+q, p>=1, q>=0, j in a P.
Exact original-source weight is 8+2t+v, v=sum raw operand costs. Thus
v>=2t+2 and t<=8 below46. All operands may contain source redexes.
Count-only ordinary source grammar gave 7,278,165 admissible layouts;
none of that pool was generated or tested. Subtracting the syntactically
beta-normal subset (already excluded by inherited result) leaves only
107,782 layouts with at least one source redex: 27,630 / 50,160 /
25,752 / 4,240 for t=1/2/3/4, and zero t=5..8. The new boolean constructor
recurrence generates only that redex-present subset. This subtraction is
about source syntax, never normalization of a reader.

## All source cells now have zero probe survivors

The stream checks completed: 27,630; 50,160; 25,752; 4,240 sources, with
154; 561; 583; 201 normalizer exceptions, respectively. Altogether the
three new source families contain 424,378 sources across fourteen checks;
none passes zero and length-one unary. Every check is at most76,787
sources and took under6 seconds with under71MB peak RSS.

The combined exception audit has 4,337 original sources. Short exact
certificates cover 4,334; the last three instantiate firstop's checked
carryRight, carryLeft, and towerC divergence families. All 4,337 have
individual Lean statements in eleven modules, currently compiling.
Residual.lean already passed. No unresolved exception is silently treated
as a refutation.

## Final verification and deliverable

All eleven exception modules pass Lean, covering all4,337 original-source
exceptions with exactly [propext, Quot.sound]. The longest Lean file took
13.409s; peak was959,168,512bytes. `FirstopJPrices.lean` and `Selective.lean`
also pass. Selective's price is now an arbitrary-Term/Context theorem for
an explicit `Pruned` syntax witness, not just scalar bookkeeping. Its
law-preserving existence still uses the handwritten residual replay proof.

Independent raw-syntax validation passed21,855 ordinary and1,681 j-bearing
sources, plus95 explicit selective-substitution price checks. Positive
controls accept weights46 and102 on zero and n=1..8. Final `verify.py`
checks all source totals, every exception/theorem correspondence, every
selected Lean log and axiom list, the resource caps, and artifact hashes.
No audit exception is open. REPORT.md gives the four-part BRIEF deliverable,
full price/replay proof, constructor completeness, fourteen cells, evidence
boundary, reproduction and remaining body-let/root-let branches.

Final result: the assigned j-bearing nonliteral-first-operand s-spine
branch is closed for global minima below46 at depth1. No complete
interpreter, reader below46, or general162-optimality claim was produced.
