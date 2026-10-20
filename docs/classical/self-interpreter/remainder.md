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

## Two nonlinear binders are necessary

`Blc.SelfintZero.remainder_two_nonlinear` proves that every closed exact
remainder extractor contains at least two nonlinear binders. The stronger
`remainder_body_two_nonlinear` counts only the interior of an explicit
`λs.B` interface: if `B` has no free variables except `s` and

```
B[s := stream(M,N)] =β N
```

for every closed source `M` and every closed suffix `N`, then `B` itself
contains at least two nonlinear binders. The outer stream binder does not
count toward this bound. Beta-join correctness suffices; directed reduction
to the suffix is not assumed. The proof uses only closed beta-normal sources
of the form `λⁿ.I` and the single divergent suffix `Ω`.

The mechanism is a labelled infinite zero stream. The extended syntax keeps
program lambdas explicit and introduces two affine data constants with rules

```
K A B → A,
Zᵢ A  → A K Zᵢ₊₁.
```

The label records how many zero cells have been exposed along that stream
occurrence. It has no control effect. Treat each program lambda and variable
as an opaque head during a data phase. Canonical data values are `K`, `Zᵢ`,
`K V`, and opaque-headed spines with canonical arguments. Application of two
canonical values has a finite closed table:

| Function and argument | Canonical result |
| --- | --- |
| `K V` | `K V` |
| `(K U) V` | `U` |
| `(h A⃗) V` | `h A⃗ V` |
| `Zᵢ K` | `K` |
| `Zᵢ Zⱼ` | `K Zᵢ₊₁` |
| `Zᵢ (K K)` | `K Zᵢ₊₁` |
| `Zᵢ (K Zⱼ)` | `K Zⱼ₊₁` |
| `Zᵢ (K (K A))` | `A` |
| `Zᵢ (K (h A⃗))` | `h A⃗ Zᵢ₊₁` |
| `Zᵢ (h A⃗)` | `h A⃗ K Zᵢ₊₁` |

Here `h` is opaque. The first row records formation of a partial application,
not a reduction. Each other row is justified by a fixed finite reduction.
Bottom-up evaluation of the finite application tree therefore completes a
data phase. It neither copies program lambdas nor increases the number of
nonlinear program binders.

For a closed extended term, the canonical result either denotes a lambda
(`K`, `Zᵢ`, `K V`, or an unapplied program lambda), or exposes a program
beta redex on the global function spine. An affine program contraction
strictly decreases the number of program lambdas. If there is at most one
nonlinear program binder, contracting it leaves entirely affine program
code. Alternating data phases and these head contractions must therefore
terminate at a lambda-like result. No reduction is performed underneath a
program lambda: allowing that would invalidate the nonlinear-binder
accounting by moving nonlinearity to an enclosing binder.

The simulation is finite and uniform in the suffix. For any finite extended
trace, choose `m` larger than every stream label it demands and interpret
`Zᵢ` as `m−i` zero cells followed by an arbitrary closed tail `T`. Each
extended step becomes an ordinary finite beta reduction. The terminal
lambda-like result becomes an actual lambda. Choose an even `m=2n` and
`T=stream(I,Ω)`. The initial input is exactly `stream(λⁿ.I,Ω)`, so a putative
extractor with at most one nonlinear program binder reduces to a lambda.
Correctness also makes it beta-join `Ω`. Confluence makes this impossible:
every beta reduct of `Ω` is `Ω`, whereas every reduct of a lambda remains
a lambda.

`Blc/SelfintZero.lean` mechanizes the application table, both binder-count
invariants, termination, labelled simulation, and the contradiction.
Its two public lower-bound theorems use only `propext` and `Quot.sound`,
with no custom axioms or admitted proofs. This establishes a structural
obstruction, not a sharp bit-length lower bound for remainder extraction
or an additive lower bound for arbitrary self-interpreters.
