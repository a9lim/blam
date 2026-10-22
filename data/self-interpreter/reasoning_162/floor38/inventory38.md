# Complete size-38 classification

Every exact closed-source self-interpreter has at least **39 bits**. This
is a handwritten numeric theorem with the checked components described in
`proof39.md`; no global numeric Lean theorem is claimed.

The classification below yields **1,206 raw layouts**, not 1,014. The
previously proposed 1,014 are precisely what remain after 192 explicit
finite exclusions. Keeping the larger inventory makes those exclusions
auditable, including five cases for which the earlier informal description
of the pruning was too broad. All 1,206 have now been excluded.

## 1. Structural inputs and the first contraction

Use the established global floor 38, the width-three obstruction, the
incomparable-nonlinear-binder theorem, and the handwritten literal-interface
floor 39 in `../floor/literal-interface.md`. These inputs are also reviewed
in `inventory-audit.md`. A hypothetical 38-bit interpreter is globally
minimum, so any strictly smaller beta reduct contradicts the floor.

Write L for the number of lambdas, V for leaves and X for the sum of
zero-based variable indices. The exact identity is

    bits = 2L + 4V - 2 + X.

The width witness gives three live binders a,b,c on one ancestor chain,
and indices at least 2,1,0. The incomparable nonlinear pair requires
another live binder d and at least six leaves. Five live binders would
require at least seven leaves, hence at least 39 bits. Thus there are
exactly four live binders, and the only possible triples at 38 are

    (L,V,X) = (4,6,8), (5,6,6), (6,6,4), (4,7,4).

The literal-interface bound excludes a lambda root. Since the source is
closed, the first head redex has a closed argument. Its contractor cannot
be affine or vacuous: contraction with a closed argument would strictly
decrease wire size.

If this contractor were a chain binder, it would be the outermost a.
The other two chain binders and their width witness lie in its body.
The closed argument must contain a live binder, so it must contain d;
if d instead lay in the body, no live binder could close the argument.
There is then no live binder available for a second closed spine argument.
Contracting a removes one of the three chain variables and inserts only
closed syntax of width at most one. Every resulting subterm has width at
most two, contradicting the necessary width condition. Thus the contractor
is d.

No chain binder can lie in d's body. The outermost head lambda has no
lambda ancestor; containing any member of the witness chain would contain
all three. All four live binders would then lie on one ancestor chain,
contradicting the incomparable nonlinear pair. The three chain binders
therefore lie together in the sole closed argument N. There is no live
binder left for any pending closed argument. Consequently

    E = D N,

where D and N are closed, D contains just the live binder d, and N contains
exactly a,b,c. This argument does not presume that X=4 forbids capture.
It uses closedness of the first head argument instead.

## 2. Why both operands are normal

All redexes in D would have vacuous contractors and shrink, since d itself
is its outermost live lambda. For a redex `(lambda x.M) A` inside N, let k
be the number of uses of x, f the number of free leaf occurrences in A,
and d_i the number of local binders between x and its ith occurrence.
Let g count the other occurrences in M whose indices decrease when x is
removed. The exact change in wire size is

    (k-1)|A| + (f-1) sum_i d_i - 2k - 4 - g.

A vacuous contractor shrinks. Otherwise x is a chain binder, and the
width witness in its body contains occurrences of the other two chain
variables. Thus M has at least k+2 leaves.

For a four-leaf N, k>=2 leaves no argument leaf. For k=1 the argument has
at most one leaf, so f<=1 and the change is at most -6. This remains true
with vacuous lambdas present.

For a five-leaf N there are no extra lambdas. Values k>=3 are impossible;
if k=2, A is a single variable with index n<=1, giving change n-6-g<0.
If k=1, f<=2 and d_1<=2, giving change at most -4. Every possible redex
therefore shrinks. Both D and N must be normal.

With six leaves d occurs twice and N has four leaves. With seven leaves,
d occurs twice or three times. Four uses of d would leave a,b,c affine,
so the incomparable nonlinear pair would be absent. Without extra lambdas,
D is consequently one of

    delta = lambda d.d d,
    lambda d.d d d,
    lambda d.d (d d).

## 3. Four-leaf normal arguments and the empty triples

In a normal N with three live binders and four leaves, exactly one
variable is repeated. The width witness contains a,b,c below c. The six
possibilities are listed below; the names specify the repeated occurrence.

| Family | Position of the extra leaf | X | Number |
|---|---|---:|---:|
| outer-before | a above b | 3 | 12 |
| outer-between | a between b and c | 4 | 12 |
| outer-below | a below c | 5 | 60 |
| middle-before | b above c | 3 | 12 |
| middle-below | b below c | 4 | 60 |
| inner | c below c | 3 | 60 |

For example, outer-between is `lambda a b.a (lambda c.T(a,b,c))`.
There are two ordered three-leaf binary trees and six leaf permutations,
giving 12. A four-leaf body with one repeated letter has five ordered
binary trees and twelve distinct leaf orders, giving 60. Normality
requires each nested lambda block to occupy an argument position.

The triple (4,6,8) is impossible because these arguments have X<=5.

At (6,6,4), remove the two vacuous lambdas. Their reinsertion adds four
bits plus their free-occurrence charges, and the base has X>=3. At least
one wrapper therefore has zero free-occurrence charge. It wraps a closed
subterm. There is no proper closed part of the chain argument containing
one of its live lambdas: such a part includes the width witness and needs
its outer chain variables. Nor does the duplicator have a proper closed
part. Thus, up to other vacuous wrappers, a zero-charge wrapper surrounds
one whole operand.

A wrapper around D is a vacuous first head contractor. A wrapper around N
is removed by diagonal application, giving a strictly smaller reduct.
If the other vacuous lambda is in D, the only normal alternatives are
`lambda d u.d d` and `lambda d.d (lambda u.d)`; with `N=lambda v.N0`, they
reduce respectively to `lambda u.N0` and N0. Both are smaller. Thus this
triple contributes no candidate. No assertion that its first reduction
alone must shrink is needed.

## 4. The 828 layouts with four lambdas

For D=delta, N has five leaves and X=4. Beyond the witness indices 2,1,0,
one extra leaf has index one and the other index zero. The former is a
between b,c, or b below c. The latter is a above b, b above c, or c below c.

| Index-one extra | Index-zero extra | Count |
|---|---|---:|
| a between b,c | a above b | 12 |
| a between b,c | b above c | 72 |
| a between b,c | c below c | 60 |
| b below c | a above b | 60 |
| b below c | b above c | 60 |
| b below c | c below c | 420 |
| total | | 684 |

The 72 are six normal contexts on the two distinct extra leaves and the
inner lambda block, times twelve inner trees. The 420 are fourteen
five-leaf binary trees times `5!/(2!2!)=30` leaf orders for a,b,b,c,c.
The other counts use the same twelve or sixty inner trees as above.
This includes contexts such as `(a block) b`; no initial-spine assumption
is imposed on the extra leaves.

For either three-use D, N instead has four leaves and X=4. The
outer-between and middle-below families give 12+60=72 each. Therefore

    684 + 2*72 = 828.

## 5. The 378 raw layouts with one vacuous lambda

Deleting the vacuous lambda preserves normality. Its former position
could not have been a function position, and deleting it from an argument
or lambda body creates no new application redex. The resulting source
is delta applied to one of the six normal arguments in section 3.
Inserting a vacuous lambda around a subterm U costs exactly

    2 + number of free leaf occurrences of U.

These are occurrences, not distinct variables.

Inside D, the normal positions are outside D, around its body, and around
its argument leaf. An outside wrapper would need a 36-bit base, which the
six families do not supply. A body wrapper gives `lambda d u.d d` and
costs four bits, so the base is 34: outer-between or middle-below, 72.
An argument wrapper gives `lambda d.d (lambda u.d)` and costs three bits,
so the base is 35: outer-below, 60. This accounts for 132 layouts.

Inside N, the exact count is:

| Base family | Base bits | Required free leaves of U | Admissible insertions |
|---|---:|---:|---:|
| outer-before | 33 | 3 | 12 |
| middle-before | 33 | 3 | 24 |
| inner | 33 | 3 | 24 |
| outer-between | 34 | 2 | 30 |
| middle-below | 34 | 2 | 36 |
| outer-below | 35 | 1 | 120 |
| total | | | 246 |

For outer-before the only site is its bottom three-leaf body. For
middle-before it is either that body or `b (lambda c.T)`, giving two sites.
For inner, a three-leaf subtree can be an argument in two of the five
ordered four-leaf trees, giving `2*12=24`.

For outer-between the sites are the whole b-block (12), the c-block (12),
and the right-hand pair of the right-associated bottom tree (6). For
middle-below, two-leaf argument subtrees occur three times across the five
ordered four-leaf trees, giving `3*12=36`. For outer-below, argument-leaf
positions occur ten times across those five trees, giving `10*12=120`.
These exhaust the subterms with the indicated occurrence counts and with
positions that preserve normality. Thus the one-vacuous total is

    132 + 246 = 378,

and the complete raw inventory is `828+378=1,206`.

## 6. What the prospective 1,014 actually retain

Keep all 828 four-lambda layouts, all 60 `D_arg_outer_below`, all 120
`N_box_outer_below`, and the six outer-between right-pair boxes. The last
six have IDs 832,845,858,871,884,897 in `size38.json`. This is exactly
`828+60+120+6=1,014`.

The other 192 have explicit positive finite certificates, with source
prefixes of at most seven beta contractions:

| Certificate | Number |
|---|---:|
| three leading lambdas | 102 |
| all nonlinear binders on one ancestor chain | 85 |
| wrong normal identity payload | 3 |
| wrong source head interface | 2 |

The five cases in the last two rows are IDs 841,880,887,893,900, all in
`N_box_outer_before`. This corrects the earlier claim that every removed
case was uniformly a three-lambda or internal-nonlinearity obstruction.
Their exact finite certificates are retained and kernel-checked instead.

## 7. Executable correspondence and coverage

`size38.py` instantiates only the families just classified. Its `four`
generator corresponds to section 4; `bases`, `vacuous` and `subpaths`
correspond to sections 3 and 5. It asserts closure, size 38, normality of
both operands and pairwise distinct syntax. The complete run took 15.12
seconds on one Python thread. It is a classified-layout check, not a
general closed-term sweep.

`Size38Sources.lean` independently checks closure and 38-bit size for
each of the 1,206 literal terms. The handwritten completeness argument,
and correspondence of the generator to that argument, remain outside
Lean. `size38-ledger.json` matches every stable ID and wire to either a
positive finite certificate or a complete Lean exclusion, and checks
that the two sets are disjoint and exhaustive. The final residual set
is empty. See `proof39.md` for the semantic justification of each kind
of certificate and the precise formalization boundary.

## 8. Prospects for 40 and beyond

The count growth alone does not yet look prohibitive. For illustration,
the four-live, four-lambda, seven-leaf slice at 39 has 1,036 layouts:
916 delta cases plus `2*60` three-use duplicators. For delta, the two
extra occurrence indices sum to two: an index-two a below c with an
index-zero a/b/c contributes `60+60+420=540`; two index-one extras
contribute `36+60+280=376`. At 40 that same slice has 480 layouts,
from an index-two a and index-one a or b, `60+420`. These are analytic
counts of that slice only, not complete inventories at 39 or 40.

The significant new issue is structural: at size 39 a literal lambda
root is allowed, and five live binders become possible at the saturated
counts `(L,V,X)=(5,7,3)`. The argument forcing E=D N used exactly four
live binders and cannot simply be reused. At 41, eight leaves first
become possible with four live binders, increasing tree counts again.
The measured 1,206-layout run suggests a few thousand classified cases
are computationally practical; completeness and uniform semantic
exclusions are the work, not extrapolated runtime alone.

A useful stronger lemma would exclude the saturated literal case:
in `lambda c.B` at equality 39, c is affine and its unique occurrence
has index zero, so it is outside every internal lambda; the four internal
live binders and their six leaves already consume the remaining minimum
counts. Proving that no such arrangement can both read arbitrary code
and return the exact rigid suffix would raise the literal-interface
bound to 40 and remove that entire branch. An alternative is a uniform
exclusion of closed four-live-binder diagonal terms D N, independent of
their leaf/index budget. Neither lemma is proved here. The W/B theorem
in `WGrammar38.lean` is already such a uniform exclusion for one broad
syntactic subclass, and may reduce later inventories substantially.
