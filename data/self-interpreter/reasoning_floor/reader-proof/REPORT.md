# Lane reader-proof: the 165's reader is optimal for every reader shape

Lane directory: `tmp/overnight/reader-proof/`. Everything here is new to
this lane except where a document in `docs/classical/self-interpreter/` or a
Lean module is cited. No tracked repository file was modified by this lane (the modified and
untracked files `git status` shows under `docs/`, `lean/` and `data/` belong
to other lanes); nothing was committed; no reader bodies were enumerated. Mechanical checks:
`tools/rt.py` (toolkit), `tools/algebra.py` (data-algebra tables),
`tools/symbolic.py` (symbolic-stream head normal forms), `tools/menu.py`
and inline runs (valid alternative readers and their sizes),
`splice/*.lam` with `tools/self-interpreter/battery.py` (complete
interpreters), each a few seconds, two threads.

## Summary

**Theorem (handwritten, with checked finite identities).** With the
165's knot and NEXT region fixed, every reader body `B` in the frame
`[s, next, cont, intL, x]` satisfying the two reader laws

    B[cons K R / s]   →*  R next
    B[1ⁿ0 ++ N / s]   →*  cont (1ⁿ⁻¹0 ++ N) N        (n ≥ 1)

with `next, cont, intL, x, R, N` independent and rigid has `|B| ≥ 43`,
and `|B| = 43` only for the 165's `s (λb. b (λu r. r next) cont) (s s s)`.
No restriction on `B` is assumed: any arity, any operands (bare `next`,
bare `cont`, operands with lambdas), bodies with head redexes or any
internal redexes, bodies whose head is reached only after reduction, and
both dispatch heads (bit selection and tail dispatch) are covered.

The proof is uniform in the sense the lane asked for: it is driven by what
the two laws force every reduction to *do* (a structure theorem, Part 1),
by a decomposition of any body along the head reduction of the symbolic
stream `λh. h β τ` into dispatch, zero arm, variable arm and operands
(§2.1), and by an inventory of roles each priced at its cheapest
realization (§2.2–2.3); the case analysis that remains is over four
*shapes* of how stream-created nodes can stand in for nodes of `B`
(§2.4), not over reader syntax. Shape (α) — the variable output's first
application is the stream's own node — is where the 165 lives and is
priced exactly (`41 + 2d`, so 43 at depth 1); the other shapes are ≥ 46.
Part 3 lists the steps whose rigour is weakest; the least formal is the
self-passing-walker bound (Lemma 2.3(c)), which has a ≥ 20-bit margin.

### 1. Complete interpreters built

No sub-165 claim. To confirm that the two reader laws are exactly what the
interpreter contract needs in the 165's frame, five readers were spliced
into the 165 (`splice/*.lam`) and run through the exact battery
(`python3 tools/self-interpreter/battery.py FILE`, 2 threads):

| file | reader | idea | battery |
|---|---:|---|---|
| `r165_control.lam` | 43 | the 165 | `165 bits  ok=667 skip=1 fail=0` |
| `r46_k1.lam` | 46 | arity 1, nonlinear tail: `s (λb r. b (r next) (cont r (r r r)))` | `168 bits  ok=667 skip=1 fail=0` |
| `r58_tau.lam` | 58 | tail-headed dispatch: `s (λb r. r (b next (λb' t. cont r (r r t))))` | `180 bits  ok=667 skip=1 fail=0` |
| `r50_tnext.lam` | 50 | bare `next` operand: `s (λb r. b r (λt. cont r (r r t))) next` | `172 bits  ok=667 skip=1 fail=0` |
| `r49_betashortcut.lam` | 49 | created selection node, zero arm is a tail: `s I (λt. cont (s F) (s s t)) next` | `171 bits  ok=667 skip=1 fail=0` |

Each measures `165 + (reader − 43)`, as the frame is otherwise unchanged.
About thirty further valid reader bodies (every pattern of the inventory,
including a `(λy. y y)`-compressed head, a self-passing walker at 85 bits,
chains, lets, data dispatch) were checked against the reader laws on
actual streams `n = 1..5` (`tools/menu.py` and inline runs); all are ≥ 43
and each is at or above the bound its shape receives in §2.4.

### 2. New exact identities

* Symbolic stream `S = λh. h β τ` (`β, τ` rigid): `s K →* β`,
  `s F →* τ`, `s s →* β β τ τ`, `s s s →* β β τ τ S`,
  `s (s s) →* β β τ τ β τ`; the 165's body has symbolic head normal form
  `β (λu r. r next) cont τ (S S S)` (checked). Every reader body's
  `B[S]` has head normal form `β A₁ … A_k` (`k ≥ 2`) or `τ A₁` (T3).
* `s F` is the uniform tail (`R` on the zero stream, `P_{n-1}` on variable
  streams); `s K` is the uniform bit.
* Cell–cell chains alternate roles, `P_i P_j → P_{j-1} P_{i-1}`; they end
  in `K N` iff `i = j`, and otherwise in `I` (suffix erased) or in an
  `N`-headed neutral, according to the parity of `|i − j|` (T9, checked
  for `i, j ≤ 6`). Application-only trees over copies of one `P_n` and
  rigid leaves normalize only to `P_n`, `K N`, or rigid-headed neutrals
  (checked exhaustively for ≤ 5 leaves).
* The exact wire-cost change of a β-step, `Δ = (m−1)|Q| + (fl(Q)−1)·D −
  2m − 4 − f(M)` (Lean, `wire_beta_delta`), re-derived and re-checked; its
  consequence for a minimum reader body (no shrinking redex) is T10.

### 3. Lower bounds proved

The theorem above (Part 1 + Part 2), with the status table in §3.1: all
handwritten; finite identities checked; one Lean theorem used. The earlier
27/31/35-bit handler bounds appear as rows of the inventory (§3.4).

### 4. Honest read

§3.5: the reader is optimal because its three mechanisms are each at their
floor and share exactly what can be shared; a sub-165 cannot be found by
changing the reader under the 165's laws. The next proof step is a Lean
formalization of residual tracing for the two reader laws, from which
Lemma 2.3 (N-source) and Lemma 2.7 (copies) would follow and the
arithmetic of §2.4 would become a finite check.

---
# Part 1. Setting and the uniform structure theorem

## 1.1 Setting

Frame `Γ = [s, next, cont, intL, x]`, innermost first; a leaf `s` costs 2
bits at depth 0, `next` 3, `cont` 4, `intL` 5, `x` 6, and every enclosing
lambda adds one bit to a free leaf. For any term `|M| = 2L + 4A + 2 + X`
(`L` lambdas, `A` applications, `X` the sum of 0-based indices).

Data. `K = λa b.a`, `F = λa b.b`, `I = λa.a`, `cons b r = λh. h b r`.
`Z_R = cons K R` (the zero stream, rigid tail `R`),
`P_0 = cons K N`, `P_{i+1} = cons F P_i` (so `P_n = 1ⁿ0 ++ N`), `Q = K N`.
`R, N` are fresh rigid variables, as are `next, cont, intL, x`.

A **reader body** is a term `B` with free variables in `Γ` such that

    (Z)    B[Z_R / s]  →*  R next
    (V_n)  B[P_n / s]  →*  cont P_{n-1} N        for every n ≥ 1.

(The brief writes `=β`; the right-hand sides are β-normal, so by
Church–Rosser `=β` is the same as `→*`.) The 165's body is
`s H (s s s)`, `H = λb. b (λu r. r next) cont`, 43 bits (L 3, A 7, X 7).

**Claim to prove: every reader body has `|B| ≥ 43`.**

Throughout, "handwritten" means a proof written here; "checked" means a
specific finite identity was run through the normalizer
(`tools/rt.py`, `tools/algebra.py`, `tools/symbolic.py`, `tools/menu.py` in
this lane directory). Nothing in this lane enumerates reader bodies.

## 1.2 The structure theorem (every reader body)

**T1 (free variables).** If `B` is a reader body, so is `B[next/intL,
next/x]`, and it is strictly smaller when `intL` or `x` occurs. *Proof.*
Rigid variables absent from both required outputs can be renamed to any
other rigid variable: substitute `next` for `intL` throughout a reduction
`B[Z_R] →* R next`; every step stays a β-step and the target is unchanged.
A leaf `intL` or `x` costs at least two bits more than `next` at the same
depth. ∎  Hence a minimum reader body has free variables among
`s, next, cont`, and we assume this from now on.

**T2 (open head normal form).** `B` is solvable and its head normal form
is `s A₁ … A_k` with `k ≥ 1` and no leading lambda. *Proof.* `B[Z_R]`
has a normal form, so it is solvable, so `B` is (an instance of an
unsolvable term is unsolvable). Write the hnf `λy⃗. h A⃗`. A leading lambda
would make `B[Z_R]` reduce to an abstraction, which cannot reduce to
`R next`. So `h ∈ Γ`. If `h ≠ s`, both instances keep the rigid head `h`,
but the zero output has head `R`. So `h = s`; and `k = 0` gives
`B[Z_R] = Z_R`, an abstraction. ∎

**T3 (symbolic first cell).** Let `S = λh. h β τ` with fresh rigid
`β, τ`, and for a term `U` over `β, τ, next, cont` write
`U⁰ = U[K/β, R/τ]` and `Uⁱ = U[F/β, P_{n-1}/τ]`. Then `B[S/s]` has a
head normal form of exactly one of the two shapes

    (β-case)  β A₁ A₂ … A_k,   k ≥ 2,  with
              A₁⁰ A₃⁰ … A_k⁰ →* R next,   A₂ⁱ A₃ⁱ … A_kⁱ →* cont P_{n-1} N;
    (τ-case)  τ A₁,  with
              A₁⁰ →* next,   A₁ⁱ F P_{n-2} →* cont P_{n-1} N  (n ≥ 2),
                             A₁ⁱ K N →* cont P_0 N          (n = 1).

The `A_j` may contain copies of `S`. *Proof.* `B[Z_R] = (B[S])⁰` and
`B[P_n] = (B[S])ⁱ`, so `B[S]` is solvable with a lambda-free hnf `h A⃗`,
`h ∈ {β, τ, next, cont}`. A rigid `next`/`cont` head survives both
instantiations and is wrong for the zero law. If `h = τ`: the zero
instance is `R A₁⁰ … A_k⁰`, forcing `k = 1` and `A₁⁰ →* next` (`next` is
normal); the variable instance is `P_{n-1} A₁ⁱ → A₁ⁱ F P_{n-2}` (or
`A₁ⁱ K N` when `n = 1`). If `h = β`: the zero instance `K A₁⁰ A₂⁰ …`
needs `k ≥ 2` (else it is an abstraction) and reduces to
`A₁⁰ A₃⁰ … A_k⁰`; the variable instance reduces to `A₂ⁱ A₃ⁱ … A_kⁱ`. ∎

Checked: the 165's body has symbolic hnf `β Z cont τ (S S S)` with
`Z = λu r. r next`, and the two instantiations reduce to the required
outputs (`tools/symbolic.py`). Also `s K →* β`, `s F →* τ`,
`s s →* β β τ τ`, `s (s s) →* β β τ τ β τ`: the bit, the tail, and the
skip are all data operations on the symbolic cell.

**T4 (forced leaves).** `B` contains at least one leaf each of `s`,
`next`, `cont`; hence `X ≥ 3` and `A ≥ 2`. *Proof.* Reduction never creates
a free variable; `next` and `cont` occur in the outputs; `s` heads the hnf
of T2. ∎

**T5 (no lambda-free body).** `L ≥ 1`. *Proof.* A lambda-free `B` is an
application tree with head `s` (T2) and leaves in `{s, next, cont}`.
Substitute `P_n` for every `s` and normalize innermost-first using the
application table (checked for indices ≤ 6 in `tools/algebra.py`):

    P_n P_n →* Q,     P_n Q → N P_{n-1},     Q V → N,
    P_n (z A⃗) → z A⃗ F P_{n-1},     (z A⃗) V = z A⃗ V          (z rigid).

Every subtree normalizes to `P_n`, to `Q`, or to a rigid-headed neutral:
the only functional values generated from copies of a single `P_n` are
`P_n` and `Q`, because `F`, `I`, `K`, and lower cells arise only from
`F`-, `K`-, or `I`-arguments or from cells of unequal index, none of which
is available (checked exhaustively for trees with ≤ 5 leaves, n = 3). A
`cont`-headed neutral receives its first argument either from an explicit
subtree, whose value is `P_n`, `Q`, or a neutral, never `P_{n-1}`, or from
`P_n (cont …) → cont … F P_{n-1}`, where `F` precedes `P_{n-1}`. So no
normal form `cont P_{n-1} N` is reachable, contradicting `(V_n)`. ∎

**T6 (the suffix is duplicated).** In `B[P_n]` the rigid `N` occurs once
per `s`-leaf of `B`; in the output it occurs twice (inside `P_{n-1}` and
bare). Every lambda of the stream (`λh`, `K`, `F`) binds its variable at
most once, so the only sources of duplication are: `s` occurring at least
twice in `B`, or a lambda of `B` whose binder occurs at least twice and
which is contracted on an argument containing `N`. In particular **either
`s` occurs ≥ 2 times in `B`, or `B` has a nonlinear binder**.

**T7 (every cell is opened).** Fix the copy of `N` that ends bare in the
output of `(V_n)` and follow it backwards. The `n+1` cell lambdas
`P_n, …, P_0` of its copy of the stream enclose it initially; an enclosing
lambda disappears only when that lambda is contracted. So every reduction
realizing `(V_n)` contracts (a descendant of) every one of these `n+1`
cells. The same holds for the copy whose `P_{n-1}` survives intact: its
`P_n` is contracted.

**T8 (the last cell).** The final cell `P_0 = λh. h K N` on the surviving
path is contracted on some argument `Y`: `P_0 Y → Y K N`. Checked table:
`P_0 P_0 → Q`; `P_0 F → N`; `P_0 K → K` (erases `N`); `P_0 P_j → I`
for `j ≥ 1` (erases `N`); `P_0 (rigid neutral)` traps `N` as an argument
of that neutral forever. Hence **`Y` is `P_0`, `F`, or a descendant of a
lambda of `B`**. Since the output has `N` as an argument of `cont`, a
reduct `N X` (head `N`) is also fatal.

**T9 (cell–cell chains).** If two cells meet, `P_i P_j`, the chain is
forced and the two sides alternate roles:
`P_i P_j → P_j F P_{i-1} → P_{j-1} P_{i-1}` (both indices `≥ 1`); at the
bottom `P_0 P_0 → Q`, `P_0 P_j → I` (`j ≥ 1`, `N` erased),
`P_j P_0 → N P_{j-1}` (`j ≥ 1`, `N` trapped as a rigid head, which no
reduction can turn into an argument). So a meeting with unequal indices is
fatal (which of the two deaths occurs depends on the parity of `|i−j|`),
a cell–cell meeting on the surviving path has **equal indices**, and the
chain then ends in `Q = K N`, which yields `N` only when applied to one
more argument. (Checked for all `i, j ≤ 6`, `tools/algebra.py`.)

**T10 (minimal counterexample is non-shrinking).** Suppose a reader body
below 43 bits exists and take one of minimum size. Contracting any redex
gives a β-equal term, hence another reader body, so every redex
`(λv.M) Q` of the minimum has `Δ ≥ 0`, where (Lean:
`Blc.SelfintWireCost.wire_beta_delta`; re-checked here on 3000 random
redexes)

    Δ = (m−1)|Q| + (fl(Q)−1)·D − 2m − 4 − f(M),

`m` the number of occurrences of `v` in `M`, `D` the sum over them of
the number of lambdas of `M` above the occurrence, `fl(Q)` the number of
free-variable leaves of `Q`, `f(M)` the number of leaves of `M` free in
`λv.M` (frame variables included). Consequences: no erasing redex
(`m = 0` gives `Δ < 0`); a linear redex needs `fl(Q) ≥ 2` and
`(fl(Q)−1)·D ≥ 6 + f(M)`; a redex with `m = 2` needs
`|Q| + (fl(Q)−1)·D ≥ 8 + f(M)`, with `m = 3` needs
`2|Q| + (fl(Q)−1)·D ≥ 10 + f(M)`.
# Part 2. The head-path decomposition and the role inventory

The structure theorem says what every reader body computes; this part
says what syntax it must therefore contain. The method is residual
tracing: in any β-reduction every lambda, application and leaf of a reduct
descends from a unique node of the initial term, copies of one node share
that origin, and a node is *consumed* when its residual is the redex (for
an application) or the contracted abstraction (for a lambda), *erased*
when it lies inside the argument of a vacuous contraction, and *surviving*
when its residual is in the output. The stream's own lambdas (`λh`, `K`,
`F`) are affine, so **only lambdas of `B` ever copy anything**.

Fix a minimum reader body `B` (T10), free variables in `{s, next, cont}`
(T1), and fix reductions `ρ_z : B[Z_R] →* R next` and
`ρ_v : B[P_n] →* cont P_{n-1} N` for one `n` larger than three times the
number of nodes of `B`. "A node of `B`" always means a node of the
original syntax of `B`; the stream copies substituted for the `s`-leaves
are *stream material*, not nodes of `B`.

## 2.1 The head path and the selection

Head-reduce `B[S]` (T3). The head steps are of two kinds:

* a **cell step** `S Y A⃗ → Y β τ A⃗`: the head is a copy of `S`, i.e. the
  residual of a leaf of `B` that is `s` or is a bound variable whose binder
  was contracted on a copy of `S`; the redex node is an application node
  of `B`. The step creates two new application nodes, `(Y β)` and
  `((Y β) τ)`, and two new leaves `β, τ` — **stream material**;
* a **λ-step** `(λy.M) Q A⃗ → M[Q/y] A⃗`: the abstraction is (a copy of) a
  lambda of `B`; `Q` is `β`, `τ`, a copy of `S`, or a subterm of `B`
  (an *operand* bound by a handler lambda, or the argument of a *let*).

The head reduction stops at `β A₁ … A_k` (β-case) or `τ A₁` (τ-case).

**Lemma 2.1 (the selection leaf).** In the β-case the head `β` was
created by a cell step as the argument of the stream node `(Y β)`, and it
reaches head position in one of two ways: **(i)** `Y`'s head normal form
is `λb. b …` — a lambda of `B` binds it and the body's head is that
binder's leaf `b` (a node of `B`; `K = λa b.a` is an instance with leaf
`a`) — or **(ii)** `Y` reduces to a copy of `S`, so the cell is applied to
the bit: `S β → β β' τ'`, the binder is the cell's own `λh`, and the two
hnf arguments `A₁, A₂` are the created `β', τ'` (shape (δ) of Lemma 2.6).
In case (i) the two selection nodes `(β A₁)`, `((β A₁) A₂)` are nodes of
`B`, except that one of them may be a created node `((Y' β'') τ'')` with
`Y' β'' →* β` or `→* β A₁` (shapes (β), (β′) of Lemma 2.6). *Proof.* A
created `β` is the argument of its node `(Y β)`; it becomes the head only
if `Y β →* β …`, i.e. `Y`'s hnf is `λb. b …` or `Y →* S` (then
`S β → β β' τ'`); a term over `β', τ', next, cont` and `S`-copies with
hnf head the *argument* `β` must be an abstraction binding it, and the only
abstractions available are lambdas of `B` and the cell's `λh`. A node
whose function residual is `β` or `β A₁` is a node of `B` unless it is a
created node whose function `(Y' β'')` reduces to it. ∎

So in case (i) every reader body contains, on its head path, a cell step
(an `s`-leaf or `S`-valued leaf, 2 bits, plus its application node, 2),
a dispatch lambda `λb` (2), its leaf `b` (2), and the two selection nodes
(4; 2 when one is created). Call this the **dispatch**, cost ≥ 12 (≥ 10
in the created-node shapes). Case (ii) is priced separately in §2.4. The depth `d ≥ 1` of the
selection node is the number of lambdas of `B` enclosing it; every lambda
on the head path encloses it (the handler binders `λb`, `λr`, `λt`, chain
binders, and let binders), so `d` equals the number of head-path λ-steps on
original lambdas, and every free leaf `s, next, cont` inside the arms pays
`d` extra bits.

**Definition (arms, operands, environment).** `Z` (zero arm) and `V`
(variable arm) are the subterms of `B` at the two argument positions of
the selection node. The **operands** are the subterms of `B` at argument
positions along the head path that are not `Z`, `V` (handler operands and
let arguments). The **environment** at the selection is the set of bound
variables in scope with their values on the two streams: `b ↦ (K, F)`;
`r ↦ (R, P_{n-1})` if a lambda bound the dispatch cell's `τ`; an operand
or let variable `t ↦ (O⁰, Oⁱ)`; a second cell's `b', r'`; and the free
`s ↦ (Z_R, P_n)`. The **rest** is the list of arguments applied to the
selection result: the dispatch cell's `τ` if unbound, then the unbound
operands. The laws read

    Z[env⁰] rest⁰ →* R next,        V[envⁱ] restⁱ →* cont P_{n-1} N.

In `ρ_z` the whole of `V` is erased (`K Z V → Z`), in `ρ_v` the whole of
`Z` is erased. Hence **a node or leaf inside `Z` plays a role only in
`ρ_z`, one inside `V` only in `ρ_v`; only head-path syntax, operands and
let arguments can serve both reductions.**

**Decomposition.** Since `Z`, `V`, the operands, the head-path leaves and
lambdas, and the selection nodes are pairwise disjoint pieces of the
syntax of `B`,

    |B| ≥ dispatch + Σ_operands (2 + |O|) + Σ_{other head λ} 2 + |Z| + |V|,

with equality when `B` has no further head-path material (copies made by
nonlinear binders cost nothing extra, which is why this is an inequality
in general).

## 2.2 The roles

The two outputs force the following **roles**, each realized by specific
syntax of `B`; two roles whose realizations must be distinct nodes or
leaves of `B` (because they are simultaneously present with different
fates in one reduction, or because one lies in `Z` and the other in `V`)
are charged separately.

In `ρ_z` (zero):

* **z-out**: the output node `R next` is a node `n_R` of `B` (a stream
  node has argument `K`, `R`, `F`, or a cell, never `next`). It survives.
  Either it lies inside `Z`, or it is the spine node of an operand `O` with
  `O⁰ →* next` and `Z[env⁰] rest'⁰ →* R`.
* **z-next**: the output leaf `next` is a leaf `ν_z` of `B` (3 bits plus
  its depth), surviving in `ρ_z`.
* **z-R**: the function of `n_R` reduces to `R`. `R` enters only as the
  tail of a contracted zero cell `Z_R Y → Y K R`. It reaches the function
  position of `n_R` either as the value of a bound leaf (`r` from a
  head-path `λr`, or `u` from a lambda inside `Z` that receives the
  unbound `τ` or an `R`-valued operand), or as the value of a compound
  subterm (`s s X`, `s F`, …) placed at that position or bound to a leaf.

In `ρ_v` (variable):

* **v-cont**: the output leaf `cont` is a leaf `κ_v` of `B` (4 bits plus
  depth), surviving.
* **v-N**: the bare `N` is produced by an **N-source** (Lemma 2.3), whose
  syntax is consumed or erased in `ρ_v`.
* **v-P**: the output node `cont P_{n-1}` is `n_P`: either a node of `B`
  inside `V` (or a spine node), or the second node `((Y β) τ)` of the
  dispatch cell, which requires the selection result on the variable
  stream to reduce to `cont` before `τ` is applied and `τ` to be unbound.
* **v-N-node**: the output node `(cont P_{n-1}) N` is `n_N`, a node of
  `B` (inside `V`, or the spine node of an N-valued operand); the only
  stream node with argument `N` is the last node of `P_0`, and Lemma 2.3
  shows that using it costs more than any realization below.
* **v-tail**: the intact `P_{n-1}` is the tail of the dispatch cell
  delivered through `n_P` when `n_P` is the stream node, or the value of a
  bound leaf `r`, or a compound (`s F`, a rebuilt cell).

Shared: **dispatch** (2.1), and **consumption**: every element of `rest`
is applied to the selection result in *both* reductions; an arm that does
not use it must still consume it, by a lambda of its own (2 bits, which
also deepens the arm's free leaves) or by a data selector.

## 2.3 Resource lemmas

**Lemma 2.3 (N-source ≥ 10).** The syntax of `B` producing the bare `N`
of `ρ_v` costs at least 10 bits and consists of at least three leaves and
two application nodes, none of which survives in the output; the bound is
attained only by `s s X`-shaped realizations: two leaves whose values are
cells of equal index, their meeting node, a consumer node and its argument
leaf `X` (any leaf). *Proof.* By T7–T9 the surviving copy's last cell is
contracted on `P_0`, `F`, or a descendant `Λ` of a lambda of `B`.

*(a) Cell–cell.* There is a first meeting redex `P_i P_i` (equal indices
by T9). Its node is a node of `B` whose two argument subtrees contain two
distinct leaves (two `s`-leaves, or bound leaves whose values are cells)
— a single leaf cannot be the origin of both sides of one redex — or it is
a created node `((Y F) P_{i-1})` with `Y F →* P_i`, `Y` a descendant of a
lambda `λb.W` of `B` (2 bits) with `W` cell-valued (≥ 2), applied by a
further cell step (≥ 4): at least 8 instead of 6. The chain then yields
`Q = K N`, consumed by a redex `Q X → N` whose node is a node of `B` with
an argument subtree (≥ 2) or a created node `((Y F) P_{j-1})` with
`Y F →* Q`, `Y = λb.W'` with the chain inside `W'`, applied by a cell step
(≥ 6 instead of 4). The consumer node is a redex, hence consumed, hence
distinct from `n_N`. Total ≥ 6 + 4 = 10.

*(b) `F`.* `P_0 F → N` needs an `F` *value* at the right moment. `F`
arises only as a syntactic `λa b.b` of `B` (6 bits, a lambda of `B`) or
from `P_j K → F`, where `K` is syntactic (6) or the first component of
some `P_0`, delivered to a lambda of `B`. In either case the `n+1` cell
steps of the surviving copy that are not cell–cell meetings are each
caused by a contraction of a lambda of `B` (an `F`, a `K`, or a receiver
of the cell), and we are in case (c).

*(c) Lambda walk.* If no cell–cell meeting occurs on the surviving path,
each of its `n+1` cell contractions is caused by a lambda of `B` (directly,
or through an `F` it produced), and `F`-values are at most `2L + c` in
number, so for `n > 3|B|` some lambda `λ*` of `B` is contracted at least
three times in `ρ_v`, hence copied at least twice. Copies arise only from
nonlinear binders of `B`; following the copying relation among the
finitely many lambdas of `B` yields a *walker*: a lambda `Λ` of `B`
contracted on cells of two different indices, whose body applies the
received tail to a copy of a cycle lambda through a leaf `f` bound by a
nonlinear binder (an affine `f` could pass the copy along only once, and
a syntactic copy inside `Λ` is impossible). Its necessary original syntax:
a lambda receiving the bit (2), one binding the tail (2), the nonlinear
`λf` (2) with two leaves `f` (4), the node applying the tail (2) with its
leaf `r` (2) and the node passing `f` (2), and — since `P_0 Λ → Λ K N`
must return the bare `N` while higher levels continue — a test of the bit
(`b`, 2; two nodes, 4) returning the tail (2): **≥ 24**, all consumed or
erased, none of it the `cont` leaf. If the walker's bit test is the
reader's own dispatch, its two arms must behave differently at the top
level (produce `R next`, `cont P_{n-1} N`) and at the bottom (`N`,
continue), so each needs an extra flag argument and test (≥ 4 each); then
`|B| ≥ 4 + 24 + 4 + 3 + 4 + 8 ≥ 47`. Otherwise `|B| ≥ 24 + 12 + 4 + 3 ≥
43` from the walker, the dispatch, `cont` and `next` alone. Either way no
reader with a lambda walk is below 43, and this case never attains 10 for
the N-source. The same accounting shows that making the last node of `P_0`
the output node `n_N` (which needs a walker carrying `P_{n-1}`) costs
≥ 24. ∎

**Lemma 2.4 (zero-R-source).** Realizations of **z-R** and their costs:
(i) a bound leaf (2) whose binder is a head-path `λr` contracted on `τ`
(the lambda is counted in `d`); (ii) a bound leaf (2) whose binder is a
lambda inside `Z` (2) contracted on the unbound `τ` or on an `R`-valued
element of `rest`; (iii) the tail of a cell delivered by a created
selection node (Lemma 2.6(β)), cost 0 for the leaf but with the
dispatch's own costs; (iv) a compound inside `Z` or bound to a leaf, whose
zero value is `R`: it must contract a zero cell with a `Y` returning the
tail (`F`, `λu r.r`: 6 bits, or a second cell `s s` then an argument):
at least 10 bits of syntax that is consumed in `ρ_z`, shareable with the
N-source only when it is the same subterm (an operand or let whose zero
value is `R` and whose variable value is `N`, i.e. a skip `s s X`).
*Proof.* `R` has no other provenance (T3, T7 applied to the zero stream:
`R` occurs once per copy, as the tail). A leaf receives `R` only through a
binder contracted on `R` itself or on a term reducing to `R`; the latter
needs a contracted zero cell and the tail-returning `Y`, as listed. ∎

**Lemma 2.5 (variable tail).** Realizations of **v-tail**: (i) the
dispatch cell's `τ` through its own second node (`n_P` = stream node),
cost 0, requiring `V[envⁱ] →* cont`; (ii) a bound leaf `r` (2) bound to
`τ` on the head path (counted in `d`) or inside `V` (2); (iii) `s F` or
`s (λu r. r)` (≥ 10) or any other compound contracting a fresh copy of
the cell with a tail-returning `Y`; (iv) a rebuilt cell `λh. h F' P'`
with `F' →* F` and `P' →* P_{n-2}`: at least 2 + 4 + 2 + 2 + 2 = 12 bits
plus a second cell contraction to obtain `P_{n-2}` (≥ 4) — never
competitive. *Proof.* The output's `P_{n-1}` has a root lambda that is a
residual of a stream cell (then, the cell body being closed, the whole
`P_{n-1}` is that cell's residual, i.e. the tail of a contracted `P_n`
copy), or of a lambda of `B`, which is case (iv). ∎

**Lemma 2.6 (stream-node shortcuts).** A created node has argument a bit
(`(Y β)`) or a tail (`((Y β) τ)`). The only roles a created node can take
are:
(α) `n_P` = the second node of a cell step with `(Y β)ⁱ →* cont` — when
it is the dispatch cell, `V[envⁱ] →* cont`; then `n_N` is a node of `B`
applying `cont τ` to the N-source, necessarily the spine node of an
N-valued operand (it cannot lie inside `V`, which is the leaf `cont`);
(β) the first selection node, `((Y β') τ')` with `Y β' →* β`: `Y`'s hnf is
`λb'. b'` or `λb'. b` (an outer bit); then `Z = τ'`, the zero arm cannot
contain `next` (so `ν_z` is an operand and `n_R` its spine node), and `V`
receives no tail from this cell;
(β′) the second selection node, `((Y β') τ')` with `Y β' →* β Z`: then
`V = τ'` is a tail, and on the variable stream `P_{n-1}` is applied to the
following argument `X`, which must satisfy `Xⁱ F P_{n-2} … →* cont P_{n-1}
N` (and handle `n = 1`, where it receives `K N`);
(δ) both arms at once, when the bit is bound by the cell's `λh`
(Lemma 2.1 (ii)): hnf `β β' τ' A₃ …`, so on the zero stream
`K K R A₃⁰ … → A₃⁰ A₅⁰ …` (the tail `R` is erased) and on the variable
stream `F F P_{n-1} A₃ⁱ … → A₃ⁱ F P_{n-2} A₄ⁱ …` (the tail is consumed).
A created node is never `n_R` (argument `next`) nor `n_N` (argument `N`:
only the last node of `P_0`, Lemma 2.3(c)); as a meeting or consumer node
it is priced in Lemma 2.3(a). *Proof.* By inspection of the two created
node shapes and of what their function parts can reduce to (`cont`, `β`,
`β Z`, a cell, `Q`); `(Y β)` with `Y →* β` or `Y →* S` gives (δ). ∎
**Lemma 2.7 (copies do not help the inventory).** In the minimum `B`,
(i) a let on a single leaf, `(λy.M) Q` with `Q ∈ {s, next, cont}` at
depth `e`, has `Δ = (m−1)(|Q|) − 2m − 4 − f(M)` with `|Q| = 2+e, 3+e,
4+e`; it is negative for `Q = s` always, and otherwise only non-negative
when the leaf is used many times (`m ≥ 7` for `next`, `m ≥ 4` for `cont`
at depth 0). In those cases the let costs `4 + |Q| + 2m` while the
inventory below charges at most `|Q| + e' + 2(m−1)` for the roles its
uses can fill (one output leaf and consumer leaves), so the inventory
remains a lower bound; in all other cases leaves are never copied and
each charged leaf role is an original leaf.
(ii) the residuals of one copied application node all have β-equal
functions and β-equal arguments, since copies of a let argument are
substituted under the same binders. All roles charged within one
reduction have pairwise different (function, argument) signatures
(`n_P`: `(cont, P_{n-1})`; `n_N`: `(cont P_{n-1}, N)`; meeting node:
`(P_i, P_i)`; consumer: `(K N, X)`; the two selection nodes:
`(β, Z)`, `(β Z, V)`; the dispatch cell step: `(S, Y)`), so no two of them
are residuals of one node. Roles in different reductions may share syntax
only through the head path, operands and lets, which the shapes below
treat explicitly. The one mechanism that copies lambdas with *different*
arguments — a self-passing walker — is priced in Lemma 2.3(c). ∎

**Remark (forced depths).** Inside an arm the free leaves sit under all
the arm's own leading lambdas: an arm applied to `m` arguments it consumes
with lambdas has head normal form `λu₁ … u_m. body`, and by T10 the
arm's syntax cannot hide a free leaf above those lambdas through a let
(a let on a leaf shrinks; a let `(λy. λu⃗. … y …) Q` with `Q ∋ next` needs
`fl(Q) ≥ 4`, i.e. `|Q| ≥ 14`, far above the savings). Consuming an
argument by a data value instead of a lambda (`K`, `F`, `b`, `s s`, a cell
step) costs ≥ 4 instead of 2 and spares at most one bit of depth on each
free leaf of the arm — never cheaper than the lambda for the arms below,
whose free leaves number at most two.

## 2.4 The minimization

Costs: a free `next` at depth `e` costs `3 + e`, `cont` `4 + e`, `s`
`2 + e`; a bound leaf costs `2 +` (lambdas between it and its binder).
`d ≥ 1` is the depth of the selection node; `rest` the arguments applied
to the selection result (§2.1). An arm either uses an element of `rest`
as an output argument, or consumes it (≥ 2 per element, Remark).

**v-cont and z-next placements.** `κ_v` is a leaf inside `V` (`4 + depth`)
or a leaf elsewhere reaching `V` through a bound variable, which costs the
leaf (≥ 4), a lambda (2), the variable (2) and a node (2) ≥ 10 — never
competitive, so `κ_v ∈ V` below. Likewise `ν_z ∈ Z` (`3 + depth`) or
`ν_z` is an operand `next` (3) applied through its spine node, which is
then `n_R` (2); other indirections cost ≥ 9.

By Lemma 2.6 exactly one shape applies.

### Shape (α): `n_P` is the dispatch cell's second node

Then `V[envⁱ] →* cont` with `κ_v ∈ V`; the only `V` of minimum size is
the leaf `cont`, `4 + d` (any other `V` has a second leaf or a lambda:
≥ `6 + d`). The dispatch's `τ` is unbound and becomes `cont`'s first
argument, so `rest = (τ, T, …)` and `n_N` is the spine node of the operand
`T`, with `Tⁱ →* N`; by Lemma 2.3, `|T| ≥ 10`, with equality only for
`T = s s X`, `X` an index-0 leaf, i.e. `X = s`. **There is no further
operand**: a third element of `rest` would be a third argument of `cont`.

The zero arm receives exactly `R` and `T⁰`. `n_R` cannot be `T`'s spine
node (`T⁰` would have to be `next`, but `T` is N-valued and `next`-valued
only if it contains a selection with its own bit source: ≥ 10 + 8 more
than a leaf). If `n_R` lay inside `T`, then `T⁰ →* R next` and `Z = λu t.t`
(6): `T` at depth 0 has no bound variables, so it pays a compound
`R`-source (≥ 10), `next` and `n_R` (5), the N-source (10) and a selection
with a bit source (`s K` or a cell with a lambda, ≥ 14): `|B| ≥ 12 + 2 +
39 + 6 + 5 ≥ 64`. Otherwise `Z` contains `n_R`, `ν_z`, and an `R`-source. `Z`
consumes both arguments: two lambdas (4) above `ν_z`, or data consumers
(≥ 4 each, Remark). So `ν_z` costs `3 + d + 2`, the `R`-source is a bound
leaf (2; a compound would cost ≥ 10 by Lemma 2.4 (iv)), and

    |Z| ≥ 4 + 2 + (5 + d) + 2 = 13 + d,

with equality only for `Z = λu r. r next` with `T⁰ = R` (`T` a skip) —
`λu r. u next` costs one more because `u` sits under the second lambda.
Altogether

    |B| ≥ 12 + (2 + 10) + (13 + d) + (4 + d) = 41 + 2d ≥ 43,

with equality iff `d = 1`, `T = s s s`, `Z = λu r. r next`, `V = cont`:
**the 165's reader, uniquely**.

### Shape (β): the first selection node is created, `Z` is a cell's tail

The dispatch cell's `Y` has head normal form `λb'. b'` or `λb'. b`.

*`Y →* λb'. b'`.* The cheapest such `Y` is `I` (4): dispatch
`4 + 4 + 0 + 2 = 10` (one selection node is created). `Z = τ'` costs 0,
so `ν_z` is an operand `next` (3) whose spine node is `n_R` (2), and
`rest = (next)` exactly (a second operand would trail `R next`). The
variable arm `V` sits at depth 0, receives `next` and **no tail**
(`F τ' V → V`). It must consume or use `next` — a lambda (2), since `V`'s
value must be a function; using `next` as the N-source's consumer leaf `X`
is allowed and already inside the N-source's 10 — and must realize
**v-tail** without any bound tail: Lemma 2.5 (ii) with a fresh cell step
applying a lambda of `V` that binds the tail (`4 + 4 + 2 = 10`) or
(iii) `s F`/`s (λu r.r)` (10), or (iv) (≥ 16); the N-source (10, disjoint
syntax: its own two cell leaves, meeting node, consumer node and `X`);
`κ_v` (≥ 4 + 1); `n_P`, `n_N` (4). So

    |V| ≥ 2 + 10 + 10 + 5 + 4 = 31,    |B| ≥ 10 + 5 + 31 = 46.

(The cheapest construction found, `s I (λt. cont (s F) (s s t)) next`,
is 49 bits, checked.)

*`Y →* λb'. b`.* `b` is bound by an outer handler lambda on an outer cell
step: at least `4 + 2` more on the head path than the previous case, while
`V` may now use that outer cell's tail through a bound `r` (saving at most
`10 − 4` on **v-tail**): `|B| ≥ 46 + 6 − 6 = 46`.

### Shape (β′): the second selection node is created, `V` is a tail

Here `V = τ'` and the variable stream continues `P_{n-1} X … → X F
P_{n-2} …`, so the continuation `X` must bind or consume two extra
arguments (≥ 4), test the bit it receives (for `n = 1` it receives `K N`
and must not walk `N`: a leaf and two nodes, ≥ 6), contain `κ_v`
(≥ 4 + 2), an N-source (≥ 10), `n_P`, `n_N` (4), and a tail: the outer
cell's `τ` passed to it (a binding, ≥ 4) or a compound (≥ 10). The head
path has two cell steps (8), `λb` and `λb'` (4), the leaf `b` (≥ 2), the
node `(b Z)` (2) and the spine node of `X` (2). The zero arm `Z` is as in
shape (α) (`≥ 13 + d` with `d ≥ 2`). So `|B| ≥ 18 + 15 + 34 ≥ 67`. (A
71-bit construction exists; I did not check it, as it is irrelevant to
the bound.)

### Shape (δ): the bit is bound by the cell's own `λh`

Then (Lemma 2.6) `R` is erased before any arm can see it and `P_{n-1}` is
consumed, so **z-R** is a compound (≥ 10, Lemma 2.4 (iv)) and **v-tail** a
compound (≥ 10, Lemma 2.5 (iii)/(iv)); the continuation `A₃` receives
different argument lists on the two streams (`A₅⁰ …` against
`F P_{n-2} A₄ⁱ …`) and must distinguish them, which needs a lambda of `B`
whose bound leaf heads a selection (≥ 8) — with the zero-side selector
supplied by an operand (`K`, ≥ 6) or by a tail test — and must consume
`F` and `P_{n-2}` (≥ 4); the two cell steps cost 8. With `κ_v`, `ν_z`,
`n_R`, `n_P`, `n_N` (≥ 15) and the N-source (10):
`|B| ≥ 8 + 8 + 6 + 4 + 10 + 10 + 10 + 15 ≥ 71`.

### Shape (γ): `n_P` and `n_N` are nodes of `B`

`V` contains `κ_v` (`4 + d + e_V`, `e_V` the number of `V`'s own lambdas
above it) and `n_P` (2); it contains `n_N` (2) unless `n_N` is the spine
node of an N-valued operand (case γ2).

**(γ1) No N-valued operand.** The N-source (≥ 10) lies inside `V`. The
tail is a bound leaf `r` (2) — bound on the head path (then `d ≥ 2`) or by
a lambda of `V` receiving the unbound `τ` (then `e_V ≥ 1`) — or a compound
(≥ 10, worse). The zero arm: `ν_z ∈ Z` gives
`|Z| ≥ 2 + (3 + d + e_Z) + 2 + 2·(consumed)`; `ν_z` an operand `next`
gives `|Z| ≥ 2` (a bound `R`-leaf, `d ≥ 2`) or `|Z| ≥ 4` (`λu. u`).

| `d` | operands | dispatch | `Z` ≥ | `V` ≥ | total ≥ | attained |
|---|---|---:|---:|---:|---:|---:|
| 1 | none | 12 | 11 (`λu. u next`) | 2+6+2+10+4 = 24 | 47 | 47 |
| 2 | none | 15 | 9 (`r next`) | 6+2+10+4 = 22 | 46 | 46 |
| 1 | `next` (5) | 12 | 4 (`λu. u`) | 4+7+2+10+4 = 27 | 48 | 51 |
| 2 | `next` (5) | 15 | 2 (`r`) | 2+7+2+10+4 = 25 | 47 | 50 |

(Row 1: `V` binds `τ`, so `e_V = 1`, `κ_v` costs 6, plus `λr` 2, `r` 2,
N-source 10, `n_P n_N` 4. Row 3: `V` binds `τ` and `next`, `e_V = 2`.
Row 4: `V` binds `next`.) Any other operand `O` (`cont`, `s s`, `s F`,
`s K`, a second `next`, …) can serve as an output argument in neither arm
except `cont` for `V` — and `cont` as an operand costs `2 + 4` plus its
consumption by `Z` (2) and binding in `V` (2 + 2) against the `4 + d`
it replaces: a net increase — so it adds at least `2 + |O| + 2 ≥ 8` for
`|O| ≥ 4` over the rows above. A head-path depth `d ≥ 3` adds 2 per extra
lambda and one bit on `b` and on each free leaf of the arms (≥ 4 per
lambda). Hence (γ1) gives `|B| ≥ 46`.

**(γ2) An N-valued operand `T`** (`2 + |T| ≥ 12`). If `n_N` is `T`'s
spine node, `V[envⁱ]` applied to `τ` (if unbound) reduces to
`cont P_{n-1}`, so `V` contains `κ_v`, `n_P`, and a tail leaf:
`V = cont r` (`d = 2`, 10) or `V = λr. cont r` (`d = 1`, 12). The zero arm
receives `τ` (if unbound) and `T⁰` and contains `n_R`, `ν_z`, an
`R`-leaf: `d = 2`: `|Z| ≥ 2 + 2 + 6 + 2 = 12` (consumes `T⁰`);
`d = 1`: `|Z| ≥ 4 + 2 + 6 + 2 = 14`. Totals: `15 + 12 + 10 + 12 = 49`
and `12 + 12 + 12 + 14 = 50`. If `n_N` is inside `V`, then `V` applies
`cont P_{n-1}` to a leaf `t` bound to `T` (the N-source is then `T`
itself, and `V` binds `t` or `d ≥ 3`) or has its own N-source and wastes
`T`: `|V| ≥ (4 + d + e_V) + 2 + 2 + 2 + 2` with `e_V ≥ 1` or `d ≥ 2`;
with `|Z| ≥ 12` and the operand's 12 and dispatch ≥ 12 this is ≥ 52.

### Depth-0 operands as role carriers

An operand at depth 0 sees no bound variable, so any `R`, `P_{n-1}`, `N`
or bit it supplies is a compound (≥ 10 each, Lemmas 2.3–2.5 and `s K`),
and an operand serving a zero role and a variable role with different
values (a *dual* operand) contains a selection with its own bit source
(≥ 8 + 10). Moving a role out of an arm into such an operand therefore
never lowers the bounds above, which already charge the cheapest
realization of every role.

### Extras

Each additional head-path cell step costs ≥ 4 and its `β', τ'` must be
bound or consumed (≥ 2); each head-path let costs `≥ 4 + |Q| ≥ 10`
(T10: a let needs `fl(Q) ≥ 2` or `|Q| ≥ 8`); a data dispatch (`s K …`)
costs 14 and forfeits the tail; none lowers the minimum realization cost of
any role, because every role is priced in leaves and nodes (≥ 2 each) and
in forced depths. So each extra only adds to the bounds above.

**Conclusion of 2.4.** In the β-case `|B| ≥ 43`, with equality exactly for
the 165's reader (shape (α), `d = 1`, `T = s s s`, `Z = λu r. r next`,
`V = cont`).

## 2.5 The τ-case

The head `τ` is the residual of a bound leaf `r` (2) whose binder `λr` (2)
is on the head path and was contracted on the dispatch cell's tail after a
`λb` (2) took the bit (data variants `s F`: 6 for the `F`, same count);
the node `(τ A₁)` is a node of `B` (2): a created node `((Y β') τ')` would
need `Y β' →* τ`, giving `τ τ'`, whose zero instance `R R` is not
`R next`. Apply T3's argument to `A₁` (a term with `A₁⁰ →* next` normal
and `A₁ⁱ` a function): its head normal form is `β A₁' A₂' O⃗` with
`A₁'⁰ O⃗⁰ →* next` and `A₂'ⁱ O⃗ⁱ F P_{n-2} →* cont P_{n-1} N`, so `A₁`
contains a selection: a leaf `b` (2 + 1, under `λr`) and two nodes (4).
Its zero arm contains or receives `next` (≥ 5 at depth ≥ 2). Its variable
arm receives `F` and `P_{n-2}` and must consume or use them (≥ 4),
contains `κ_v` (≥ 4 + 2 + 2), the tail leaf `r` (≥ 2), `n_P`, `n_N` (4),
and an N-source (≥ 10). Hence

    |B| ≥ (4 + 2 + 2 + 2 + 2) + (3 + 4) + 5 + (4 + 8 + 2 + 4 + 10) = 52.

(Cheapest construction found: `s (λb r. r (b next (λb' t. cont r (r r t))))`,
58 bits, checked.) The τ-case never competes.

## 2.6 Statement

**Theorem.** Every reader body — every term `B` over the frame
`[s, next, cont, intL, x]` with `B[Z_R/s] →* R next` and
`B[P_n/s] →* cont P_{n-1} N` for all `n ≥ 1`, with `R, N, next, cont,
intL, x` rigid — has `|B| ≥ 43`, and `|B| = 43` only for
`s (λb. b (λu r. r next) cont) (s s s)`.

The proof is the structure theorem (Part 1), the head-path decomposition
and role inventory (§2.1–2.3, Lemma 2.7), and the minimization
(§2.4–2.5). It is handwritten; the finite identities it uses are checked
by the scripts in `tools/`; the exact wire-cost formula it uses is the
Lean theorem `Blc.SelfintWireCost.wire_beta_delta`. Part 3 lists the steps
whose rigour is weakest.
# Part 3. What is proved, how, and where the argument is thin

## 3.1 Status by component

| component | status |
|---|---|
| T1–T4 (free variables, open hnf `s A⃗`, symbolic hnf dichotomy, forced leaves) | handwritten, standard tools (solvability, Church–Rosser); the 165's symbolic hnf checked |
| T5 (no lambda-free body) | handwritten; the application table and the `P_n`-only closure checked for indices ≤ 6 and trees ≤ 5 leaves |
| T6–T9 (duplication, every cell opened, last cell, equal-index chains) | handwritten residual arguments; all finite identities checked |
| T10 (minimum has no shrinking redex; Δ formula) | the formula is Lean (`wire_beta_delta`), re-checked on 3000 random redexes; the minimality argument is one line |
| §2.1 decomposition, Lemma 2.1 (selection leaf) | handwritten residual tracing |
| Lemma 2.3 (N-source ≥ 10), cases (a), (b) | handwritten, tight |
| Lemma 2.3 (c) (self-passing walker ≥ 24) | handwritten and coarse (a count of necessary pieces, see 3.2) — the weakest step |
| Lemmas 2.4–2.6 (R-source, tail, stream-node shortcuts) | handwritten exhaustive lists of realizations |
| Lemma 2.7 (copies) | handwritten; relies on T10 and on the distinct signatures of the roles |
| §2.4 shapes (α), (β), (β′), (δ), (γ) and extras | handwritten arithmetic; every valid construction measured (`tools/menu.py` and inline checks) is ≥ its shape's bound |
| §2.5 τ-case ≥ 52 | handwritten, coarse |

No Lean was written in this lane: the statements pinned down enough to
formalize (the application tables, T5) are finite-instance checks of
small value, and the load-bearing steps (residual tracing over all
reductions, the inventory) would need a formalization of residuals that
does not exist in `lean/Blc`.

## 3.2 Where a reviewer should push

1. **Exhaustiveness of realization lists.** Lemmas 2.4–2.6 enumerate how
   `R`, the tail, and the output nodes can be produced. The lists rest on
   T3/T7–T9 (what stream material can do) and on the observation that a
   created node has argument `β` or `τ`. A missed realization would have
   to produce `R`, `P_{n-1}` or `N` from stream material in a way the
   tables do not cover; the `P_n`-only closure check and the table are the
   evidence that there is none, but the general claim is handwritten.
2. **The walker bound (Lemma 2.3 (c)).** A lambda of `B` contracted on
   cells of two different indices must be copied, and the copying binder
   must be nonlinear; I price the receiver's binders (bit, tail), the
   application of the tail to a copy, the nonlinear binder with two
   leaves, and the bit test with the return of `N`: `2+2+2+2+2+2+2+2+4+2
   = 24`, so even with the dispatch shared (the walker's bit test being
   the reader's dispatch) the reader is ≥ `12 + (24 − 8) + 4 + 3 + 2 ≥
   43`. This is a count of necessary pieces, not a case analysis; it has
   a 20-bit margin over the cheapest walker I can write (85-bit reader),
   but it is the step most likely to contain an unexamined realization.
3. **Lemma 2.7 (ii)** uses that copies of a let argument have β-equal
   values. This is true for copies produced by substitution of one
   argument; for copies produced inside a walker (different arguments at
   each level) it is not, which is why walkers are priced separately. A
   reader mixing a walker with cheap arms would have to be re-examined
   against both arguments at once; I believe the 24-bit walker cost
   closes it, but have not written that case out.
4. **Depth taxes.** The arms' free leaves are charged `+1` per lambda
   above them. The Remark in §2.4 shows that a let cannot lift a leaf
   above an arm's consumption lambdas in the minimum. Data consumers
   (`K`, `b`, `s s`) were priced at ≥ 4 against the lambda's 2 and shown
   to save at most one depth bit per free leaf; the arms in the tables
   have at most two free leaves, so this is safe, but shape (γ) rows with
   several consumptions deserve a re-count.
5. **Shape (γ1) "other operands" and `d ≥ 3`.** These are one-line
   dominance arguments (each extra costs more than anything it can
   replace). They are correct for the roles as priced, but they are the
   kind of step where a clever double use (an operand that is at once a
   tail source for `V` and an `R`-source for `Z`, e.g. `s F`) must be
   checked: `s F` costs 10 and replaces `r` (2 + binder) in both arms, a
   net loss; I checked `s F`, `s s`, `s K`, `next`, `cont`.

## 3.3 Residual cases

With the caveats of 3.2, I do not have a residual *class* of reader bodies
outside the theorem: the decomposition covers every term (compressed or
not, any arity, any operand, both dispatch heads), because it is driven by
the head reduction of `B[S]` and by residual tracing rather than by the
syntax of `B`. The residual risk is in the rigour of the listed steps, not
in an identified family of terms. The honest summary:

* **Fully covered with tight arithmetic:** shape (α) — every reader whose
  variable output node `cont P_{n-1}` is the stream's own node (this is
  the 165's mechanism; the 165 is the unique minimum there).
* **Covered with margin ≥ 3:** shapes (β), (γ), the τ-case, chains, lets,
  data dispatch.
* **Covered with large margin but coarse reasoning:** self-passing
  walkers (Lemma 2.3 (c)), rebuilt cells (Lemma 2.5 (iv)).

## 3.4 Relation to the earlier bounds

The earlier results are recovered as instances: the 27-bit handler bound
(`s H (s s s)`) is shape (α)/(γ) with `T = s s s`; the 35- and 31-bit
handler bounds for `T = s` and `T = s s` are the rows where the operand is
not N-valued at depth 0 (`s`, `s s`) and the N-source must be completed
inside `V` (`t X` for `s s`); the neutral-operand domination is the
"other operand" line. The bare operands `next` and `cont`, operands with
lambdas, arities `k ≠ 2`, head redexes, and the tail-headed dispatch — the
open list in the lane prompt — are the rows of (β), (γ) and §2.5.

## 3.5 Honest read

The reader is optimal because its three mechanisms are each at their
floor and share everything that can be shared: the stream's own second
node is the variable output's first application (shape (α) is the only
way to get an output node for free), the skip `s s s` is the cheapest
N-source (Lemma 2.3) and its zero value happens to be the tail, so one
operand serves both arms, and the zero arm then pays exactly for the two
lambdas that consume what the variable arm uses. Every alternative in the
inventory pays at least 3 more bits.

Where a sub-165 could still hide is therefore **not in the reader with
the 165's knot and NEXT fixed**: it would have to change the laws — a
different `next` protocol (the zero arm's `r next` is the only place
`next` is used, and the reader never exploits what `next` does), a reader
that hands NEXT something other than the raw remaining stream, or a fusion
of the reader's self-application `s s` with the knot (the reader already
contains the only self-application the knot needs). The next proof step
that would make this record-grade is to formalize residual tracing for
the two reader laws in Lean (origins and fates of nodes, as
`SelfintOrigins.lean` does for quotation-origin binders) and to discharge
Lemma 2.3 and Lemma 2.7 from it; the arithmetic of §2.4 would then be a
finite check over realization patterns.
