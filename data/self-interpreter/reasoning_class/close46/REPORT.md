# close46: sharing obstructions and exact source costs; 46 remains open

**Neither requested endpoint was reached.** This lane does not prove
`w(R) >= 46` and does not construct a reader of weight at most 45. No
complete interpreter was built, spliced, battery-tested, or polished.
The supplied general floor remains 30, and no entire row of the 947-profile
inventory is claimed removed.

The first result is a **kernel-checked exclusion of an unbounded sharing
family**. It handles arbitrary application structure, arbitrarily many
copies of shared factories, and different specialization arguments at every
use, without assuming disjoint source roles. A second result gives a
concrete obstruction to extending that invariant to arbitrary callbacks.
Section 6 adds exact source-cost and minimum-reader theorems at arbitrary
redex positions, including nonlinear sharing of the source hole. Section 7
adds a complete flat-argument semantic reduction and a capture-saving let
transformation that permits arbitrary nonlinear definitions. Sections 8-9
close the local and root specialization families s(g P)(g s)j for arbitrary
P built from g and s, and price the remaining leading-lambda body shape.

All files are in `tmp/round4/close46/`. No other agent was consulted, no term
sweep was run, and no tracked project source was changed.

## 1. The whole-context theorem

Put

    C_m = lambda x1 ... xm. c       (C_0 = c),
    H_m = lambda x. x C_m.

Let `e` be **any finite application tree** whose atoms are

    s, I, F, independent rigid parameters, C_m, H_m   (any m >= 0).

There is no bound on its number of atoms, applications, copies of a factory,
or number of different factories. In particular, the same H_m can appear
in both children of an application and can receive different arguments.
Let A be the number of applications in this tree, counting the atoms as
atoms. Then:

> If `e[Z(r)/s] =beta r j`, then, for every `n >= A+2`,
> `e[U_n(N)/s] !=beta c U_(n-1)(N) N`.

This is `factories_cannot_read` in `ClosureBarrier.lean`. It is an
unbounded structural theorem, not an evaluation up to A+2 or a finite
sample argument. A+2 supplies a counterexample input length for every fixed
source expression, and every larger length also fails.

`SharingContext` allows an arbitrary number of occurrences of a bound
sharing variable in arbitrary application positions. `share_reduces` proves
one literal nonlinear let contracts to the corresponding expanded
expression. `sharing_cannot_read` applies the theorem directly to that
source let. Its definition may itself be an arbitrary expression in the
same grammar, not merely a bare H_m. `represented_reader_impossible`
transports the exclusion through any supplied beta-equivalent source
representation, including finite chains of let expansions. This transport
has explicit representation premises; it does not classify arbitrary
readers into the grammar.

The theorem includes the recorded factory

    H_1 = lambda x. x (lambda q.c),
    H_1 F = I,   H_1 I = C_1,   H_1 H_1 = c.

Thus those genuinely shared roles cannot, by themselves, assemble a reader
in any surrounding application context from the listed atoms. An additional
kind of source function is necessary. This is stronger in context coverage
than the old same-callback serial obstruction, but it is restricted in which
callbacks it permits.

### Kernel-checked proof

The proof has two coupled parts.

1. **Unary closure.** For n above the application budget, every expression
   reduces to one of

       U_(n-k), F, I, lambda _.N, C_m, H_m,
       or a rigid-headed neutral.

   The offset k is bounded by the application's structural charge.
   `uvalue_apply` proves closure, and `expr_uvalue` proves the arbitrary-tree
   theorem. For example, `U_(n+1) H_m ->* U_n`; applying an H_m to another
   H_k only gives a smaller continuation tower or a continuation-headed
   neutral. It does not create a function closing over computed arguments
   of c. The general unequal-stream diagonal is inherited from the copied
   `RoleAlgebra.lean`.

2. **Paired zero/unary information.** `Paired` tracks the zero result as
   well as its possible unary result. It deliberately allows a zero
   constant around r or c to have a different unary meaning. However, a
   zero result equal to bare j has unary result equal to bare j. Moreover,
   a zero result `r j` can only come from a rigid application whose final
   argument has zero result j, or from uniform identity forwarding of
   such a result. A stream callback leaves r as its last zero argument;
   H_m leaves C_m as that argument. Neither can be the required bare j.

   The unary evaluation of the successful zero argument must therefore
   still be j at that surviving application. `value_trailing_hole` proves
   that no unary function in the preceding value class can accept j and
   return exactly `c U_(n-1) N`. Constant continuation towers return c or
   another tower; H_m produces `j C_m`; data functions give a data or
   j/N-headed result; a rigid neutral retains j as its final argument.
   `paired_apply`, `expr_paired`, and `paired_bad` finish the proof.

All those statements, including the no-joinability conclusions and explicit
sharing-let contraction, are Lean theorems. No handwritten source-count
hypothesis from round 3 is used.

## 2. A precise failure of a tempting extension

The paired invariant must not be extended indiscriminately to all flat
callbacks. Let

    Delta = lambda x. x x,
    D(s) = s Delta I (s s) j.

The following exact equations are kernel-checked for **all** stated lengths
in `BoundaryAlgebra.lean`:

    Z(r) Delta      =beta K,
    U_(n+1) Delta   =beta U_n,                  n >= 0,

    D(Z(r))         =beta j,
    D(U_1(N))       =beta N j,
    D(U_(n+2)(N))   =beta N,                    n >= 0.

The last line refutes the proposed extension of “bare j on zero implies
bare j on unary” to a grammar also containing Delta. The failure is real
even at arbitrarily long unary lengths. Delta is an 8-bit flat callback;
its zero-input activation also obtains the closed K from input data, so
one cannot automatically charge every use of K as a separate literal K.

Derivation: on zero, `s Delta = K`, so
`D = K I (s s) j = I j = j`. On a unary stream,
`s Delta` is the previous cell. At length at least two that cell applied
to I gives I, leaving `s s j = N`. At length one it is the zero terminator;
`U_0 I = K N`, and the extra j remains, giving `N j`.

An explicit failed reader is

    R_bad = lambda s. s I (s C_1) (s Delta I (s s) j).

It has **w = 56**. Its zero law holds; its unary law holds for every n>=2;
at n=1 its result is

    c U_0(N) (N j),

instead of `c U_0(N) N`. The universal reductions are `near_zero`,
`near_one`, and `near_long`; `near_reader_not_reader` independently proves
failure of the existing Lean `Reader` predicate using n=1 and normal-form
uniqueness. This is not a sub-162 candidate and was not spliced.

`boundary_check.py` checks exactly these two preselected source terms,
D and R_bad, at zero and unary lengths 1,2,3 with rigid c,j,r,N. It generates
eight corresponding Lean reduction theorems, their exact prices, and the
n=1 reader refutation. There is no source grammar generation or hole search.
The open reader sources are `dual.txt` and `near_reader.txt`. The weighted
price of `lambda s.D(s)` is 34; it has no c and is not itself a reader.

## 3. The cheaper factory does not give a free saving

The one-lambda factory

    H_0 = lambda x. x c

satisfies `H_0 F = I`, `H_0 I = c`, and `H_0 K = C_1`.
It costs 10 bits in the operand frame [s,c], compared with H_1's 13.
But K costs 7 and I costs 4, so the two ways of supplying C_1 have equal
factory-plus-argument price:

    |H_0| + |K| = |H_1| + |I| = 17.

Each displayed application costs another two bits. These prices and the
identities are kernel-checked (`factory_selector_price`, `factory_true`,
and the general factory lemmas). This only prices these two specializations;
it is not a general minimum-factory theorem. K is not an atom of the
whole-context theorem, whereas I and F are.

## 4. What remains and where the technique could go

There is **no complete source-cost bridge** from an arbitrary minimum reader to the
proved grammar. In particular it omits:

- nonlinear callbacks such as Delta;
- factories that capture the input stream rather than a fixed continuation
  tower;
- functions that capture computed arguments of c, including the 162's
  `lambda u. s C_1 (s s u)`;
- general nested callbacks and application-rooted sharing that produce
  those functions.

The 162's absorber is outside the grammar; the theorem does not reprice it
or show that every reader must contain it. Nor does this result justify
the general leaf floor V>=8 or the unrestricted j/N operand floor suggested
in refute46. Those still need source provenance or a complete alternative
argument. The 947 necessary count profiles remain an honest description
of the universal gap.

My assessment: paired function-value algebras are a workable way to treat
sharing as a whole; the new theorem is a fully formal example that allows
unlimited specialization and sharing. To reach 46, the next step must carry
source costs through callbacks outside this algebra. Merely enlarging the
set of semantic values is insufficient: Delta already makes the bare-j
invariant false. A useful next invariant would retain the source origin and
cost of the *zero-side K* and of the *unary-side closure or suffix*, and price
the pair together. The n=1 obstruction in D shows that retaining the short
unary instance alongside eventual unary behavior is essential.

No claim of a full decomposition, unrestricted optimality, or a global
sub-162 obstruction follows from these results.

## 5. Reproduction and verification

From the repository root:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/close46/verify.py

The final verification passed all **24 child runs in 17.85 seconds**; the
longest child took **2.37 seconds**. The runner compiles twenty-two Lean
modules, regenerates the eight fixed boundary probes, and records exact
commands, source hashes, timings, and logs in `verification.json`. Every
Lean invocation uses `-j2`; each child has a 110-second timeout. The five
new modules for section 7 are `FlatSemantics.lean`, `FlatMinimum.lean`,
`RootFlat.lean`, `FlatPrefix.lean`, and `LetSink.lean`; section 8 adds
`HelperPair.lean` and `ClosedSpecializer.lean`. The latter two include the
structurally complete helper cases and exact canonical-reader reductions.
Section 9 adds `LambdaSink.lean`, `SourceBody.lean`, `StreamHelpers.lean`,
and `StreamSpecializer.lean`; section 10 adds `NeededHead.lean` and
`NestedLets.lean`. All proof modules and the copied `ReaderHoist.lean` dependency stay in this
lane.

Audited dependencies are `propext`, `Quot.sound`, and `Classical.choice`.
There is no `sorryAx` or native-decide trust axiom. The structural helper
classifications and source-head alternatives use only `propext` and
`Quot.sound`. No interpreter battery was needed: no new algorithm was
built, and the two known successful helper expansions are proved
beta-equivalent to `reader162`. The near-readers are proved incorrect. No
engine test or census was needed: this lane changed no engine or canonical
artifact.

## 6. Source-cost bridge: exact local transformations, bounded first redexes

**New kernel-checked progress, still short of 46.** The first source head is
classified completely, and every possible source redex has an exact
weighted cost balance. Minimum-reader consequences now apply inside the
stream lambda and inside callbacks, as well as at the root. The remaining
arguments are bounded in size, but are not classified into the paired
value grammar. No whole count profile is claimed removed.

### 6.1 The minimum is over the full laws

`SourceCost.ReaderLaws` requires the independent zero law and the unary law
at **every** length. `MinimumReader` adds exactly one source j and minimum
weight among all terms satisfying those full laws. `LexMinimumReader`
adds minimum source lambda count at equal weight. Thus none of the minimum
arguments minimize over only the two probes in `SelfintClass.Reader`.

Beta contraction and the hoist preserve these full laws in Lean. Where two
probes already imply a source obstruction, `ReaderLaws.probes` explicitly
maps the full laws to the existing two-probe predicate. No unproved
three-live-binder or two-lambda-50 result is used in these new theorems.

### 6.2 Exact weighted beta balance at every source position

Choose any source occurrence of `(lambda x.B) A`, under d surrounding
lambdas. Set

    m = occurrences of x in B,
    D = sum of local lambda depths of those x occurrences,
    h_A = occurrences of the source hole in A,
    h_B = occurrences of the source hole in B,
    F = freeLeaves(A) + 3 h_A,
    G = outerFreeLeaves(B) + 3 h_B.

Here the free-hole indices in A and B are respectively d+1 and d+2;
`outerFreeLeaves(B)` excludes x. F and G count a j occurrence as four
captures and every other free occurrence as one. Let `w_d(A)` be A's
weighted contribution in this original source position, including the
hole's ambient depth tax. Then

    w(after) - w(before)
      = (m-1) w_d(A) + (F-1) D - 2m - 4 - G.             (6)

`LocalCost.weighted_beta_at` proves the local identity, and `weighted_fill`
proves that all surrounding context costs cancel. The underlying depth
substitution formula also counts arbitrary copied occurrences; it does not
assume that m=1. These statements permit arbitrary redexes in A and B.

The weighted expression remains meaningful with multiple holes. Direct
minimum-reader comparison is used only when contraction preserves the one
source hole. Consequences proved in the same file:

- `minimum_source_non_erasing`: **no source redex in a minimum reader has
  m=0**, at any source position. If A owned j, erasure would violate the
  zero law; otherwise (6) strictly decreases weight.
- `minimum_linear_source_charge`: every remaining linear source redex
  satisfies **(F-1) D >= 7+G**. Linear contraction preserves the source hole
  and removes exactly one source lambda. Consequently even equality of
  weights is excluded by the secondary minimum; the increase must be at
  least one bit. The corollary `minimum_linear_source_not_shallow` excludes
  every such redex with F<=7 and D<=1.
- `minimum_source_sharing_charge`: if A contains no source j, contraction
  preserves the class even for nonlinear m. Its complete right side in
  (6) must therefore be nonnegative. This charges the sharing let once,
  including all capture shifts, rather than charging expanded copies as
  independent source roles.

This does **not** show that all linear source redexes disappear. A deep
capture can satisfy the strict charge. Proving that its semantic role is
unnecessary or that another transformation is cheaper remains substantive.

### 6.3 Copying j: restore one hole before using minimality

A nonlinear contraction can duplicate the unique source j. Applying
minimum-reader arguments directly to that reduct would be invalid. The
repair is to hoist **all** its copied holes together:

    H(T) = (lambda h. T[h/j]) j.

For arbitrary hole multiplicity, scope free in c,j,

    w(H(T)) + count_j(T) = wire(T) + 4 + count_c(T).       (7)

`hoist_wire_price` proves (7); `ReaderLaws.hoist` proves the full reader
laws and exactly one source hole after the transformation.

For a root first redex with pending operands,

    R = ((lambda x.B) A) C1 ... Ck,

suppose A contains the source j. Put d_A=depth_j(A), f_A=count_c(A), and
f_C=sum of the c occurrences in the pending operands. Let R' be the
head reduct. Then the complete exact price is

    w(H(R')) - w(R)
      = (m-1)(wire(A)-3) + f_A(D+m) + f_C - 3 d_A.        (8)

This is `contract_hoist_price`, with no linearity or source-normality
assumption. `minimum_argument_charge` proves that the right side must be
nonnegative in a minimum reader. The m=1 specialization is the round-3
contraction-plus-hoist identity, now obtained inside a statement valid for
all multiplicities. Formula (8) prices the whole sharing context even when
j has different roles at different uses.

### 6.4 A complete first-source-head classification and its budgets

`SourceFront.reader_source_head` proves that **every reader source**, with
no minimum or normality premise, has one of these literal shapes:

    lambda s. s A1 ... Ak,                               (S)
    ((lambda x.B) A) C1 ... Ck,                          (R)
    lambda s. ((lambda x.B) A) C1 ... Ck.                 (B)

The scope and zero law exclude a rigid c/j head or a second leading lambda.
This is a source-syntax theorem; it has not normalized any redex or assumed
normalization is cheap. In a minimum, (R) and (B) have m>=1 by the source
non-erasure theorem, and m=1 must obey the strict linear charge in §6.2.

For w<=45 the nonlinear cases obey these **kernel-checked** bounds on their
original source arguments. Write L_B for the source lambda count in B:

    (R), j absent from A:
        wire(A) + D + 2 L_B + 4m <= 43;
    (R), j in A:
        wire(A) + 3 d_A + D + 2 L_B + 4m <= 46;
    (B), regardless of the hole's position:
        wire(A) + D + 2 L_B + 4m <= 41.                  (9)

The last bound is a specialization of `LocalCost.nested_argument_budget`,
which holds at every source position under d>=1 lambdas, replacing 41 by
43-2d. The root bounds are `nohole_argument_budget` and
`hole_argument_budget`.

The root case has **m<=7** (`reader_head_multiplicity_le_seven`). Its
contracted reader still needs a nonlinear binder, so B, A, or the pending
spine must contain one in addition to the contractor. Charging that binder,
all m uses, and the required c,j gives the cap.

The body case has **m<=6** (`body_head_multiplicity`). The source needs at
least three lambdas: with only the stream binder and the contractor,
contraction would leave a one-lambda reader, excluded by the existing
kernel theorem. The live stream binder plus c,j and the m contractor uses
then give enough leaf and depth charge for the sharper cap.

Dropping the nonnegative D+2L_B terms, the nonlinear argument families are:

| m | Root, j absent: wire(A) <= | Root, j in A: wire(A)+3d_A <= | Body: wire(A) <= |
|---:|---:|---:|---:|
| 2 | 35 | 38 | 33 |
| 3 | 31 | 34 | 29 |
| 4 | 27 | 30 | 25 |
| 5 | 23 | 26 | 21 |
| 6 | 19 | 22 | 17 |
| 7 | 15 | 18 | impossible |

This table is an arithmetic presentation of the universal source theorems,
not a term sweep. Root arguments are in frame [c,j]; body arguments are in
frame [s,c,j]. Their syntax and internal redexes are otherwise unrestricted.

**What this classification does not prove:** it does not transform every
minimum reader to (S), and it does not identify all A in (9) with a short
list of semantic atoms. The bounds are for the original source. They must
not be re-applied to successive expanded reducts without a proof that those
reducts still have weight at most 45. The positive-cost linear cases and the
bounded nonlinear arguments are the remaining source-cost problem.

### 6.5 Audit of the jn argument

The live jn notes now explicitly retain general source redexes and several
other dispatcher families as open. Its finite core/arm results remain
computer checks, with some fuel/size capped cases accounted for separately;
this lane read the scripts but did not re-run their enumerators or produce
Lean certificates for those inventories.

One intermediate statement in jn §7 needs a small repair. When j is in A2,
the K-family budget gives |A2|<=2. The notes say this forces A2=s, with no j.
In fact **A2=j is the allowed zero-price operand**. It still fails: the
zero branch is j-headed and cannot be r j. `DispatchAudit.tiny_j_operand`
proves that literal j is the only one-hole operand at this price, and
`j_head_fails_zero` proves the rigid-head contradiction for every pending
argument list. Thus this repair preserves that branch's conclusion; it is
not a counterexample to the claimed K-family lower bound.

### 6.6 Remaining research decision

No sub-46 reader or complete interpreter was constructed in the follow-up;
there is no new splice, battery, or polish result. The 46 bound remains
open. The new cost bridge is exact but local: it tells us which source
sharing can survive minimum-weight normalization, not that every surviving
argument is semantically inadequate.

The next useful theorem would dominate or exclude the source arguments in
(9), while retaining the joint zero, length-one, and eventual-unary
behavior. The linear capture cases also need an actual transformation or
semantic exclusion. Enlarging the earlier algebra by unsupported source
coverage, treating the first dispatch as an additive source decomposition,
or silently accepting a capped normalization as failure would not finish
that step.

## 7. Semantic source reductions and capture-saving let sinking

**All the claims in 7.1–7.5 below are kernel-checked.** They do not depend on
jn's finite core or dispatcher classifications, the handwritten
`two-lambda >= 50` theorem, a source-leaf floor, or a bounded normalizer.
There is still no proof that every first redex disappears. The surviving
forms are listed in 7.6. No reader or interpreter was constructed.

### 7.1 Complete paired semantics for flat arguments

Let A be any lambda-free source tree over `[s,c,j]`, with arbitrary size
and application structure. Its relevant paired behaviors are exactly:

| Source shape | On Z(r) | On U_n(N), n >= 1 |
|---|---|---|
| s | Z(r) | U_n(N) |
| c | c | c |
| j | j | j |
| s s | K r | K N |
| (s s) T, arbitrary T | r | N |
| (s s) T j, arbitrary T | r j | N j |

Every other source shape reduces to a rigid normal block that is absent
from **both** required outputs, including all their shifted subterms.
`FlatSemantics.flat_algebra` retains the exact source shape in every
non-inert case; it is not merely a necessary value-set membership.
`irrelevant_inert` supplies the normality, rigidity and
`SelfintInert.Avoid` certificates needed for contextual replacement. The
proof is induction on application trees and holds at every unary length;
the length-one case is included, not inferred from eventual behavior.

The key closure observations are that application-only code can expose only
the original stream and its square as functions, while a c-headed normal
result never has U_(n-1)(N) as its first argument. Inert application heads
cannot occur inside a Scott stream: all applied heads inside its cells are
locally bound callback variables. The latter fact is proved for arbitrary
bitstreams by `avoid_stream`.

The last row is intentionally **N j**, not N. It cannot be mistaken for a
j/N selector or a correct unary core.

### 7.2 From semantic values to literal source representatives

For a first redex immediately under the stream binder, write

    R = lambda s. ((lambda x.B) A) C1 ... Ct.

The body B and pending C_i may be arbitrary terms, may contain redexes, and
may use x nonlinearly. `FlatMinimum.replace_spine_argument` transports the
inert replacement theorem through this whole context. `laws_body_replace`
then preserves the full zero law and every unary law at the source level.
The source-hole count is handled explicitly: replacements never introduce
extra holes, and correctness forces at least one source j to remain.

Consequently, if R has minimum weight and A is lambda-free, A is literally
one of

    s, c, j, s s, s s s, s s s j.

This is `minimum_flat_argument`. In the suffix cases the erased payload T
must be the cheapest leaf s. That particular replacement permits arbitrary
T, even with source lambdas or redexes. Every other flat source is replaced
by the cheaper leaf s using its inertness certificates.

Under the original budget w(R)<=45 the first two representatives disappear:
substituting s strictly decreases weight at every multiplicity, and
substituting c would require m>=7, contradicting the already checked body
cap m<=6. Thus `minimum_flat_four` leaves precisely

    A = j, s s, s s s, or s s s j,

of weighted source contributions 4, 6, 10 and 16 under the stream lambda.
This conclusion is not restricted to source hole depth one. It applies
wherever the unique j sits in R; if it is absent from A, the other parts
remain unrestricted.

The effective capture count F=freeLeaves(A)+3 count_j(A) of the six-member
basis is at most seven. Combined with the strict linear cost balance,
`no_shallow_linear_flat` rules out m=1 and D<=1. More strongly,
`no_three_lambda_linear` rules out **every linear first body redex when R
has at most three source lambdas**: if A is flat, D<=1; if A contains a
lambda, B has no lambdas and D=0. No two-lambda classification is needed.

### 7.3 The root flat case reduces to a literal hole argument

For a minimum reader

    R = ((lambda x.B) A) C1 ... Ct,

if A has no source lambdas, then **A is literally j**.
`RootFlat.minimum_root_flat_is_hole` has no weight bound, multiplicity cap,
or hole-depth assumption. A nontrivial flat argument over `[c,j]` is
rigid, normal, and absent from both target outputs. Replacing it by c
preserves the full laws and strictly saves weight. Literal c also contracts
strictly cheaper at any multiplicity. Literal j is the remaining hoist
family, not a newly excluded case.

This uniform reduction overlaps the depth-0 lane only by identifying the
exact residual shape. It does not declare its nonlinear j-hoists closed.

### 7.4 A flat head prefix cannot be a reader function

`FlatPrefix.reader_flat_prefix` proves:

> If `lambda s. T C1 ... Ct` is a reader and T is lambda-free, then T is
> literally s. The C_i are arbitrary, including lambdas and redexes.

Only the zero and shortest unary laws are required. The square gives a
constant returning N; its applications are N-headed. The suffix forms are
already N-headed. Other flat rigid applications either have the wrong zero
head, too many zero-side arguments, or a fixed first zero-side argument
different from j. Pending operands cannot repair these failures.

It follows that a minimum first body redex cannot have **both B and A
lambda-free** (`minimum_not_flat_flat`), irrespective of lambdas elsewhere
in the pending spine. Contracting it leaves a flat head prefix. If that
prefix is s, the original redex was either erasing or substituted the
literal s, both already strictly improvable.

### 7.5 Let sinking prices sharing without copying its definition

`LetSink.lean` supplies a new general transformation at either first-redex
position. Let C be an application context: the path to its hole crosses no
lambda, but its fixed subterms may contain arbitrary lambdas and redexes.
Assume those fixed subterms do not mention x. Then

    (lambda x. C[G]) A   =beta   C_down[(lambda x.G) A].

C_down removes the obsolete x binder from its fixed subterms. The definition
A is present exactly once on either side. G may use x any number of times;
A may contain the unique source j. No expansion, multiplicity restriction,
or no-j assumption is needed. The transformation preserves the full reader
laws and **exactly** preserves the source j count.

At ambient source depth d, the exact weight saved is

    charge_d(C) = sum over fixed pieces F of
                    freeLeaves(1,F) + 3 * occ_(d+2)(F).

Here `freeLeaves(1,F)` counts the references outside x, and the second term
makes each j count as four captures. The fixed application nodes cancel
from the price. The checked equations are `sunk_price` under the stream
lambda (d=1) and `sunkRoot_price` at the root (d=0). Their law-preservation
and one-hole theorems are separate declarations.

Therefore a minimum reader must have charge_d(C)=0. In particular, suppose
the redex body is an s-spine

    B = s B1 ... Bk

and x occurs in only one B_i. Sink its let into that operand. All the other
operands are fixed context pieces, and removing x from the head occurrence
of s alone saves one bit. `no_one_operand_spine_let` checks this for arbitrary
prefix and suffix operand lists, arbitrary A and B_i, and arbitrary
multiplicity inside B_i. Zero dependent operands would make the redex
erasing. Thus a surviving minimum let in an s-headed B must genuinely
share its definition across **at least two distinct operands**.

This also applies to an I- or K-dispatched body when all x uses occur in
one of its other operands. It brings that source directly into the
ordinary operand family by a nonincreasing transformation; no expanded
reduct is silently assumed to retain the source budget.

### 7.6 Exact remaining boundary and next useful target

The requested complete semantic closure of the root/body redex alternatives
is **not established**. The newly verified restrictions are:

- A flat root argument is only literal j.
- A flat body argument at w<=45 is one of the four terms in 7.2.
- A first body redex cannot have both its body and its argument flat.
- A linear first body redex needs at least four source lambdas.
- A let in an s-spine body must affect at least two operands, unless its
  sharing path crosses lambdas outside the application-context theorem.
- Arbitrary root and body lets admit the exact capture-saving sinking
  transformation wherever its stated context condition holds.

What still needs a proof is semantic exclusion or domination of **sharing
across different operands**, especially for the four explicit flat
arguments, together with a complete classification of the bounded
lambda-containing arguments. Positive-cost linear capture at four or more
source lambdas also remains. The existing static continuation/factory
algebra does not cover all of those callbacks, and Delta cannot simply be
added to its old bare-j invariant.

The most focused next target is now a source with A in the four-member flat
basis and x used in at least two operands of an s-headed B. A paired
algebra with a marked constant K r/K N or a marked inert r/N block can work
with that definition's actual behavior without charging its expanded copies.
For the j and r j/N j arguments, the zero output retains one rigid residual
while every unary output erases it; a source-origin thinning argument may
help, but no such thinning theorem or cost bound is claimed here.

All five modules passed the complete verification in section 5.
The new semantic algebra and source-prefix/let-sinking theorems use only
`propext` and `Quot.sound`; the minimum flat-body basis additionally uses
`Classical.choice`. No `sorry`, `admit`, native-decision trust axiom, term
sweep, capped semantic result, or unverified finite inventory occurs in
these proofs. No whole arithmetic profile or global 46 bound is claimed.

## 8. Cross-operand selector/unary helper sharing

### 8.1 The exact G F / G s template is closed below 46

**Kernel-checked in `HelperPair.lean`.** Let A be arbitrary source syntax,
including lambdas, captures, nonlinear binders and internal beta redexes.
If either of the following terms is a reader with exactly one source j,
its weight is at least 46:

    R_local(A) = lambda s. ((lambda g. s (g F) (g s)) A) j
    R_root(A)  = (lambda g s. s (g F) (g s) j) A.

The statements `local_pair_floor` and `root_pair_floor` need only the two
rigid probes in `SelfintClass.Reader`; they therefore apply to every reader
satisfying all unary lengths. They do not assume source minimality or use
another lane's dispatcher/arm inventory.

One source j forces A to contain no j. Since the surrounding syntax has no
c, the shortest unary law forces a source occurrence of c in A. Exact
whole-source accounting gives

    w(R_local(A)) = 36 + wire_[s,c](A),
    w(R_root(A))  = 40 + wire_[c](A).

Thus a counterexample would have local wire(A)<=9, or root wire(A)<=5.
The local possibilities containing c are exactly

    c, C1, C2, c s, c c, c I, s c, I c,

where C1=lambda x.c and C2=lambda x y.c. At the root only c and C1 remain.
The structural completeness proof is short: an occurrence of free index j
costs at least j+2; enclosing it in a lambda costs at least j+5; placing it
in an application costs at least j+6. In the local application cases the
c-containing child must be literal c, and its sibling has at most four
bits, hence is s, c, or I. In the lambda cases only C1 and C2 fit. This
includes nonnormal sources such as I c; it is not a normal-form inventory.

`smallC_reject` and the root theorem check ten fixed zero-branch reductions.
Each produces a beta-normal form different from r j. A fuel limit returning
no result does not prove rejection: `rejectsZero` requires a successful
reduction plus kernel-checked normality and inequality. The bounded traces
are only the final checks for a structurally complete case split.

The known capturing helper G_c=lambda x u.x C1(x x u) has local definition
price31 and gives weight67 in this template; the root definition price30
gives weight70. The new theorem applies to every replacement for G_c, not
just that construction. It proves the sub-46 exclusion for the template;
it does not claim G_c is a minimum helper or prove an inlining-dominance
inequality at arbitrary weights.

### 8.2 Every closed specializer P, not only F

**Kernel-checked in `ClosedSpecializer.lean`.** The stronger result is

    R_local(A,P) = lambda s. ((lambda g. s (g P) (g s)) A) j,
    R_root(A,P)  = (lambda g s. s (g P) (g s) j) A,

where P is any closed lambda term. In either placement, `Reader R` plus one
source j implies w(R)>=46 (`local_closed_floor`, `root_closed_floor`).
A remains arbitrary; P may also contain internal redexes and nonlinear
binders. The source costs are

    w(R_local(A,P)) = 30 + wire(P) + wire(A),
    w(R_root(A,P))  = 34 + wire(P) + wire(A).

For the local form, any helper A of at most nine bits containing c belongs
to the eight-member basis above. Its zero computation has rigid head c for
**every** P. The proof checks the eight reductions with a fresh symbolic P,
then transports those exact reductions through arbitrary closed
substitution. It does not assume P normalizes. Correctness therefore forces
wire(A)>=10. Below weight46 this leaves wire(P)<=5; the only closed source
of that size is literal I. It also leaves wire(A)<=11.

`capture_eleven` proves the complete c-containing, j-free helper basis
through eleven bits by constructor inequalities. There are 26 distinct
terms (the literal list has one repeated c c). Its application cases have
a c-containing child of at most seven bits, hence one of c, C1, c s, s c;
the remaining child has at most six bits and a separately proved seven-term
basis. Its lambda cases have bodies of at most nine bits, forcing C1, C2,
or a single application of c with x or s, in either order. No source
enumerator is used. Exact reductions reject all these sources with P=I.

The short unary instance is essential: A=F c has eleven bits, and its local
reader with P=I weighs45 and passes zero. But A reduces to I while erasing
c; the reader becomes lambda s.s I s j, whose shortest unary result has
rigid head j. It fails the unary law. `rejectsProbes` therefore requires a
successful exact normal-form mismatch on zero **or** length one, rather
than assuming every listed source fails zero.

For the root form, every closed P has at least four bits, leaving
wire(A)<=7 below46. `root_capture_seven` restricts the c-containing, j-free
A to c, C1, c c. All three have a checked rigid c head on zero with symbolic
P; the same substitution proof rules out every closed P.

### 8.3 Exact cost of inlining, and the known capturing helper

The local first beta step has the exact checked price

    w(lambda s.s (A P) (A s) j) - w(R_local(A,P)) = wire(A)-10.

At the root, A must also be shifted under the stream binder. The exact
checked difference is

    wire(A) + 2 freeLeaves(A) - 14.

These are `local_inline_price` and `root_inline_price`. Their corresponding
beta reductions are proved separately. They price the original source and
its actual expanded reduct; no residual role costs are assumed disjoint.
The differences can be positive, so these identities are not a universal
inlining-dominance theorem. The family exclusion instead uses the source
budget and the complete small-helper classifications.

`HelperPair.capturing_prices` kernel-checks the known G_c prices31/30 and
reader weights67/70. `capturing_local_normal` and `capturing_root_normal`
prove that both whole source readers beta-reduce to `reader162`, with c and
j still free. This proves the equivalence for every stream argument, not
only the fixed probes. The construction is the share46 lane's known helper,
not a new interpreter or a new minimum-helper claim.

### 8.4 Source-normalization boundary

The premise that every remaining redex body is an s-spine is still
unproved. `LetSink.no_one_operand_spine_let` assumes the body is literally
s B1...Bk and proves that a minimum let in that body must affect at least
two distinct operands. `SourceFront.reader_source_head` leaves arbitrary
bodies B in its two redex alternatives. Such a B can be x-headed or can
contain another source head redex. The first-dispatch residual in jn's
notes identifies semantic roles after reduction but supplies no bound on
the cost or source provenance of those residual operands.

Consequently the new callback theorem closes the explicit specialization
context above, not the general source-cost bridge. Section 9 extends the specialization result to arbitrary P built from g
and s. Surrounding applications, copied holes, x-headed bodies, and nested
source head redexes remain outside these family theorems. No sub-46 reader, new complete
interpreter, or universal weight-46 theorem has been obtained in this pass.


### 8.5 Verification and scope of the result

The complete runner checks twenty-two Lean modules and both auxiliary steps;
the final pass took 17.85 seconds, with no child exceeding 2.37 seconds
and at most two threads per child. `verification.json` pins the exact source hashes and commands. The
new floor theorems use only `propext`, `Classical.choice`, and `Quot.sound`;
the structural case splits and exact cost identities do not need
`Classical.choice`. There are no admits, native-decision trust axioms, term
sweeps, or fuel-cap exclusions. All changes are confined to this lane.

The global weight-46 theorem remains open. This pass closes a full family of
cross-operand sharing contexts with arbitrary source helpers and arbitrary
closed specialization arguments, and records precisely why the general
first-source-redex reduction has not yet reached that family.

## 9. First-redex body shapes and capture-sensitive let motion

### 9.1 Moving a let through a leading lambda

**Kernel-checked in `LambdaSink.lean`.** For arbitrary B and A,

    (lambda x. lambda y. B) A
      =beta lambda y. (lambda x. swap(B)) (shift A).

The swap preserves the meaning of the two bound variables; shift moves A
under y without capturing y. Both terms contain A exactly once, and have
exactly the same multiplicity of every outer free variable, including j.
This is a source transformation, with no reduction of A or B assumed.

Let m be the number of x uses in B, n the number of y uses, and let
F_d(A)=freeLeaves(A)+3 count_j(A) at the original ambient depth d. The exact
weighted difference is

    w(after) - w(before) = F_d(A) + n - m.

`LambdaSink.sink_price` checks the equation at every ambient depth. Each
moved x use saves one index bit; each moved y use gains one; each capture
in A gains one, or four for j. The full reader laws and source-hole count
are preserved at both first-redex positions, with arbitrary pending spine
operands. Thus a minimum reader with a lambda-headed first-redex body
satisfies m<=F_d(A)+n (`minimum_root_capture`, `minimum_body_capture`).

When this inequality fails the source is strictly improvable without
copying A. When it holds, this conversion alone does not remove the case.
It is therefore a proved price for one missing body shape, not a complete
s-spine-normalization theorem.

### 9.2 A qualification to bridgeadv's linear-let claim

The sentence 'linear lets never pay' in bridgeadv REPORT2 is not valid
without a restriction on capture depth. The displayed formula there,
like `LocalCost.weighted_beta_at`, permits positive savings. A fixed example
in frame [s,c,j] is

    A = (s s) c,
    B = lambda y1 y2 y3 y4. x.

The source (lambda x.B) A has weight29 at ambient depth1, while its beta
contractum has weight31. It uses x exactly once and contains no j.
`linear_saving_counterexample` checks the multiplicity and both prices in
the kernel. A has three free captures and the x use sits four lambdas deep,
so the difference is (3-1)*4-6=2. This is not a reader; it refutes only the
unrestricted source-cost step. The full minimum-reader linear inequality
proved earlier retains precisely this capture term.

No finite inventory or source-origin erasure lemma from the other lanes
is a premise of these new results. The universal weight46 claim remains
open.

### 9.3 Complete source-head alternatives for the first-redex body

**Kernel-checked in `SourceBody.lean`.** Write a first body redex as

    lambda s. ((lambda x.B) A) C1 ... Ct.

For a minimum reader, exactly the following head alternatives remain
(the displayed alternatives need not be mutually exclusive syntactically):

- B=s B1...Bk;
- B=x B1...Bk, and A contains a source lambda;
- B=lambda y.D, and t>=1;
- B=((lambda y.D) E) B1...Bk, a nested source head redex.

The operands B_i, A and C_i are otherwise arbitrary. For a rigid body the
c- and j-headed alternatives fail immediately. If the head is x and A is
lambda-free, contracting the outer let exposes A itself as the source head
prefix. `FlatPrefix.reader_flat_prefix` forces A to be literal s, and that
let strictly shrinks on contraction. This excludes all flat arguments in
x-headed bodies without restricting the operand shapes or multiplicities.
A lambda-headed B with no pending C_i would leave two leading lambdas,
contradicting the zero output's rigid head.

At the root, for R=((lambda x.B) A) C1...Ct, there is no source s binder
in scope. `root_body_alternatives` therefore gives only an x-headed B with
a lambda-containing A, a lambda-headed B, or a nested head redex. This root
statement needs Reader alone, with no minimality or weight assumption:
a flat head argument would leave the whole reader source rigid.

These classifications identify the remaining source problem honestly.
They do not replace the x-headed/lambda-containing case or nested head
redexes by s-spines. The lambda-headed case now has the exact no-copy
conversion and capture inequality from 9.1.

### 9.4 Arbitrary stream-dependent specialization in the local sharing context

**Kernel-checked in `StreamHelpers.lean` and `StreamSpecializer.lean`.** The
closed-specializer result extends to every source term P built from g and
s, including arbitrary lambdas, applications, and repeated g or s uses:

    R_local(A,P) = lambda s. ((lambda g. s (g P) (g s)) A) j.

If this source is a Reader with exactly one source j, its weight is at
least46 (`local_stream_floor`). A is arbitrary source syntax in [s,c,j];
there is no minimality, beta-normality, termination, or linearity premise.
P is scoped in [g,s], expressed by `FreeUnder 2 P`. The semantic premise
is only `SelfintClass.Reader`: scope and the zero/shortest-unary laws.
Every full `ReaderLaws` reader therefore satisfies it. In particular the
result includes stream, s s, s F, and g-dependent specializers.

The exact source price remains 30+wire(P)+wire(A). Since P contains no c
or j, Reader forces c to occur in A, while the one-hole premise makes A
j-free. If A has at most9 bits, `nine_bit_capture` gives the same eight
literal helper shapes as before. For **arbitrary P**, including divergent
P, each exposes a rigid c head on the zero branch within sixteen explicit
weak-head steps (`smallC_anyP`). The proof leaves P as a symbolic term;
it never evaluates or enumerates P. `advance_sound` certifies each actual
reduction, and the c head itself contradicts the zero Reader law.

Thus A costs at least10. Under the contradictory weight<=45 hypothesis,
P costs at most5 and A at most13. `small_specializer` completely classifies
P as literal g, s, lambda u.u, or lambda u.g. All application-rooted P are
already excluded by this source price, regardless of their semantics.

`StreamHelpers.capture_thirteen` structurally classifies all c-containing,
j-free A of at most13 bits. The lambda-rooted cases are split directly;
for an application one c-containing child has at most9 bits and the other
has at most8. The two child classifications are proved from the wire
recursion and occurrence bounds, then the combined13-bit price is
restored. This is a fixed case grammar with a completeness proof, not a
term search or a guessed source inventory.

`capture13_reject` kernel-checks that every case within the original source
budget has a concrete incorrect beta-normal form on zero or the shortest
unary stream. Fuel exhaustion returns false and cannot certify exclusion.
`local_stream_floor` combines that finite fact with the structural
classification and confluence. Only standard Lean axioms are used.


### 9.5 Arbitrary stream-dependent specialization at the root

**Kernel-checked in `StreamSpecializer.root_stream_floor`.** The same
conclusion holds for

    R_root(A,P) = (lambda g s. s (g P) (g s) j) A,

where P is arbitrary syntax in [s,g] and A is arbitrary syntax in [c,j].
Reader and exactly one source j imply weight>=46, with no minimality
assumption. The source price is 34+wire(P)+wire(A).

Since every term costs at least2, the contradictory sub46 budget gives
wire(A)<=9. `StreamHelpers.root_nine` proves the complete ten-shape
classification. Eight shapes expose a rigid c zero head with unrestricted
symbolic P (`safeRoot_anyP`). The other two are lambda u.c u and
lambda u.u c, each costing9. Their budget forces P to cost at most2,
hence P is literally s. The resulting sources have checked incorrect zero
or shortest-unary normal forms (`root9_stream_reject`). Thus the root proof
also covers arbitrary lambdas and self-application inside P without a
normalization assumption or a source-term sweep.

### 9.6 Remaining boundary

The new specialization theorems exclude two exact source contexts, each
with an arbitrary helper and arbitrary g/s-dependent P. They do not yet
cover arbitrary surrounding operands, differently arranged uses of the
helper, or specializers that themselves contain c or j. They do not prove
that every minimum first-redex body has one of these two contexts.

The general source-head classification in9.3 and the exact capture charge
in9.1 are separate kernel results. X-headed bodies with lambda-containing
A and nested source head redexes remain unresolved; a lambda-headed body
is excluded by let motion only when that motion is strictly cheaper.
Nothing here establishes a universal weight46 bound or a sub46 reader.

The full verifier passed 24 runs (22 Lean modules and two auxiliary steps)
in 17.85s; its longest child took 2.37s, with two threads per child.
`verification.json` contains the exact current proof hashes and commands.
No admits or native-decision trust axioms occur; no term sweep or
fuel-failure exclusion was used. All writes in this lane remain under
`tmp/round4/close46/`; concurrent tracked edits elsewhere were left alone.

## 10. X-headed essential sharing and the needed-binder interface

### 10.1 Scope of the hole-lane handoff

The inspected `hole/NOTES.md` sections11-12 are handwritten claims, not
premises of this lane's proofs. Section12 explicitly retains R2b (the slot
lies inside the unary arm) and R3 (an arm with a j-routing slot), in addition
to the needed-binder cases R1', R2', and R4. Thus the inspected record does
not yet reduce every lambda-rooted depth1 reader to just needed-binder
sharing. The residual/origin and dispensability arguments remain under
independent review. No finite arm or wrapper inventory from that lane is
imported here.

### 10.2 An exact essential-sharing theorem for x-headed source bodies

**Kernel-checked in `NeededHead.lean`.** At any source context C and ambient
binder depth d, consider

    C[(lambda x. x B1 ... Bk) A].

Keep A exactly once, as the head. In each B_i, replace the removed x by
the nearest outer variable v and lower the other free indices. Let B_i'
be the result. The comparison source is

    C[A B1' ... Bk'].

At the first redex under lambda s, v is s; at a root let, v is c. The
transformation is not asserted beta-equivalent. Instead, its exact source
cost and semantic necessity are proved:

    w(old) - w(new)
      = 6 + sum_i freeLeaves(1,B_i) + 3 sum_i count_j(B_i).

The count_j index is d+2 in the old B_i frame. All source-j occurrences
are preserved exactly, including occurrences inside A. A is never copied,
and the formula allows arbitrary multiplicity, nested lambdas, source
redexes, and captures inside every B_i. `nearest_price` checks the local
substitution price; `forget_price` and `forget_occ` give the whole-let
identities.

`minimum_forget_fails` concludes that if the original source is a minimum
full ReaderLaws reader, the comparison source cannot satisfy those same
laws. This is a semantic dependence theorem, not merely an occurrence
count: the non-head uses cannot all be identified with v while retaining
correctness. It does not use the hole lane's unformalized neededness or
joint-dispensability assertions.

If x has no non-head uses, the comparison source is its ordinary beta
contractum. Hence `minimum_extra_use` proves at least one non-head use in
EVERY minimum x-headed source let, without a weight bound. For a first
body redex below46, the existing source multiplicity cap strengthens this
to one through five additional uses (`body_needed_sharing`), while the
previous `SourceBody` result forces A to contain a lambda.

This matches a portion of the needed-binder problem: a value supplying an
operator must also matter through its argument uses. It does not yet say
that this dependence is unary rather than zero dependence, or that the
binder is above the source node becoming the unary output. Those are
separate residual-provenance obligations; calling all these occurrences
'unary-productive' would overstate the theorem.


The comparison source is also proved well scoped (`forget_context_scope`).
`unary_needed_if_zero` supplies a precise connection to the unary question:
if the comparison source still satisfies zero, there exists a unary length
at which it fails. This implication needs no residual-origin theory. What
remains to connect it to the hole lane is proving its zero-preservation
premise for the proposed dispensable uses and identifying the corresponding
source binder at the unary-output anchor.

### 10.3 Exposing nested lets while retaining their source cost

**Kernel-checked in `NestedLets.lean`.** For arbitrary D, E, and pending
operands B_i,

    ((lambda y.D) E) B1 ... Bk
      =beta (lambda y.D (shift B1) ... (shift Bk)) E.

Every source term remains present exactly once. At ambient depth d, the
right source costs more by

    sum_i freeLeaves(0,B_i) + 3 sum_i count_j(B_i).

Each captured leaf gains one bit, and a source j gains four.
`push_context_laws`, `push_context_holes`, and `push_context_price` prove
full ReaderLaws preservation, exact hole multiplicity, and exact price
inside ANY source context, including under the outer first-redex binder.
Consequently every literal nested head redex can be displayed as adjacent
lets, but its pending operands incur this explicit capture charge. The
converted source cannot simply inherit the original sub46 budget.

### 10.4 Independent nested definitions can be interchanged exactly

For the adjacent lets

    let x=A in let y=E in D,

assume E does not contain x. A and E are then both terms in the original
outer frame. Interchanging the bindings, swapping the bound indices in D,
and shifting A beneath y gives a beta-equivalent source, with A and E each
present once. Define

    F_d(T) = freeLeaves(0,T) + 3 count_j(T).

The exact cost change, new minus old, is

    F_d(A) - F_d(E) + uses_y(D) - uses_x(D).

`order_join`, `order_price`, and `order_context_laws` check this at every
ambient depth and source context. In a minimum reader this difference
must be nonnegative. This prices the order of independent definitions; it
does not justify a free reordering of lets.

The result also covers arbitrary pending B_i in the original body

    let x=A in ((lambda y.D) E) B1 ... Bk.

First expose the adjacent lets as in10.3, then interchange them. The x uses
in the B_i cancel against their own capture charge. The exact combined
cost change is

    F_d(A) - F_d(E) + uses_y(D) - uses_x(D) + G,
    G = sum_i freeLeaves(1,B_i) + 3 sum_i count_j(B_i).

Here E denotes the original E lowered out of x's scope; the count_j index
in B_i is d+2. `pending_price`, `pending_context_laws`, and `pending_occ`
verify the price, all reader laws, and every outer-variable multiplicity.
No A, E, D, or B_i is copied in the comparison source.

`minimum_nested_alternative` packages a complete source-side dichotomy:
either the inner definition E contains an occurrence of x, or the exact
combined charge above is nonnegative. This handles both first-redex
placements and all pending operands. The first branch is syntactic
occurrence, not a claim that the occurrence is semantically needed.

### 10.5 What now meets the needed-binder case, and what does not

The source-side interface can be stated without assuming an s-spine normal
form:

- An x-headed first source let in a minimum reader has lambda-containing A and
  additional operand uses that cannot all be replaced by the nearest outer
  variable while preserving the reader laws. If that replacement preserves
  zero, some unary length requires the extra use. Under the first-body
  sub46 budget there are one through five additional syntactic occurrences;
  the dependence statement concerns their collective replacement.
- A literal nested head redex can be exposed as a chain of lets at the
  exact source charge in10.3. An independent inner definition can be moved
  across the outer one only at the price in10.4; otherwise E(x) records a
  syntactic dependency of the inner value on the outer value.

This supplies prices and a semantic dependence test for source-delivered
values in the hole lane's case(i). It does NOT prove that the first source
let is the binder above the unary output node, nor classify how a created
redex inherits that binder and its argument from the original source.
Those residual-provenance statements remain missing. The bit/cell-delivered
case(ii) has an input-supplied argument; treating it as a newly charged
source definition would be invalid. Its source opener still needs an
independent cost theorem.

Thus neither remaining source family is globally excluded. The universal
weight46 claim remains open, and no sub46 reader was constructed. These
results replace an assumed free source normalization with exact checked
conversions and explicitly separate syntactic sharing, dependence required
by the full laws, and unary need at an identified output node.


### 10.6 Verification

The complete runner passed all 24 child runs (22 Lean modules and two
auxiliary steps) in 17.85 seconds. The longest child took 2.37 seconds;
every Lean child used two threads and a 110-second timeout. The new modules
compile without warnings. Their dependencies are only propext,
Classical.choice, and Quot.sound. Current proof and runner hashes match
`verification.json`; no admits, native-decision trust axioms, additional
finite term checks, or term sweeps were used for section10. All writes were
confined to this lane; concurrent tracked edits elsewhere were untouched.
