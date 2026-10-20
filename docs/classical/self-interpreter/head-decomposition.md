# An unconditional head decomposition

This develops the head-normal-form classification already stated in
`interpreter.md` §5, with Codex's continuation-independence argument and
exact accounting for beta wire costs. It assumes only that `E` is closed and that,
for every closed source `M` and independent rigid `C,N`,

```
E C (stream(M,N)) =β C (λz.M) N.
```

The equality is beta joinability. In particular, a value projection need
not reduce directly to the literal `λz.M` when `M` is divergent. There
is no parser-architecture or open-source correctness assumption here.

Every such `E` has a head normal form of exactly one of the following
two shapes, up to renaming bound variables:

```
λc s. c A B,
λc s. s A₁ … Aₖ,             k ≥ 1.
```

The arguments may contain beta redexes and arbitrary uses of both `c,s`.
This is a structural decomposition of a head normal form. It is not a
decomposition into separately priced source subterms of the original `E`.

## Existence and exact interface arity

Take the normal closed source `I=λx.x`, and keep `C,N` rigid. The
required result `C (λz.I) N` is beta-normal, so joinability gives a
finite reduction of `E C (stream(I,N))` to that result. Head
factorization then gives a finite head-normalizing reduction. The
factorization theorem itself is already proved in `Blc/Factor.lean`.

Head normalizability reflects from an application to its function:
if `U V` has a head normal form, so does `U`. Here is the required
reflection argument. Until `U` exposes a lambda or a rigid head, each
head step of `U V` is a head step in `U`. A rigid head finishes the
argument. At a lambda `λx.B`, the application contracts to `B[V/x]`.
If this substituted body head-normalizes, then `B` head-normalizes:
every defined head step in `B` survives substitution as a head step,
so the terminating substituted trace bounds the number of head steps
possible before `B` reaches a head normal form. Lift the resulting
trace under the lambda. This proves reflection by induction on the
terminating application trace. The substitution stability used here is
already `headStep_substDec` in `Blc/SelfintProof.lean`; the reflection
lemma and the shape classification below have not been mechanized here.

Applying reflection twice shows that `E` has a head normal form `H`.
Closedness is preserved by reduction, so

```
H = λx₁ … xₙ. xᵢ B₁ … Bₖ,       1 ≤ i ≤ n.
```

There cannot be zero leading lambdas: a closed head normal form cannot
have a free head variable. If there are at least three, applying `C`
and the stream leaves an outer lambda. Every reduct retains that lambda,
so it cannot join the rigidly `C`-headed required result.

If there is just one leading lambda, its head must be that bound
variable. After applying the two public arguments, the result has the
rigid spine

```
C B₁[C/x₁] … Bₖ[C/x₁] stream(I,N).
```

Rigid beta reduction preserves the number and order of spine arguments.
The required two-argument `C` spine would force `k=1` and then force
`stream(I,N)=βN`. That is impossible: the nonempty Scott stream retains
an outer lambda, whereas `N` is rigid.

Thus there are exactly two leading lambdas. Closedness makes their head
either `c` or `s`. With head `c`, comparison of rigid spines forces
exactly two arguments. With head `s`, zero arguments would return the
nonempty Scott stream itself, again leaving a lambda rather than the
required `C` head. Hence at least one argument is necessary.

## Continuation-headed forms have independent projections

Suppose the head normal form is

```
H = λc s.c A(c,s) B(c,s).
```

Fix any closed `M`, write `S=stream(M,N)`, and keep `C,N` rigid.
Reduction of the two interface redexes followed by rigid-spine
projection of the contract gives

```
A(C,S) =β λz.M,
B(C,S) →* N.
```

The second relation is directed because `N` is normal. The first is
only asserted as a beta join; for normal `M` it is also directed.

Neither required result contains `C`. Apply capture-avoiding
substitution `C:=S` to their finite reduction diagrams. The stream
contains only the independent remainder `N`, so it is unchanged by
this substitution. Consequently

```
A(S,S) =β λz.M,
B(S,S) →* N.
```

It follows that the closed term

```
H' = λc s.c A(s,s) B(s,s)
```

is also a self-interpreter for every closed source, including divergent
ones. Its two payloads contain no occurrences of the continuation binder.
Equivalently, it supplies a closed value decoder and a closed exact
remainder extractor

```
D = λs.A(s,s),             R = λs.B(s,s),
D (stream(M,N)) =β λz.M,   R (stream(M,N)) →* N.
```

This replacement preserves the contract, not necessarily the behavior on
other inputs or beta equivalence between `H,H'`.

There is an exact size saving at the head-normal-form level. If `q` is
the number of occurrences of the free parameter `c` inside `A,B`,
then

```
|H'|_BLC = |H|_BLC - q.
```

Below any additional local binders, `c` has an index exactly one larger
than `s`. Replacing it by `s` deletes one unary index bit and changes
no lambda or application node. Thus a minimum-size continuation-headed
self-interpreter within the head-normal fragment uses its continuation
only at the displayed root. Variable-for-variable replacement also
preserves beta normality, so the same conclusion holds within the
beta-normal fragment.

These are two semantic projections, not a lower bound obtained by adding
two independent implementation costs. They can contain copies descended
from shared code in the original `E`.

## Stream-headed forms retain unrestricted control

The other case is

```
H = λc s.s A₁(c,s) … Aₖ(c,s).
```

For a closed source, the first code bit is `K`. If its stream is
`S=cons K T`, the first Scott contraction gives

```
A₁(C,S) K T A₂(C,S) … Aₖ(C,S).
```

This does not impose the 165-bit reader's `NEXT` protocol, a fixed skip,
or independence from the whole stream. All arguments may retain `S` and
share computation through it. The handler bounds in `handler-bound.md`
and `cheap-tail-bound.md` do not apply to this unrestricted form without
additional hypotheses.

## Why this does not yet price the original interpreter

The source `E` may be much smaller than its head normal form. Nonlinear
head reduction can duplicate code, and even affine contraction can
increase BLC size by moving free occurrences under more binders.

For an explicit closed affine example, take

```
Tₙ = λr u.(λx.λa₁ … aₙ.x) (r u),
Uₙ = λr u.λa₁ … aₙ.r u.
```

One beta contraction gives the head normal form `Uₙ`, and every binder
in both terms occurs at most once. Nevertheless, the size identity gives

```
|Tₙ| = 3n + 17,             |Uₙ| = 4n + 11.
```

The size increases by `n-6` when `n>6`: the contraction duplicates no
subterm, but the occurrences of `r,u` each acquire `n` additional index bits.
Therefore even an affine reduction cannot simply be assumed to preserve
or decrease the wire length.

This distinction also matters for the current best interpreter: its
literal source expands substantially when reduced only to head normal
form. The fixed symbolic check and measured sizes are recorded in
`docs/STATUS.md`.

## Exact beta wire costs

`Blc.SelfintWireCost` formalizes the local accounting needed to distinguish
these effects. For a redex `(λx.B) A`, define:

- `k`: the number of occurrences of the contracted variable `x` in `B`;
- `D`: the sum, over those occurrences, of the number of local lambdas
  between the root of `B` and that occurrence;
- `f`: the number of free variable occurrences in `A`, counted with
  multiplicity, relative to the root of `A`;
- `g`: the number of occurrences in `B` referring outside `λx.B`.

Occurrences bound by internal lambdas of `A` do not contribute to `f`.
Occurrences of `x` do not contribute to `g`. These definitions apply to
open redexes under arbitrary surrounding binders.

Writing `Δ = |B[A/x]| - |(λx.B) A|` over integers, the kernel proves

```
Δ = (k-1)|A| + (f-1)D - 2k - 4 - g.
```

Each substituted occurrence at local depth `d` removes its original
`d+2` wire bits and receives a copy of `A` with `f d` extra unary index
bits. The old application and lambda cost four bits, the old argument
costs `|A|`, and each of the `g` outer references loses one index bit.
Summing gives the formula. The general substitution theorem handles an
arbitrary de Bruijn cut; the displayed identity is its beta instance.

For the fully affine family above, `k=1`, `f=2`, `D=n`, and `g=0`, so the
identity gives `Δ=n-6` directly.

This also gives necessary conditions for a globally minimum-size
self-interpreter. Beta reduction preserves closedness and the full
closed-source beta-join contract, by confluence. Replacing a selected
redex in any context adds exactly the same context cost before and
afterward. Consequently every redex in a minimum interpreter must have
`Δ≥0`:

- No redex can erase its argument: `k=0` always gives `Δ<0`.
- For a linear redex, `k=1`, the exact condition is
  `(f-1)D ≥ 6+g`. In particular, its argument must have at least two
  free occurrences, and its unique substituted occurrence must lie
  beneath at least one local lambda.

These are restrictions on redexes already present in the interpreter's
syntax. They do not forbid an interpreter from erasing data after receiving
its public arguments, and they assign no separate price to parsing or
recursion. A beta-normal minimum satisfies the local restrictions
vacuously.

The wire-cost module is kernel-checked, without `sorry`, and its main
theorems use only `propext` and `Quot.sound`. The head decomposition and
continuation-independence arguments above remain handwritten. Charging
index movement and shared-code copying across an entire decoding trace
still has not yielded a useful global numerical lower bound; none of
these results establishes 165-bit optimality.
