# Complete application-rooted size-39 inventory

Every application-rooted 39-bit exact self-interpreter is excluded.
Together with `literal40.md` and the previous global floor 39, this gives
the global handwritten floor **40**. The classification is explicit below;
its generated inventory has **3,664** distinct layouts, all adjudicated.

The structural inputs are the existing width-three obstruction, the
incomparable-nonlinear-binder theorem, and the established global floor
39. No new source-normality assumption is introduced. A hypothetical
39-bit interpreter is minimum, so any strictly smaller beta reduct rules
it out.

## 1. Counting and the first contractor

Write L,V,X for lambdas, leaves and zero-based index sum, so
`bits=2L+4V-2+X`. There are at least four live binders, six leaves and
X>=3. At 39 the possible triples are exactly

    (4,6,9), (5,6,7), (6,6,5), (7,6,3),
    (4,7,5), (5,7,3).

The final triple permits either four live binders and one vacuous binder,
or five live binders. Every other triple has exactly four live binders.
Six live binders would need at least eight leaves and cost at least 45.

An application-rooted closed term's first head lambda has closed spine
arguments. Its contractor must be nonlinear: an affine or vacuous
contractor with a closed argument strictly shrinks. Label the three
binders of a width witness a,b,c, and the other live binder(s) d,e.

With four live binders, the proof from `inventory38.md` applies unchanged:
the first contractor cannot be a, since its closed argument can use only
d, and contraction loses the width-three witness. Therefore it is d,
its body contains no chain binder, there is only one closed argument,
and the whole source is `D N` with D,N closed. The three chain binders
belong to N.

With five live binders the count is saturated: L=5,V=7,X=3, exactly two
binders are nonlinear, each used twice, and every other binder is affine.
There is a unique index-two occurrence (owned by a), a unique index-one
occurrence (owned by b), and all other occurrences have index zero.
If the first contractor were a, its closed arguments would contain no
positive index occurrence. Removing a leaves all indices at most one,
and substituting those closed arguments cannot increase them. The
reduct therefore has width at most two. This again forces a first
contractor d outside the selected width chain.

## 2. Normality facts used for the four-live inventory

The exact wire change at `(lambda x.M) A`, with k uses of x, f free leaf
occurrences of A, local occurrence depths d_i and g other decremented
indices in M, is

    (k-1)|A| + (f-1) sum_i d_i - 2k - 4 - g.

Every redex in D has a vacuous contractor, hence shrinks. For a redex in
N, a live chain contractor's body contains the two other width variables,
so it has at least k+2 leaves.

When N has four leaves, k>=2 is impossible and k=1 leaves at most one
argument leaf, giving change at most -6, however many vacuous lambdas
are present. When N has five leaves, there is at most one vacuous lambda.
For k=2 the argument has one leaf and wire size at most six: it is a
variable or that variable under the sole vacuous lambda. Thus the change
is at most -2. For k=1, f<=2 and d_1<=3, so the change is at most -3.
Larger k are impossible. Consequently both operands are normal in all
four-live cases retained below.

## 3. Four live binders: 2,248 layouts

### Four lambdas, seven leaves: 1,036

For D=Delta, N has five leaves and X=5. Besides the witness indices
2,1,0, its two extra indices either are 2+0 or 1+1.

| Extra occurrences | Count |
|---|---:|
| a below c; a above b | 60 |
| a below c; b above c | 60 |
| a below c; c below c | 420 |
| two a's between b,c | 36 |
| a between b,c; b below c | 60 |
| two b's below c | 280 |
| Delta total | 916 |

For example, the 36 are the three normal contexts on a,a and an inner
lambda block, times twelve three-leaf bodies. The 420 and 280 are
fourteen five-leaf binary trees times thirty and twenty distinct leaf
orders. This includes all application placements, not just one spine.

Each of `lambda d.d d d` and `lambda d.d (d d)` instead takes a four-leaf
N with X=5, the sixty outer-below layouts. Thus `916+2*60=1,036`.

### Five lambdas, six leaves: 324

Delete the single vacuous lambda. The base is Delta applied to one of
the six normal four-leaf chain arguments in `inventory38.md`, section 3.
Reinsertion around U costs `2+freeLeaves(U)` and must preserve normality.
There are exactly these positions:

| Base and insertion | Count |
|---|---:|
| outer-below base; D becomes `lambda d u.d d` | 60 |
| outer-between base; three-free-leaf box | 24 |
| middle-below base; three-free-leaf box | 84 |
| outer-below base; two-free-leaf box | 96 |
| inner-repeat base; four-free-leaf box | 60 |
| total | 324 |

The outer-between sites are the body before c and the bottom three-leaf
tree, twelve each. Middle-below has the whole c-block (60) and a
three-leaf argument subtree (24). Outer-below has the whole b-block,
whose two free leaves are both a (60), and a two-leaf argument subtree
(36). Inner-repeat has just its bottom four-leaf body (60). A vacuous
wrapper outside D or around its argument leaf has the wrong charge at
39. The other base families have no sufficiently large free-leaf count.

### Six lambdas, six leaves: 804

After deleting two vacuous lambdas the base has X>=3; only two extra
index units are available. If either wrapper has zero free-leaf charge,
it encloses a whole closed operand. A wrapper around D is an excluded
vacuous first contractor. A wrapper around N also gives a smaller reduct:
every normal two-use D has the form

    lambda d u_1...u_q. d (lambda v_1...v_r.d).

With `N=lambda w.N1` and w vacuous, D N reduces to `lambda u_1...u_q.N1`,
strictly smaller. This remains valid if N1 contains further wrappers.
There are no proper closed chain subterms: every proper chain lambda
contains the width witness and needs an outer chain variable.

It remains to insert two wrappers, each around a subterm with exactly one
free leaf, into a 33-bit Delta N base. Such bases have N in outer-before
(12), middle-before (12), or inner-repeat (60). An insertion preserves
all original free-leaf counts. Its only new position of the same kind
is a second wrapper at that same base node. Therefore two insertions
are exactly an unordered multiset of two admissible base sites.

The admissible sites include D's argument leaf. For outer-before and
middle-before they also include one lambda block and the argument leaves
of the bottom three-leaf tree. The two tree shapes give four and three
sites, respectively, for six leaf orders each:

    6*choose(5,2) + 6*choose(4,2) = 96

for each family. For inner-repeat, the five four-leaf tree shapes have
3,4,4,4,5 sites, for twelve leaf orders each, giving

    12*(6+10+10+10+15) = 612.

The total is `96+96+612=804`, including nested wrappers at one site.

### Five lambdas, seven leaves, only four live: 84

Here the extra vacuous lambda has zero index charge, so it wraps a whole
closed operand. A D wrapper is already excluded. For Delta, a closed
wrapper around N is removed and gives a smaller reduct. For the
right-associated three-use D it likewise gives N0 from `N=lambda u.N0`.

For the left-associated three-use D, however, the reduct is `N0 N`,
which need not be smaller. These cases must not be discarded by that
argument. Retain all 84 normal X=3 four-leaf N0:

    (lambda d.d d d) (lambda u.N0).

### Empty triples and total

At (4,6,9), the normal four-leaf argument has X<=5, so there is no case.
At (7,6,3), all three vacuous wrappers have zero charge, and the preceding
closed-operand argument supplies a smaller reduct. This exhausts all
four-live triples, giving

    1,036 + 324 + 804 + 84 = 2,248.

## 4. Five live binders: 1,416 layouts

All cases here have L=5,V=7,X=3. After choosing the width chain, every
occurrence belonging to d or e has index zero. An off-chain lambda
containing none of the chain binders cannot capture a chain variable.
The first head contractor d cannot lie inside the fifth binder e; thus
when e contains no chain binder, its subterm is I if affine, or Delta if
nonlinear. An off-chain lambda cannot lie
between a,b,c, or contain the witness below c: the required witness
indices would then exceed 2,1,0. If it contains the whole witness chain,
its occurrences lie outside that complete chain block.

Let S range over the twelve closed affine terms `lambda a b c.T(a,b,c)`
(two binary trees and six orders). Let N0 range over the 84 normal
three-live, four-leaf X=3 arguments above. The first function is a
lambda with contractor d; all its spine arguments are closed.

### A. The function body contains the width chain: 36

The other nonlinear binder must be e in the argument, because d is
comparable with every binder in its body. Therefore the argument is
Delta, a,b,c are affine, and the function is `lambda d.T(d,d,S)`.
Every occurrence of d is outside S. Of the six application contexts,
three put S in function position; that affine contraction strictly
shrinks. The three normal contexts remain, for twelve S: **36**.
There is no live binder left for another closed spine argument.

### B. The function contains e but no chain binder: 252

e must be affine. If e were nonlinear, the only two nonlinear binders
would be the comparable d,e, violating the required incomparable pair.
Thus e contributes I, the function is `lambda d.T(d,d,I)`, and the
argument is N0. An I in function position shrinks, leaving the same
three normal contexts: **3*84=252**.

### C. Both the chain and e are in the first argument: 936

The first function is Delta. Distinguish the fifth binder e:

| Position and multiplicity of e in N | Complete construction | Count |
|---|---|---:|
| nonlinear, ancestor of the chain | `lambda e.T(e,e,S)`, all six contexts | 72 |
| nonlinear, off the chain | replace any subterm U of S by `Delta U` or `U Delta` | 192 |
| affine, ancestor of the chain | `lambda e.e N0` | 84 |
| affine, off the chain | replace any non-lambda subterm U of N0 by `U I` | 588 |
| total | | 936 |

S has eight subterm positions (three lambdas, three leaves, two apps),
so the second row is `12*8*2=192`. Its inverse removes the unique
off-chain Delta and its parent application. This row deliberately retains
some shrinking redexes; no normality claim is made about it or the first
row.

For the affine-e rows N must be normal. An affine chain redex has at most
two argument leaves and local depth at most three, so its wire change
is at most -3. A nonlinear chain contractor uses two leaves plus the
other two width variables; its argument has at most one leaf, either a
variable or I, of size at most four, and it also shrinks. An I redex
shrinks directly. Thus `N0 e` is excluded in the ancestor case; in the
off-chain case I can only be inserted as an argument to a non-lambda U.
N0 has seven non-lambda nodes, giving `84*7=588`.

These cases are exhaustive: an e above the whole chain has all its
occurrences outside it; an e not above it is the isolated I or Delta
just described. Deleting that atom and its parent application leaves
N0 or S, respectively. No capture by e is possible with X already spent.

### D. Two closed spine arguments: 192

The first function is Delta. One argument contains the entire chain,
and the other contains e; no further live binder is available. Either
the pair is N0,I, or S,Delta. Both orders are possible:

    Delta N0 I,  Delta I N0,        2*84 = 168;
    Delta S Delta, Delta Delta S,  2*12 = 24.

Thus this case contributes **192**. These are left-associated source
applications; single-argument composites belong to case C instead.

Cases A-D are disjoint by binder location. Their total is

    36 + 252 + 936 + 192 = 1,416.

## 5. Coverage and proof boundary

The complete application-rooted inventory is

    2,248 four-live + 1,416 five-live = 3,664.

`size39.py four` and `size39.py five` implement precisely the constructions
above. Every generated term is checked for closure, exact wire size,
width and an incomparable nonlinear pair; the final audit also checks
live-binder counts, the count triples, and uniqueness across all parts.
`Sources39Four.lean` and `Sources39Five.lean` independently prove closure
and exact size for every literal source definition. This is an analytic
classification followed by checks of its layouts, not a general
closed-term enumeration.

There are 3,503 positive finite certificate predicates and 161 complete
Lean exclusions in this application-rooted inventory. The seven initially
unresolved application-rooted cases are among those full exclusions.
All have been excluded; the final residual set is empty. `proof40.md`
states the complete literal/application partition and residual proofs.
The classification and the finite predicates' semantic implications
remain handwritten. Neither this document nor the generated files
assert a fully formalized numeric size theorem.
