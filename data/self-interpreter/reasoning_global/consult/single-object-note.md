# A self-contained proof of the width theorem (single-object closures)

Claude, 2026-11-25: the handwritten proof as it was given to the Lean lane
and to the outside review. Lean has since checked it
(`lean/Blc/SelfintSingleObject.lean`), and it replaces the appeal to
Statman's theorem in `capture-width.md` and `global-floor.md`.

All reduction is β. `→w` is one weak head step: `(λu.Q) N M₁…Mₙ → Q[N/u] M₁…Mₙ`
(the redex at the head of the application spine, never under a λ). It is
deterministic. `↠w` is its reflexive transitive closure. Variables `x, y, ζ, ζ'`
are distinct. `K = λa b. a`, `F = λa b. b`, `I = λa. a`.

## 1. The predicate

An abstraction `λu.Q` is *live* if `u ∈ FV(Q)`, otherwise *dead*.

A live abstraction `λu.Q` *factors through one object* if there are a term `R`
with `u ∉ FV(R)` and a term `Q'` with `FV(Q') ⊆ {u, r}` (`r` fresh) such that

    Q = Q'[R/r]        (capture-avoiding substitution).

So everything the body uses besides its own argument (and closed subterms)
reaches it through copies of the single term `R`. Example: `λu. a b u` factors
(`R = a b`, `Q' = r u`); `λu. u (a b) (a b)` factors; `λu. u a b` and
`λu. a u (b u)` do not (for `a ≠ b` variables).

`SO` (single-object) is the least predicate on terms with

    SO(v)                       for a variable v,
    SO(M N)                     if SO(M) and SO(N),
    SO(λu.Q)                    if SO(Q) and u ∉ FV(Q),
    SO(λu.Q)                    if SO(Q), Q = Q'[R/r] as above, and SO(R).

`SO` is invariant under renaming / shifting, and closed under subterms
(inversion). If a live `λu.Q` is a subterm of an `SO` term and `r` occurs in
`Q'`, then `SO(R)` already follows from `SO(Q)`; the premise is there to make
the induction direct.

**Width 2 implies SO.** If every subterm of `t` has at most two distinct free
variables, then a live `λu.Q` in `t` has `FV(Q) ⊆ {u, v}` for one variable `v`,
and factors with `R = v`. So `¬SO(t)` gives a subterm with three distinct free
variables; the converse fails (`λa b u. a b u` has width 3 and is `SO`), so the
theorem below is strictly stronger than the width statement.

## 2. Lemmas

**L1 (substitution).** `SO(t)` and `SO(N)` imply `SO(t[N/x])`.
Induction on the derivation of `SO(t)`. For `λu.Q` (with `u` fresh for `N, x`):
`SO(Q[N/x])` by induction; dead stays dead; and if `Q = Q'[R/r]` then
`Q[N/x] = Q'[R[N/x]/r]` because `x ∉ FV(Q') ⊆ {u, r}`, with `u ∉ FV(R[N/x])`
and `SO(R[N/x])` by induction.

**L2 (weak head steps).** `SO(t)` and `t →w t'` imply `SO(t')`.
`t = (λu.Q) N M⃗`; inversion gives `SO(Q)`, `SO(N)`, `SO(Mᵢ)`; apply L1.
(SO is *not* claimed to be closed under arbitrary β: contracting inside one
copy of a shared object under a live λ can break the factorization. Only weak
head reduction is used.)

**L3 (simulation).** Let `H` be any term, `Z →w Z₁` with `ζ ∉ FV(Z)` (hence
`ζ ∉ FV(Z₁)`), and `v ≠ ζ` a variable.
If `H[Z/ζ] ↠w v` in `k` steps, then `H[Z₁/ζ] ↠w v` in at most `k` steps.
Strong induction on `k`, by the head of `H = h M⃗`:
- `h = ζ`: the first step of `H[Z/ζ] = Z M⃗[Z/ζ]` is `→w Z₁ M⃗[Z/ζ]`, which
  reaches `v` in `k − 1` steps. Apply the induction hypothesis to
  `H' = Z₁ M⃗` (the variable `ζ` still marks the copies inside `M⃗`):
  `H'[Z₁/ζ] = Z₁ M⃗[Z₁/ζ] = H[Z₁/ζ]` reaches `v` in at most `k − 1` steps.
- `h` another variable: `H[Z/ζ]` is weak-head normal, so `k = 0`, `H = v`.
- `h` an abstraction with no argument: `H[Z/ζ]` is an abstraction, impossible.
- `h` an abstraction with an argument: `H →w H₁`, `H[Z/ζ] →w H₁[Z/ζ]`,
  `H[Z₁/ζ] →w H₁[Z₁/ζ]`; induction on `k − 1`.

**L4 (the object reaches the head).** Let `FV(G) ⊆ {ζ}`, `v ≠ ζ` a variable,
`Z` any term, and `G[Z/ζ] ↠w v` in `k` steps. Then there are `j ≤ k` and terms
`M⃗` with `FV ⊆ {ζ}` such that `G ↠w ζ M⃗` in `j` steps; hence
`G[Z/ζ] ↠w Z M⃗[Z/ζ]` in `j` steps and `Z M⃗[Z/ζ] ↠w v` in `k − j` steps.
Induction on `k`: the head of `G` is `ζ` (done), or an abstraction; an
abstraction without arguments cannot reduce to a variable; with an argument
`G →w G₁` and `G[Z/ζ] →w G₁[Z/ζ]`.

## 3. No object yields two things

**Proposition.** Let `SO(Z)`, `FV(Z) ⊆ {x, y}`, and let `G_A, G_B` be *any*
terms with `FV ⊆ {ζ}`. Then not both `G_A[Z/ζ] ↠w x` and `G_B[Z/ζ] ↠w y`.

Proof. Strong induction on `k = k_A + k_B`, the two lengths. L4 gives
`j_A, M⃗_A` and `j_B, M⃗_B`: `Z M⃗_A[Z/ζ] ↠w x` in `k_A − j_A` steps, and the same
for `B`. Write `Z = h N⃗`.

(a) `h` is a variable. Then `Z M⃗_A[Z/ζ]` is weak-head normal, so it is the term
`x`: `Z = x`. Likewise `Z = y`. Contradiction.

(b) `h` is an abstraction and `N⃗` is not empty: `Z →w Z₁`, with `SO(Z₁)` by L2
and `FV(Z₁) ⊆ {x, y}`. The next step of `A`'s reduction is
`Z M⃗_A[Z/ζ] →w Z₁ M⃗_A[Z/ζ]`, so the latter reaches `x` in `k_A − j_A − 1` steps,
and by L3 (with `H = Z₁ M⃗_A`) so does `Z₁ M⃗_A[Z₁/ζ]` in at most as many. Put
`G_A' = ζ M⃗_A`, `G_B' = ζ M⃗_B`: the configuration `(Z₁, G_A', G_B')` has total
length at most `k − 2`. Induction.

(c) `Z = λu.Q`. If `M⃗_A` were empty, `Z` itself would have to reduce to `x`.
So `M⃗_A = M N⃗`, the next step is `Z M[Z/ζ] N⃗[Z/ζ] →w Q[M[Z/ζ]/u] N⃗[Z/ζ]`, and
that term reaches `x` in `k_A − j_A − 1` steps. The same for `B`.

  (c1) dead: `Q[M[Z/ζ]/u] = Q =: D`, with `SO(D)` and `FV(D) ⊆ {x, y}`.
  Let `G_A' = ζ' N⃗[(λu.ζ')/ζ]`. Then `G_A'[D/ζ'] = D N⃗[Z/ζ]`. Induction on
  `(D, G_A', G_B')`.

  (c2) live: `Q = Q'[R/r]` with `u ∉ FV(R)`, `FV(Q') ⊆ {u, r}`, `SO(R)`. If `r`
  does not occur in `Q'`, replace `R` by `x`. Otherwise `FV(R) ⊆ FV(Q) \ {u} ⊆
  {x, y}`. Let `Λ = λu. Q'[ζ'/r]`, so `Z = Λ[R/ζ']`, and
  `G_A' = Q'[M[Λ/ζ]/u, ζ'/r] N⃗[Λ/ζ]`, with `FV(G_A') ⊆ {ζ'}`. Then
  `G_A'[R/ζ'] = Q[M[Z/ζ]/u] N⃗[Z/ζ]`. Induction on `(R, G_A', G_B')`.

In (b), (c1), (c2) the total length drops by at least 2. ∎

Nothing is assumed about the contexts `G_A, G_B`: they may contain pairing,
projections, anything; they just have no access to `x, y` except through `Z`.

## 4. Consequences

**Theorem R.** Let `T` be closed with `SO(T)`. Then not both `T x y K ↠ x` and
`T x y F ↠ y`. In particular `T` is not β-convertible to the pairing
combinator `P = λa b f. f a b`.

Proof. A term that β-reduces to a variable weak-head-reduces to it
(standardization; `Blc/Factor.lean` has head factorization). `Z = T x y` is
`SO` with `FV ⊆ {x, y}`; take `G_A = ζ K`, `G_B = ζ F`. ∎

**Statman's theorem follows.** `K` is `SO` and an application of `SO` terms is
`SO`; every closed term is β-convertible to an applicative combination of `S`
and `K`; so if a closed `SO` term (for instance one of width 2) were
β-convertible to `S`, one would be convertible to `P`. This is not needed
for the interpreter.

**Interpreters.** Let `E` be a self-interpreter:
`E c ⌜M⌝ₙ =β c (λz.M) n` for closed `M`, where `⌜M⌝ₙ` is the Scott stream of
`M`'s code ending in `n`. Then `¬SO(E)`.

Proof. Instantiate the contract at `M = P`, `c := K`, `n := I` and apply to
`I`: `T = E K ⌜P⌝_I I =β K (λz.P) I I ↠ P`. `K, F, I` are `SO`; a stream cell
`λz. z b t` with closed `SO` `b, t` is `SO` (its body mentions only `z` and
closed terms). So if `SO(E)` then `SO(T)`, `T` closed, `T x y K =β x`,
`T x y F =β y`: contradiction with Theorem R. ∎

**What `¬SO(E)` says about the source.** Take a minimal subterm of `E` that is
not `SO`: it is a live abstraction `λu.Q` with `SO(Q)` whose body does not
factor through one object. In particular (try `R` = a variable) `Q` has two
distinct free variables other than `u`; `E` is closed, so their binders
`b₁ ⊃ b₂` enclose `b₃ = λu`: three live binders on one ancestor chain, the
inner two capturing, an occurrence of `b₁`'s variable at de Bruijn index ≥ 2
and of `b₂`'s at index ≥ 1. That is the width-3 witness of `capture-width.md`,
with one more constraint: no single `u`-free subterm of `Q` covers every
occurrence of the captured variables. For the inventories this removes, for
instance, the innermost bodies `(a b) c`, `c (a b)`, `(b a) c`, `c (b a)` when
`λc` is the only abstraction that captures two variables.
