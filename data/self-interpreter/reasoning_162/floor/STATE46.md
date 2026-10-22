# State of the weighted reader bound 46

## Problem and scope

Use Scott cells `cons b r = lambda f.f b r`, bits `K=lambda x y.x`
and `F=lambda x y.y`, `Z(r)=cons K r`, and `U_n(N)=1^n 0 ++ N`.
The free names c,j,r,N are independent rigid variables. A reader R has
free names among c,j, exactly one source occurrence of j, and satisfies

    R Z(r)   =beta r j,
    R U_n(N) =beta c U_(n-1)(N) N,       every n>=1.

R is arbitrary source syntax: redexes, lets, and subsequent duplication of
the single hole are allowed. In the frame [c,j] (nearest first), price the
j leaf at zero and every other node at its ordinary BLC length. If d is
the number of reader lambdas above j, the target is

    w(R)=cost(R)+4d >= 46.

It remains **open**. The best result here is **w>=30**, hence **146 bits**
for the interpreter class in `floor138.md`; the 162 attains w=46. That
class requires a separate beta-normal NEXT satisfying independent rigid
branch laws and an opaque beta fixed-point context. These separator
hypotheses have not been derived from general interpreter correctness.
Its exact optimization identity is `min interpreter bits = 116+min w`.

## Established conclusions and evidence boundary

All source classifications below are **handwritten and not independently
reviewed**. Kernel checks support the specifically identified components;
there is no Lean theorem of the full 30 or 46 reader bound.

- Every reader has a nonlinear source binder and at least two live source
  binders. The one-lambda application algebra excludes every one-lambda
  reader, without a size bound or j-multiplicity restriction.
- A minimum reader has no erasing source redex. A minimum
  application-rooted reader has at least three live source binders.
- **w>=30.** Handwritten source classification reduces the sub-30 case to
  3,484 beta-normal candidates; `ReaderChecks.lean` proves each explicit
  non-joinability refutation. Its grammar coverage is handwritten.
- **Every two-source-lambda reader has w>=50**, and has the literal shape
  `lambda s.s D ((s s) A)` with its j at depth two. This all-size structural
  theorem permits multiple j occurrences; the 50 price specializes to one.
  In particular every sub-46 reader has **L>=3**.
- **Hole hoisting is exact:** for f source c occurrences,

      H(R)=(lambda a.R[a/j]) j,
      w(H(R))=w(R)+6+f-3d.

  `ReaderHoist.lean` proves the general weighted identity, beta contraction,
  and one-hole preservation. Depth>=5 already has w>=46. Every counterexample
  at depth 3 or 4 gives a depth-zero counterexample of no larger weight.
  At depth two hoisting adds f; only `w<=45<w+f` needs separate treatment.
- At d=1, **lambda-rooted** L=3 minimum counterexamples are either normal,
  or have a nonlinear source redex copying their only other inner lambda.
  Every linear redex and nonlinear redex with a lambda-free argument has
  been excluded. The copied lambda has no free source j. This restriction
  does not assert the same for application-rooted d=1 readers.
- At d=0,L=3, the first head contractor must be nonlinear. There are two
  nonlinear binders and a third live binder; hence V>=f+6 and f<=4.
- At d=2 a minimum counterexample has f<=3. The two further lambda-rooted
  rows `(L,V,X,f,w)=(4,7,3,3,43),(5,7,3,3,45)` are excluded by a zero-input
  block argument. The 92 older fixed callback reductions are in
  `Depth2Cases.lean`; seven block identities are in `ShallowFacts.lean`.
- **The 162's literal serial form is sharply priced when L<=4:** for
  `lambda s.s D E j`, with D,E literal abstractions free in s,c, one lambda
  in D and two in E force E>=28 and w>=46. A flat E with at most two lambdas
  in D is impossible. These role arguments allow source redexes in the
  two-lambda callback and do not assume D=I. They do not classify other heads
  or more-lambda serial readers.
- **Sharing one callback of at most two lambdas cannot implement that
  serial form:** `lambda s.((lambda h.s h h) D) j` is impossible when D is
  a literal abstraction with at most two source lambdas, even at unbounded
  size. This is a semantic exclusion, not a charge for two expanded copies.
  Specializations with different arguments remain open.

The last two results are handwritten in `role-pricing.md`. `RoleAlgebra.lean`
checks their unbounded unary application algebra and final arithmetic, not
their full source-role proofs. These semantic filters do not remove entire
integer count rows: the same rows still contain other source shapes.

## Complete remaining count families

Choose a minimum-weight counterexample and then the fewest source lambdas.
Let L count lambdas, V leaves including j, f free c occurrences, and X the
sum of zero-based indices of all leaves except j. Then

    w=2L+4V-4+X+4d,       f>=1,       L>=3.

A lambda-rooted reader has `V>=f+4,X>=f`. An application-rooted minimum
has `V>=f+5,X>=0`; at d=0,L=3 use `V>=f+6` instead. The following are
**all remaining necessary arithmetic count rows**, parameterized compactly.
k is any nonnegative integer for which the displayed X interval is nonempty.
Impose `30<=w<=45` throughout. These are source families, not individual
candidate counts; some rows may contain no realizable source shape.

| Family | L | f | V | Allowed X |
|---|---:|---:|---:|---|
| d=0, application, first head nonlinear | 3 | 1..4 | f+6+k | 0..(19-4f-4k) |
| d=0, application | 4..12 | 1..floor((29-2L)/4) | f+5+k | 0..(29-2L-4f-4k) |
| d=1, lambda | 3..12 | 1..floor((29-2L)/5) | f+4+k | f..(29-2L-4f-4k) |
| d=1, application | 3..10 | 1..floor((25-2L)/4) | f+5+k | 0..(25-2L-4f-4k) |
| d=2, lambda, additional strip | 3..10 | 1..3 | f+4+k | max(f,26-2L-5f-4k)..(25-2L-4f-4k) |
| d=2, application, additional strip | 3..8 | 1..3 | f+5+k | max(0,22-2L-5f-4k)..(21-2L-4f-4k) |

Delete the two excluded depth-two triples listed above. The d=1,lambda,L=3
row splits into normal source and a nonlinear redex copying the other inner
lambda; L>=4 has no such normality/compression restriction yet. All other
rows retain arbitrary nonerasing redexes. The non-lambda rows at d=1 must
not be silently discarded: hole depth alone does not make R lambda-rooted.

`STATE46-counts.md` expands this table into every (d,root,f,L,V,X) row,
grouping contiguous X intervals. `state_count_rows.py` generates only integer
budgets, never terms or reduction traces. The table's completeness is the
displayed size identity and live-leaf inequalities, with nonnegative indices;
no search heuristic or source-normality assumption is used for that step.

The additional depth-two strip has only six (f,w) pairs:

    (1,45), (2,44), (2,45), (3,43), (3,44), (3,45).

For f=3 its complete remaining rows are especially small:

| Root | L | V | X | w |
|---|---:|---:|---:|---:|
| lambda | 3 | 7 | 5,6,7 | 43,44,45 |
| lambda | 3 | 8 | 3 | 45 |
| lambda | 4 | 7 | 4,5 | 44,45 |
| application | 3 | 8 | 1,2,3 | 43,44,45 |
| application | 4 | 8 | 0,1 | 44,45 |

These are eleven rows. `ShallowFacts.lean` checks their arithmetic coverage
conditional on the semantic/source-count hypotheses. f=1 and f=2 remain
open as expanded in the count file, not just the eleven f=3 rows.

## Techniques and the live obstruction

1. **Paired zero/unary application algebras.** Application-only source over
   s,c,j has only the original cell and its constant square as functional
   values. Its neutral first-argument invariant excludes c U_(n-1)(N).
   Adding the first callback gives a five-value algebra at n=1. These
   structural inductions are valid for every application tree, not a fuel
   claim. `ShallowFacts.lean` checks its 25 table entries.
2. **Rigid neutral residuals.** A normal rigid-headed subterm cannot be
   unpacked. If absent from the target, every copy must be erased.
   `SelfintInert.replace_inert_join` is the existing Lean replacement
   principle. It yields the six minimum application-only operands
   `s,c,j,s s,s s s,s s s j` when no inner bound name is free.
3. **Source binder accounting.** Count owned leaves, c leaves and the hole;
   do not assign disjoint output roles without proving them disjoint.
   Head contraction must leave the required live/nonlinear structure.
4. **Exact capture charge.** For a linear redex, with D_x lambdas above its
   single x and free references F_A,F_B (j weighted four), the delta is
   `(F_A-1)D_x-6-F_B`. Affine normalization can increase wire length.
   The existing `SelfintWireCost.linear_beta_delta` and new Lean inequalities
   support the handwritten minimality exclusions.
5. **Hoisting** transfers deep-hole cases to depth zero at its exact price.

The unresolved mechanism is **sharing code between roles in other contexts**. The 162 reader

    lambda s.s (lambda a.a)
      (lambda u.s (lambda q.c) (s s u)) j

has cost 42, d=1, L=4. `role-pricing.md` now proves the sharp price in the
literal serial class above and excludes sharing the same flat or two-lambda
callback in both serial positions. A different reader can still specialize
a shared callback under different arguments, change the outer context, or
use more source lambdas. No general role-separation theorem, normal-form
price transfer, or unrestricted depth-one floor 42 has been proved.
A successful cheaper construction would refute 46 for this class and
assemble directly to an interpreter.

## Evidence map and reproduction

- `floor138.md`: exact class, opaque NEXT/knot composition, all-size small
  structural obstructions, and the exact optimization identity.
- `reader30.md`: floor 30, source classification, hoisting, depth reduction.
- `shallow-readers.md`: two-lambda floor 50, shallow compression reductions,
  and the remaining three-c strip.
- `role-pricing.md`: unbounded function barrier, the sharp L<=4 serial class,
  and the shared-callback obstruction.
- `REPORT.md` sections 4-7: accumulated results and their verification limits.

Existing successful checks: `ReaderChecks.lean` (3,484 refutations; 25.28 s),
`ReaderHoist.lean` (general identity), `Depth2Cases.lean` (92 fixed clauses;
0.48 s), `ShallowFacts.lean` (42 reductions with normality, three general
capture inequalities, two arithmetic inventories; 1.35 s). Timing is from
the recorded runs, all at two threads or fewer. The relevant `*-kernel-check`
JSON files record results and hashes. Full classifications remain handwritten.
`RoleAlgebra.lean` additionally checks the mixed diagonal for every pair of
lengths and the flat-expression value theorem for every sufficiently long
input (0.30 s), with its source hash in `role-algebra-kernel-check.json`.

Run Lean from `lean/` with the repository's pinned toolchain:

    LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
      lean -j2 /Users/a9lim/Work/blam/tmp/round3/floor/ShallowFacts.lean

No new interpreter was constructed in this lane; no battery/polish claim
accompanies these bounds. Write only under `tmp/round3/floor/`, use at most
two threads, keep every run under two minutes, and do not run term sweeps.
