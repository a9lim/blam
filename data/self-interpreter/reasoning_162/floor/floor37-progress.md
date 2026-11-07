# Residual inventory at 37 bits

The unconditional floor is still **37**. This is a handwritten continuation
of `global-floor.md`, with targeted checks of the resulting small layout
families. The coverage argument and infinite invariants have not had an
independent review and are not new Lean theorems. The checker checks the
listed layouts; it does not prove that the classification is exhaustive.

The resulting ledger is:

| stage | layouts |
|---|---:|
| four live lambdas, seven leaves, index sum three | 652 |
| remaining one-vacuous-lambda cases | 24 |
| finite refutations from reductions/structural constraints | 615 |
| further handwritten infinite-head invariants below | 48 |
| remaining after those arguments | 13 |

A focused invocation of the ordinary engine on identity-source calls of
those last 13 reports five `DIVERGE bb-engine` and eight `UNKNOWN`. The five
are computer observations from the existing checker; I have not extracted
independently replayable certificates for them. The eight UNKNOWNs are
unresolved, not divergence claims. Consequently this work does not establish
38 bits.

## 1. Inventory and first redex

If a 37-bit interpreter exists, it is globally minimum by the existing
37-bit theorem. Every source redex is nonshrinking by `SelfintWireCost`.
The new `literal-interface.md` bound excludes a lambda-rooted source.
Using four live binders, six leaves, and index sum at least three gives
exactly

    (L,V,X) = (4,6,7), (5,6,5), (6,6,3), (4,7,3).

The four-lambda/six-leaf case has the old diagonal classification, whose
normal argument shapes have X<=5, so it cannot have X=7.

For (4,7,3), choose the three variables a,b,c of a width witness. Its
occurrences already spend all three index units, at 2,1,0. Every additional
leaf must have index zero. The off-chain nonlinear binder d therefore
cannot capture a chain variable: that would cost an additional index bit.
It cannot contain a chain binder without putting all four binders on one
ancestor chain. Thus d is closed, and its body is an application tree on
two or three occurrences of d.

The first head contractor cannot be a chain binder. Its body contains the
width witness and the later chain binders. Its argument is closed and has
only d as a possible live binder, hence width one. Substitution removes a
witness binder and inserts only closed width-one syntax, leaving width at
most two. An affine or vacuous first contractor would instead strictly
shrink. Both contradict necessary interpreter properties.

The first contractor is d. There is no leaf/binder budget for a pending
closed spine argument. Consequently E is D N, where

    D = lambda d.d d,
    D = lambda d.d d d,          or
    D = lambda d.d (d d).

N has the three live chain binders and respectively five or four leaves.
It is normal: a redex contractor used at least twice leaves at most one
leaf for its argument; that small argument makes the contraction shrink.
A linear contractor leaves at most two free argument leaves and at most
two local lambda levels, so `(f-1)D < 6+g` in the exact wire-cost formula.
There are no vacuous binders here.

## 2. The 652 normal layouts

For D=delta, put p extra a occurrences immediately below a, q extra b
occurrences immediately below b, and r extra c occurrences below c.
Then p+q+r=2. Every a/b occurrence below a later binder would spend an
unavailable index bit. At the bottom is an application tree on
`a,b,c^(r+1)`. The outer contexts use p copies of a and q copies of b;
normality keeps each following lambda block out of function position.

| (p,q,r) | layouts |
|---|---:|
| (2,0,0) | 36 |
| (1,1,0) | 12 |
| (1,0,1) | 60 |
| (0,2,0) | 36 |
| (0,1,1) | 60 |
| (0,0,2) | 280 |

For either three-leaf D, N has the three X=3 four-leaf shapes already
classified in `global-floor.md`: outer duplication before b (12), middle
duplication before c (12), or inner duplication (60). This adds 2*84,
giving 652. `analyze37.py` checks exactly these layouts, in 5.4 seconds
in the recorded run. Its 59 capped/growing traces remain explicitly marked
unresolved in `four_lambda.json`.

## 3. The vacuous-lambda cases

At (5,6,5), d is again closed and the old six-leaf diagonal argument applies.
If the vacuous lambda is in D, the normal possibilities are:

- `lambda d u.d d`: the resulting first public binder is vacuous;
- `lambda d.d (lambda u.d)`: its X=4 arguments are the old outer-between
  and middle-below families. The first leaves three leading lambdas; the
  second has only one nonlinear binder inside the two public binders;
- a vacuous wrapper outside D, which erases the redex argument and shrinks.

If it is in N, delete it. Reinsertion around U costs `2+freeLeaves(U)`.
To reach 37 from the old bases, only these cases occur:

- base 35, zero free leaves: a wrapper around the whole N, immediately
  shrinking after diagonal application;
- base 34, one free leaf: the middle-below family loses its necessary
  internal nonlinear pair; a wrapper around its two-inner-binder block
  leaves three lambdas. In the outer-between family, 18 normal leaf-boxed
  bodies remain;
- base 33, two free leaves: the middle-before and inner families fail by
  the same head/internal-nonlinearity arguments. A box between the two
  inner live binders of the outer-before family makes the first public
  binder vacuous; a box around its entire body does the same. The remaining
  cases box the two-leaf argument of a right-associated bottom tree,
  giving six layouts.

These are the 24 cases in `analyze37_vacuous.py`. It gives 22 finite
refutations and two unresolved traces, settled by section 4 below.

At (6,6,3), the two extra lambdas cannot enclose a free leaf without
exceeding the index budget. The only closed subterms they can wrap are
whole diagonal operands. A vacuous wrapper on D erases an argument;
wrappers on N disappear through `delta N -> N N` to a smaller term.
Thus this inventory is excluded by minimality.

## 4. Infinite invariants resolving 48 layouts

These are actual infinite head-reduction arguments. No timeout is used.
`macro_checks.py` also checks 12 fixed instances of the wrapper identities;
those finite checks supplement the parametric proofs, rather than replace
them.
All displayed macro reductions consist of head contractions and survive
substitution for the displayed parameters. Delta N first reduces to N N.

### 4.1 Twelve one-argument macro systems

For each linear three-leaf application tree T(a,b,c), let

    N = lambda a.a (B(a)),
    B(x) = lambda b.b (C(x,b)),
    C(x,y) = lambda c.T(x,y,c).

Consider the grammar generated by N, B(X), C(X,Y), and application, with
X,Y in that same grammar. All its terms are closed. Every atom takes one
argument, and each rule returns a nonempty application:

    N X       -> X B(X),
    B(X) Y    -> Y C(X,Y),
    C(X,Y) Z  -> T(X,Y,Z).

Hence every nonempty application in the grammar has a head contraction
and stays a nonempty application. Starting at N N, this gives an infinite
head trace. These are all twelve `(p,q,r)=(1,1,0)` layouts.

### 4.2 Twelve direct NN pumps

Let J(x)=lambda b c.T(x,b,c), with T any linear three-leaf tree, and

    N = lambda a.a a J(a).

Then `N N -> (N N) J(N)`. The same leftmost N N repeats forever beneath a
growing trailing application context. This resolves twelve layouts.

### 4.3 Eighteen systems with at least two pending arguments

Now T is any of the six left-associated permutations `x y z`, and J is
as above. The possible N bodies are

    N X -> X J(X) X,
    N X -> X (X J(X)),
    N X -> X J(X).

Use the closed grammar generated by N, J(X), and application. At a head
state with at least two pending arguments, every atom is fully saturated:
N needs one argument, J needs two. An N step leaves at least as many
pending arguments; a J step replaces two consumed arguments by the two
arguments of the left-associated T. The head may itself be an application,
which only increases the number of pending arguments. This invariant
therefore yields an infinite weak-head trace.

For the first N, N N reaches two pending arguments in one step. For the
second it does so in two. These resolve twelve remaining `(2,0,0)` layouts.
For the third N, the two three-leaf-diagonal cases start at N N N or
N (N N); the latter reaches `N N J(N N)` in one step. This resolves the
six still-unresolved left-associated cases among those layouts.

### 4.4 Four duplicated-final-argument wrappers

Put N=lambda a.a J(a), and write J^k for iteration on its captured argument.
There are four remaining `(1,0,1)` cases:

1. `J(X) U V -> X U (V V)`.
   Put d(V)=V V. Induction gives

       J^k(N) U V ->* N U d^k(V),
       N J^k(N) V ->* N J^(k+1)(N) d^k(V),       k>=1.

2. `J(X) U V -> X U V V`.
   Induction gives

       J^k(N) U V ->* N U V ... V,               k+1 copies,
       N J^k(N) V ->* N J^(k+1)(N) V ... V.

3. `J(X) U V -> U X (V V)`. Directly,

       N J(N) V ->^5 N J(N) ((V V) (V V)).

4. `J(X) U V -> U X V V`. Directly,

       N J(N) V ->^5 N J(N) V V V.

In all four, applying N N to the public continuation reaches the displayed
invariant; the eventual stream stays a trailing argument and cannot take
the head. These are infinite head traces on the identity-source invocation.

### 4.5 The two boxed outer-between cases

For the first, put

    J_t(X) = lambda u.X u t,
    N = lambda a b.a J_(K b)(a),

where K b means the literal vacuous abstraction. A nonempty wrapper word
W=J_t1(...J_tk(N)) satisfies

    W U ->* N U tk ... t1,
    N W P rest... ->* N J_(K P)(W) tk ... t1 rest....

The new wrapper word remains nonempty. Starting with N N C S reaches
`N J_(K C)(N) S`; there is always a pending argument, so the invariant
iterates indefinitely.

For the second, put

    Q(X,Y) = lambda u.u X (K Y),
    N = lambda a b.a Q(a,b),
    W = Q(N,C).

For arbitrary P and every trailing vector,

    N W P rest... ->^4 N W (K P) (K C) rest....

Starting N N C S reaches N W S. This four-step macro preserves the fixed W,
wraps P, and appends a trailing argument forever.

## 5. The exact remaining terms

T below ranges over the six right-associated permutations of a,b,c:

    a (b c), a (c b), b (a c), b (c a), c (a b), c (b a).

Put J(x)=lambda b c.T(x,b,c). Twelve remaining terms are

    delta (lambda a.a J(a) a),
    delta (lambda a.a (a J(a))).

The thirteenth is

    (lambda d.d (d d))
      (lambda a.a (lambda b c.a (c b))).

`progress.json` supplies the literal sources, their stable layout IDs, and
identity-call engine verdicts. The eight engine UNKNOWN IDs are
448,449,455,460,461,472,473,572. Exact 37-bit source wires are in
`four_lambda.json`; the engine input deliberately applies each candidate
to rigid C and the quotation of I with rigid N, rather than concluding
anything from non-normalization of the candidate alone.

The next global step is to give symbolic, independently replayable
refutations of these thirteen, especially the eight unresolved by the
engine, and review the inventory argument. No such refutation or 38-bit
claim is supplied here.
