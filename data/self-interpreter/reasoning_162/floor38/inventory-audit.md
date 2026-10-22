# Independent audit of the size-37 inventory

Verdict: the 676-layout reduction in `../floor/floor37-progress.md` is
complete. Together with its 615 finite exclusions, its 48 parametric
exclusions, and the thirteen complete Lean exclusions in this lane, it
rules out every 37-bit interpreter. Combined with the established global
37-bit lower bound, every interpreter has at least **38 bits**.

This is a handwritten classification review. It is not a new closed-term
enumeration. I inspected the two layout generators, the finite checker,
the stored ledgers, and all five families of displayed infinite invariants;
I did not rerun the 676-case reduction battery. The 615 earlier finite
checks remain Python-checked evidence from that lane, not new Lean
theorems. The thirteen new exclusions are full Lean theorems, rather than
only sampled reductions.

## 1. Literal continuation binders really cost at least 39

For E literally `lambda c.B`, substitute the closed continuation K and
use the source S with a closed width-one suffix. The contract gives

    B[K/c] stream(S,I) I =beta S.

The established width obstruction therefore forces three variables in
some subterm of B that are bound inside B. A witness cannot lie inside
an inserted K or quotation cell. The incomparable nonlinear pair also
lies inside B, since the outer c is comparable with every binder.
Thus B has four live binders and six owned leaves. The root continuation
is live, adding a distinct binder and leaf. The three width occurrences
cost indices at least 2,1,0. Consequently

    bits >= 2*5 + 4*7 - 2 + 3 = 39.

No normality assumption is hidden here. In particular every source of
size 37 or 38 that remains under consideration is application-rooted.

## 2. Count triples and first contractor

At size 37, four live binders, six leaves and index sum at least three
leave exactly

    (L,V,X) = (4,6,7), (5,6,5), (6,6,3), (4,7,3).

The established 37-bit floor makes a hypothetical size-37 interpreter
globally minimum. Every source redex must therefore be nonshrinking.

With six leaves there are exactly four live binders, two used twice.
The off-chain nonlinear binder d cannot capture a width-chain variable:
any possible enclosing chain binder would be affine, with its only
occurrence already required in the width witness outside d. With seven
leaves and X=3, the three required width occurrences spend all index
units. A capture by d would spend another unit. In both cases d is
closed and contains no chain binder; containing one would put all four
live binders on the same ancestor chain.

An affine or vacuous first head contractor shrinks, because its argument
is closed. If the contractor is a width-chain binder, its closed
argument can contain only d. Substitution removes one width variable
and inserts only closed width-one syntax, leaving width at most two.
Thus the first contractor is d. There is no separate live binder left
to close a pending spine argument. The source is D N.

For `(4,6,7)`, the old four-leaf three-binder classification applies;
normal arguments have X at most five. Hence this case is impossible.

For `(4,7,3)`, d has either two or three uses. Four uses would leave the
three chain binders affine, eliminating the incomparable nonlinear pair.
Thus D is exactly one of

    lambda d.d d,
    lambda d.d d d,
    lambda d.d (d d).

The second operand N is normal. In its five-leaf version, a nonlinear
redex contractor uses at least two leaves and has the two other width
variables in its body, leaving at most one argument leaf. A variable
argument has too little wire cost to make the contraction nonshrinking.
A linear contractor leaves at most two free argument occurrences and
at most two intervening local lambda levels; the exact wire-cost formula
again makes its contraction strictly shrink. The four-leaf argument
version is even tighter. This argument does not assume an evaluator cap.

## 3. Re-deriving 652

The minimum width occurrence indices are 2,1,0, and every other leaf has
index zero. The two extra leaves in the five-leaf N therefore occur as
extra a's above b, extra b's above c, or extra c's below c. If p,q,r count
these occurrences, p+q+r=2.

| (p,q,r) | Independent count |
|---|---:|
| (2,0,0) | 3 normal contexts on `a,a,lambda-block` times 12 = 36 |
| (1,1,0) | 12 |
| (1,0,1) | 12 distinct leaf orders times 5 binary trees = 60 |
| (0,2,0) | 3 times 12 = 36 |
| (0,1,1) | 60 |
| (0,0,2) | 20 distinct leaf orders times 14 binary trees = 280 |
| total for D=delta | 484 |

Normality forbids a lambda block in function position. These context
counts account for every possible application placement, including
`(a block) a`; they do not assume all extra variables form one initial
spine.

For each three-use D, the four-leaf N has X=3. Its repeated leaf is the
outer variable before b (12), the middle variable before c (12), or the
inner variable (60). Hence

    484 + 2*(12+12+60) = 652.

## 4. Re-deriving the 24 vacuous-binder layouts

At `(5,6,5)` there is one vacuous binder. If it lies in D, the only normal
possibilities are a vacuous wrapper outside D, `lambda d u.d d`, and
`lambda d.d (lambda u.d)`. The first erases its argument and shrinks; the
second exposes a vacuous continuation binder. For the third, the old
X=4 argument families are outer-between and middle-below: they respectively
expose three leading lambdas or have only one nonlinear binder internal
to the literal two-argument interface.

If the vacuous binder lies in N, deleting it preserves normality and the
live-variable witness. Reinserting it around U costs exactly
`2 + freeLeaves(U)`. The possible bases and insertion costs are:

* Base 35 plus 2: U is closed, hence the whole N. Diagonal application
  discards the wrapper and gives a smaller interpreter.
* Base 34 plus 3: U has one free leaf. In the outer-between family only
  variable-leaf boxes remain: a left-associated three-leaf tree has two
  admissible argument leaves and a right-associated one has one. This
  gives `6*(2+1)=18` normal layouts. The middle-below family still has
  only one internal nonlinear binder; wrapping its two-inner-binder
  block instead gives three leading lambdas.
* Base 33 plus 4: U has two free leaves. Middle-before layouts retain
  their wrong one-lambda head; inner-duplicate layouts lose the internal
  nonlinear pair or expose three lambdas. In outer-before layouts,
  wrapping the entire body or the block between b and c makes the first
  public binder vacuous. A bottom pair can be boxed normally only when
  it is the right child of the right-associated tree. This gives six
  layouts.

Thus the surviving one-vacuous-binder inventory is exactly 18+6=24.

At `(6,6,3)`, both extra binders are vacuous. They cannot enclose a free
occurrence: the width witness already spends X=3. The only closed
pieces available to wrap are whole operands (or the whole source, which
would be lambda-rooted). Wrapping D erases its argument; wrapping N is
removed by diagonal application and yields a smaller term. There is no
additional residual inventory here.

## 5. Audit of the existing exclusions

The stored four-binder ledger has 593 finite exclusions and 59 residual
traces. The five-binder ledger has 22 finite exclusions and two residual
traces. This is 615 finite exclusions, with 61 remaining before the
displayed invariants.

The finite checker uses only:

* an actual smaller reduct, loss of necessary width or the incomparable
  nonlinear pair, or an impossible number of leading lambdas;
* an exact repeated head state;
* a finite wrong head shape, or a positively obtained normal payload
  distinct from the required identity-source payload/remainder.

Its finite fuel and growth caps are labelled unresolved. A timeout does
not enter the exclusion count. Substituting I into already exposed public
binders is a check of the necessary *internal* width/nonlinearity
conditions, not an assumption that I is a valid code stream.

I checked each of the five displayed parametric families:

* The twelve one-argument macro grammars preserve a nonempty application
  and have a saturated one-argument head at every stage.
* The twelve NN pumps return the same NN function prefix.
* The eighteen left-associated J systems preserve at least two pending
  arguments; this argument would not cover right-associated J bodies.
* The four duplicated-final-argument systems obey the stated induction
  in wrapper depth, or their exact five-step pump.
* The two boxed systems preserve a nonempty wrapper word / the fixed
  Q(N,C), respectively. Their trailing argument lists never run out.

These account for 12+12+18+4+2=48, leaving exactly the thirteen stable
IDs now excluded by `Residuals.lean`.

The previous numeric theorem, the literal-39 argument, the above complete
classification, the 615 stored positive finite checks, the 48 reviewed
invariants, and the thirteen Lean theorems therefore prove the global
floor **38**. The classification and the global numeric implication have
not themselves been formalized in Lean.

## 6. Size-38 follow-up

The initially prospective 1,014-layout count is now superseded by the
complete argument in `inventory38.md` and exclusions in `proof39.md`.
The full raw inventory has 1,206 layouts; 192 positive finite exclusions
leave exactly the proposed 1,014. All 1,206 are excluded, with no residual
set. The global handwritten floor is therefore 39.

The remainder of this section records the initial counting derivation.
Its former blanket claim about the preliminary pruning is corrected by
the explicit 192-case partition in `inventory38.md`, section 6.

Literal lambda roots are excluded by the literal-interface floor 39. The possible count
triples are

    (4,6,8), (5,6,6), (6,6,4), (4,7,4).

The first is impossible by the old six-leaf diagonal classification. The
two-vacuous-binder case has only one index unit beyond the width witness:
at least one vacuous wrapper encloses no free leaf, and hence wraps a
whole closed operand. The resulting first reduction again gives a
strictly smaller term. It contributes no minimum candidate.

The four-live-binder case is still diagonal. Although X=4 alone no
longer forbids an off-chain capture, the first closed head argument does:
if d were inside the chain contractor, there would be no live binder
left to close that argument. The chain-contractor width-loss proof then
forces the same closed D and normal N decomposition.

For delta N, the five-leaf N has X=4: besides the width occurrences,
one extra leaf has index one and one has index zero.

| Index-one leaf | Location of the index-zero extra leaf | Layouts |
|---|---|---:|
| a between b and c | a above b / b above c / c below c | 12 + 72 + 60 |
| b below c | a above b / b above c / c below c | 60 + 60 + 420 |
| total | | 684 |

Each three-use D instead takes an X=4 four-leaf N: outer-between (12)
or middle-below (60). Thus this part has `684+2*72=828` layouts.

The one-vacuous-binder case leaves three families after the same uniform
head and internal-nonlinearity exclusions:

* `D=lambda d.d (lambda u.d)` with the 60 outer-below X=5 arguments;
* delta with one admissible leaf box in an outer-below 35-bit base:
  120 layouts (ten argument-leaf positions across the five ordered
  four-leaf binary trees, for each of twelve distinct leaf orders);
* delta with the right-hand two-leaf box in the outer-between 34-bit
  base: six layouts.

This gives **828+186=1,014 layouts** after the 192 preliminary exclusions
now made explicit in the follow-up. Five of those exclusions use exact
head/payload certificates rather than the previously suggested uniform
three-lambda or internal-nonlinearity argument.

The present rank argument handles four exact right-associated permutations,
and the protected-tail grammar handles one exact recursion law. The
additional index unit and the new vacuous-binder positions do not
automatically satisfy either invariant. The follow-up adds the W/B
grammar, a parametric pump, and rigid payload arguments to complete the
exclusions; the old invariants alone did not supply them.
