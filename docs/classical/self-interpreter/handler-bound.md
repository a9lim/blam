# An unrestricted parametric handler bound

This is Codex's handwritten proof, independently reviewed by two subagents.
It is not a global 165-bit optimality theorem. It removes the syntactic restriction on the
handler in the existing reader bound while retaining the independent,
rigid-neighbour laws. In particular it does not identify a variable selector
with the stream that contains its remainder.

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

## What this does not prove

The stream `s` is still an independent rigid ambient variable in the two
handler laws. The selector `R` and suffix `T` are independently varied.
A real unary selector contains its suffix, and a real stream contains its
tag and tail. A handler exploiting those correlations is outside the
theorem. The reader itself is still `s H S`, and the rest of the
interpreter is fixed. No conclusion about arbitrary sub-165 programs
follows without further decomposition or a different global invariant.

The four explicit witnesses and the arithmetic are checked by
`tools/self-interpreter/theory/handler_bound.py`. That script does not
enumerate terms or prove the quantified lower bound; the proof is the case
analysis above.
