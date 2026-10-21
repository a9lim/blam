# A 27-bit bound for reader handlers

These are Codex's handwritten proofs; all three bounds were independently
reviewed. They are not a global 165-bit optimality theorem. The first
theorem removes the syntactic restriction on
the handler while retaining independent, rigid-neighbour laws. The second
allows the actual correlation between a unary selector and its remainder,
but restricts the handler's free variables to `j,c`. The third also permits
access to the whole stream, while keeping the other ambient parameters
independent and rigid.

## Statement

The ambient de Bruijn frame, innermost first, is `[s,j,c,p,x]`. Let `H`
be any lambda term in that frame. Put `K = λa b.a`, `F = λa b.b`.
For fresh independent rigid variables `R,T`, suppose

```
H K R R =β R j,
H F R T =β c R T.
```

Then `|H| ≥ 27`. The term

```
λb. b (λu v. v j) c
```

attains 27. No head shape, normality, restriction on repeated tests, or
absence of common post-dispatch arguments is assumed.

Consequently a reader `s H S` with these handler laws and an independent
stop-at-first-zero skip law still costs at least `6 + 27 + 10 = 43`
bits. Keeping the other 122 bits of the 165 unchanged gives a 165-bit
minimum for this larger, still parametric reader class.

## Elementary constraints

Write `L,A,X` for abstraction count, application count, and sum of zero-based
indices, so `|H| = 2L + 4A + 2 + X`. A binary application/unary abstraction
tree has `A+1` variable leaves. Both `j` and `c` must occur freely in `H`,
since reduction cannot create a missing rigid variable. Hence `X ≥ 1+2=3`.

The first argument must matter: the two displayed laws have different rigid
heads after the same second and third arguments are supplied. In particular
some surviving abstraction must bind the first argument non-vacuously.

The head normal form of `H` must be

```
λb r1 ... rm. b A1 ... Ak,    0 ≤ m ≤ 2, k ≥ 2.
```

Indeed a fixed ambient rigid head cannot change between the laws; a tail
binder would give head `R` or `T` on the `F` branch, rather than `c`.
More than three leading lambdas leave a lambda in the result. With fewer
than two internal arguments to `b`, `F` selects one of the externally
supplied rigid tails, never the required `c`-headed expression.

The use of head normal forms here is semantic, not a size assumption.
The argument below treats compression by beta redexes separately.

### A single explicit abstraction cannot suffice

If a term with at most one explicit abstraction has a leading lambda in
head normal form, that lambda was never consumed: there is no second
abstraction for a head reduction to expose or duplicate. Thus the term
already has the shape `λb.B`, with `B` application-only.

Substituting `K` for `b` leaves an application tree over `K` and rigid
ambient variables. The only reductions are `K U V → U`. They preserve
left-to-right order of all surviving rigid leaves. In

```
B[b:=K] R R
```

every occurrence of `j` precedes the fresh `R` occurrences, whereas the
required normal form `R j` has an `R` before `j`. This is impossible.
The same argument permits additional vacuous lambdas: their contractions
only erase leaves, and unused lambdas left at the head also fail the law.

Therefore every handler has `L ≥ 2`.

## Excluding at most three applications

First, a handler with at most two applications is impossible. Its at most
three leaves are already needed for `j`, `c`, and an occurrence of the
first-argument binder. There is no non-vacuous tail binder and no repeated
binder. All internal beta contractions are affine and decrease application
count. In normal form the forced two-argument Boolean dispatch spends both
available applications. The `F` branch can be `c` with its two external
arguments, but its `K` branch is a leaf, with only vacuous lambdas around it;
it cannot send `j` to the fresh `R`.

Now let `A=3`, so there are four leaves. If an internal beta reduction
duplicates its argument, its binder uses at least two leaves. Together
with `j,c`, this consumes all four: every other abstraction is vacuous.
Once that duplicating binder is contracted, no non-vacuous abstraction
remains to receive the future first argument. The handler laws therefore
exclude such a head reduction. An affine internal head reduction leaves
at most two applications, already excluded. The same applies to a redex
in a branch: an affine contraction leaves at most two applications; a
nonlinear one has used up every non-vacuous binder occurrence. Thus a
successful four-leaf handler is beta-normal.

Classify its forced head form. A Boolean head with three internal
arguments spends all three applications, so each of its arguments is a
chain of lambdas ending in one variable. Such a chain only selects or
discards supplied arguments; it cannot construct an application.
In the `K` branch the selected first chain receives the common third
chain, followed by `2-m` external copies of `R`. To yield `R j`, `j`
must be the common argument left after a previously bound `R` becomes
head. No external `R` may follow that `j`, so this forces `m=2`.
(For `m=0`, every `j` precedes the fresh `R` leaves and selection cannot
reverse them. For `m=1`, a bound `R` can precede `j`, but then the final
external `R` remains; selecting or discarding that final argument also
consumes or discards the earlier `j`.)
When `m=2`, however, the `F` branch is only its selected second chain
applied to the common third chain. It has at most two rigid variable
leaves; substitution of affine `F` and reduction of these chains cannot
produce the three independent rigid leaves `c,R,T`. This case fails.

With exactly two internal Boolean arguments, only one application
remains:

* With no tail bound, the zero branch needs the remaining application
  to connect its fresh head `R` to `j`. The `F` branch therefore has
  no applications, and its law forces it to be `c`, without vacuous
  wrappers. The zero branch must have normal form `λu v.u j` or
  `λu v.v j`.
* With one tail bound, the one remaining application is needed for `c r`;
  the zero branch is only a leaf, up to vacuous lambdas, and fails.
* With two tails bound, `c r t` already requires two further applications.

The first case alone succeeds. Its smaller variant has three lambdas,
three applications, and `X=7`, hence 27 bits. The other costs 28.

## Excluding four applications below 27 bits

Suppose `A=4` and `|H|≤26`. Since `L≥2` and `X≥3`,

```
2L+X ≤ 8,
```

so `L=2`, `X≤4`. If `H` begins syntactically with a lambda, the required
`j,c` occurrences alone contribute at least `(1+1)+(2+1)=5` to `X`.
Thus `H` is not syntactically a lambda, and its head reduction must consume
an abstraction before exposing a lambda.

If that contraction is affine, the reduct has at most one explicit
abstraction and fails the preceding lemma. The only remaining possibility
is that the head redex duplicates an argument containing the other
abstraction.

There are five leaves. Two belong to the duplicated binder `x`, and two
are the required `j,c`. For an eventual input-dependent lambda the fifth
must belong to the other binder `b`, exactly once. Therefore the
duplicated argument has a single affine abstraction and otherwise only
application nodes and the rigid leaves `j,c`.

Such an argument can expose a lambda only if it begins with `λb`.
(Consuming its only abstraction leaves an application-only rigid term.)
Write it `D=λb.V`, where `b` occurs once. If the head of `V` is rigid,
applying `D` immediately yields that rigid head. Otherwise

```
D = λb. b W1 ... Wq,
```

where every `Wi` is application-only over rigid leaves. For `q>0`, every
application tree of copies of `D` and rigid leaves with at least two
leaves is rigid-headed after reduction: `D U` pushes its fixed nonempty
rigid spine onto `U`, and a second `D` consumes its first rigid argument.
For `q=0`, `D=I`; applications of identities preserve every rigid leaf,
so a tree containing either required rigid variable cannot yield a
lambda. These cases exhaust the duplicated argument.

The surrounding body contains both occurrences of `x`; hence after
substitution it is such a nontrivial application tree. It cannot expose
the input-dependent lambda required by the handler laws. This excludes
the last below-27 case with four applications.

## Five or more applications

For `A≥5`, the elementary bounds `L≥1`, `X≥3` already give

```
|H| ≥ 2 + 20 + 2 + 3 = 27.
```

Together the cases prove the claim.

## Correlated selectors without ambient stream access

Keep the ambient frame `[s,j,c,p,x]`, but now require that the only free
variables occurring in `H` are `j,c`. Internal bound variables and arbitrary
beta redexes are permitted. Define the Scott cells and unary selectors by

```
cons b t = λh. h b t,
X₀(N) = cons K N,
Xₙ₊₁(N) = cons F Xₙ(N).
```

For fresh rigid variables `R,N`, suppose

```
H K R R =β R j,
H F Xₙ(N) N =β c Xₙ(N) N       for every n ≥ 0.
```

Then again `|H| ≥ 27`, with equality attained by
`λb. b (λu v. v j) c`. The second law is the actual selector/remainder
correlation; it does not assert the stronger independent law `H F R T =β
c R T`.

### Dependence on the first argument

Both `j,c` must occur freely, so `X≥3` remains necessary. The zero law
also retains the single-abstraction obstruction above, giving `L≥2`.

The handler must use its first argument. To see this without assuming
independent tails, suppose its first exposed abstraction were vacuous,
so `H =β λb.G` with `b` absent from `G`. The zero law gives
`G R R →* R j`. Label the two supplied occurrences of the fresh rigid
variable differently, as `r,t`. Identifying rigid variables cannot create
a beta redex, so the same reduction sequence lifts to either

```
G r t →* r j,     or     G r t →* t j.
```

After substituting `r := Xₙ(N)` and `t := N`, these become respectively
`j Bₙ Tₙ` or `N j`, where `Xₙ(N)=cons Bₙ Tₙ`. Their rigid heads differ
from the required `c`. Thus at least one original bound-variable leaf
is needed to receive the first argument non-vacuously.

The head normal form has at most three leading abstractions: more would
leave a lambda after the three supplied arguments. Its head cannot be
an ambient variable, by the zero law, or the third argument, by the
variable law. Besides the Boolean head `b`, there is now a genuinely new
possibility: the second argument `r`.

If a beta-normal handler has that head, the zero law forces all three
inputs to be bound. With only `λb r` at the front, the final external
`R` would remain as the last argument of the rigid head `R`, whereas the
required last argument is `j`. Therefore this case has the form

```
λb r t. r A
```

in head normal form. Its distinct leaves for `j,c,b,r` imply `A≥3`;
the three leading binders give `L≥3`, and these four occurrences
contribute at least `4+5+2+1=12` to `X`. Every beta-normal handler
with this head consequently costs at least 32 bits. This possibility
must be excluded by cost, not by treating the selector as rigid.

### At most three applications, including compressed terms

With at most two applications there are at most three leaves, already
needed for `j,c` and the first-argument binder. There is no live tail
binder and no repeated binder. Internal reductions are affine and cannot
increase the application count. The resulting head must be Boolean.
Fewer than two internal Boolean arguments fail: on the `F` branch they
leave either a lambda, the rigid `N`, or `Xₙ(N) N → N Bₙ Tₙ`.
Two internal arguments spend both available applications, leaving no
application in the zero arm that could produce `R j`. Thus `A≤2`
is impossible.

For `A=3`, an affine internal beta contraction reduces the application
count to at most two and is impossible by the preceding paragraph.
A nonlinear contraction uses at least two of the four leaves for its
own binder, and the other two are required by `j,c`. All other
abstractions are therefore vacuous. Contracting that binder cannot
leave any non-vacuous abstraction to receive a future argument:
capture-avoiding substitution does not make a vacuous binder live.
This also fails the zero law. Hence a successful three-application
handler is beta-normal.

Its second-argument head costs at least 32, as just shown. For a Boolean
head, the zero-law classification in the parametric proof still applies.
Three internal Boolean arguments leave only lambda chains ending in one
variable as arguments. To obtain `R j`, both tails must already be bound,
the selected zero arm must be `r` or `t`, and the common third argument
must be `j`. The selected `F` arm is then a one-leaf lambda chain applied
only to `j`. A rigid `c` leaf gives just `c j`; a selector leaf gives
`Xₙ(N) j → j Bₙ Tₙ`; other leaves and chains also cannot give
`c Xₙ(N) N`.

With two internal Boolean arguments, one application remains:

* If neither tail is bound, the zero arm needs that application. The
  `F` arm is a one-leaf lambda chain applied to `Xₙ(N),N`; its law
  forces the chain to be `c`. The zero arm is therefore
  `λu v.u j` or `λu v.v j`, whose smaller total handler costs 27.
* If one tail is bound, the `F` arm needs an application to retain both
  output arguments. A one-leaf lambda chain cannot manufacture `c
  Xₙ(N) N`: a `c` leaf has only the one remaining external argument,
  while a selector leaf applied to `N` exposes head `N`. The zero arm
  is then a chain with no applications and cannot produce `R j`.
* If both tails are bound, the `F` arm has at most one application.
  A normal chain alone cannot have the required output. For an
  application `v D`, `D` is a one-leaf lambda chain. Head `c` gives
  only one argument; heads `j,N` are wrong; head `F` leaves a lambda.
  The new possibility is `v=r`, giving
  `Xₙ(N) D → D Bₙ Tₙ`. For this to expose `c` with two arguments,
  the chain must be exactly `D=c`, yielding `c Bₙ Tₙ`. Already
  at `n=0`, its first argument `K` differs from the required Scott
  cell `X₀(N)`. Any lambda in a chain ending in `c` consumes at least
  one of those two arguments and leaves too few.

This closes the only application-budget case in which the correlated
selector could replace an independently rigid tail.

### Four or more applications

The compressed four-application case also survives the change of laws;
it needs the zero law, the presence of `j,c`, and a live input binder,
not independent variable-arm tails. Here are the details.

Under `A=4` and `|H|≤26`, the bounds `L≥2`, `X≥3` give `L=2`,
`X≤4`. The handler cannot begin with a lambda, because its free `j,c`
would then alone contribute at least five to `X`. Head reduction must
consume an abstraction before exposing the required leading lambda.
An affine contraction leaves at most one explicit abstraction and fails
the zero-law obstruction. A nonlinear contraction must duplicate an
argument containing the other abstraction; otherwise it too leaves at
most one abstraction.

Of the five leaves, two are occurrences of the contracted binder and
two are `j,c`. The fifth must be a live occurrence of the remaining
binder. Thus the duplicated argument has exactly one affine abstraction.
It can expose a lambda only if it already begins with that abstraction:
consuming its sole lambda leaves only applications and rigid variables.
Write the argument as `D=λb.V`. If `V` has a rigid head, applying a
copy of `D` exposes that rigid head. Otherwise

```
D = λb. b W₁ ... Wq,
```

where all `Wi` are application-only over rigid variables. For `q>0`,
any nontrivial application tree of copies of `D` and rigid variables
becomes rigid-headed: a copy pushes its fixed nonempty rigid spine onto
its argument, and a second copy consumes a rigid argument from that
spine. For `q=0`, `D=I`, and applications of identities cannot discard
the required rigid `j,c` leaves to expose a lambda. After the nonlinear
contraction, the surrounding body contains at least two copies of `D`
and no other abstractions, so these cases exhaust it. It cannot expose
the required input-receiving lambda.

Finally `A≥5`, `L≥1`, `X≥3` already imply `|H|≥27`. Together these
cases prove the correlated-selector bound.

## Whole-stream correlated handlers

Allow all five ambient variables in `H`. Write `H[S]` for substitution of
`S` for its free stream variable `s`, and retain the definitions of `cons`
and `X_n` above. Suppose

```
H[cons K R] K R R =β R j,
H[cons F X_n(N)] F X_n(N) N =β c X_n(N) N     for every n ≥ 0,
```

with `R,N,j,c,p,x` independent rigid parameters. Then `|H|≥27`.
The usual 27-bit handler attains the bound. This is still a theorem about
the fixed outer reader `s H (s s s)`, not arbitrary universal programs.

The parameters `p,x` can be removed without loss: substitute `j` for both.
Neither occurs in the required outputs, so both laws remain valid, and
replacing a higher free index by `j` can only decrease size. Hence it is
enough to consider free variables `s,j,c`. Both `j,c` must occur, giving
`X≥3`. A term with `A` applications has `A+1` leaves.

### No handler with only vacuous abstractions

This lemma has no size restriction. Compare the zero stream and the first
one stream:

```
P = cons K R,
T = cons K N,
Q = cons F T.
```

Consider expressions generated by `s,j,c`, application, and vacuous
abstraction. Their evaluations at `s=P` and `s=Q` have related head values
of the following three kinds:

* `P` on the left corresponds to `Q` on the right;
* a constant function `λ_.U` corresponds to `λ_.V` when `U,V` are related;
* a rigid head corresponds to the same rigid head, except that `R` on
  the left corresponds to `N` on the right. Its arguments are immaterial
  for this head relation.

This relation is preserved by application. The only nontrivial cell cases
are

```
P P →* K R,              Q Q →* K N,
P (λ_.U) →* U R,        Q (λ_.V) →* V T.
```

For the second line, inspect the related values of `U,V`. Constant
functions discard `R,T` and return related bodies. Rigid heads retain
their related heads. The cell case gives

```
P R → R K R,            Q T →* N T,
```

again the related rigid heads `R,N`. Applying a cell to a rigid-headed
value preserves that value's head; applying a constant discards the
argument. These observations prove closure by structural induction on the
expression. All abstractions in the expanded expressions are affine, so
these head evaluations terminate. In particular, a bare `T` is never a
new functional value in the relation; it appears only in the displayed
special-argument calculation or inside ignored arguments.

Now apply the external arguments `K,R,R` on the left and `F,T,N` on the
right. An exposed rigid head cannot give `R j` while any external `R`
remains: the last such argument would remain last. An exposed `P` with
three, two, or one remaining external arguments gives respectively
`R`, `R K R R`, or `R K R`, none equal to `R j`. Therefore the zero law
requires three constant-function heads in succession, followed by a
rigid head `R`. The corresponding right evaluation discards its three
external arguments and has rigid head `N`, contradicting the required
head `c`.

Thus a valid handler has at least one non-vacuous abstraction. This also
excludes zero-abstraction handlers, without any application bound.

### A one-abstraction handler needs at least five applications

A one-abstraction handler cannot contain a syntactic beta redex:
contracting its sole abstraction would leave an equivalent
zero-abstraction handler. Thus it is beta-normal.

For the zero stream, use the macro constants `P=cons K R` and `K`, with
rules

```
P U → U K R,            K U V → U.
```

Partial applications `K U` are retained as constant-function values.
This terminating macro calculus is simply a presentation of the same
beta reductions. Mark every application node originating in `H`.
The only new applications introduced by `P` have right operands `K` and
`R`. Consequently an application whose right subtree contains the rigid
`j` must come from a marked node. The rules neither duplicate such nodes
nor create `j`.

First suppose `H=λb.B`. After `b:=K`, the body is an application tree over
`P,K` and rigid variables. Its possible functional head values are `P`,
`K`, and `K U`. Inspecting them against the two remaining arguments shows

```
B[K/b] R R →* R j   implies   B[K/b] →* K (K (R j)).
```

The three displayed applications with `j` in their right subtrees are
three distinct surviving marked nodes. At least two additional marked
nodes must have been consumed to expose `R` as the head of `R j`.
Here is the small accounting argument. Before any marked node is consumed,
no rule can fire. If at most one is consumed, the first rule must be
`P U`: an initial `K U V` contraction consumes two marked nodes.
Thereafter only generated nodes may be contracted. An application-rooted
`U` cannot expose a functional head without contracting its marked head
application. Thus the only non-rigid possibilities for `U` are the leaves
`P,K`. They give `P P →* K R` and `P K →* K`; neither produces an
`R`-headed application. A rigid-headed `U` remains rigid-headed, with
`R` only a newly appended argument. Hence exposing `R j` requires a
second consumed marked node, distinct from the three surviving nodes.
Therefore `A≥5`.

Now suppose the one-abstraction handler is application-headed. Its head
must be `s`. Replace its sole abstraction `D=λb.B` by an opaque marker.
In application trees over `P` and rigid markers the only functional head
values are `P` and `K R`. Moreover, in a beta-normal source tree, a
nontrivial expression that reaches a marker as head supplies it first
with `K,R`. This follows by induction on an application: applying `P`
to a marker introduces precisely those arguments; applying `K R` returns
`R`; and an already rigid head retains its preceding arguments. The
exception of a marker already in function position is excluded by source
beta-normality.

The handler must activate `D`; otherwise it cannot satisfy the zero law.
Its first argument is therefore `K`. After this contraction only
`P,K` and rigid variables remain, and no `j`-bearing application is
duplicated. All three external arguments are still pending, so inspection
of the same functional head values gives

```
H[P] →* K (K (K (R j))).
```

This requires four distinct surviving marked `j`-bearing applications.
The initial application of the source head `s` already consumed another
marked node. Again `A≥5`.

Consequently every handler with `L=1` costs at least
`2+4·5+2+3=27` bits. Notice that this does not assert `L≥2`: the
40-bit witness in `normal.md` remains a valid one-abstraction handler.

### At most three applications

If `s` is absent, the preceding correlated-selector theorem applies.
If `s` is present and `A≤2`, the required leaves `s,j,c` leave no bound
variable occurrence, so the all-vacuous lemma applies.

For `A=3`, a second occurrence of `s` likewise leaves no bound variable
occurrence. Otherwise the four leaves are exactly `s,j,c,v`, where `v`
is the sole bound-variable occurrence. Every abstraction is affine.
A syntactic beta contraction would reduce the application count to at
most two, already impossible. Thus `H` is beta-normal. Its head normal
form has at most three leading binders. A fixed head `j` or `c` fails.
The remaining cases are a bound head or the unique free `s`.

For a bound head, only its one occurrence is live. If it receives the
second or third external argument, the zero law forces all three inputs
to be bound and the body to be `v A`, with `A[P]→*j`. The two applications
inside `A` have exactly the leaves `s,j,c`, and all its abstractions are
vacuous. In beta-normal form the only way for it to discard the cell's
`K,R` and the extra `c` and return bare `j` is
`A=s (λu v w.j) C`, where `C` is a vacuous chain ending in `c`.
This needs three additional abstractions, giving `L≥6` and already more
than 26 bits.

If the bound head receives the first external argument, fewer than two
internal Boolean arguments fail on the `F` branch, as in the previous
theorem. With two internal arguments the zero arm has at most one
application. Its only possible non-rigid free head is the unique `s`,
whose callback is a vacuous chain ending in `j`; this exposes head `j`,
not `R`. With three internal arguments each arm is a one-leaf vacuous
chain. The selected zero arm either has fixed head `j/c`, or exposes `P`.
That `P` can next receive only a chain ending in `j/c`, a rigid `R`, or
no argument. These give a fixed head, an `R`-head with first argument `K`,
or a remaining lambda, respectively. None gives `R j`.

For the free head `s`, write

```
H = λa₁ ... a_m. s A₁ ... A_k,       m≤3.
```

There is one bound leaf `v`, and all other binders are vacuous. The zero
cell passes `K,R` to `A₁`, then the remaining `A_i`, then the `3-m`
external arguments. The following cases exhaust the three applications:

| Source arguments `k` | Remaining callback structure | Consequence of the zero law |
| --- | --- | --- |
| `1` | `A₁` contains two applications and leaves `v,j,c` | Its head must be `v`. If `v` receives `R`, its fixed argument spine is either too long or contains both `j,c`; if it receives `K`, selection exposes a chain headed `j/c`. The zero law fails. |
| `2`, one application in `A₂` | `A₁` is a one-leaf chain; `A₂` contains `j,c` | Selecting `A₂` exposes `j/c`; making `R` the head cannot turn the beta-normal two-leaf `A₂` into bare `j`. The zero law fails. |
| `2`, one application in `A₁` | The only possible successful head is a bound `R` applied to bare `j` | All the cell arguments, the other source argument, and the remaining external arguments must be consumed first. This requires at least `(2+1+3-m)+m=6` source abstractions. |
| `3` | All `A_i` are one-leaf chains | A direct `R` head requires at least six abstractions. The remaining zero possibility binds all three external inputs, leaves the common arguments `C,j`, and makes the callback return `K` after consuming the cell's first argument. On the one stream the same callback returns `F`, so the result is `C j`, with `C` a vacuous chain ending in `c`; this is never `c X_n(N) N`. |

For completeness, in the final row write the callback as
`A₁=λu₁ ... u_l.v`. The common arguments are one-leaf vacuous chains
ending in `j,c`. A callback ending instead in a free `j/c` cannot have
head `R`, so its leaf must be the unique bound occurrence `v`.
Its supplied argument list on the zero stream is

```
K, R, A₂, A₃, followed by the 3-m unbound external arguments.
```

If `v` selects either common argument, its eventual head is `j/c`.
If it selects a rigid `R` (or refers to an outer tail binder), the only
possible surviving argument is bare `j`. That `j` must be `A₃`, and no
external argument may follow it. Thus `m=3`, and the callback must consume
`K,R,A₂` before exposing its `R` head: `l=3`, so `m+l=6`.

The remaining possibility is that `v` is `K`. To obtain `R j`, that `K`
must receive the cell tail `R`, discard the other common argument, and
then leave the final `j`. Inspection of the displayed ordered list gives
exactly `m=3`, `l=1`, `A₂=C`, and `A₃=j`, with `C` a vacuous chain
ending in `c`. With no callback binder, `K` instead first receives the
cell tag `K`; with two or more callback binders it has already lost the
cell tail `R`. Choosing a later external `K` likewise loses both common
arguments, including `j`. The callback's only possible live leaves are
therefore its own sole binder or the first outer binder. Up to names, the
two zero-compatible forms are

```
λa b d. s (λu.u) C j,
λa b d. s (λu.a) C j.
```

On a one stream both callbacks return `F` after consuming the cell tag,
and the result is `C j`: either `c j`, bare `c`, or a remaining lambda,
according to the length of `C`. None is `c X_n(N) N`. This explicitly
covers dependence on the stream tag without requiring the first external
argument to be live.

Every successful three-application case has therefore been excluded
below 27 bits.

### Four applications below 27 bits

If `s` is absent, the earlier correlated-selector theorem already applies.
Assume it occurs, and suppose `A=4` and `|H|≤26`. The preceding
one-abstraction result gives `L≥2`; hence `L=2` and `X≤4`.
The handler cannot begin with a lambda,
since its required `j,c` leaves would already contribute five to `X`.

An affine syntactic beta contraction leaves at most one abstraction and
at most three applications, already excluded. In a nonlinear contraction,
the two occurrences of its binder, together with `s,j,c`, exhaust the
five leaves. The other abstraction is vacuous. Contracting the nonlinear
binder leaves a handler with only vacuous abstractions, even if its
argument is copied; capture-avoiding substitution cannot make a vacuous
binder live. The all-vacuous lemma excludes this case. Thus `H` is
beta-normal, with head `s`.

The index budget now makes a short complete syntax classification
possible. The mandatory `j,c` contribute three. At most one further unit
can be spent on a free leaf lying under a lambda, or on an outer binder
occurring below the inner lambda. A duplicate `j` spends that unit itself;
a duplicate `c` is impossible. Write `I=λa.a`, `C_Z=λ_.Z`, and
`Δ=λa.a a`. An *outermost lambda block* means a lambda subterm not inside
another lambda. Such blocks cannot occur in source function position,
because the source is beta-normal.

If all binders are affine, the complete list is as follows. In the second
half, `Z` is the sole free leaf under one lambda; all other free leaves
are outside both lambdas.

| Placement | Lambda blocks |
| --- | --- |
| No free leaf under a lambda; disjoint blocks | `I,I` |
| No free leaf under a lambda; one block | `K`, `F`, `λa b.a b`, `λa b.b a`, or `λa.a I` |
| One free leaf under a lambda; disjoint blocks | `I,C_Z`; or `I,λa.a Z`; or `I,λa.Z a` |
| One free leaf under a lambda; one vacuous outer binder | `λu.Z I` |
| One free leaf under a lambda; both binders live | `λa.a I Z`, `λa.a Z I`, `λa.a(Z I)`, `λa.Z(a I)`, `λa.Z a I`, `λa.Z I a` |

This list follows directly from the two leaves available after `s,j,c`.
With disjoint closed blocks each is `I`. A closed block with one bound
leaf is `K/F`; with two affine bound leaves it has the three listed
one-application forms. If a free `Z` lies under a lambda, no binder may
cross the inner lambda. The inner live lambda is therefore an `I`,
and the six beta-normal binary trees on `a,Z,I` give the last row;
trees having `I` in function position are excluded. With only one live
binder, the two possibilities are disjoint `I,C_Z` or `λu.Z I`.
In the rows `I,λa.a Z`, `I,λa.Z a`, and the last row, the five leaves
force `Z=j/c` and exactly one free `s`, outside the blocks.

Here are their zero evaluations. Before the first source block is
activated, the opaque-marker argument from the one-abstraction case
applies: its first supplied arguments are `K,R`.

* `I,I`: the first callback gives `P I→*K R`. There is no other free
  `s` to activate the remaining `I`; the constant either discards it or
  exposes a rigid `R` head with the external arguments still pending.
* For `λa b.a b`, `λa b.b a`, and `λa.a I`, application through `P`
  gives respectively `K R`, `R K`, and `I`. The pending original `j,c`
  yield a wrong rigid head or leave external arguments on the final `R`.
* With `I,λa.a Z` or `I,λa.Z a`, activating the latter block gives
  head `Z`. Activating `I` first gives `K R`, as above.
* `P (λu.Z I)→*Z I R`. For `Z=j/c` the head is wrong. For `Z=s`,
  this becomes `P I R→*R`; all external arguments remain pending.
* In the six-member final row, the first block gives, respectively,
  `R`, `Z R`, `Z I`, or one of the three rigid `Z`-headed expressions.
  The only result not headed by `Z` is the first result `R`, but the
  remaining original argument and the external `K,R,R` still follow it.

The blocks `K/F` and the disjoint pair `I,C_Z` admit a uniform check that
also allows their extra free `s` occurrence. Use macro rules for
`P,K,F,I,C_Z`; normalize a partial `F U` to `I`. The only possible
functional values are `P,K,K U,F,I,C_Z`. In the case `Z=s`, regard
`C_s` as the constant function returning `P`. Exposing `P`, `F`, `I`,
or a constant returning a bare `j,c,P` at any of the three external
positions cannot yield `R j`. The zero law therefore requires
`K(K(K(R j)))` again. Its four `j`-bearing applications must all descend
from original applications: the extra rules create no applications, and
`P` only creates arguments `K,R`. The first activation of the source
head `s` consumes a fifth original application. This contradicts `A=4`.

It remains to classify a beta-normal nonlinear binder. Its two bound
leaves together with `s,j,c` exhaust all leaves, so the other binder is
vacuous and `s` occurs once. If `j/c` lies inside the live duplicating
lambda, its extra index spends the entire allowance; the other vacuous
lambda must then add another unit, which is impossible. The surviving
possibilities are

```
Δ together with C_Z,                    Z=j or c,
λu.Δ,
λv.v (λu.v),
λu.Z Δ,                                Z=j or c.
```

The first two-lambda block is an outer vacuous wrapper around `Δ`.
The alternative `λv u.v v` has two outer-binder occurrences below the
inner lambda and exceeds `X≤4`. The tree `(λu.v) v` contains a source
beta redex. These observations exhaust the position of the second lambda.

If `Δ` is activated before a disjoint `C_Z`, then `P Δ→*K`; the
remaining arguments have only heads `j/c` and no source `s` remains.
If `C_Z` is activated first, the head is immediately `Z`. The other
three blocks give

```
P (λu.Δ) →* R R,
P (λv.v (λu.v)) →* λu.K,
P (λu.Z Δ) →* Z Δ R.
```

The first and third already have a wrong rigid head/spine. In the middle
case, if `j,c` are separate pending arguments, the first consumes the
constant wrapper and the second supplies a rigid `j/c` argument to `K`.
If they form one pending application, that whole application is discarded
and the result is bare `K`. Neither result, applied to external `K,R,R`,
is `R j`. Thus every nonlinear case also fails.

Finally, for `A≥5`, the already established `L≥1` and `X≥3` imply
`|H|≥27`. This proves the whole-stream correlated bound.

## What these bounds do not prove

The whole-stream theorem permits the actual stream/tag/tail correlations
and arbitrary syntax inside `H`. It still treats `j,c,p,x` as independent
rigid parameters and fixes the skip to `s s s`. Exploiting the actual
behaviour of NEXT or the recursive parser is outside its hypotheses.
Other reader heads, arbitrary skip operands, and arbitrary sub-165 programs
remain open without further decomposition or a different global invariant.
`cheap-tail-bound.md` excludes every `T=s` handler below 35 bits and
every `T=s s` handler below 31 bits, including arbitrary source redexes.
Both readers therefore cost at least 43 bits, so the existing 43-bit
reader is minimal across these three operand families. That theorem
also retains the independent rigid parameters and the specified interface.

The five explicit witnesses and the arithmetic are checked by
`tools/self-interpreter/theory/handler_bound.py`, including the 40-bit
whole-stream handler with only one lambda explained in `normal.md`.
That witness shows why the single-abstraction obstruction does not extend
unchanged to ambient-stream access; the whole-stream proof instead prices
one-abstraction handlers by their applications. The script also checks the
nine displayed callback equations, six data identities, and two residual
three-application tag-return shapes. It does not enumerate terms or prove
the quantified lower bounds; the proofs are the case analyses above.
