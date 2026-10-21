# Fresh-reader consult: no sub-165 result

Read `docs/classical/self-interpreter/interpreter.md` and the current STATUS
before working. No enumeration, no subagents or consults, no repository edits.
Four complete terms were constructed by hand and checked with the repository
battery at two threads. The longest battery took 2.551 seconds.

## Complete constructions

All sources and unoptimized wire encodings are beside this report.

| File | Bits | Battery | Idea |
|---|---:|---|---|
| `return_stream.lam` | 191 | `ok=667 skip=1 fail=0` | Always invoke the second parser: ABS supplies a constant artificial stream which returns the completed ABS result, while APP supplies the actual remainder. |
| `return_stream_shared_cont.lam` | 207 | `ok=667 skip=1 fail=0` | Share the conditional continuation, whose ABS specialization is a constant function, then turn that continuation into the artificial return stream. |
| `late_zero_discard.lam` | 181 | `ok=667 skip=1 fail=0` | Move the zero arm's discarded duplicate beyond the second Scott cell, so its immediate zero arm has only one binder. This prices the delayed-discard idea; it does not improve the interpreter. |
| `reader_diagonal_knot.lam` | 199 | `ok=667 skip=1 fail=0` | Share the reader and use its own zero arm to generate the outer self-application instead of a separate diagonal combinator. |

`battery.log` contains the exact lines and times. Each also passes the separate
divergent-program suffix probe

```
E (lambda value rest. rest) (<Omega> ++ N) =beta N
```

with rigid `N`; see `suffix.log`. This probe is supplementary evidence, not a
replacement for the all-program proof.

## Notation and exact identities

All equations below are beta reductions, with `n`, `c`, and `X` arbitrary
terms; binders are fresh. Define

```
Z_n   = lambda u r. r n
J_n   = lambda r. r n
H_n,c = lambda b. b Z_n c
R_n,c = lambda s. s H_n,c (s s s)
K X   = lambda u. X
```

`R_n,c` is precisely the 165 reader with its NEXT parameter made explicit.

### Constant streams are return instructions

```
R_n,c (K (K X)) ->* X.
```

Put `S = K (K X)`. Then `S H -> K X` and `S S S -> X`, so
`S H (S S S) ->* (K X) X -> X`. Neither NEXT nor the continuation is
evaluated. More generally,

```
R_n,c (K Q) ->* Q (Q (K Q)).
```

This explains why one constant wrapper is insufficient: for rigid `X`,
`R_n,c (K X)` is headed by `X` with one argument, rather than bare `X`.

The 191-bit construction uses this law as follows. Write

```
L f   = lambda env arg. f (lambda b r. b arg (r env))
A f g = lambda env. f env (g env)
```

After the first subterm is parsed, its continuation is

```
lambda f rest.
  E (lambda g. c (A f g))
    (b (lambda u v. c (L f) rest) rest).
```

For `b=K`, the second parser immediately returns `c (L f) rest`; for `b=F`,
it parses the second subterm. This is a valid fusion, but capturing the real
remainder and building the artificial stream raises the size to 191.

For the 207-bit variant let

```
k = lambda g. b (c (L f) rest) (c (A f g)).
```

Then use `E k (b (K k) rest)`. In ABS, `k = K (c (L f) rest)`, so its input
is exactly the double-constant stream required above. In APP the input is
the real remainder and `k` is the ordinary APP continuation. Sharing costs
more than it saves.

### The reader can generate the NEXT diagonal

```
R_n,c Z_n ->* n n
H_n,c R_n,c ->* n n c.
```

Proof:

```
Z_n H -> J_n
Z_n Z_n Z_n -> J_n Z_n -> Z_n n -> J_n
R_n,c Z_n ->* J_n J_n -> J_n n -> n n
H_n,c R_n,c -> R_n,c Z_n c ->* n n c.
```

This is a mixed-component identity, distinct from the documented handler
diagonal `H H -> c n c`. A plain extraction/shared-helper implementation is
the 199-bit construction. If `Q n c = R_n,c` and `G` is the usual generator
using `Q` for its reader, its outer expression is

```
(lambda g. Q g g (lambda u r. r g)) G
    ->* G G.
```

Therefore the complete 199-bit term is beta-equivalent to the 165, not merely
consistent with the finite battery. The extra helper plumbing costs 34 bits.

### Other exact evaluations used in the proofs

```
R_n,c I ->* J_n
R_n,c K ->* H_n,c
R_n,c F ->* F
R_n,c H_n,c ->* c n c (c n c H_n,c)
R_n,c R_n,c ->*
  c n c (c n c H_n,c) (R_n,c R_n,c R_n,c).
```

The first three follow by substituting `I`, `K`, and `F` for `s`. For the
fourth use `H H -> c n c` in `H H (H H H)`. The last follows by unfolding the
outer reader once to `R H (R R R)` and applying the fourth identity. These are
finite reductions; the last expression has no full normal form when `c` is
rigid because the recursively retained argument cannot be erased. An initial
full-normal-form check of that equation exhausted fuel on both sides; it was
not a counterexample. `identities.log` distinguishes this head identity from
the four identities checked by normalizing closed abstractions.

## Two proved restrictions

### Application trees of the reader alone cannot provide the knot

For rigid `c`, every application tree with at least two leaves, each a copy
of `R_n,c`, reduces to a `c`-headed spine with at least four arguments.

Proof by induction on the tree. The two-leaf case is the final identity
above. For `U V`, if `U` has at least two leaves, its `c`-headed spine simply
gains the argument `V`. Otherwise `U=R`, and if `V` has at least two leaves,

```
R V -> V H (V V V),
```

so the inductively `c`-headed `V` gains two arguments. This covers all trees.
Further applications cannot remove arguments from rigid `c`. Consequently
such a tree cannot serve as the recursive parser or deliver the contract's
two-argument `c` result. This is an all-size restriction on this grammar,
not a lower bound for arbitrary interpreters.

The restriction must NOT be extended to mixed reader/handler trees:
`H R -> n n c` is an explicit counterexample for arbitrary `n`.

There is also a precise obstruction to using that mixed identity unchanged.
For the current NEXT protocol, write

```
n = lambda b. E k_b
k_b = lambda f. b (c (L f)) (E (lambda g. c (A f g))).
```

Then `n n c = E k_n c`: it parses the rigid public continuation as a stream.
Unfolding the reader gives `c H' (c c c)`. This already has a rigid `c` head,
so it cannot be the function `E c` awaiting a stream; another application
adds a third argument to `c`. A successful mixed knot must change NEXT's
protocol, not just substitute the diagonal into the existing one.

### The constant-return stream is optimal through its eight-bit module

Consider terms `S(X)` with `X` their sole free variable and require
`R_n,c S(X) =beta X` for arbitrary rigid `n,c,X`. In the frame `[X]`, the
eight-bit term `lambda u v. X` is minimal.

The complete list below eight bits is

```
X             2
I             4
lambda u. X   5
F             6
X X           6
K             7.
```

This list follows directly from the BLC size rules: an application involving
a lambda costs at least eight bits; a lambda containing an application also
costs at least eight; and three lambdas cost at least eight. The terms `X`,
`X X`, and `lambda u.X` produce rigid `X` with respectively two, three, and
one arguments. The other three produce `J_n`, `F`, and `H_n,c` as above.
None is beta-equal to bare rigid `X`. This is only a scoped module bound;
it allows no extra free NEXT/continuation variables or alternative protocol.

## Correctness boundary and assessment

The 181-bit delayed-discard construction uses the exact Scott-cell equation

```
(cons b tail) (lambda bit rest unused. P bit rest) original
    ->* P b tail.
```

Thus moving the discard beneath the second cell preserves the zero branch.
The first two constructions preserve the ABS/APP parser equations by the
return-stream reductions above, while their variable branches are unchanged.
The ordinary induction on finite source syntax therefore transfers the
165's denotation/remainder invariant, without normalizing the interpreted
program. These are paper arguments, not newly checked Lean developments.
The 199-bit construction has the stronger whole-term beta-equivalence noted
above. All four have independently observed finite battery results.

No sub-165 candidate was found. This does not improve any global lower bound.
The most concrete surviving seam from this pass is mixed use of the reader,
handler, and zero arm: they already generate `n n` and `n n c`. The scalar
NEXT interface currently makes that diagonal unusable as a parser. A smaller
construction would have to make NEXT or a related component serve both roles
while using the already-written reader code to carry the state. Merely
factoring a generic reader, or postponing its discard, demonstrably loses
bits in the constructions above. I do not have the necessary dual-purpose
NEXT construction.
