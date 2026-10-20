# Exact syntactic remainder extraction

An exact remainder extractor discards one complete BLC source encoding and
returns its untouched suffix:

```
R (stream(M,N)) →* N.
```

The source `M` may be open or divergent, and `N` may be any lambda term.
This task recognizes syntax; it does not evaluate the encoded source.
It is one of the independent projections supplied by a continuation-headed
self-interpreter in `head-decomposition.md`.

Codex's construction `rem93` satisfies this contract in 93 bits. Its
named source and exact wire are
`data/self-interpreter/machines/rem93.lam` and `rem93.blc`.
This is an upper bound, not an optimality result for remainder extraction.
The term contains beta redexes, so it does not give this upper bound for
the beta-normal fragment.

## Construction

Write `P` for the recursive parser and define

```
NEXT = λt u.P (t u (P u)),
H    = λb.b (λu r.r NEXT) b,
P s  = s H (s s s).
```

The actual finite term ties the recursion with self-application, sharing
`p=x x` and inlining `NEXT` inside the reader:

```
(λx.x x) (λx.(λp s.
  s (λb.b (λu r.r (λt u.p (t u (p u)))) b) (s s s))
  (x x)).
```

The bit polarity is `0=K=λa b.a`, `1=F=λa b.b`. The reader uses the
first bit itself as its variable-branch continuation. With a first bit
`F`, it returns the third argument directly. With a first bit `K`, it
applies that argument to `NEXT`:

```
(cons F r) H S →* S,
(cons K r) H S →* S NEXT.
```

The existing skip identity gives `s s s →* N` when the stream starts
with a variable's unary index `1ⁿ0`, and `s s s →* r` when
`s=cons K r`. Thus a variable returns its suffix immediately. For an
abstraction or application, the remaining second tag selects

```
NEXT K u →* P u,
NEXT F u →* P (P u).
```

An abstraction discards one recursively encoded body. An application
discards its first child and then its second child. Uniformity in the
suffix permits the second child's entire encoding to be the first
child's suffix.

## Kernel proof and fixed checks

`Blc.SelfintRemainder.rem93_contract` proves

```
∀ M N, Betas (rem93 (streamOf (blcCode M) N)) N.
```

The proof first checks symbolic head-reduction clauses for the knot,
unfolding, the two first-bit branches, and the two second-bit prefixes.
The latter reach `P (K u (P u))` and `P (F u (P u))`; two contextual
beta steps inside the outer argument then select `P u` or `P (P u)`.
It lifts them to arbitrary terms with the existing substitution theorem,
then uses structural induction on `M`. The application case reduces the
inner parse under an application context before the outer parse.
The proof imposes no source closedness, normality, or suffix restriction.

The kernel also checks closedness, the literal 93-bit length, and the
exact wire. `tools/self-interpreter/theory/remainder.py` pins the named
source to that wire and replays the same fixed symbolic clauses. It
compares only two explicit constructions: the displayed inlined factored
form and a shared `λt u.(t I P)(P u)`, which gives a 97-bit complete extractor.
`data/self-interpreter/theory/remainder.json` records those checks.
No source census or candidate search is involved.

This construction separates the remainder task from value reconstruction
without pricing them as independent modules in arbitrary interpreters.
A source that is itself continuation-headed has disjoint value and
remainder payloads; a smaller term may instead share code before reaching
that head form, or fuse both tasks in a stream-headed handler.

## Open lower-bound route: an infinite zero prefix

The following is a proposed argument, not an established theorem or a
Lean result. Introduce a formal infinite zero-stream constant `Z` with
the rewrite rule

```
Z A → A K Z.
```

Application-only expressions over `K,Z` and opaque source closures appear
to admit a terminating data-normalization phase. The candidate normal
forms are iterated partial applications of `K` around `K`, `Z`, or an
opaque-headed expression. The useful equations include

```
Z K →* K,          Z Z →* K Z,
Z (K A) →* A Z,    Z (K (K A)) →* A.
```

If that phase and its interaction with source closures can be proved,
an affine closed source should weak-head normalize on `Z`: every source
contraction consumes a source lambda. The same argument may extend to a
source with at most one nonlinear binder, because its first nonlinear
weak-head contraction would leave affine source code. Weak-head reduction
is essential here; reducing under lambdas can move nonlinearity to an
enclosing binder.

A finite reduction on `Z` inspects only a bounded zero prefix. A rigorous
simulation by sufficiently long finite encodings of `λⁿ.I` would then
give a lambda-headed result, contradicting exact extraction of a rigid
suffix. This would force at least two nonlinear binders in a remainder
extractor, and two inside the body of an explicit `λs.B` interface.

The missing obligations are termination of the extended data algebra,
preservation of the source-binder accounting, and finite-prefix
simulation. No nonlinear-binder lower bound for remainder extraction is
claimed here. In particular, absence of a strict increase in the number
of source lambdas is insufficient: copying can recycle code with zero
net growth.
