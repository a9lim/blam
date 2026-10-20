(•̀ᴗ•́) **No sub-165 interpreter found.** The useful new results are exact reader/handler identities and an all-size exclusion for self-application trees made solely from the reader.

All artifacts and detailed proofs are in [REPORT.md](REPORT.md). No repository files were changed; no enumeration was run.

Every complete construction built:

| File | Exact battery line | Idea |
|---|---|---|
| `return_stream.lam` | `191 bits  ok=667 skip=1 fail=0` | ABS supplies an artificial stream that returns its completed result; APP supplies the actual remainder. |
| `return_stream_shared_cont.lam` | `207 bits  ok=667 skip=1 fail=0` | Share the conditional continuation and derive the artificial stream from it. |
| `late_zero_discard.lam` | `181 bits  ok=667 skip=1 fail=0` | Move the discarded duplicate below the second Scott-cell elimination. |
| `reader_diagonal_knot.lam` | `199 bits  ok=667 skip=1 fail=0` | Share the reader and use its zero arm to generate the outer self-application. |

Sources, `.blc` encodings, and logs are beside the report. Each battery used two threads and took 2.38–2.55 seconds. All four also passed the rigid-tail extraction probe on Ω. The 199-bit construction is β-equivalent to the 165 by the identities below; the others have paper-level parser-equation arguments and finite battery evidence, without new Lean proofs.

Define, with fresh binders,

```text
Z = λu r. r n
J = λr. r n
H = λb. b Z c
R = λs. s H (s s s)
```

Here `R` is exactly the 165’s reader, parameterized by NEXT `n` and continuation `c`.

**1. Constant streams implement an exact return instruction.**

```text
R (K Q) →* Q (Q (K Q))
R (K (K X)) →* X
```

Proof: for `S = K Q`, `S H → Q` and `S S S → Q S`; hence `R S →* Q (Q S)`. Substitute `Q = K X` for the second identity. Neither `n` nor `c` is evaluated.

The 191-bit interpreter uses this to replace the conditional second parse with

```text
λf rest.
  E (λg. c (APP f g))
    (b (λu v. c (ABS f) rest) rest).
```

For `b=K`, the artificial stream returns the completed ABS result. For `b=F`, the parser reads the second child normally. Capturing the real remainder makes this construction expensive.

There is a small exact bound here: in the frame `[X]`, with no other free variables, the eight-bit stream `λu v.X` is minimal for uniformly satisfying `R S(X) =β X`. The complete list below eight bits is

```text
X, I, λu.X, F, X X, K.
```

The three `X`-headed cases yield `X` with respectively two, one, and three arguments. The others yield `J`, `F`, and `H`. None equals bare rigid `X`. This is a scoped module bound only.

**2. The reader and zero arm generate self-application.**

```text
R Z →* n n
H R →* n n c
```

Proof:

```text
Z H → J
Z Z Z → J Z → Z n → J
R Z →* J J → J n → n n
H R → R Z c →* n n c.
```

This differs materially from the recorded `H H → c n c`: mixing components exposes the NEXT diagonal.

The 199-bit construction implements this literally. With `Q n c = R` and the usual generator `G` rewritten to use `Q`, its outer expression is

```text
(λg. Q g g (λu r. r g)) G →* G G.
```

Thus it reconstructs the ordinary knot exactly, but sharing the helper costs 34 bits.

**3. Reader-only knots are impossible at every size in this grammar.**

The relevant exact reductions are

```text
R I →* J
R K →* H
R F →* F
R H →* c n c (c n c H)
R R →* c n c (c n c H) (R R R).
```

The first three follow by substitution. For the fourth, expand `R H = H H (H H H)` and use `H H → c n c`. The fifth follows from `R R → R H (R R R)`.

For rigid `c`, **every application tree containing at least two copies of `R` reduces to a `c`-headed spine with at least four arguments**:

- `R R` supplies the base case above.
- If the left subtree is composite, its existing `c` spine gains one argument.
- Otherwise the tree is `R V` with composite `V`; unfolding gives `V H (V V V)`, so its `c` spine gains two arguments.

Further applications cannot remove arguments from rigid `c`. These trees therefore cannot provide the recursive parser or the contract’s two-argument continuation result. This extends the recorded handler-only exclusion to reader-only trees.

It **does not extend to mixed trees**: `H R → n n c` explicitly escapes it.

There is nevertheless an obstruction under the unchanged NEXT protocol. Write

```text
n = λb. E k_b.
```

Then

```text
H R →* n n c → E k_n c.
```

This feeds the public continuation to the parser as its stream. Unfolding the reader gives `c H' (c c c)`, already rigidly `c`-headed; supplying a stream adds a third argument. Therefore the extracted diagonal cannot simply replace the existing recursive parser.

The delayed-discard candidate uses the elementary identity

```text
(cons b tail) (λbit rest unused. P bit rest) original
  →* P b tail,
```

which preserves parsing but increases depth and size.

My assessment: **mixed reader/handler/zero-arm use remains the concrete unresolved seam from this pass.** These components already manufacture `n n` and `n n c`. A gain would require NEXT, or a related component, to perform both its parsing role and the knot role while reusing the existing reader. The unchanged interface prevents that; straightforward helper extraction loses badly. I did not find the required construction, and none of these restrictions establishes optimality at 165.

