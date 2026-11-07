(•̀ᴗ•́) **The unrestricted reader bound 46 remains open.** This lane proves
new source-count exclusions and extends the serial-reader argument, but does
not prove 162-optimality or construct a reader of weight at most 45.

All files written by this lane are under `tmp/round3/prove46/`. No other
agent was consulted. No term sweep was run. The supplied universal reader
floor remains 30, with the same handwritten coverage boundary recorded in
`floor/STATE46.md`; the interpreter-class interval remains [146,162].

The new results are:

- A minimum-leaf application-rooted reader has a linear first head
  contractor. Combining its exact capture cost with hole hoisting excludes
  **151 of the supplied 1,098 arithmetic count rows**, leaving **947**.
- An unbounded one-callback application theorem is now kernel-checked,
  including source redexes around the callback. It gives a precise semantic
  extension to nonliteral one-lambda selectors.
- The literal serial allocation with **two lambdas in D and two in E**
  has the sharp bound **w >= 52**. This uses the supplied handwritten
  two-lambda arm theorem; the new semantic implication is in Lean.
- The two-lambda factory `H_c = lambda x. x (lambda q.c)` specializes to
  both `I` and `K c`. It refutes an unrestricted claim that those roles
  cannot share code. The explicit reader made with it has weight 75 and
  beta-reduces to the known weight-46 reader.

## 1. Interpreters and fixed constructions

**No complete interpreter was assembled.** There is no new battery or
polish result, and no sub-162 claim. Two reader refactorings were checked
directly against the existing reader by beta reduction, rather than by a
finite set of reader inputs.

Write

    I = lambda a.a
    F = lambda a b.b
    E = lambda u.s (lambda q.c) (s s u)
    R162 = lambda s.s I E j.

The first refactoring is

    R52 = lambda s.s (lambda a.(lambda b.b) a) E j.

It has weight 52 and contracts to R162 in one step. It attains the new
literal (2,2) serial bound below. This is an expansion of an existing
reader, not a new interpreter algorithm.

The shared factory and its three exact identities are

    H_c = lambda x.x (lambda q.c)
    H_c F ->* I,
    H_c I ->* K c,
    H_c H_c ->* c.

Proof: writing `C = lambda q.c`, these are respectively `F C -> I`,
`I C -> C`, and `H_c C -> C C -> c`, after the outer factory contraction.
The full reductions take two, two, and three normal-order steps.

An explicit reader that shares this factory is

    lambda s.
      ((lambda h. s (h F) (lambda u.s (h I) (s s u))) H_c) j.

It has weight **75**, and five normal-order steps yield R162. Its source
is in `shared-factory-reader.txt`. The factory itself costs 13 bits in
the frame [s,c]; E costs 28, and the expanded identity in R52 costs 10.

`ReaderFacts.lean` kernel-checks all five exact beta reductions and these
prices, using the supplied sound normal-order stepper. `factory_check.py`
generates only those five specified equalities; it searches no source terms.
The identities establish a real sharing mechanism, but this instance is
too expensive to improve the reader.

## 2. Application-rooted minimum-leaf exclusions

Use the notation and independent reader laws of `STATE46.md`. Choose a
counterexample lexicographically minimizing **weight, source lambda count,
then hole depth**. The third tie-break is needed only for the combined
contraction/hoisting argument. The exclusions concern such a minimum;
they do not assert that every source with an excluded count profile is an
incorrect or nonexistent reader.

Suppose its root is an application and `V=f+5`. The supplied source lemma
gives at least three live binders. There are exactly four bound-variable
leaves, since c and j account for f+1 leaves. Every reader has a nonlinear
binder, so the four bound leaves are distributed **2+1+1**: exactly three
live binders and exactly one nonlinear binder.

Write its first head redex, including the remaining spine, as

    R = ((lambda x.B) A) A1 ... Ak.

This redex exists because a rigid-headed reader cannot satisfy the zero
law. It cannot erase x in a minimum. If it consumed the sole nonlinear
binder, every binder left in B, A, and the pending spine would be affine.
Copying affine A would still leave an affine reader, contradicting
`reader_nonlinear`. Therefore **x occurs exactly once**. Its contraction
preserves the single source hole and removes exactly one source lambda.

These two facts are proved in `MinimalLeaf.lean` as
`minimum_leaf_nonlinearity`, `first_contractor_linear`, and
`linear_head_removes_one_lambda`. They use only the zero and length-one
reader instances. The minimum-source nonerasing and three-live-binder
lemmas remain the supplied handwritten inputs.

Let D be the number of lambdas in B above its unique x. That leaf's
zero-based index is D, so `D <= X`. Filling j with a term having four free
references converts weighted reader comparisons into ordinary wire
comparisons, with the same constant on both sides. The exact linear delta is

    delta = w(R') - w(R) = (F_A-1) D - 6 - F_B.              (1)

Here F_A and F_B count the free references of the filled argument and body.
`filled_wire_implies_weight` checks the weight bridge; the underlying
`linear_beta_delta` is existing Lean. Pending spine arguments cancel.

If j is outside A, then `F_A <= f` and `D <= min(X,L-1)`, hence

    delta <= outside = (f-1) min(X,L-1) - 6.               (2)

If j is in A, that argument contains at least d lambdas. Thus
`F_A <= f+4`, `D <= min(X,L-1-d)`, and

    delta <= inside = (f+3) min(X,L-1-d) - 6.              (3)

Whenever both bounds are nonpositive, contraction contradicts either the
minimum weight or, at equality, the minimum lambda count.

There is a stronger move when j is in A. Split the c leaves into f_A in
A, f_B in B, and f_C in the remaining spine. After contraction the hole
has depth d+D. Apply the existing exact hoisting identity to R':

    w(H(R')) - w(R') = 6+f-3(d+D).

Combining this with (1) gives the **exact** identity and upper bound

    w(H(R')) - w(R)
      = f_A D + f_A + f_C - 3d
      <= f(D+1) - 3d
      <= hoisted = f(min(X,L-1-d)+1) - 3d.                 (4)

`contraction_hoist_delta` and `contraction_hoist_bound` check this arithmetic
in Lean, and the runner also recompiles the existing `ReaderHoist.lean`.
The transformation removes one lambda and then adds one, preserving L.
For d>0, nonpositive (4) contradicts minimum weight or, at equality, the
third tie-break, since the new hole has depth zero.

Finally, when L=3, the linear reduct has exactly two source lambdas.
The supplied all-size two-lambda floor is 50. Thus the additional condition

    w + max(outside,inside) < 50                           (5)

also excludes the profile. In particular this removes **every d=1,L=3,
V=f+5 application-rooted row**: its budget gives f<=4; if j is in A then
D<=1 and delta<=1, and otherwise D<=2 and delta<=0. The reduct would have
weight at most 46. The local inequalities for these two cases are in Lean;
the universal two-lambda floor remains a handwritten dependency.

`refine_counts.py` implements only (2)--(5), conditional on `V=f+5`.
It reads the supplied integer inventory, expands its X intervals, and
records every retained and removed row in `count-refinement.json`.
The complete retained inventory is in `COUNTS.md`.

| Depth | Removed application-rooted rows |
|---:|---:|
| 0 | 44 |
| 1 | 88 |
| 2 | 19 |
| Total | 151 |

All application-rooted depth-two rows with `V=f+5` are removed, including
all five f=3 application-rooted rows. No lambda-rooted arithmetic profile
is removed. **1,098 - 151 = 947** profiles remain in the supplied inventory.
These are arithmetic profiles, not counts of candidate terms. Full source
coverage and the translation to the local F_A/F_B/D bounds are handwritten;
there is no Lean theorem of the whole profile exclusion or of bound 46.

## 3. One callback: an unbounded semantic theorem

`OneCallback.lean` extends `RoleAlgebra.lean`. Its atoms are the long input
`U_n`, F, and rigid parameters. A flat callback is `H=lambda x.B`, where B
is an arbitrary application tree over those atoms and x. A marked expression
is an arbitrary application tree over the atoms and **at most one source
occurrence of H**. H may be in function position, so source redexes are
included, and x may occur nonlinearly in B.

For every such expression and every n above an explicit source-dependent
bound, `marked_value` produces a reduct which is either the same bare H or
one of

    U_(n-k), F, I, W=lambda _.N, or a rigid-headed neutral.  (6)

The offsets k are bounded by the defined source charges. Neutral arguments
need not be normal; their head is rigid and permanent.

The proof is structural induction, not enumeration. Data/data applications
use the existing value table. Data applied to H either erases it, forwards
the same H, activates it on F followed by a long tail, or keeps it under a
rigid head. When H is the function, its argument contains no H; normalize
that argument into (6), then substitute it into the flat body. Nonlinear
uses of x only copy data values. The forbidden case of a callback in both
children is ruled out by the single-source-occurrence hypothesis.

`marked_finish` proves that one further data argument activates any surviving
H and leaves only (6). `value_trailing_hole` proves that no value in (6)
can take a later rigid j and return `c U_(n-1) N`: functional data have no
c, while a c-headed neutral retains the wrong final argument j.
`one_callback_trailing_hole` combines these results.

All four are kernel-checked quantified theorems, with no fixed input-length
cutoff and no normalization-fuel assumption. They do **not** cover an
arbitrary number of copies of H, several interacting source callbacks, or
a callback whose body contains another source lambda.

## 4. Serial readers beyond the supplied literal four-lambda case

Throughout this section the literal outside context is `lambda s.s D E j`,
with D and E free only in s,c. Its exact weight is `14+|D|+|E|`, using the
actual reader frame for the operand prices.

### Nonliteral one-lambda selector

Suppose D is not a literal abstraction and has at most one source lambda.
There is no literal F among its source atoms. `SerialSelectors.lean` proves
that such a D reduces, at every sufficiently large n, to a value in (6)
other than F. The smaller no-F algebra and a structural induction ensure
that an application surrounding its sole callback cannot retain that
callback as a bare function or manufacture F.

The theorem `nonliteral_selector_forces_arm` then proves, for **arbitrary E**,

    U_n D E j =beta c U_(n-1) N
       implies E j =beta c U_(n-1) N.                     (7)

It checks each possible selector value. Only a prefix reducing to I can
succeed; W and suffix-headed values lose c, and other neutrals keep the
final j. If D has exactly one lambda, its nonliteral source has at least
one application and price at least 8. For a literal two-lambda E, the
supplied eventual-input arm bound `|E|>=28` therefore gives **w>=50**.
This source-price corollary is handwritten; (7) is kernel-checked under
the marked-expression representation, whose source translation is a
straight syntactic decomposition.

### Two literal lambdas in each operand: sharp 52

Let D and E both be literal abstractions containing exactly two source
lambdas each. Source redexes inside them are allowed. Contracting their
outer binders on F leaves an expression with at most one flat callback:
the representation used in section 3. No callback is copied by this
substitution, since the substituted F is closed and contains no source
callback.

Apply `marked_finish` to `D F U_(n-1)`. Its value G lies in (6). For
`G E j` to produce the target, `data_prefix_result` proves **G=I** and
forces (7). A stream-valued G would invoke `E F` on another long tail,
and the one-callback theorem then forbids the trailing j; the other
non-I cases fail directly. `serial_two_callback_forces_arm` packages
the whole semantic implication in Lean.

The supplied arm theorem consequently gives `|E|>=28`. D must contain
an application: with two lambdas and no application its complete source
list is `lambda a b.a`, `lambda a b.b`, `lambda a b.s`, or
`lambda a b.c`. Their `D F U_(n-1)` values are respectively F,
`U_(n-1)`, `U_n`, and c, none I. Hence

    |D| >= 2*2 + 4*1 + 2 = 10,
    w >= 14+10+28 = 52.

R52 from section 1 attains equality. The semantic implication and final
arithmetic are in Lean; the source representation, four zero-application
shapes, and the supplied 28-bit arm classification are handwritten.
This settles the **(2,2) allocation** at five total reader lambdas. It does
not settle the (1,3) or (3,1) allocations, arbitrary nonliteral two-lambda
operands, sharing lets, or other outer reader contexts.

The eventual-input formulation of the arm theorem matters. The inherited
finite check at n=1,2,3 alone would not justify this step, since (7) was
derived only for sufficiently long inputs.

## 5. Verification and the remaining proof problem

Run from the repository root:

    python tmp/round3/prove46/verify.py

The final run passed in **5.59 seconds**. It regenerated the five fixed
facts and count inventory, compiled four supplied dependency modules and
the four new Lean modules, and audited 25 theorem dependencies. The only
reported axioms were `propext`, `Quot.sound`, and `Classical.choice`;
there was no `sorryAx` or native-decide trust axiom. `verification.json`
records commands, timings, source hashes, and the audited theorem names.
Every child used at most two threads and had a 110-second timeout; the
longest child took 1.86 seconds. No engine code changed, and no engine
benchmark, corpus enumeration, or exhaustive reader search was run.

The remaining obstacle is still a source theorem, not an arithmetic check.
The 947 retained profiles allow lambda-rooted readers, nonlinear head
contractions with more bound leaves, deeper capture in linear contractions,
and shared callbacks invoked under different arguments. Even the new
one-callback theorem deliberately permits just one source occurrence;
copying the callback is exactly where its structural proof no longer applies.

The factory identities show why a blanket separation of the identity and
constant-continuation roles is false. A useful next theorem must price
**the complete sharing context and its specialization arguments**, or
classify their reachable function values while preserving source cost.
Pricing two separately expanded callback bodies does not prove that bound.
Likewise, ruling out all five-lambda serial readers requires the still-open
(1,3) and (3,1) splits, not just the (2,2) result proved here.

My assessment is that the callback value invariant is useful for extending
the literal serial theorem, while the combined contraction/hoisting identity
is useful for eliminating source profiles. Neither currently connects all
arbitrary sources to that serial form. No universal weight-46 conclusion
is justified by this lane.
