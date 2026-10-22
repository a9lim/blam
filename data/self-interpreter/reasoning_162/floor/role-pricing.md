# A role obstruction and a sharp four-lambda serial reader bound

The unrestricted target `cost(R)+4 depth(j)>=46` remains open. This note
proves a sharp bound for a source class containing the 162's reader and
excludes one natural way of sharing its callbacks. The source and role
arguments are **handwritten and not independently reviewed**. The unbounded
application algebra underlying them is checked in `RoleAlgebra.lean`.

## 1. Statements and exact scope

Keep the independent rigid reader laws and the [c,j] price convention in
`STATE46.md`. A **flat callback** is `lambda x.B`, where B is application-only
over x,s,c; it has one source lambda and no free j. All source counts and
prices below are literal, before beta reduction.

**Sharp serial-reader theorem.** Suppose the literal reader is

    R = lambda s. s D E j,

where D and E are literal abstractions with free names among s,c, and there
are at most three lambdas in D and E together. Then every successful R has
`w>=46`. More precisely:

- If E is flat and D has at most two lambdas, the variable law is impossible
  at any size.
- The only remaining allocation is one lambda in D and two in E. In this
  case the source price of E is at least 28, D costs at least 4, and the
  outside stream binder/head/three applications cost 10. Thus cost(R)>=42
  and w>=46. The 162 attains equality.

The callback with two lambdas may contain a source redex. Normality is not
an assumption in this statement. D is not assumed to be I, and E is not
assumed to be the 162's variable arm.

**Shared-callback obstruction.** If D is a literal abstraction with one or
two source lambdas and free names among s,c, no reader beta-equal to

    lambda s. s D D j

can satisfy the variable law at every unary length. This includes the
literal source

    lambda s. ((lambda h. s h h) D) j.

Here the j hole is at depth one. With a two-lambda D this source has four
lambdas, just as the 162 does. The semantic exclusion survives this
nonlinear sharing without charging two copies of D.

The numerical 46 theorem is for the stated **literal serial source**.
It is not a price transfer from an expanded normal form to arbitrary lets.
Specializing one shared callback with different operands, other reader
heads, and serial readers with more source lambdas remain open. Direct
hole-hoists of the priced serial class have weight at least 50, since
hoisting d=1 adds `3+f>=4`; other depth-zero sources remain open.

## 2. Unbounded unary application algebra

Write `U_m=U_m(N)`, `F=lambda a b.b`, `I=lambda a.a`, and `W=lambda a.N`.
The mixed diagonal has exactly the following reduction alternatives:

    U_a U_b ->* W, I, or N U_q for some q>=0.       (1)

Its proof is an induction using

    U_0 U_0       ->* W,
    U_0 U_(b+1)   ->* I,
    U_(a+1) U_0   ->* N U_a,
    U_(a+1) U_(b+1) ->* U_b U_a.

Every recursive call lowers a+b by two. No finite-length cutoff is involved.
All four reductions and the general theorem `unary_cross` are in Lean.

For positive m the rest of the application table is

    U_m F ->* U_(m-1),     U_m I ->* I,
    U_m W ->* N U_(m-1),   U_m (z A...) ->* z A... F U_(m-1),
    F A ->* I,            I A ->* A,             W A ->* N.

A rigid-headed neutral applied to A remains neutral. The named rigid
parameters may include c,j and an opaque callback marker h.

Consequently any fixed application-only expression over `U_n,F` and rigid
parameters, with a application nodes, has, for every n>=a+2, a reduct of
one of these forms:

    U_(n-k) with k<=a,   F,   I,   W,
    or a neutral headed by N or one of the rigid parameters.              (2)

This is structural induction on the expression. The only new first-class
stream offset is made by applying a stream to F; its offset increases by
one. Mixed stream applications use (1). A short stream produced inside
`N U_q` is trapped under that neutral head and cannot become a function.

`expr_value` proves (2) for every expression and every n above its explicit
threshold. `expr_function_barrier` also proves that each surviving function
in this reduct has **no free parameter except N**. In particular, no
c-containing or h-containing function can be assembled from these data
and applications alone. The neutral alternatives can still contain c or h;
their heads and existing arguments cannot be removed.

The same closure argument accepts several long streams `U_(n-k_i)` for
fixed offsets k_i, and arguments already in the value class. Choose n above
the finitely many offsets and subsequent application budgets. This uses
the general `value_apply` closure theorem, not an assumption that all stream
offsets are equal. An arbitrary finite number of copies of a flat expression
does not change the obstruction.

We also use the smaller all-length algebra with **no available F**:
application-only expressions over s,c,j have functional values only s and
its square W. Their c-headed neutral values have first argument s, W, F,
or another neutral, never `U_(n-1)`. Thus they cannot equal
`c U_(n-1) N`, even with many occurrences of c or j. Adding source I values
adds I as a possible function but still cannot produce that first argument.
The exact tables for this smaller algebra are in `shallow-readers.md`.

One further consequence will justify activating, rather than merely retaining,
a flat callback. If `H=lambda q.T` and T is application-only over s,c,j,q,
then H[U_n/s] cannot be the preceding cell V=U_(n-1). For n=1, V's body has
q-headed prefix `q K N`, while the smaller algebra cannot give q a first
argument K. For n>=2 the target prefix is `q F U_(n-2)`. A q-headed result
can get first argument F only when s opens on the bare q; this simultaneously
appends V as its second argument. That fixed second argument cannot become
U_(n-2). Explicit source arguments cannot supply bare F. Thus a flat
callback cannot survive uncalled as the required preceding cell.

## 3. One remaining source lambda cannot wait past a unary argument

Consider `D[U_n/s] F`, where D has two source lambdas. Contracting D's
outer binder substitutes only the closed affine F. Exactly one source
lambda H remains, possibly inside source applications. Its body is flat.
The substitution can copy F, but cannot copy H.

Temporarily replace H by a fresh rigid marker h and use (2). Every other
lambda is input data and affine. Before H first activates, h therefore has
at most one residual occurrence. It cannot appear both as a function and
inside its own argument.

Now apply this expression to a long unary argument `T=U_(n-k)`.

- If the marked expression reduces to a data function, H was erased.
  Applying it to T stays within (2).
- If it reduces to an N/c-headed neutral, T appends to that neutral.
- If it reduces to `h A...`, H activates on the first internal argument A;
  if it reduces to bare h, H activates on T itself. It cannot remain
  protected while T is discarded: a function containing h, such as K h,
  is absent from (2).

Normalize the argument of H before contracting it. This argument contains
no H and lies in the data/neutral value class. H's flat body can copy that
argument, but then contains only applications and such values. There is no
source lambda left. Applying the remaining pending arguments stays within
the same algebra. In particular,

    D[U_n/s] F T

has a data/neutral value of the form (2), for all sufficiently large n.
Any surviving function is c-free. This conclusion includes source redexes
and nonlinear use of H's parameter; it does not price an expanded source.

This is the role obstruction: a single remaining source lambda cannot both
survive the supplied unary argument and wait to absorb the later opaque j.
A generic constant wrapper preserving that lambda is not supplied by the
unary data algebra.

## 4. A flat final callback cannot complete the serial spine

Let E be flat and let G be any value in (2). Then

    G E j !=beta c U_(n-1) N                     (3)

for all sufficiently large n, with E closed over s,c only.

- G=F gives j; G=I gives E j. After its sole contraction, E j is
  application-only over s,c,j and fails the smaller algebra.
- G=W gives N j. A neutral G keeps its head and has the final argument j;
  a c-headed result cannot have the required final argument N.
- G=U_m gives `E F U_(m-1) j`. Since E is flat, E F is in (2).
  If this value is F, I, or W the result has head j/N or is a data function.
  If it is another stream, (1) gives I/W/N-headed, again giving j/N after
  the last application. A neutral retains the wrong final argument j.

For a one-lambda D, `D F U_(n-1)` lies in (2) by ordinary closure.
For a two-lambda D it lies there by section 3. Since

    U_n D E j ->* D F U_(n-1) E j,

(3) proves the first impossibility statement of section 1. The zero law is
not needed.

## 5. With a flat selector, the other arm must return c V N on j

Now let D be flat and E have two source lambdas. Normalize `D F` using (2),
and put V=U_(n-1). Consider `D F V E j` for a sufficiently large n.

- F gives E j directly.
- A stream applied to V gives W, I, or an N-headed neutral by (1).
  Only I can succeed, and it again gives E j.
- W or a neutral fails: either the head is N or the final j remains an
  argument of a rigid c head.
- I gives `E F U_(n-2) j`. Section 3 reduces its prefix before j to (2).
  No such value applied to rigid j can yield `c V N`: a data function has
  no c, while a c-headed neutral keeps j as its last argument.

Therefore the serial reader's variable law forces

    E[U_n/s] j =beta c U_(n-1) N                 (4)

at every sufficiently large n where the serial reader succeeds. It is not
necessary to prove that D is I or even that D has one uniform normal value
across n. All cases that can succeed reduce to (4).

## 6. Pricing a two-lambda variable arm without a separate skip module

**Arm theorem.** Let `E=lambda u.B`, with exactly one other source lambda H,
and free names among s,c, in the reader's frame (s nearest, then c). If (4)
holds at every unary length, or just at sufficiently large lengths for this
fixed source, then the literal source price of E is at least 28.

In fact, below 28 the following argument excludes every sufficiently large
n. It does not require the short n=1 instance used in the older slot proof.

### At least three source stream occurrences

B cannot be lambda-rooted, since E j must return a neutral. If B contains
a source redex, its only possible source contractor is H. Its argument
contains no source lambda. Contracting that redex removes H and leaves an
application-only expression over s,c,j after u=j; the smaller algebra
excludes (4). Thus B is beta-normal in every successful case.

Mark H. Before it first activates, the smaller algebra over s,c,j,h has
only s and W as functional values. A nontrivial subtree cannot return bare
h, and H is not in source function position. Its first activation must be
at a literal `s H`, supplying F and then V. Without activation, the only
additional way to fill the target's raw-cell argument would be the uncalled
H itself; the preceding-cell obstruction at the end of section 2 excludes
that. The smaller algebra excludes the other values. No source code has been copied before
this step, since all intervening input data are affine.

Let k count the original source s leaves in E. Initially there are k
occurrences of rigid N. The u=j contraction copies only j, and the H=F
contraction copies only the closed F. Every remaining binder is affine
data. Hence N occurrences can never increase along this reduction.

The target has two N occurrences: one inside V and the final bare N. For
large n, the latter bare N must descend from an application of W. Here is
the necessary provenance distinction:

- Nonterminal cells append F and a still-long stream, never a bare N.
- A mixed unequal diagonal may expose `N U_q`; its N head already has an
  argument and cannot become the target's bare N. Its short stream is
  trapped as an argument. Such a neutral does not occur anywhere in the
  required normal output and must be erased.
- No functional U_0 is reached by a fixed number of F-tail operations when
  n is chosen above the finite expression's offset budget.
- The remaining route to a bare N is W applied to an operand. Producing
  this W from first-class long streams uses an equal diagonal: two N-bearing
  streams become W, which has just one N. At least one N has been erased.

This is a refinement of the application-algebra induction tracking the
origin of the target's *unapplied* N, not a count of all syntactic N leaves
inside other values. Since the final output still has two N occurrences,
**k>=3**. No separate charge for a tail extractor or a skip routine was
assumed.

### Three applications are insufficient

Let A count applications in E. There are A+1 leaves. The three s leaves
and required c already give A>=3. If A=3, these are exactly the four leaves:
both u and H's binder are vacuous. Write H=`lambda q.T`. T is application-only
over s,c; at most two s leaves can be inside it, because the first activation
uses another source s. The smaller algebra gives these exhaustive cases:

- T is a nontrivial c-headed neutral. Its first argument is not V. This
  permanent first argument cannot be repaired, and erasing it loses the
  only c.
- T=c. The activation gives c V. Two s leaves remain outside H. To reach
  c V N they would have to provide the final bare N. They can provide only
  s or W, not N. Calling a stream on c V appends two unwanted arguments;
  erasing c V loses c.
- T=s. The activation gives `U_n U_(n-1)`, which is I or N U_0. The I case
  erases two N occurrences, leaving at most one. The N U_0 case must also
  be erased, since this irreducible neutral occurs nowhere in the target;
  again at most one N remains.
- T=W, using two source s leaves. The activation consumes V and leaves
  bare N; all three source s leaves have now been spent, with only one N
  left. It cannot supply the target's two N occurrences.

There is no N-headed T using at most two s leaves: the first bare-N or
N-headed route in the smaller algebra already needs three. These cases
exclude A=3, so **A>=4**.

### The equality-budget index tax

For two lambdas,

    |E| = 6 + 4A + X,

where X counts the actual zero-based indices in the whole reader frame.
Each source s costs at least one index bit, and each c at least two. Thus
X>=2, and A>=5 already gives |E|>=28.

For A=4 there are five leaves. If there are four s leaves or two c leaves,
X>=6 immediately. Otherwise they are three s, one c, and one bound-variable
leaf. If X<=5, all s and c leaves must lie outside H; the only leaf that can
fill H's nonempty body is its own parameter. Therefore H=I, its parameter
is the sole bound leaf, and u is unused. B is then application-only over
s,c,I. The smaller algebra with I still cannot produce c V N. Hence this
last case fails and **X>=6** whenever A=4.

It follows that |E|>=28 in every case. The final arithmetic implication is
`two_lambda_arm_price` in Lean. Its source-count hypotheses are derived by
the handwritten arguments above, not assumed to follow from the arithmetic
theorem.

The 162's E has A=4, three s leaves, one c and one u leaf, X=6, and price 28.
Its c under `lambda q` pays the additional index bit in the tight case.

## 7. The shared two-lambda callback also fails

Let D have two source lambdas. The one-lambda case was already excluded in
section 4. Suppose `U_n D D j` satisfies the variable law for all n.

For large n, section 3 puts `D F V` into the value class (2); call this value
G. Then the required result is `G D j`.

- F, W and neutral values fail as before.
- If G is a long stream U_m, the result is `D F U_(m-1) j`. Section 3 puts
  its prefix before j into (2), and no resulting value applied to j can
  produce c V N.
- If G=I, success requires `D j =beta c V N`. D has no free j, so hygienic
  substitution of F for that rigid j yields `D F =beta c V N`. But then
  `D F V =beta c V N V`, contradicting its reduction to I by confluence.

Thus no D with at most two source lambdas works. This prices no copies of
D and never assumes that its first and second invocation use different
code. It is a semantic role conflict that survives the explicit sharing
redex displayed in section 1.

The smallest nearby unresolved sharing shape is a shared callback supplied
with **different specialization arguments**, or another application context
around its copies. The proof above does not identify those different
closures with the same D. Sharing a callback with three or more source
lambdas is also outside this obstruction.

## 8. Verification and remaining boundary

`RoleAlgebra.lean` checks the general mixed-diagonal theorem, application
closure, every finite flat expression at all n above its source-dependent
threshold, and the absence of c/marker-containing function values. It also
checks the three final arithmetic implications. There are no candidate
terms, fuel-based classifications, or source sweeps in that file.

The check passed in 0.30 seconds with two threads. The log and source hash
are in `role-algebra-lean.log` and `role-algebra-kernel-check.json`. Run from
`lean/`:

    LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
      lean -j2 /Users/a9lim/Work/blam/tmp/round3/floor/RoleAlgebra.lean

The one-marker source argument, bare-N provenance refinement, arm-price
classification, sharp serial theorem, and shared-callback obstruction are
handwritten. The whole reader bound 46 is neither formalized nor proved.
The general floor remains 30 and the interpreter-class interval [146,162].
No new correct reader or complete interpreter was constructed, so there is
no new battery or polish claim.
