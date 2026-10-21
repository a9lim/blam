# Lane next-proof: is the 165's NEXT region optimal?

Lane directory `tmp/overnight/next-proof/`. Everything here is new to this
lane except where a document, a Lean module, or another lane's report is
cited; no tracked file was modified, nothing committed, no candidate `N`
enumerated. Mechanical checks (`tools/`, each a few seconds, ≤ 2 threads):
`nt.py` (toolkit: named terms over `[cont, intL, x]`, assembly of `E_N`,
depth-bounded unfolding of the actual `intL`), `identities*.py`,
`shapes_check.py`, `cellF_check.py` (fixed identities), `variants.py`,
`variants2.py` (complete interpreters through the exact battery). The
Codex review of the reader proof (`verify/vreader_codex.md`) was read first;
none of the five refuted principles (signature-distinct origins,
dispatch-cell-only output nodes, disjoint compound sources, always-shrinking
leaf lets, three-contractions-imply-a-walker) is used anywhere below. Every
shape statement is a head-normal-form statement, every price is the size of
a syntactic piece under an explicit normality hypothesis, and the one
charging principle (Lemma 5.2) is proved for its specific role.

## Summary

**No sub-165 found.** No cheaper `N` was constructed; the seven complete
interpreters built here (Part 4.4, 5.1) are the measured costs of branches
the proof prices, all `≥ 166`.

**What is proved unconditionally** (Parts 1–3; handwritten, finite
identities checked):

1. The contract on `E_N` is exactly two laws on `N̂[C] = N[C/cont, P_N/intL,
   G_N/x]`: `(ABS) N̂[C] K (⌜M₁⌝ ++ T) =β C (λz.λM₁) T` and
   `(APP) N̂[C] F (⌜M₁⌝⌜M₂⌝ ++ T) =β C (λz. M₁M₂) T`, closed under
   substitution for `C` and `T`; hence `intL k (⌜M⌝ ++ t) =β k (λz.M) t` for
   every closed `M` and *every* continuation `k`. Open non-variable
   subterms are constrained only through these (Remark 1.6).
2. An extraction lemma (1.8) that turns closed-program laws into
   rigid-variable laws exactly when the parsed program stands at the head
   of the required output, using only that `Ω → Ω`; it replaces the
   ω-rule, which is invalid, and is why divergent programs must be in the
   contract (1.9).
3. A structure theorem (2.3): `N`'s hnf has `≤ 2` leading lambdas and
   falls into named shapes — the 165's **S1** (`λb. intL A`), dispatch-first
   **D1/D2**, continuation-headed **C2**, first-cell-reading **R2**, and the
   constructed-stream / modified-interpreter shapes **I0–I2, X0–X2** —
   with the impossible head/arity combinations excluded.
4. For **S1**: the continuation `A` is dispatch-headed with two arms (or
   continuation-headed, or exotic) (3.5); the ABS arm reduces to
   `cont (λy λa. e W)` with a cell `W` obeying the two Boolean lookup
   laws *on the actual arguments* (3.6–3.7); the APP arm reduces to
   `intL (λe₂. cont W₂)` with `W₂ →* λz. e Y₀ (e₂ Y₁)` (3.9–3.11). These
   shapes are theorems of the contract, not protocol assumptions. The
   lift's `19` follows for normal `W₂` with no protocol hypothesis (3.12).
   The constants alone do not price the cell: a 30-bit `λy λa. e (K (K a))`
   meets them and fails `λλ.2` (3.8, checked).

**Theorem 4.1 (conditional).** If `N` is β-normal, has the 165's control
skeleton (`λb. intL (λe. b B₁ B₂)` with `B₁ = cont V₁`, `B₂ = intL (λe₂. cont
W₂)`, no `intL`/`x`-headed subterm except the two parses), and its cell meets
the uniform lookup interface of the env lane (`W K n =β a`, `W F r =β r y`,
rigid `n, r, e`), then `|N| ≥ 92`, with equality iff `N` is the 165's. The
`b`-first variant of the skeleton costs `≥ 93` (select-first, 166), the
dispatch-first shape `≥ 99` (Theorem 5.1; 172).

**Residual cases** (Part 5, exact list in 5.10): continuation-headed and
first-cell-reading shapes (heuristically `≥ 123`, best known 202), the
constructed-stream shapes (behaviour pinned by checked identities, best
known `≥ 186`, no bound), shared operands and lets (the quantitative
question is stated: no `≥ 10`-bit term common to both arms' forced shapes
was found, none excluded), the cell under actual-instance laws (delimited;
I believe (H-cell) is a theorem), and `N` with its own recursion (global).

## 1. Complete interpreters built

All correct (`python3 tools/self-interpreter/battery.py`-equivalent exact
check, 2 threads), none below 165, none new in idea:

| `|N|` | `|E|` | battery | what it measures |
|---:|---:|---|---|
| 92 | 165 | `ok=667 skip=1 fail=0` | control |
| 93 | 166 | `ok=667 skip=1 fail=0` | select-first (`A = b KA KB`): the `+1` of 4.2 |
| 93 | 166 | `ok=667 skip=1 fail=0` | curried 25-bit cell |
| 97 | 170 | `ok=667 skip=1 fail=0` | shared heads with a second dispatch (`k = 3` operand) |
| 99 | 172 | `ok=667 skip=1 fail=0` | dispatch first `λb. b (intL KA) (intL KB)` (5.1) |
| 101 | 174 | `ok=667 skip=1 fail=0` | η-expanded APP continuation |
| 108 | 181 | `ok=667 skip=1 fail=0` | rest bound in the continuation (`m = 2`) |
| 129 | 202 | `ok=667 skip=1 fail=0` | continuation-headed `A`, lazy second parse (A-c2) |

## 2. New exact identities (all checked)

* `P_N k K s X →* s Z_k k X` (nextfuse's identity 1 restated for a stream
  `s`): the handler fed a stream reads one cell and calls `N̂[k]` on the
  *next* cell with an extra argument; new consequence: on the body `1` the
  result is `N̂[k] K T k`, `T`-headed with three arguments.
* `P_N k I r →* r N̂[k]` (self-call on the next cell); `P_N k (λh. h F Y)
  →* k Y (Y (λh. h F Y))` (fake variable cell).
* The derived cell laws of Lemma 3.7 on the 165's cell: `W[cons K T/e] K T
  = a` and `W[U₁(T)/e, W^{out}/y] F (cons K T) = a` with `W^{out} =
  W[V₁[U₁(T)]/e]`; and `V₁[V₁[U₁(T)]/e] = K K` (the body `λ.2`).
* Rigid-variable laws of the 165's arms: `A_K^C (K v) T = C (K (K v)) T`,
  `A_K^C (cons K T) T = C F T`, `W₁[Kv] (K w) T = C (λz. v w) T`.
* The APP arm on a raw-code operand: `A_F^C (K v) (10 ++ T) = C (λz. v (z K
  T)) T` — the operand variable's value in environment `z` is `z K T`
  (not a law; the operand of a closed application is closed).

## 3. Lower bounds: Parts 1–5 (handwritten; finite identities checked; one
Lean theorem cited, `wire_beta_delta`; one imported handwritten bound, the
env lane's cell ≥ 24).

## 4. Honest read: Part 6.

---
# Part 1. Setting, the exact laws of NEXT, and the extraction lemma

## 1.1 Notation

`K = λa b. a`, `F = λa b. b`, `I = λa. a`, `Ω = (λa. a a)(λa. a a)`,
`cons b r = λf. f b r`. For a bit string `w = b₁…b_j` and a term `t`,
`w ++ t := cons b₁ (… (cons b_j t))` with `0 ↦ K`, `1 ↦ F`. The raw unary
codes are `U₀(t) = cons K t = 0 ++ t` and `U_{n+1}(t) = cons F U_n(t)`, so
`U_n(t) = 1ⁿ0 ++ t`. `⌜M⌝` is the BLC code of `M` (de Bruijn, 1-indexed,
`var n = 1ⁿ0`, `λ = 00`, application `01`). For a closed `M`, `λz. M`
denotes the abstraction over a fresh variable; `λz. M =β K M`, and for a
closed `M₁`, `λz. λM₁ =β K (K M₁)`; for the variable body,
`λz. λ.1 = λz. I = F` (α-equal).

Size: `|M| = 2L + 4A + 2 + X` (`L` lambdas, `A` applications, `X` the sum
of 0-based indices over all leaves); equivalently every lambda and every
application costs 2 and a leaf of index `i` costs `i + 2`. The NEXT frame
is `Γ = [cont, intL, x]`, innermost first, so at depth `d` (number of
enclosing lambdas inside `N`) a leaf `cont` costs `2 + d`, `intL` `3 + d`,
`x` `4 + d`.

"Rigid" means a free variable that nothing in the term under discussion
binds or substitutes; equations between terms with rigid variables are
β-equalities of open terms. All equalities below are `=β`, never `=βη`.

## 1.2 The fixed context

For any term `N` with `FV(N) ⊆ Γ`:

    H[next, cont] := λbit0. bit0 (λu. λr. r next) cont
    B_N           := λintL. λcont. (λnext. λlist. list H[next, cont] (list list list)) N
    G_N           := λx. B_N (x x)
    E_N           := (λx. x x) G_N
    P_N           := G_N G_N                      -- the actual value of intL

`|E_N| = 73 + |N|` (`165 = 73 + 92`; checked, `tools/nt.py`). Write

    N̂[k] := N[k/cont, P_N/intL, G_N/x]            -- N with its frame instantiated
    Z_k   := λu. λr. r N̂[k]
    H_k   := λb. b Z_k k
    R_k   := λs. s H_k (s s s)

**Lemma 1.1 (unfolding).** `E_N →β P_N →β B_N P_N →β* λcont. R_cont`, where
`R_cont` is `R_k` with the variable `cont` for `k`. Hence for all terms
`k, s`: `P_N k s →* s H_k (s s s)`, i.e. with `intL := P_N`,
`intL k s =β s H_k (s s s)`.

*Proof.* `E_N → G_N G_N = P_N → B_N (G_N G_N) = B_N P_N → λcont. (λnext λlist.
list H (list list list)) N[P_N/intL, G_N/x] → λcont. λlist. list H' (list
list list)` with `H' = λbit0. bit0 (λu r. r N[P_N/intL, G_N/x]) cont`.
Applying to `k` substitutes `k` for `cont` throughout, which turns
`N[P_N/intL, G_N/x]` into `N̂[k]`. ∎

**Lemma 1.2 (reader facts).** For all terms `k, b, r, S, t` and `n ≥ 1`:

* (R0) `(cons b r) H_k S → H_k b r S → b Z_k k r S`.
* (R1) `(cons K r)(cons K r) →* K r`, hence `s s s →* r` for `s = cons K r`,
  and `P_N k (cons K r) →* Z_k r r →* r N̂[k]`. If `r = cons b₂ r₂` then
  `P_N k (cons K (cons b₂ r₂)) →* N̂[k] b₂ r₂`.
* (R2) `U_n(t) U_n(t) →* K t` (induction: `U₀ U₀ → U₀ K t → K K t t → K t`;
  `U_{n+1} U_{n+1} → U_{n+1} F U_n → F F U_n U_n → U_n U_n`). Hence
  `P_N k U_n(t) →* F Z_k k U_{n−1}(t) (U_n U_n U_n) →* k U_{n−1}(t) t`.
* (R3) Off streams (Codex's identities, re-checked here with the actual `N`
  of the 165 unfolded one level, `tools/identities.py`):
  `P_N k K →* H_k`, `P_N k F →* F`, `P_N k I →* λr. r N̂[k]`,
  `P_N k (K a) →* a (a (K a))`, `P_N k (K (K a)) →* a`.

*Proof.* Direct β-steps from Lemma 1.1; (R2) by the displayed induction. ∎

## 1.3 The laws of NEXT

A closed `M` is `λM₁` or `M₁ M₂`, never a variable, so `⌜M⌝ ++ T = cons K
(cons b₂ r₂)` with `(b₂, r₂) = (K, ⌜M₁⌝ ++ T)` or `(F, ⌜M₁⌝⌜M₂⌝ ++ T)`.
By (R1), `E_N C (⌜M⌝ ++ T) =β N̂[C] b₂ r₂`. Therefore:

**Definition / Lemma 1.3 (the laws).** `E_N` is a self-interpreter
(`E_N C (⌜M⌝ ++ T) =β C (λz. M) T` for all closed `M`, `C` and `T` rigid)
if and only if

    (ABS)  N̂[C] K (⌜M₁⌝ ++ T)       =β  C (λz. λM₁) T    for every M₁ with FV(M₁) ⊆ {1},
    (APP)  N̂[C] F (⌜M₁⌝⌜M₂⌝ ++ T)   =β  C (λz. M₁ M₂) T  for all closed M₁, M₂,

with `C, T` distinct variables not free in `N`. The variable body `M₁ = 1`
is allowed in (ABS); there `⌜M₁⌝ ++ T = U₁(T) = 10 ++ T` and the right-hand
side is `C F T`. Bodies without normal form (`M₁ = Ω`) are included. ∎

**Lemma 1.4 (substitution closure).** The laws hold with arbitrary terms
substituted for `C` and `T`: for every `k` and `t`,
`N̂[k] K (⌜M₁⌝ ++ t) =β k (λz. λM₁) t` and
`N̂[k] F (⌜M₁⌝⌜M₂⌝ ++ t) =β k (λz. M₁ M₂) t`.
*Proof.* β-equality is closed under substitution; `C, T` do not occur in
`N`, `P_N`, `G_N`; and `N̂[C][k/C] = N̂[k]` (even when `k` contains `C`). ∎

**Corollary 1.5 (intL is an interpreter with any continuation).** For every
closed `M` (an abstraction or an application), every `k` and every `t`:
`P_N k (⌜M⌝ ++ t) =β k (λz. M) t`. For a variable code,
`P_N k U_n(t) =β k U_{n−1}(t) t` (R2). *Proof.* (R1) then Lemma 1.4. ∎

**Remark 1.6 (what is not a law).** For an open `M₁` that is not a
variable, `P_N k (⌜M₁⌝ ++ t) =β N̂[k] b₂ r₂` is constrained by nothing but
the closed instances (ABS)/(APP) of the terms that contain `M₁`. This is
NEXT's protocol freedom: how the value of an open subterm is represented,
and how it reaches the root value `λz. M`, is `N`'s choice. Everything
below that is unconditional uses only (ABS), (APP) and their consequences
1.4–1.5; everything that assumes a protocol says so.

**Remark 1.7 (the contract fixes every value only through the root).** The
value a variable delivers is fixed by the reader (R2): the raw code
`U_{n−1}(t)` with the stream's own tail inside it, and the continuation
receives `(U_{n−1}(t), t)`. The value a closed subterm delivers is fixed by
1.5: `λz. M`. Only open non-variable subterms are free.

## 1.4 The extraction lemma (replacing rigid-law hypotheses by proofs)

The laws quantify over closed programs; a pricing argument wants laws in
rigid variables. The passage is an ω-rule step in general and is *not*
valid in λβ (Plotkin). The following lemma gives it exactly where the
required output has the substituted program at its *head*, which is enough
for the shape theorems of Part 3. It uses only that `Ω → Ω` is `Ω`'s only
reduction and that head normal forms are invariant under β-equality.

**Lemma 1.8 (constant-head extraction).** Let `Q` be a term, `v` a variable
free in `Q` or not, and let `C, T` be variables not free in `Q`.

(a) If `Q[M/v] =β C (K (K M)) T` for every closed `M`, then
    `Q =β C (K (K v)) T`.
(b) If `Q[M/v] =β C (K M) T` for every closed `M`, then `Q =β C (K v) T`.
(c) If `Q[M/v] =β M` for every closed `M`, then `Q =β v`.
(d) If `Q[M/v] =β λz. M W` for every closed `M`, where `W` is a fixed term
    with `v ∉ FV(W)`, then `Q →* λz. v W'` for some `W'` with `W'[I/v] =β W`
    and `W'[K/v] =β W`. (Not: `W'[M/v] =β W` for every closed `M`; see the
    proof.)

*Proof.* (c) `Q[Ω/v] =β Ω`; the only reduct of `Ω` is `Ω`, so `Q[Ω/v] →* Ω`.
If `Q` were solvable with head normal form `λx⃗. h W⃗` and `h ≠ v`, then
`Q[Ω/v]` would have the head normal form `λx⃗. h W⃗[Ω/v]`, which is not
`Ω`; if `h = v` then `Q[Ω/v] →* λx⃗. Ω W⃗[Ω/v]`, whose head redex is `Ω → Ω`
forever, so it reduces to `Ω` only if `x⃗ = ∅` and `W⃗ = ∅`, i.e. `Q →* v`.
If `Q` were unsolvable, `Q[I/v]` would be unsolvable, but it is `=β I`.

(a) Put `D := C (K (K v)) T`. `Q[Ω/v] =β C (K (K Ω)) T` is solvable with
head `C` and two arguments, so `Q` is solvable (unsolvability is closed
under substitution), with head normal form `λx⃗. h W⃗`. `h ≠ v`, else
`Q[Ω/v]` is unsolvable; so `Q[Ω/v]`'s head normal form is `λx⃗. h W⃗[Ω/v]`,
forcing `x⃗ = ∅`, `h = C`, `|W⃗| = 2`: `Q →* C Q₁ Q₂`. Then
`Q₂[M/v] =β T` for all closed `M`, and `Q₂ =β T` by the argument of (c)
with `T` for `Ω` (a rigid head stays rigid; `Q₂`'s head is not `v`, since
`Q₂[Ω/v]` is solvable). And `Q₁[M/v] =β K (K M) = λy λa. M` for all closed
`M`. `Q₁[Ω/v] =β λy λa. Ω` is unsolvable, so `Q₁` is unsolvable or has head
`v`; unsolvable is excluded by `M = I`. So `Q₁ →* λx⃗. v W⃗`, and
`Q₁[Ω/v] = λx⃗. Ω W⃗[Ω/v]` must reduce to a reduct of `λy λa. Ω`, whose only
reduct is itself. The head `Ω` never becomes an abstraction, so no `Wᵢ` is
ever consumed: `W⃗ = ∅` and `x⃗ = (y, a)`. Hence `Q₁ →* λy λa. v = K (K v)`.

(b) As (a) with one lambda.

(d) As in (a), `Q` is solvable with head `v` (the right-hand side's head
normal form `λz. M W` has the substituted `M` at its head; with `M = Ω` it
is `λz. Ω W`, whose reducts are `λz. Ω W''` with `W →* W''`). So
`Q →* λx⃗. v W⃗`, and `λx⃗. Ω W⃗[Ω/v] →* λz. Ω W''` forces `x⃗ = (z)` and
`|W⃗| = 1`: `Q →* λz. v W'`. Substituting `M` for `v`, `λz. M W'[M/v] =β
λz. M W`; for `M := I` this gives `W'[I/v] =β W`; for `M := K`, `K W'[K/v]
=β K W`, and `λb. X =β λb. Y` implies `X =β Y`, so `W'[K/v] =β W`. In
general `W'[M/v] =β W` cannot be cancelled against an arbitrary closed
`M` (e.g. `M = K X` erases its argument); the lemma asserts it only in the
weak form stated. (Part 3 does not use (d): Theorem 3.11 runs the same
head-normal-form argument directly, twice, and needs only the shape
`λz. v W'`.) ∎

**Remark 1.9 (why Ω is in the contract).** The brief insists that `M`
without a normal form are included. Lemma 1.8 is where that matters: the
Ω instance pins the *shape* of every reduct, because the head `Ω` can
neither disappear nor absorb arguments. Without the divergent programs the
laws would be closed-normal-form equations and the shape theorems of Part
3 would need the ω-rule.

---
# Part 2. The structure theorem for N (unconditional)

Throughout, `N` satisfies (ABS) and (APP). "Head normal form" (hnf) is the
principal one; the number of leading lambdas, the head variable when it is
free, and the number of arguments of a solvable term's hnf are invariant
under `=β` (Church–Rosser). Reductions of a rigid-headed term `h W⃗` stay
`h`-headed with `|W⃗|` arguments.

**Lemma 2.1 (N is solvable with at most two leading lambdas).**
`N̂[C] K (⌜I⌝ ++ T) =β C F T` is solvable, so `N̂[C]` is, so `N` is (an
unsolvable term has only unsolvable instances). Let `N`'s hnf be
`λy₁ … y_m. h A₁ … A_k`. If `m ≥ 3`, `N̂[C] K r₂ →* λy₃ …. (…)` is an
abstraction, but no reduct of `C F T` is one. So `m ≤ 2`. ∎

**Lemma 2.2 (N depends on its tag argument).** Take
`r₂ = ⌜I I⌝ ++ T = 01 0010 0010 ++ T`. As an ABS stream it is the body
`M₁ = I I` (closed), with required output `C (λz. λ.(I I)) T =β C (K F) T`;
as an APP stream it is `M₁ = M₂ = I`, with required output
`C (λz. I I) T =β C F T`. `K F ≠β F` (distinct normal forms). Hence
`N̂[C] K r₂ ≠β N̂[C] F r₂`: `N` cannot erase its first argument. In
particular, if `N = λb. B` then `b ∈ FV(B)`. ∎

**Theorem 2.3 (the shapes of N).** With hnf `λy⃗. h A⃗` as in 2.1 and the
frame values `cont := C`, `intL := P_N`, `x := G_N`, exactly one of the
following holds (names in brackets are used below):

*Two leading lambdas, `N = λb λr. h A⃗`.*
* `h = cont`: then `k = 2` and `A₂[K/b, ⌜M₁⌝++T / r] =β T`,
  `A₁[…] =β λz. λM₁` (and the APP analogues): the continuation is applied
  to a separately computed value and a separately computed remainder.
  [**C2**, "continuation-headed NEXT"]
* `h = b`: `k ≥ 2` (for `k = 1`, `K A₁ →β λd. A₁` is an abstraction).
  [**D2**, dispatch first, stream bound]
* `h = r`: `N̂ b (cons b₃ r₃) →* A₁' b₃ r₃ A₂' … A_k'`: `N` reads the first
  cell of the body code itself. [**R2**]
* `h = intL`: `N̂ b r₂ →* P_N A₁' … A_k'`; `k ≤ 1` leaves an abstraction
  (`P_N`, or `R_{A₁'}`), so `k ≥ 2` and the term is
  `A₂' H_{A₁'} (A₂' A₂' A₂') A₃' … A_k'`: the reader is run on a stream
  `A₂'` built by `N` from `b` and `r₂`. [**I2**]
* `h = x`: `G_N A₁' … A_k'`; `k ≤ 2` leaves an abstraction (`G_N A₁' →
  λcont. …`, `G_N A₁' A₂' → λlist. …`), so `k ≥ 3` and the term is
  `A₃' H'' (A₃' A₃' A₃') A₄' …` where `H''` is the handler of a *modified*
  interpreter with `cont := A₂'`, `intL := A₁' A₁'`, `x := A₁'`. [**X2**]

*One leading lambda, `N = λb. h A⃗`, applied to `r₂` after `b`.*
* `h = cont`: impossible. (`k = 1` is forced by the argument count, and
  then `r₂ =β T`; but `r₂ = ⌜M₁⌝ ++ T` is a β-normal abstraction.)
* `h = b`: `k ≥ 2` (`k = 1`: `K A₁ r₂ →* A₁[K/b]`, which does not contain
  `T`, while every reduct of `C V T` does). [**D1**, dispatch first]
* `h = intL`, `k = 1`: `N̂ b r₂ →* r₂ H_{A₁'} (r₂ r₂ r₂)`, the genuine parse
  of the body/operator code with continuation `A₁' = A₁[b/b, C/cont, …]`.
  [**S1**, the 165's shape]
* `h = intL`, `k ≥ 2`: `A₂' H_{A₁'} (A₂' A₂' A₂') A₃' … A_k' r₂`, a
  constructed stream `A₂'` (depending on `b` only) with `r₂` trailing.
  [**I1**]
* `h = x`: `k = 1` leaves an abstraction; `k = 2` gives
  `r₂ H'' (r₂ r₂ r₂)`, a genuine parse by a *modified* interpreter
  (`cont := A₂'`, `intL := A₁' A₁'`, `x := A₁'`); `k ≥ 3` a constructed
  stream. [**X1**]

*No leading lambda, `N = h A⃗`, applied to `b r₂`.*
* `h = cont`: impossible (`k = 0` forced; `C K r₂ ≠β C V T` since
  `r₂ ≠β T`).
* `h = intL`: `k = 0`: `P_N F r₂ →* F r₂ →* I` (R3), impossible; `k = 1`:
  `P_N A₁' F r₂ →* F r₂ →* I`, impossible; `k ≥ 2`: `N̂ b r₂ = Q b r₂` with
  the fixed term `Q := P_N A₁' … A_k'` (no `b`, no `r₂`), which must itself
  satisfy the laws of `N`. [**I0**]
* `h = x`: `k ≤ 1` leaves an abstraction after `b`; `k = 2` gives
  `b H'' (b b b) r₂`, and with `b = F` this is `(F F F) r₂ →* F r₂ →* I`,
  impossible; `k ≥ 3`: `N̂ b r₂ = Q b r₂` with a fixed `Q := G_N A⃗'`.
  [**X0**]

(Checked on concrete instances, `tools/shapes_check.py`: `intL A₁` and
`λb. intL A₁ b` both return `I` on an APP stream; `x cont cont` returns `I`;
`λb. b (cont F)` returns `C F` without `T`; `λb. intL A₁ K` on the ABS body
`1` hands `N̂[A₁']` the cells `K, T` and a third argument, giving a
`T`-headed result with three arguments.)

*Proof.* Each line is the computation displayed, using Lemma 1.1 for
`intL`-headed and `x`-headed terms (`G_N A →β B_N (A A) →β λcont. …`), (R3)
for `P_N k F →* F` and `F F F →* I`, and the invariance of hnf shape under
`=β`. The impossibilities compare the hnf of the left side with that of
`C V T` (head `C`, two arguments, no leading lambda). For `D1` with `k = 1`
and the `cont`-headed cases we also use that a rigid argument `T` of the
required output cannot be erased by reduction, so it must already occur in
the left side's syntax after the substitutions. ∎

**Corollary 2.4 (forced leaves).** `N` contains a leaf `cont` (the output's
head `C` has no other source: the reader's own `cont` leaf is erased on the
zero arm at the root, `K Z_C C → Z_C`, and every later `C` descends from
`N`'s substitution `cont := C` or from a continuation `k` built by `N`), and
a leaf `intL` or `x` or else `N` parses the body with its own recursion
(2.5). `N` depends on `b` (2.2). ∎

**Lemma 2.5 (recursion is necessary; the knot alone does not supply it).**
Suppose `N` contains no leaf `intL` and no leaf `x`. Then `N` is a term
over `[cont]` alone, and `E'_N := λcont. N` is a closed term with
`E' C K (⌜M₁⌝ ++ T) =β C (λz. λM₁) T` and `E' C F (⌜M₁⌝⌜M₂⌝ ++ T) =β C (λz.
M₁M₂) T`: an interpreter for tagless code. The reader and knot of `E_N` are
then dead weight: `E_N`'s only use of them is the first tag. Every
quantitative bound on `|N|` in this case is a global interpreter bound
(STATUS: handwritten floor 37 for a full interpreter, no technique near
92). This is **residual case R-own-recursion**; it is not priced here. ∎

**What Theorem 2.3 says.** Every NEXT either (i) hands the body/operator
code to the fixed reader at once with a continuation depending on the tag
(**S1**, the 165), (ii) dispatches on the tag before parsing (**D1/D2**),
(iii) computes value and remainder separately under a bare continuation
(**C2**), (iv) reads the body's first cell by itself (**R2**), or (v)
runs the reader, or a modified interpreter built from `x`, on a stream it
constructs (**I0/I1/I2/X0/X1/X2**). Part 3 analyses (i) to the leaf; Part 5
treats (ii)–(v).

**Checks (`tools/identities2.py`, `identities3.py`).** `P_N k I r →* r
N̂[k]` and `P_N k K →* H_k` with the actual 165 `N` unfolded; the APP arm of
the 165 fed the var-1 code `cons K T` as an operator code is `T`-headed
(`N̂[k] F (cons K T)` has hnf `T X`), which is the mechanism behind the
impossibilities for second-tag dispatch through `H_k` (Part 5).

---
# Part 3. Shape S1: what the continuation and its two arms must be

Assume **S1**: `N`'s hnf is `λb. intL A` with a single argument `A`,
`FV(A) ⊆ [b, cont, intL, x]`. Write `A_b^k := A[b/b, k/cont, P_N/intL,
G_N/x]`; then `N̂[k] = λb. P_N A_b^k` up to the hnf, and by (R1)/(R2)/1.5 the
laws read

    (ABS)  P_N A_K^C (⌜M₁⌝ ++ T)       =β  C (λz. λM₁) T,
    (APP)  P_N A_F^C (⌜M₁⌝⌜M₂⌝ ++ T)   =β  C (λz. M₁ M₂) T.

## 3.1 The laws of the continuation

**Lemma 3.1 (the ABS continuation on closed bodies).** For every closed
`M₁` (an abstraction or application): `A_K^C (λz. M₁) T =β C (λz. λM₁) T`,
i.e. `A_K^C (K M₁) T =β C (K (K M₁)) T`. By Lemma 1.8(a):

    (U1)   A_K^C (K v) T  =β  C (K (K v)) T          (v, T, C rigid).

*Proof.* `P_N A_K^C (⌜M₁⌝ ++ T) =β A_K^C (λz. M₁) T` by 1.5 (the inner
parse returns the closed value with any continuation), and the left side
is `C (λz. λM₁) T` by (ABS). Apply 1.8(a) to `Q := A_K^C (K v) T`. ∎

**Lemma 3.2 (the ABS continuation on the variable body).** With `M₁ = 1`,
`⌜M₁⌝ ++ T = U₁(T)` and (R2) gives

    (U2)   A_K^C (cons K T) T  =β  C F T              (T, C rigid).  ∎

**Lemma 3.3 (the APP continuation).** For all closed `M₁, M₂`:
`A_F^C (K M₁) (⌜M₂⌝ ++ T) =β C (λz. M₁ M₂) T`. *Proof.* 1.5 on the operator
parse, then (APP). ∎

**Lemma 3.4 (laws on open bodies are protocol).** For `M₁ = λM₁'` with
`FV(M₁') ⊆ {1, 2}` the inner parse is `P_N A_K^C (00 ⌜M₁'⌝ ++ T) =β
N̂[A_K^C] K (⌜M₁'⌝ ++ T) = P_N A_K^{A_K^C} (⌜M₁'⌝ ++ T)`: the same
continuation `A` instantiated with `cont := A_K^C` — the outer arm — and
the laws it obeys are whatever makes the outer law come out. Example used
below (`M = K = λλ.2`, `M₁ = λ.2`, `M₁' = 2`):

    A_K^{A_K^C} (U₁(T)) T  =β  C (λz. K) T  =β  C (K K) T,            (U2')

since `P_N k U₂(T) =β k U₁(T) T` by (R2). ∎

## 3.2 The hnf of A: the dispatch is at the head or the shape is exotic

**Theorem 3.5.** `A` is solvable, its hnf `λy⃗. h W₁ … W_k` has `|y⃗| ≤ 2`,
and exactly one of the following holds.

* (A-i) **dispatch-headed**: `h = b`, `k ≥ 2`. Then `A_K^C =β λy⃗. W₁' W₃' …
  W_k'` and `A_F^C =β λy⃗. W₂' W₃' … W_k'` (`W'` the instantiated `W`); the
  arms are `W₁` (ABS) and `W₂` (APP), and `W₃ … W_k` are **shared
  operands** delivered to both. The 165 has `|y⃗| = 1`, `k = 2`; select-first
  (166) has `|y⃗| = 0`, `k = 2`.
* (A-ii) **continuation-headed**: `h = cont`, `|y⃗| = 2`, `k = 2`:
  `A = λe λr. cont W₁ W₂` with `W₂[K/b, Kv/e, T/r] =β T`,
  `W₂[F/b, Kv/e, ⌜M₂⌝++T / r] =β T` (a remainder extractor over `b`) and
  `W₁` the value in both arms. (`|y⃗| = 1` fails: `A_F^C (Kv) (⌜M₂⌝ ++ T) =β
  C W₁' (⌜M₂⌝ ++ T)` has the wrong remainder; `|y⃗| = 0` fails by argument
  count.) [**A-c2**]
* (A-iii) **reader-headed**: `h = intL`. `|y⃗| = 1, k = 1` is impossible
  (`A_K^C (Kv) T →* P_N W₁' T →* T H (T T T)`, head `T`); `|y⃗| = 2, k = 2,
  W₂ = r` is impossible for the same reason in the ABS arm (`P_N W₁' T`);
  otherwise `A_b^C (Kv) t →* W₂' H_{W₁'} (W₂' W₂' W₂') W₃' … t`, the
  reader on a stream `W₂'` constructed from `e, b` (and `r`). [**A-I**]
* (A-iv) **generator-headed**: `h = x`; as in Theorem 2.3, a modified
  interpreter (`k = 2`, `|y⃗| ≥ 1`, parsing `t`) or a constructed stream.
  [**A-X**]
* `h = e` or `h = r` (bound by `y⃗`): impossible. (`h = e`: `A_K^C (Kv) T →*
  K v W⃗' …`, whose hnf has head `v` or is `λd. v`; `h = r`: head `T`.)

*Proof.* `A_K^C (K v) T =β C (K (K v)) T` is solvable, hence `A` is. More
than two leading lambdas leave an abstraction. The head cases are the
computations displayed; for `h = cont` the argument counts are forced by
the two arguments at `C`; for `h = intL` use Lemma 1.1; for `h = x` Lemma
1.1 and the unfolding `G_N W₁' →β B_N (W₁' W₁')`. ∎

## 3.3 The ABS arm: the λ-value is `λy λa. e W` with `W` a lookup cell

Assume (A-i) with `k = 2` and `|y⃗| ∈ {0, 1}` (the shared-operand case
`k ≥ 3` is Part 5). Write the ABS arm as a term `B₁` with `e` free: when
`|y⃗| = 1` (`A = λe. b W₁ W₂`) put `B₁ := W₁`; when `|y⃗| = 0` (`A = b W₁ W₂`)
the arm `W₁` receives the value itself, `W₁ (K v) T` is `C`-headed, so `W₁`'s
hnf has exactly one leading lambda, `W₁ →* λe. B₁`, and `B₁` is that body.
In both cases

    B₁[Kv/e] T         =β  C (K (K v)) T,         (U1)
    B₁[cons K T / e] T =β  C F T,                 (U2)

with `cont := C` inside `B₁`, and the instance (U2') with `cont := A_K^C`.

**Lemma 3.6 (the ABS arm applies the continuation to one value).** `B₁` is
solvable with hnf `cont V₁` (no leading lambda, one argument) or
`λr. cont V₁ W` with `W[T/r] =β T` (an η-expansion of the first), or `B₁`
is `intL`-/`x`-headed (constructed stream, [A-I]/[A-X]), or `b`-headed
(`b := K` selects a branch, whose hnf is then one of these).

*Proof.* `B₁[Kv] T =β C (K (K v)) T` is solvable with head `C`, two
arguments, no leading lambda. `B₁`'s hnf `λy⃗. h W⃗`: `|y⃗| ≤ 1` (two
lambdas would leave one). `h = e`: `K v W⃗' (T) →* v …` or `λd. v`,
impossible. `h = cont`: `|y⃗| = 0` forces `k = 1` (`C W₁' T`), `|y⃗| = 1`
forces `k = 2` with `W₂[T/r] =β T`. `h = r`: head `T`. `h = b`: `K W₁' W₂'
… →* W₁' W₃' …`, continue with that term. `h = intL, x`: Lemma 1.1. ∎

**Lemma 3.7 (the λ-value).** In the case `B₁ →* cont V₁` (and likewise
`λr. cont V₁ r`), `V₁` is a term with `e` free and

    V₁[Kv/e]        =β  K (K v) = λy λa. v,
    V₁[cons K T/e]  =β  F       = λy λa. a.

Then `V₁ →* λy λa. e W` for a term `W` with `FV(W) ⊆ {a, y, e, b, cont,
intL, x}`, unless `V₁`'s hnf head is `b` (`:= K`, a selected branch),
`intL` or `x` (exotic). The cell `W` satisfies

    W[cons K T / e] K T  =β  a                               (cell-K)

as open terms in `a, y, T`, and, from (U2') — the body `λ.2` — the
instance in which the inner cell receives `F` and `cons K T` and the
outer cell is its environment:

    W[U₁(T)/e, W^{out}/y, a'/a] F (cons K T)  =β  a,          (cell-F)
    where  W^{out} := W[V₁[U₁(T)/e]/e, y/y, a/a],

as open terms in `a, y, T` (the outer `a` is the required result; the inner
`a'` is a fresh variable that the inner lambda bound).

*Proof.* `C V₁[Kv] T =β C (K (K v)) T` gives `V₁[Kv] =β K (K v)` by rigid-head
injectivity (common reducts of `C X T` and `C Y T` are `C Z T` with
`X →* Z`, `Y →* Z`). Let `V₁`'s hnf be `λy⃗. h W⃗`. If `h = e`:
`V₁[Kv] →* λy⃗. K v W⃗'`; with `|W⃗| = 0` this is `λy⃗ λd. v`, with `|W⃗| = 1`
it is `λy⃗. v`, with `|W⃗| ≥ 2` it is `v W₂' …`; only `|W⃗| = 1` with `|y⃗| =
2` is `λy λa. v` — or `|W⃗| = 0` with `|y⃗| = 1`, i.e. `V₁ →* λy. e`, which
fails (U2): `λy. cons K T ≠β λy λa. a`. So `V₁ →* λy λa. e W`. If `h` is
bound (`y` or `a`) or is `cont := C`, the head of `V₁[Kv]` is not `v`,
impossible. `h = b, intL, x` as stated. For (cell-K): `V₁[cons K T] →* λy
λa. (cons K T) W[cons K T/e] → λy λa. W[…] K T`, and this must be `=β λy
λa. a`; strip the two lambdas. For (cell-F): by (U2'),
`A_K^{A_K^C} U₁(T) T =β C (K K) T`; the arm `B₁` with `cont := A_K^C` and
`e := U₁(T)` is `A_K^C (V₁[U₁(T)/e]) T = B₁[C/cont, V₁[U₁(T)]/e] T →* C
(V₁[V₁[U₁(T)]/e]) T`, so `V₁[V₁[U₁(T)]/e] =β K K = λy λa λa'. a`. Unfold:
`V₁[V₁[U₁]/e] →* λy λa. V₁[U₁] W^{out} → λy λa. (λy' λa'. U₁(T) W[U₁/e, y',
a']) W^{out} → λy λa λa'. U₁(T) W[U₁/e, W^{out}/y', a'/a'] →
λy λa λa'. W[…] F (cons K T)`, which must be `λy λa λa'. a`. ∎

**What 3.7 establishes without any hypothesis.** Under S1 and (A-i, k=2),
the ABS arm *is* `cont (λy λa. e W)` up to β-reduction, with a cell `W`
that (i) returns the bound value `a` when applied to `K` and a tail, and
(ii) when applied to `F` and the shorter code, must reach the *outer*
value `a` through the environment `y` it was given. `W` therefore contains
leaves `a` and `y` (neither `K`, `T`, `cons K T`, `U₁(T)` nor `V₁[U₁(T)]`
contains the outer `a` except through `y`'s value `W^{out}`, and free
variables are never created). The 165's cell `λzx λzy. zx a (zy y)` is one
such `W`; the laws (cell-K)/(cell-F) are exactly the two Boolean lookup
laws *on the actual arguments* `(K, T)` and `(F, cons K T)` with the
environment `y := W^{out}`.

**Lemma 3.8 (the constant laws alone do not price the cell).** The 30-bit
`λy λa. e (K (K a))` satisfies (U1) and (U2) (checked), and fails the
closed program `K = λλ.2` (checked, `tools/identities3.py`); so (cell-F),
i.e. the open-body protocol, is the load-bearing law for the cell's 24. ∎

## 3.4 The APP arm: a second parse whose continuation builds the S-shape

Still (A-i), `k = 2`. The APP arm `B₂` (with `e` free, `cont := C`) obeys,
by 3.3, `B₂[K M₁/e] (⌜M₂⌝ ++ T) =β C (λz. M₁ M₂) T` for all closed `M₁, M₂`.

**Lemma 3.9 (the APP arm's hnf).** `B₂` is solvable and its hnf is one of:
* (P1) `intL W₁` (no leading lambda): `B₂[e] t →* P_N W₁'[e] t`, a genuine
  parse of the operand with continuation `W₁` — the 165;
* (P1η) `λr. intL W₁ r`, its η-expansion (`+6` and `+1` per free leaf of
  `W₁`); `λr. intL W₁ W₂` with `W₂ ≠ r` is the constructed-stream case;
* (Pc) `λr. cont W₁ W₂` with `W₂[K M₁/e, ⌜M₂⌝++T / r] =β T` (a remainder
  extractor) and `W₁[…] =β λz. M₁ M₂` (a value extractor): value and
  remainder computed separately;
* (Pb) `b`-headed (`b := F` selects a branch);
* (PI/PX) `intL`-/`x`-headed with `≥ 2` arguments (constructed stream).

`e`-headed and `r`-headed are impossible (head `K M₁ …` is not `C`; head
`t` is not `C`), `cont`-headed without a lambda has the wrong remainder.
*Proof.* As 3.6. ∎

**Lemma 3.10 (the second parse's continuation).** In case (P1),
`P_N W₁' (⌜M₂⌝ ++ T) =β W₁' (K M₂) T` by 1.5, so

    W₁[K M₁/e] (K M₂) T  =β  C (λz. M₁ M₂) T          for all closed M₁, M₂.

Then `W₁ →* λe₂. cont W₂` (or `λe₂ r. cont W₂ r`, `+6`), unless its head is
`b`, `intL` or `x`, and the **lift** `W₂` (free `e, e₂`) satisfies

    W₂[K M₁/e, K M₂/e₂]  =β  λz. M₁ M₂        for all closed M₁, M₂.    (LIFT)

*Proof.* `W₁[K M₁] (K M₂) T` is solvable, head `C`, two arguments: `W₁`'s
hnf has `≤ 2` lambdas; head `e₂` gives `K M₂ … →* M₂ …` (for `M₂ = Ω`,
unsolvable; for `M₂ = I`, not `C`-headed), head `e` likewise, head `r`
gives `T`; head `cont` with one lambda forces one argument (`C W₂' T`),
with two lambdas forces `W₃[T/r] =β T`. Rigid-head injectivity gives
(LIFT). ∎

**Theorem 3.11 (the lift is the S-shape).** Any `W₂` satisfying (LIFT)
reduces to

    W₂  →*  λz. e Y₀ (e₂ Y₁)

for some terms `Y₀, Y₁` (with `z, e, e₂` and the frame free), unless its
hnf head is `b` (`:= F`), `intL` or `x`.

*Proof.* The argument is that of Lemma 1.8 run twice, once in each value.
Let `W₂`'s hnf be `λx⃗. h W⃗`. With `M₁ = Ω`, `W₂[KΩ/e, K M₂/e₂] =β λz. Ω M₂` is
unsolvable, so `W₂` is unsolvable or its head is `e` (a rigid head `C`, a
bound head, or `e₂` with `M₂ = I` would give a solvable instance of the
wrong shape; `b`, `intL`, `x` are the excluded heads). Unsolvable is
excluded by `M₁ = M₂ = I`. So `W₂ →* λx⃗. e W⃗`, and `λx⃗. K v W⃗' =β λz. v
w` forces `|W⃗| = 2`, `x⃗ = (z)`: `W₂ →* λz. e Y₀ Y`, with
`Y[Kv/e, Kw/e₂] =β w` for all closed instances `v := M₁, w := M₂`. Now
`Y[K M₁/e, K Ω/e₂] =β Ω` forces `Y` unsolvable or `e₂`-headed; unsolvable
is excluded by `M₂ = I`; so `Y →* λx⃗'. e₂ Y⃗`, and `λx⃗'. K w Y⃗' →* w` forces
`x⃗' = ∅`, `|Y⃗| = 1`: `Y →* e₂ Y₁`. ∎

**Corollary 3.12 (lift ≥ 19 without any protocol hypothesis).** If `W₂` is
β-normal and not `b`/`intL`/`x`-headed, then `W₂ = λz. e Y₀ (e₂ Y₁)`
syntactically, and in its frame `[z, e₂, e, b, cont, intL, x]`

    |W₂| = 2 + 3·2 + (2+2) + (1+2) + |Y₀| + |Y₁| ≥ 2 + 6 + 4 + 3 + 2 + 2 = 19,

with equality iff `Y₀ = Y₁ = z` (index-0 leaves): the 165's lift,
uniquely. For a non-normal `W₂` the same holds for its normal form, and the
wire cost of a redex-free term is the cost of its syntax; a non-normal
`W₂` with a smaller source than its normal form would have to contain a
redex whose contraction *increases* size (Lean `wire_beta_delta`); Part 4
prices that separately. ∎

**Remark 3.13 (what the 165 does and does not force).** Everything in 3.1–
3.12 is forced by the contract through S1 and the head-dispatch (A-i)
with two arms. The ABS arm is `cont (λy λa. e W)` and the APP arm is
`intL (λe₂. cont (λz. e Y₀ (e₂ Y₁)))`, up to β-reduction and up to the
exotic heads, for *every* correct `N` of that shape. No "environment
function" protocol was assumed: the S-shape of the lift and the
`λy λa. e W` shape of the λ-value are consequences of `λz. M₁ M₂` and
`λz. λM₁` having the parsed values at their heads, via Lemma 1.8. What is
not forced by these laws alone is the cell `W` (3.8), which Part 4 prices
under the uniform lookup interface.

**Checks.** (U1), (U2), (U2') and (LIFT) on the 165's arms with rigid
`v, w, T, C` (`tools/identities.py`, `identities2.py`: `(U3r)`); the `λz. v
Ω` hnf shape on the divergent program `(λ1 1)(λ1 1)` (value position is an
abstraction, remainder reduces to `T`).

---
# Part 4. The conditional theorem: 92 on the 165's control skeleton

## 4.1 Hypotheses

Let `N` satisfy (ABS) and (APP). The hypotheses name exactly the branches
of Theorems 2.3, 3.5, 3.6, 3.9, 3.10, 3.11 that are *not* taken, plus two
assumptions that the laws do not supply.

* **(H-NF) normality.** `N` is β-normal. (The 165's NEXT is. Consequence: every
  hnf computed in Part 3 is the literal syntax of the corresponding subterm,
  and the size of `N` is the sum of the sizes of the disjoint subterms the
  skeleton names.)
* **(H-S1) first parse.** `N = λb. intL A` (Theorem 2.3, shape S1).
* **(H-D) head dispatch with two arms.** `A = λe. b B₁ B₂` or `A = b B₁ B₂`
  (Theorem 3.5 (A-i) with `k = 2`).
* **(H-ctl) the 165's control.** `B₁ = cont V₁` (Lemma 3.6, first case) and
  `B₂ = intL W₁` with `W₁ = λe₂. cont W₂` (Lemmas 3.9 (P1), 3.10); `V₁`'s
  head is `e` (Lemma 3.7, main case) and `W₂`'s head is `e` (Theorem 3.11,
  main case). Equivalently: no subterm of `N` is `intL`- or `x`-headed
  except the two parse calls, and the η-expanded variants
  (`λr. cont V₁ r`, `λe₂ λr. cont W₂ r`) are not used.
* **(H-cell) uniform lookup interface.** The cell `W` of Lemma 3.7 satisfies
  `W K n =β a` and `W F r =β r y` as equations between open terms with `a,
  y, n, r` rigid and `e` rigid (the interface of the env lane's Theorem,
  `tmp/overnight/env/REPORT.md` §5: frame `[a, e, exp, bit1, cont, intL, x]`,
  `bit1 := K`, the actual `intL`, `x`). Lemma 3.7 proves only the two
  *instances* (cell-K), (cell-F), in which `n := T`, `r := cons K T`,
  `e := cons K T` or `U₁(T)`, `y := W^{out}`.

**Theorem 4.1.** Under (H-NF), (H-S1), (H-D), (H-ctl), (H-cell),

    |N| ≥ 92,   with equality if and only if N is the 165's NEXT.

Moreover `|N| ≥ 93` under (H-D) with `A = b B₁ B₂` (select-first), and the
only sub-92 room the hypotheses leave is listed in Part 5.

## 4.2 Proof

By (H-NF) and (H-S1), `N = λb. intL A` syntactically. Cost of the header:
`λb` 2, the application 2, `intL` at depth 1: 4. **8 bits**, plus `|A|`.

*Dispatch.* By (H-D) and (H-NF), `A = λe. b B₁ B₂` (cost `2 + 4 + 3 = 9`
plus the arms, `b` at index 1) or `A = b B₁ B₂` (cost `4 + 2 = 6`, `b` at
index 0, but then each arm must bind `e` itself: `B₁ = λe. B₁'`, `B₂ =
λe. B₂'`, `+2` each, with the bodies `B₁', B₂'` in the same frame as the
`λe`-form's arms). So the second form costs `6 + 4 = 10 ≥ 9` for the same
arm bodies; it is the 166 (checked: `select-first 166 bits ok=667`). We
continue with `A = λe. b B₁ B₂`, frame of the arms `[e, b, cont, intL, x]`.

*ABS arm.* By (H-ctl) and (H-NF), `B₁ = cont V₁` with `V₁ = λy λa. e W`
(Lemma 3.7: the hnf is `λy λa. e W` and a normal term is its own hnf).
Cost: `cont` application 2, `cont` at index 2: 4, `λy λa` 4, the
application `e W` 2, `e` at index 2 (under `λy λa`): 4. **16 bits** plus
`|W|`. The cell `W` lives in the frame `[a, y, e, b, cont, intL, x]`, which
is the env lane's frame `[a, e, exp, bit1, cont, intL, x]` leaf for leaf
(`y` is their `e`, `e` their `exp`, `b` their `bit1`), and by (H-cell) it
meets their hypotheses: so **`|W| ≥ 24`**, with equality only for
`λzx λzy. zx a (zy y)` (their Theorem, §5.A–B gives `≥ 24`; the uniqueness
of the 24-bit cell is the module grammar's exhaustive enumeration at the
reference size, `interpreter.md` §4, "every minimum is unique", and the
`cons'` slot search through 23 bits, 30,428 fills, no survivor). So
`|B₁| ≥ 40`, equality iff `B₁` is the 165's ABS arm.

*APP arm.* By (H-ctl) and (H-NF), `B₂ = intL (λe₂. cont W₂)`. Cost: the
application 2, `intL` at index 3: 5, `λe₂` 2, the application 2, `cont` at
index 3: 5. **16 bits** plus `|W₂|`. By Theorem 3.11 and (H-NF),
`W₂ = λz. e Y₀ (e₂ Y₁)` in the frame `[z, e₂, e, b, cont, intL, x]`:
`λz` 2, three applications 6, `e` at index 2: 4, `e₂` at index 1: 3, and
`|Y₀|, |Y₁| ≥ 2` (every term has a leaf). **`|W₂| ≥ 19`**, equality iff
`Y₀ = Y₁ = z` (Corollary 3.12). So `|B₂| ≥ 35`, equality iff `B₂` is the
165's APP arm.

*Total.* `8 + 9 + 40 + 35 = 92`, and equality forces each piece to its
unique minimum: `N` is the 165's NEXT. ∎

## 4.3 What each hypothesis buys, and what is proved without it

| piece | bits | what forces it | hypothesis used |
|---|---:|---|---|
| `λb. intL ·` | 8 | shape S1 | (H-S1) |
| `λe. b · ·` | 9 | head dispatch, two arms | (H-D); `m = 0` costs 10 (proved) |
| `cont ·` in ABS | 6 | Lemma 3.6: the arm is `cont V₁` | (H-ctl) excludes η/exotic heads |
| `λy λa. e ·` | 10 | Lemma 3.7 (from (U1),(U2) by Lemma 1.8) | none beyond (H-NF) |
| cell `W` | 24 | env lane §5 under the uniform interface | (H-cell) |
| `intL (λe₂. cont ·)` | 16 | Lemmas 3.9, 3.10 | (H-ctl) |
| lift `λz. e Y₀ (e₂ Y₁)` | 19 | Theorem 3.11 (from (LIFT) by Lemma 1.8) | none beyond (H-NF) |

The two λ-shapes — the λ-value `λy λa. e W` and the S-shaped lift — are
theorems of the contract (Part 3), not protocol assumptions: they follow
from the parsed values standing at the *head* of `λz. λM₁` (through `K M₁`)
and of `λz. M₁ M₂`, with the Ω program fixing the shape. The 24-bit cell
is the only imported module bound, and (H-cell) is the only place where a
rigid-variable law is *assumed* rather than derived.

**On (H-cell).** The derived instances (cell-K), (cell-F) differ from the
uniform interface in two ways: (i) the tails are actual code streams (`T`,
`cons K T`) rather than rigid `n, r` — this is the ω-rule gap of Remark
1.9, which Lemma 1.8 does not close for the cell because the required
output `a` (resp. `r y`) does not have the substituted stream at its head;
(ii) the body value `e` is in scope and is *not* rigid in the instances,
so a cell may read it. The env lane's Theorem already admits `exp`
specialised to `F` and the actual `intL`, `x`; what it does not admit is a
body-dependent cell. Lemma 3.8 shows the constants alone leave a 30-bit
non-cell; the uniform interface closes that gap for one body-independent
`W`. A cell exploiting `e` must do so for every body value — raw codes
`U_n(t)`, the Booleans `F` (body `I`) and `K F` (body `λλ.1`), and every
compound λ-value — which is why I believe (H-cell) is removable, but I have
not proved it; it is residual case R-cell in Part 5.

**On (H-NF).** Without normality the skeleton pieces could be assembled at
run time from shared syntax (lets, shared operands), and the sizes above
would bound the *normal forms* of the arms, not the source. By the exact
β wire-cost (Lean `Blc.SelfintWireCost.wire_beta_delta`), contracting a redex
`(λy. M) Q` with `m` occurrences of `y` changes the size by
`Δ = (m−1)|Q| + (fl(Q)−1)·D − 2m − 4 − f(M)`; a sub-92 non-normal `N` whose
normal form is a correct NEXT of `≥ 92` bits must contain a redex with
`Δ > 0`, hence `m ≥ 1` and `(m−1)|Q| + (fl(Q)−1)·D ≥ 2m + 5 + f(M)`, where
`f(M)` counts the body's free leaves (each deepened by the let). In the
skeleton the only repeated leaves are `cont`, `intL`, `e` (`|Q| ≤ 7`, so a
twice-used leaf has `Δ ≤ 7 − 8 − f(M) < 0`), and the two arms have no common
compound subterm in the forced shapes. The review of the reader proof
(`tmp/overnight/verify/vreader_codex.md` §5) shows that such local
conditions do not exclude lets in general (a leaf used five times under
two binders has `Δ = +2`), so (H-NF) stays a hypothesis; the quantitative
question it leaves open is whether a term can be shared between the ABS
and APP arms at a profit, and I found no candidate (Part 5, R-share).

## 4.4 Measured neighbours (exact battery, 2 threads; `tools/variants.py`)

| variant | `|N|` | battery | note |
|---|---:|---|---|
| the 165's NEXT | 92 | `165 bits ok=667 skip=1 fail=0` | control |
| select-first `intL (b KA KB)` (`m = 0`) | 93 | `166 bits ok=667 skip=1 fail=0` | the `+1` of 4.2 |
| rest bound, `λe λr. b (cont V r) (intL K₂ r)` | 108 | `181 bits ok=667 skip=1 fail=0` | `m = 2` |
| shared heads, second dispatch `b cont intL (b V K₂)` | 97 | `170 bits ok=667 skip=1 fail=0` | (A-i) with `k = 3`, shared operand with its own dispatch |
| continuation-headed A, lazy second parse | 129 | `202 bits ok=667 skip=1 fail=0` | (A-c2) |
| η-expanded APP continuation `λe₂ λr. cont W₂ r` | 101 | `174 bits ok=667 skip=1 fail=0` | the `+6` plus depth |
| curried cell `λzx. zx (λn. a) (λr. r y)` | 93 | `166 bits ok=667 skip=1 fail=0` | the 25-bit cell |

None is new in idea (all are in the record or in `nextfuse/`); they are
listed because each is the measured cost of one branch the proof prices.

---
# Part 5. Outside the skeleton: exclusions, prices, and the exact residual list

Every `N` not covered by Theorem 4.1 falls into one of the cases below
(Theorems 2.3, 3.5, 3.6, 3.9–3.11 are exhaustive case splits on head
normal forms). For each: what is proved, what is measured, what is open.
"Handwritten" means a proof written here; "measured" a complete
interpreter through the exact battery; "open" that I have neither.

## 5.1 Dispatch before the parse (shapes D1, D2) — priced, handwritten

**Theorem 5.1.** Under (H-NF), (H-cell) and the control hypothesis that each
arm is a single genuine parse with a continuation of the Part 3 form, a
dispatch-first NEXT `N = λb. b A₁ A₂` has `|N| ≥ 99`, and `N = λb λr. b A₁ A₂`
with `r` used has `|N| ≥ 103`.

*Proof.* `N̂[C] K r₂ = A₁[K] r₂`, `N̂[C] F r₂ = A₂[F] r₂`, so `Y_K := A₁[K]`
and `Y_F := A₂[F]` satisfy `Y_K (⌜M₁⌝ ++ T) =β C (λz. λM₁) T` and
`Y_F (⌜M₁⌝⌜M₂⌝ ++ T) =β C (λz. M₁ M₂) T`. `Y_K` applied to one argument is
`C`-headed with two arguments, so its hnf is `intL W₁` (genuine parse, the
assumed case), or `λs. …` (`s`-headed: reads the first cell, 5.3;
`cont`-headed: value and remainder apart, 5.2; `intL W₁ s`: the η-form),
or exotic. With `A₁ = intL K_A`, `A₂ = intL K_B`, Lemmas 3.1–3.3 hold for
`K_A[C]` and `K_B[C]` in place of `A_K^C`, `A_F^C` (their proofs used only
what the continuation receives), and Lemmas 3.6–3.11 give
`K_A = λe. cont (λy λa. e W)` and `K_B = λe. intL (λe₂. cont (λz. e Y₀ (e₂
Y₁)))` under (H-NF), (H-ctl)-analogues. Prices in the frames `[b, cont, intL,
x]`: `λb` 2, two applications 4, `b` at index 0: 2; `A₁`: application 2,
`intL` 4, `λe` 2, then the ABS arm body as in 4.2 (40) — but one lambda
deeper only for `cont` and `e`, which are already counted at their 4.2
depths because `λe` replaces `λe` of the skeleton; total `A₁ = 48`;
`A₂`: 2 + 4 + 2 + 35 = 43. Sum `8 + 48 + 43 = 99`. For `λb λr. b A₁ A₂` each
arm must consume `r`: `intL K r` costs `+4` per arm, and every free leaf of
`K_A`, `K_B` is one deeper (`≥ +2` each arm): `≥ 99 + 4 + …`; the measured
form is 181 (`|N| = 108`, 4.4). ∎

Measured: `λb. b (intL K_A) (intL K_B)` is the record's 172 (`|N| = 99`;
re-measured here, `tools/variants2.py`: `172 bits ok=667 skip=1 fail=0`).

## 5.2 Value and remainder computed apart (C2, A-c2) — bounded, handwritten sketch

`N = λb λr. cont A₁ A₂` (C2) or `A = λe λr. cont W₁ W₂` (A-c2). The
remainder arm must map `⌜M₁⌝ ++ T ↦ T` on the ABS tag and
`⌜M₁⌝⌜M₂⌝ ++ T ↦ T` on the APP tag; with the reader available the cheapest
extractor is `intL F` (`P_N F (⌜M⌝ ++ T) =β F (λz.M) T = T`, and on the
variable body `P_N F U₁(T) =β F (cons K T) T = T`; Corollary 1.5 and (R2)),
so the APP remainder is `intL F (intL F r)`: two parses of the operand
code in the remainder arm alone. The value arm must build both value shapes
(`λy λa. e W` and `λz. e Y₀ (e₂ Y₁)`, forced as in Part 3 once the parsed
values are obtained) from parses of its own, since `r` is the only source
of `M₁`'s value. Under (H-NF) the two arms are disjoint subterms, each
dispatching on `b` (≥ 7 each), each containing at least one `intL` leaf
(≥ 5) with a continuation (`K`, `F`, or `λv t. …`: ≥ 6), and the value arm
containing the cell (24) and the lift (19) with their wrappers (10 and 9):
`4 + 6 + (7 + 11 + 10 + 24 + 9 + 19 + 11) + (7 + 11 + 11) ≥ 130`. This is a
sketch (it assumes the parses go through `intL` and are not shared); the
measured lazy form is `202` (`|N| = 129`, 4.4). **Status: open as a theorem,
heuristically ≥ 123, far from 92.**

## 5.3 Reading the first cell of the body (R2) — open, dominated heuristically

`N = λb λr. r A₁ A₂ …`: `A₁` receives the body's first bit `b₃` and tail
`r₃`. The only case where this helps is the ABS body `1`, where `b₃ = F` is
the required value `λz. I` and `r₃ = cons K T` yields `T` as `r₃ F`; every
constructor body still needs the full parse (through `intL k r`, which
re-reads `b₃`, or `intL k I r₃ →* N̂[k] b₄ r₄`, (R3)), and the APP tag never
has a variable operator. So `R2` adds a dispatch on `b₃` (≥ 7) and a
special-case output (≥ 10) to everything S1 needs. No construction built;
no proof. **Open.**

## 5.4 Constructed streams and modified interpreters (I0–I2, X0–X2, A-I, A-X) — open; the identities that govern them

These shapes run the reader (or a generator-built interpreter) on a term
`A₂'` that `N` constructs rather than on the input. What the reader does
with a constructed argument is governed by Lemma 1.2 (R3) and three facts
checked here (`tools/identities.py`, `identities3.py`, `shapes_check.py`):

* `P_N k K s X →* s Z_k k X`: feeding the handler the body stream reads its
  first cell and hands `N̂[k]` the *second* cell with an extra argument
  (`N̂[k] b₄ r₄ k`); on the variable body `1` it hands `N̂[k]` the cells `K,
  T` and the result is `T`-headed with three arguments. Any `N` using
  `intL k K` as a second-tag dispatcher must therefore run a
  three-argument continuation protocol; nextfuse's identity 1 prices that
  at `≥ 186`.
* `P_N k I →* λr. r N̂[k]`: a self-call of `N` on the next cell, 11 bits
  plus `|k|`. It saves nothing over `intL k` applied to the stream with its
  tag, because the tag cell must be stripped first (the stream's own
  application `s (λd. intL k I) → intL k I r'` costs more than `intL k s`).
* `P_N k (λh. h F Y) →* k Y (Y (λh. h F Y))`: a fake variable cell makes the
  continuation receive `Y` and `Y` applied to the cell; `P_N k (K a) →* a (a
  (K a))` and `P_N k (K (K X)) →* X` are the constant-stream returns (the
  record's 191/207 use them as ABS return instructions).
* An `x`-headed term `x A₁ A₂ …` is an interpreter whose `intL` is `A₁ A₁`
  and whose `x` is `A₁`; for it to parse correctly on all programs, `A₁ A₁`
  must itself be a correct parser, i.e. `A₁` a correct generator. No
  construction in the record uses `x` other than as `x x`, and `x x` is
  dominated by `intL` (`10 + 2d` against `3 + d`, same value).

In every one of these shapes the stream `A₂'` is a term over `b`, `C`,
`P_N`, `G_N` (and `r₂` in the `m = 2` shapes), so `N̂ b r₂ = Q_b r₂` (or
`Q_b` reading `r₂`'s cells) with a fixed `Q_b`, and `Q_b` must itself be a
correct NEXT body for its tag; the `intL`/`x` call is an *indirection*
whose only non-trivial payoff is access to `N̂[k]`, `Z_k`, `H_k` — the
recursion. I have no proof that this indirection cannot pay (it can
certainly express things that cannot be written without recursion), and I
found no construction in which it does. **Open.** Every known member of
these families is `≥ 186`.

## 5.5 Exotic heads inside the arms (b-, intL-, x-headed subterms) — one exclusion

**Lemma 5.2 (no dead branches).** Under (H-D), a minimum `N` has no subterm
of the form `b X Y Z⃗` inside either arm. *Proof.* Inside `B₁` the variable
`b` is always `K` (the arm is reached only after `K B₁ B₂ → B₁`; under `F`
it is erased), so replacing `b X Y Z⃗` by `X Z⃗` changes no reduct of any
instance and saves `≥ 2 + 2 + 3 + |Y| ≥ 9` bits; symmetrically in `B₂`
with `Y Z⃗`. ∎ (A leaf `b` used as a *cheap constant* `K`/`F` is not excluded
and is admitted by the imported cell bound, whose frame has `bit1 := K`;
the record's 171 is the curried cell borrowing it.)

`intL`-/`x`-headed subterms inside `V₁`, `W`, `W₂` (a λ-value or lift or
cell built by running the reader on a constructed stream) are the arm-level
version of 5.4. **Open**, same remarks.

## 5.6 Shared operands (A-i with k ≥ 3) — open, with the quantitative question stated

`A = λe. b B₁ B₂ O₃ … O_k`: the arms receive the `Oᵢ`. Each `Oᵢ` costs
`2 + |Oᵢ| ≥ 4`; an arm that does not use `Oᵢ` must still consume it (a
lambda, 2, plus one depth bit on each of its free leaves; or `K`-selection,
≥ 7). An arm that uses `Oᵢ` through a bound variable saves at most
`|Oᵢ| − (2 + depth)` per use against writing `Oᵢ` inline. So a shared
operand pays only if the two arms would otherwise each contain a copy of
a subterm of `≥ 10` bits (or one arm two copies). In the forced shapes the
arms are `cont (λy λa. e W)` and `intL (λe₂. cont (λz. e Y₀ (e₂ Y₁)))`;
their common leaves are `cont`, `intL`, `e` (`≤ 7` bits each: a shared leaf
loses), and I found no common compound subterm: the cell is `Ψ a y` for
`Ψ = λp q f g. f p (g q)` (28 bits) while the lift is `λz. Ψ z z e e₂`, which
*loses* 8 bits against `λz. e z (e₂ z)`; the S-combinator saves 1 in the
lift and nothing in the cell. The review's pair-packing (`X = λz. c (z K)`,
`Y = λz. P (z F)`, `Z = λh. h A B`) costs `≥ +37`; the shared-head form
`b cont intL (b V K₂)` is 170 (4.4, `+5`); nextfuse's three shared-argument
rows are 169/169/170. **Open as a theorem**: what is missing is a proof that
no term of `≥ 10` bits can be β-equal, in the two arms' two contexts, to
subterms of both forced shapes. The forced shapes make that plausible (the
arms have different arities at every level: the λ-value takes `y` then `a`,
the lift takes `z` once and applies two values) but I have not proved it.

## 5.7 Non-normal N (lets) — open; what the wire-cost formula says

Discussed in 4.3. A sub-92 `N` with a redex must contain one whose
contraction *increases* size. The possible payoffs are the shared operands
of 5.6 in let form, or a let whose argument is used twice inside one arm;
inside the forced shapes the only repeated subterms are leaves. **Open**,
same missing lemma as 5.6.

## 5.8 The cell under actual-instance laws (R-cell) — open, delimited

(H-cell) assumes the two lookup laws for rigid `n, r` with `e` rigid. The
contract gives (cell-K) and (cell-F) (Lemma 3.7) and their analogues for
every body: the cell sees `e := V_{M₁}` for the body `M₁` it is wrapped
around (the raw code `U_j(t)` for a variable body, `F` for `I`, `K F` for
`λλ.1`, a compound λ-value otherwise), and tails that are code streams. A
cell outside (H-cell) would have to use `e` or the tail's structure
*consistently for all bodies*. The one 17-bit "cell" the env lane exhibits
works for a single favourable body and fails on `exp = F`; Lemma 3.8's
30-bit term meets the constants and fails `λλ.2`. I believe (H-cell) is a
theorem of the contract but did not prove it; the proof would redo env §5.A
with `exp` ranging over the actual body values and `n, r` over the actual
tails, which is a finite but long case analysis (every sub-24 syntax tree,
each against four body instances). **Open.**

## 5.9 N without `intL` or `x` (R-own-recursion) — open, global

Lemma 2.5: such an `N` is an interpreter for tagless code with its own
recursion; nothing in the record bounds it anywhere near 92 (the global
floor for a full interpreter is 37). **Open**, and unlikely to be settled
by anything short of an unconditional interpreter bound.

## 5.10 Summary of the residual list

| case | status | best known cost |
|---|---|---:|
| D1/D2 dispatch first | priced ≥ 99 / ≥ 103 under the skeleton hypotheses (5.1) | 172 / 181 |
| C2, A-c2 value and remainder apart | sketch ≥ 123 (5.2) | 202 |
| R2 read the first cell | open, dominated heuristically (5.3) | — |
| I*/X*, A-I/A-X constructed streams | open; identities fix their behaviour (5.4) | ≥ 186 |
| b-headed subterms in arms | excluded (Lemma 5.2) | — |
| shared operands `k ≥ 3` | open; quantitative question stated (5.6) | 169 |
| non-normal N | open (5.7) | — |
| cell under actual-instance laws | open, delimited (5.8) | — |
| own recursion, no `intL`/`x` | open, global (5.9) | — |

---
# Part 6. Honest read

## 6.1 What this lane settles

The NEXT region's three λ-shapes are not design choices. With the 165's
knot and reader fixed and the body parsed first (shape S1 with a
two-arm dispatch), the contract itself forces the ABS arm to apply `cont`
to `λy λa. e W` and the APP arm to parse once more and apply `cont` to an
S-shaped `λz. e Y₀ (e₂ Y₁)`; the proof is the extraction lemma on the two
output forms `λz. λM₁ = K (K M₁)` and `λz. M₁ M₂`, which have the parsed
value at their head, with the divergent program `Ω` fixing the shape. That
is 68 of the 92 bits priced from the laws alone, given normality and the
skeleton: header 8, dispatch 9, `cont ·` 6, `λy λa. e ·` 10, `intL (λe₂.
cont ·)` 16, lift 19. The remaining 24 are the cell, and there the laws the
contract supplies are the two Boolean lookup laws *on actual arguments*,
which is one ω-step short of the uniform interface under which the env
lane proved 24. So within the skeleton, 165 is optimal modulo one
hypothesis I believe is a theorem (5.8), and the control skeleton itself
is forced up to the shapes listed in 5.10.

## 6.2 Where a sub-165 could still hide

Not in the arms of the skeleton: their shapes are forced and their prices
are at the floor with one 2-bit slack each at most (`Y₀, Y₁`, which the
protocol then fixes to `z`). The places the proof does not reach, in the
order I would look:

1. **Shared syntax between the two arms (5.6/5.7).** This is the only
   mechanism by which a term β-equal to the skeleton's normal form can be
   smaller than it. The arms' forced shapes differ in arity at every level,
   and the one common combinator I found (`Ψ = λp q f g. f p (g q)`, cell =
   `Ψ a y`, lift = `λz. Ψ z z e e₂`) loses. A proof needs a lemma of the
   form "no term of ≥ 10 bits occurs, up to β, in both `λy λa. e W` and
   `λz. e z (e₂ z)` in their two contexts"; that is a finite, concrete
   statement about two normal terms and seems provable by inspecting the
   subterms of the two normal forms and their β-expansions up to the budget.
2. **The constructed-stream shapes (5.4).** `intL k K`, `intL k I`, fake
   cells and constant streams give cheap access to the recursion in forms
   other than a parse: a second-tag dispatcher with a three-argument
   continuation, a self-call on the next cell, a return instruction. Every
   construction in these families is `≥ 186` because the extra arguments
   have to be absorbed, but the family is where something genuinely
   different from the 165 would live, and the record's exclusions
   (`protocol-obstructions.md`) cover only specific protocols. The honest
   statement is that the identities of 5.4 describe exactly what these calls
   deliver, and that an `N` using them must absorb what they deliver; a
   proof would price the absorption.
3. **A cell that reads the body value (5.8).** The 17-bit single-body cell
   and the 30-bit constants-only term show that the cell's 24 rests on
   uniformity across bodies. A cell using `e` would have to extract `a`
   from `(K, T)` and reach `y` on `(F, cons K T)` for `e ∈ {U_j(t), F, K F,
   compound λ-values}` simultaneously; I see no way, but the case analysis
   is not written.
4. **Not** in the reader-protocol facts: that variable values are raw
   codes and that `cont` receives `(value, rest)` are fixed by the brief,
   and the `λz. M` root value is the contract. A different `next` protocol
   is a different lane.

## 6.3 The next proof step

Two steps, both concrete:

* **Close (H-cell) from the contract.** Redo env §5.A–B with `exp` ranging
  over the actual body values and the tails over actual streams: show that
  every sub-24 syntax tree in the frame `[a, y, e, b, cont, intL, x]` fails
  one of the four instances (body `1` on `(K, T)`, body `λ.2` on `(F, cons K
  T)`, body `I` with `e = F`, body `λλ.1` with `e = K F`). It is finite
  (every term below 24 bits with the required leaves `a, y`), and the
  three-application and four-application cases are the whole of it; the
  env lane's step 2 (no redex at `A = 3`) and step 3 (`L = 2, A = 4, X ≤ 1`
  closed lambdas) carry over, the new work is the `e`-headed and
  `b`-constant cases.
* **Remove (H-NF) within the skeleton.** Prove the no-common-subterm lemma
  of 6.2(1) and derive from `wire_beta_delta` that every redex of a sub-92
  skeleton `N` would have to be a let of a `≥ 10`-bit term used in both
  arms. Together with Lemma 5.2 this would make Theorem 4.1 hold for all
  `N` of the skeleton shape, normal or not.

After those, what remains open is exactly the shape list of 5.10 minus the
skeleton — the dispatch-first shape (priced), the apart-computation shapes
(sketched), and the constructed-stream shapes, which are the real frontier
of this question.

## 6.4 Status table

| component | status |
|---|---|
| Laws (1.3–1.5), Remark 1.6 | handwritten, standard (Church–Rosser, substitutivity); (R0)–(R3) checked |
| Extraction lemma 1.8 (a)–(d) | handwritten; uses only hnf invariance and `Ω → Ω` |
| Structure theorem 2.3 | handwritten case split on hnf; impossibilities checked on instances |
| A's shapes 3.5; arm shapes 3.6, 3.7, 3.9, 3.10 | handwritten; (U1), (U2), (U2'), (cell-K), (cell-F) checked on the 165 |
| Lift is S-shaped 3.11, ≥ 19 (3.12) | handwritten from the laws; no protocol hypothesis |
| Lemma 3.8 (constants do not price the cell) | checked (30-bit term, fails `λλ.2`) |
| Theorem 4.1 (92 on the skeleton) | handwritten; imports env §5 cell ≥ 24 (handwritten, not independently reviewed) under (H-cell); (H-NF) assumed |
| Theorem 5.1 (dispatch first ≥ 99) | handwritten, same imports; measured 172 |
| Lemma 5.2 (no dead branches) | handwritten, hypothesis-free given (H-D) |
| 5.2–5.4, 5.6–5.9 | open; measured constructions and checked identities only |
