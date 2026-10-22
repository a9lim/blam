# rootnl running notes

## 1. Scope and initial reading
Read the current class-bound sections 2–3, BRIEF/BRIEF5, and rootlow, rootnf,
rootlet, rootcert, root, shared, zcore, handlerlet reports. Current class-bound
supersedes the old report status: tight-profile exceptions and P4 are closed.
We use global minimum in (weight, lambda count, j depth), never probe minimum.
No consultation/delegation is available in this one-hop lane. All writes here.

The rootlow envelopes are necessary counts, not survivors. They omit source
eta, all but coarse forced-use cuts, and the existing complete L=3,V=k+5
exclusion. Need distinguish a no-minimality transferred bound from the
lambda-rooted *minimum* floor, especially at weight ties raising j depth.

## 2. Planned semantic cuts
A. Exact Lift/exposure offset can transfer an arbitrary *unconditional*
family bound to the original source. It cannot transfer a minimum-only
family theorem at an equal-weight, deeper-hole endpoint.
B. Literal leading chains reveal definitely consumed arguments before any
stream reduction: the argument of every vacuous source binder is dispensable.
Minimality then makes a dispensable j-free argument the cheapest in-scope
leaf (x within B, c at root). If a literal pending j is consumed by B's
leading chain, the established root-lane head-chain exclusion applies.
C. Add eta exclusion, ownership, every-let prices, and established minimal
leaf-profile closure to the coefficient grammar before constructing anything.
D. Count semantic cells first. Never enumerate any over-cap cell or slice
it artificially. Use original-source Lean certificates for every cutoff in
any cell declared closed.

## 3. Selective root repair and implementation
The firstopj nearest-variable repair extends without a stream lambda: at
absolute depth h>0 use the nearest binder, and at h=0 use c. Every replacement
costs 2. Erased labelled j leaves are never redexes; replay their finite
normal-order reductions, keeping the unique source colour in the zero output.
All erased residuals take their replacements with them. The same retained
colour works for every unary length. This is handwritten residual replay;
Prices.lean kernel-checks the syntax/price, not existence of the replay witness.

For R=(lambda x.B) A Cs with j only in A, m=uses_x(B), M=sum use depths,
f=occ_c(A), b=occ_c(B), original hole depth dA, retained use depth e:

    repaired_delta = (m-1)*(W(A)-4*dA)+(f-1)*M+4*e-6-b.

The source-lambda change is (m-1)L(A)-1. Using e<=min(M,L(B)) gives a
conservative necessary minimum filter; the actual surviving copy need not
be the deepest. The same arithmetic applies to any local redex with outward
ordinary captures in f,b. No nonlinear j-copying let is subjected to the
ordinary one-hole contraction filter.

On a general exposed endpoint, savings improve from sum(3h-2) to sum(4h-2).
The copied-hole witness from rootnf repairs to the canonical 46 reader by
using the innermost absorber variable (the c repair only reached 48).
A bound on *total expansion* is still missing; the improved savings alone
are not such a bound.

The coefficient grammar adds eta, local leading-lambda sinking, selective
repair, vacuous A-chain argument replacement, and the already closed
L=3,V=m+5 profiles. Independent raw-generation audit through cost 18:
12,775 raw terms, exact equality of all retained syntax sets (grammar_audit.json).
It compares actual beta contracta and explicit alternative j repairs.
Four-use/depth-zero count 188,718; largest natural cell 84,951. Initial
checks used eager NF; after the first two costly cells (95.7 and 14.2 s),
the checker was changed to compare weak heads against the target recursively.
Each mismatch is permanent under beta; no cutoff is treated as a failure.

## 4. Existing semantic closures added to count-only boundary
`boundary.py` keeps the checked grammar unchanged (checks are for larger
safe envelopes) and strengthens its coefficient sums as follows.
- If B=lambda y1..yp.D, Ci is certainly consumed by yi, for i<=min(p,t).
  When yi is unused, Ci must be literal c: replacing any more expensive
  j-free Ci by c preserves every law. If Ci were the unique j, zero loses
  it. For d=0, a literal Ci=j in that prefix is already excluded by the
  root lane's head-chain result at every multiplicity. We do not apply
  that head-chain theorem to copied A binders.
- When p=t+1, lift/expose the actual stream lambda; delta=F(A)+F(Cs)+
  (t+1)*uses_stream - k - sum uses_other_prefix. If t=0 or1 and
  A=lambda y.y D W, the lifted syntax belongs to P1/P4. Their unconditional
  46 bounds apply whenever w+delta<=45, regardless of endpoint minimality.
  We do not transport a minimum-only lambda-rooted bound at a depth tie.
The remaining count cells are indexed by hole location, B head type,
pending arity, A's literal lambda-chain length. They are semantic source
shapes, not arbitrary chunks or weight slices.

## 5. Source-level self-feeding cut
Let A=lambda z.z D Qvec where D is a nonempty application tree over z.
Every nontrivial application tree over A, with any pending arguments, has no
weak-head normal form. On A T, with T an A-tree, one head beta yields
T D[T/z] Q[T/z]; both T and D[T/z] remain A-trees. Strong induction on a
hypothetical finite weak-head clock, with structural descent through a
function subtree, gives a contradiction. This does not require closed A,
normal payloads, minimality, a reader, or either law. Replicator.lean encodes
this general theorem; the coefficient-only boundary uses its literal first
operand subfamily B=x x Pvec, A=lambda z.z z Qvec.

The strengthened boundary also applies two already closed root subfamilies:
full A chains binding every remaining argument and the stream when j is a
literal pending/body operand, and the Delta-root h=2, z-headed body family.
For depth-zero pending forests without any lambda, rigid shielding forces
j to be a literal forest operand; no guessed hidden-j normalization is used.
Counts retain arbitrary nested-redex hand-offs not covered by these shapes.

## 6. Certified strict-context transport
After the mixed-cycle pass left 803 explicit sources, a useful semantic
compression closed another 145. If G=lambda z.z Qvec, then G strictly demands
its argument's weak-head normalization. Thus head-divergence propagates
through `G []` and through function-position application, with arbitrary
pending payloads. `Strict.lean` defines explicit certificates closed under
those operations and finite beta replay; `bad_no_count` proves their
soundness by finite weak-head clocks. Five helper self-application cycles
cover 145 larger original readers. They are not treated as loops in an
irrelevant argument: each surrounding application has a checked strictness
or function-position justification. The search inspected only 30 helpers,
25,862 rewrite states and 20,528 structural states, about 1.15 seconds.
The new source-level replicator theorem is a kernel specialization of the
shared lane's self-feeding principle, with arbitrary payloads and finite-clock
proof; the selective repair extends the firstopj mechanism.
