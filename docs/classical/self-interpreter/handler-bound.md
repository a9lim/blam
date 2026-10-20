# An unrestricted parametric handler bound

These are Codex's handwritten proofs; both bounds were independently
reviewed. They are not a global 165-bit optimality theorem. The first
theorem removes the syntactic restriction on
the handler while retaining independent, rigid-neighbour laws. The second
allows the actual correlation between a unary selector and its remainder,
but restricts the handler's free variables to `j,c`.

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

## What these bounds do not prove

The parametric theorem permits arbitrary uses of ambient variables but
requires independent rigid neighbours. The correlated-selector theorem
uses the real unary selector and its remainder, but permits only `j,c`
as free variables. In particular it excludes access to the whole stream
`s`, whose tag and tail correlate with the arguments subsequently supplied
to the handler. The full `s`-dependent correlated handler problem remains
outside both theorems.

The reader itself is still `s H S`, and the rest of the interpreter is
fixed. These handler bounds do not settle arbitrary skip operands or
arbitrary sub-165 programs without further decomposition or a different
global invariant.

The five explicit witnesses and the arithmetic are checked by
`tools/self-interpreter/theory/handler_bound.py`, including the 40-bit
whole-stream handler with only one lambda explained in `normal.md`.
That witness shows why the single-abstraction obstruction does not extend
unchanged to ambient-stream access. The script does not enumerate terms
or prove the quantified lower bounds; the proofs are the case analyses
above.
