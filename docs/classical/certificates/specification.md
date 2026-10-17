# Ratchet certificates: mechanical divergence proofs for growing-context loops

This is the contract for blam's four divergence-certificate classes. The
trusted checkers live in `src/classical/certificate/mod.rs`:

| class | checker | Lean assembly | kills |
|---|---|---|---:|
| Ratchet (§3) | `verify` | `lean/Blc/Ratchet.lean` | 222 |
| HeadTowerRatchet (§5) | `verify_htr` | `lean/Blc/HeadTower.lean` | 35 |
| SelectorRatchet (§6) | `verify_selector` | `lean/Blc/Selector.lean` | 40 |
| PassengerDiagonalRatchet (§7) | `verify_pdr` | `lean/Blc/Passenger.lean` | 8 |

Kill counts are the lines of `data/certificates/ratchet_kills.tsv`, which
includes ten `-ARG` kills (8/1/1/0 by class): a rigid head whose spine
argument carries the certificate, lifted to the whole term by
`lean/Blc/Rigid.lean`'s `argKill`. Every kill is emitted by `blam cert lean`
as an individual kernel-checked `¬HasNormalForm` theorem with a wire
identity (`lean/Certs/`).

Discovery is untrusted: `src/classical/certificate/search_impl.rs`, public as
`classical::certificate::search` under the `lab` feature and driven by
`blam cert search`. Its one sweep, `try_kill`, streams candidate triples and
offers each to the four checkers in table order; the first acceptance wins.
A rejection retires only that milestone family. Discovery keys milestone
families by (head, spine arity): the deep family passes through both
`A Xₙ` milestones and `A I Xₘ Xₙ` rank-step interiors, and merging the
streams destroys the growing window. Garbage from discovery can only fail to
certify.

## 1. The target, and why redloop cannot reach it

`loop32` = `01000110001100001011010000110110` (32 bits) is the smallest
closed term with no exact-recurrence divergence proof; Tromp excludes it by
hand in his own tree. Parsed (1-indexed de Bruijn):

```
loop32 = F A
F = λx. x (λ_. x)            -- \1 (\2)      : λx. x (K x)
A = λx. x x (λy. y x)        -- \1 1 (\1 2)
```

`redloop` requires an exactly-recurring self-application `A A`. Here the
configuration never recurs: it *grows*. With `C0 = λ_. A` (that is, `K A`)
and wrapper `W[Z] = λy. y Z`, the head reduction passes through exactly the
milestone states

```
A C0  →+  A W[C0]  →+  A W[W[C0]]  →+  ...  →+  A Wⁿ[C0]  →+ ...
```

for n = 0..76 within 6,000 normal-order steps (independent reducer,
`tools/certificates/loop32_trace.py`), strictly consecutive, with no other
states of the form `A · x`. The n-th cycle takes exactly 2n+2 head steps: the
reduction consumes the whole depth-n tower every cycle. No bounded
exact-state recurrence check can see this loop, because the period is
unbounded. A proof must quantify over the tower depth.

## 2. Preliminaries

Closed λ-terms, 1-indexed de Bruijn, β only. *Head reduction* `→ₕ`
contracts the unique redex `(λ.M) N` in the position `((λ.M) N) t₂ … tₖ`,
under leading lambdas. It is deterministic.

**Soundness backbone.** If the head reduction from T is infinite, T has no
head normal form, hence no β-normal form. (Every normal form is a head normal
form; by standardization, if T has a head normal form the head reduction
terminates.) This is the backbone redloop also rests on; Lean proves it as
`headDiverges_not_hasNormalForm`.

**Lifting lemma.** If `M₀ →ₕ M₁ →ₕ … →ₕ Mₖ` and every *proper source state*
`Mᵢ`, `i < k` (start included, end excluded), is not an abstraction, then
`M₀ Y →ₕ M₁ Y →ₕ … →ₕ Mₖ Y`. The head redex of an application whose function
part is a non-abstraction is the function part's head redex; if a source
state were an abstraction, the composite's head step would consume it via the
outer redex instead. If `Mₖ` is an abstraction, the composite continues with
that outer contraction, which is how the lemmas chain. The condition must
cover the start state too: "intermediate states" alone is a hole.

## 3. Ratchet

**Data:** a triple `(A, W, C0)`: A and C0 closed terms, W a pattern term with
at least one occurrence of a distinguished closed metavariable `Z` (write
`W[Z]`; plugging a closed term for Z is capture-free). For loop32 discovery
yields `A = λx. x x (λy. y x)`, `W[Z] = λy. y Z`, `C0 = λ_. A`.

**Checks**, each a bounded deterministic *symbolic head reduction* over terms
extended with the opaque metavariable Z:

| name | obligation | quantification |
|------|-----------|----------------|
| OPEN | `A Z →ₕ⁺ (Z Z) W[Z]` | all closed Z |
| DESC | `W[Z] W[Z] →ₕ⁺ Z Z` | all closed Z |
| BASE | `C0 C0 →ₕ⁺ A` | concrete |
| INIT | `T →ₕ* λᵏ.(A Wⁿ[C0] y⃗)` for some k, n ≥ 0, any y⃗ | concrete, bounded |

**Symbolic step rules** (what makes the ∀Z quantification sound), enforced
by `check_reduces`:

- Z is opaque and closed: `shift(Z) = Z`, Z has no free variables, and
  substitution never enters Z.
- A redex may be contracted only if its function part is a concrete lambda.
  If the spine head is Z itself, the check aborts and the triple does not
  certify.
- Every proper source state of a check, start included, must be a
  non-abstraction and not `Z`, so the lifting lemma applies inside a left
  spine. End states may be abstractions.
- Each check must reach its target exactly (syntactic equality) within a step
  bound.

For loop32: OPEN is 1 step, DESC is 2 steps (its sources `W[Z] W[Z]` and
`W[Z] Z` are applications), BASE is 1 step.

**Glue theorem.** If OPEN, DESC, BASE hold, then for every n

```
A Wⁿ[C0] →ₕ⁺ A Wⁿ⁺¹[C0]
```

so the head reduction from `A C0` is infinite, and with INIT the target T has
no normal form.

*Proof.* OPEN with Z := Wⁿ[C0] gives
`A Wⁿ[C0] →ₕ⁺ (Wⁿ[C0] Wⁿ[C0]) W[Wⁿ[C0]]`, whose right factor is literally
`Wⁿ⁺¹[C0]`. Reduce the left factor inside the spine: DESC with
Z := Wⁿ⁻¹[C0] gives `Wⁿ Wⁿ →ₕ⁺ Wⁿ⁻¹ Wⁿ⁻¹` (abbreviating `Wᵏ = Wᵏ[C0]`), and
by the source condition each step lifts into the context `□ Wⁿ⁺¹`. Induct
down to `C0 C0` and apply BASE, lifted the same way, to reach `A Wⁿ⁺¹[C0]`.
Every step is a genuine head step and OPEN contributes at least one, so the
reduction is infinite. ∎

The proof nowhere needs W linear in Z, nor A, W, C0 in normal form.

**INIT landings.** INIT and discovery's milestone scan decompose the state
fully:

- *Under binders.* A state `λᵏ.(A · Wⁿ[C0])` with A, W, C0 closed carries the
  ratchet exactly as a top-level state, since head reduction is defined under
  leading binders. A candidate whose extracted triple captures an ambient
  variable fails the closedness checks and never certifies.
- *Trailing vectors.* A state `λᵏ.(A Wⁿ[C0] y₁ … yⱼ)` certifies for any
  j ≥ 0. Every state of the certified chain `A Wⁿ[C0] →ₕ A Wⁿ⁺¹[C0] →ₕ …` is a
  non-abstraction: the checks enforce it on every proper source state, and in
  the assembled chain each lemma endpoint occurs applied to the pending tower
  argument (BASE's endpoint `A` appears only as `A Wⁿ⁺¹[C0]`). The lifting
  lemma therefore applies to every step, and after the first lift every state
  is an application, so lifts through y₂ … yⱼ are automatic. The trailing
  vector is never substituted into, shifted, or inspected, so it may be open
  (including in the k stripped binders). INIT selects one state, and the
  lifted execution preserves that exact vector; discovery may observe
  different vectors across milestones, but discovery is untrusted. j need not
  be bounded; `init_trail` is reported for audit but is not certificate data.

**Matching the tower.** INIT matches `x = Wⁿ[C0]` by *peeling*:
`match_wrapper(w, x)` requires every `Meta` position of w to carry the
identical subtree and is the exact tree inverse of `plug`. If the peel chain
bottoms out at the closed C0, rebuilding bottom-up plugs only closed terms,
for which `plug` is genuine capture-free substitution, so `x` is the closed
tower tree-identically. A subtree that references binders of w can never end
the chain, because tree equality with C0 forces closedness.

**Relation to redloop and prior work.** redloop certifies exact recurrence
of a self-application (bounded period). Ratchet certifies the simplest
unbounded-period family: state n is `A Wⁿ[C0]`, and DESC's inductive peeling
is exactly what no windowed history mechanism can express. In TRS terms this
is the analogue of non-looping nontermination via pattern rules
(Emmes–Enger–Giesl, *Proving Non-Looping Non-Termination Automatically*,
IJCAR 2012), specialized to head strategy and closed metavariables. Related:
TRS loop certificates `s →⁺ C[sσ]` (Thiemann–Giesl–Schneider-Kamp,
*Decision Procedures for Loop Detection*) and the static higher-order
dependency-pair framework (Fuhs–Kop), which lives in typed higher-order
rewriting, not untyped β. No closer automatic untyped-λ certificate was found
in the literature; this is not an exhaustive novelty claim. Tromp's commit
`346c99f` adds loop32's hand reduction and exclusion.

## 4. Discovery

Discovery runs a bounded concrete head trace with per-state snapshots and:

1. scans for a state family `S_i = H · x_i` with a common head H (candidate
   A := H), keyed by (head, spine arity);
2. anti-unifies consecutive arguments x_i, x_{i+1} to extract a wrapper
   candidate W and base C0;
3. hands `(A, W, C0)` to the checkers, which derive each later class's extra
   data from the same triple (§5–§7).

Sweep budgets are `CertBudgets::SWEEP` (1000 steps, 100k nodes, 4096 lemma
steps), measured kill-equivalent to the battery's `CertBudgets::THOROUGH`
(2000/200k/4096).

## 5. HeadTowerRatchet

Ratchet hard-codes the state shape `A Wⁿ[C0]` and the collapse core `Z Z`.
In the HeadTowerRatchet the tower argument itself takes head position: OPEN's
natural endpoint is `Z W[Z]`, where Ratchet's opacity must abort. The forcing
exemplar, `01000110100001100001010110001011010` (35 bits, itself a kill), has
`I = λu.u`, `A = λx. x W[x]`, `W[Z] = λy. y I Z y`, `C0 = A`. Its rank step
`R(m,N): Xₘ₊₁ Xₙ →ₕ⁺ Xₘ Xₙ` takes exactly 11+3(m+N) steps and the full cycle
`A Xₙ →ₕ⁺ A Xₙ₊₁` takes 1 + (9n²+25n)/2, matching the measured milestone gaps
1, 18, 44, 79, …. The cycle-internal context is Xₙ₋₁, cycle-local rather than
fixed, so any schema that generalizes it to an opaque constant loses an
essential tower correlation.

The class needs only indexed towers, *named* closed metavariables, and
ordinary well-founded induction around the existing opaque symbolic reducer.

- **Data:** closed `A`, `C0`, `I`, wrapper `W`. Metavariables carry
  identities `Meta(id)`: the same id means the identical instantiation,
  different ids are independent, `shift(Meta i) = Meta i`, and substitution
  never enters. SPREAD instantiates two slots, so `W` may contain only
  `Meta 0` (`OnlyMVar 0`).
- **Obligations** (exemplar lengths in parentheses; BASE is zero steps there
  because `C0 = A`):

```
BASE(Z):     C0 Z    →ₕ* A Z            (0)
OPEN(Z):     A Z     →ₕ⁺ Z W[Z]         (1)
SPREAD(Z,Q): W[Z] Q  →ₕ⁺ Q I Z Q        (1)
PEEL(Z):     W[Z] I  →ₕ⁺ Z I            (3)
BOUNCE(Z):   A I Z   →ₕ⁺ Z I I Z        (3)
ERASE(Z):    A I I Z →ₕ⁺ Z              (7)
```

- **Assembly** is one fixed theorem (`HeadTower.lean`), not per-term glue:
  SPREAD exposes `Xₙ I`; PEEL iterates N times; BASE+BOUNCE; PEEL m times;
  BASE+ERASE; then descend `Xₙ Xₙ₊₁` through `R(n−1,n+1) … R(0,n+1)` and
  finish with BASE. The rank step is a literal seven-lemma lifted
  composition with recursive descent costs; the quadratic closed form is
  never trusted glue. Every state in the assembled chain is a
  non-abstraction, so the trailing-vector lifting of §3 carries over. The
  symbolic commuting square `s →ₕˢʸᵐ s′ ⇒ inst(s) →ₕ inst(s′)` remains the
  only primitive reduction-simulation rule.
- **Discovery:** reuse the Ratchet stream's `(A, W, C0)`, enumerate small
  closed subterms of `A` and `W` as candidate `I` (`try_htr`), and hand
  `(A, W, C0, I)` to `verify_htr`.

## 6. SelectorRatchet

Forced by the exemplar `01000110100001100001011000001111010` (35 bits, itself a
kill): `A = C0 = λx. x W[x]`, `W[Z] = λq. q P[Z] q`, `P[Z] = λa.λb.Z`. Ratchet
rejects it (OPEN ends at `Z W[Z]`), and so does the HeadTowerRatchet (SPREAD
expects `Q I Z Q`, but the fan-out is `Q P[Z] Q`: an endpoint mismatch, not a
Z-headed reduction).

**Data:** `(A, W, P, C0)`: A, C0 closed; W and P pattern-closed with every
hole `Meta(0)`; W contains at least one hole, P any number including zero.
The wrapper is a *selector*: applied to a fresh argument it hands control to
that argument, passing along a second unary pattern carrying its stored
layer, and one wrapper layer applied to that pattern reduces to the stored
layer.

**Checks**, under the same `check_reduces` discipline; Z and Q are
independent opaque closed metavariables, and `W[Q]` is built by syntactic
hole-renaming before the check:

| name | obligation | quantification |
|------|-----------|----------------|
| OPEN | `A Z →ₕ⁺ Z W[Z]` | all closed Z |
| FAN | `W[Z] Q →ₕ⁺ Q P[Z] Q` | all closed Z, Q |
| SELECT | `W[Q] P[Z] →ₕ⁺ Z` | all closed Z, Q |
| BASE | `C0 Z →ₕ* A Z` | all closed Z (may be 0 steps) |
| INIT | `T →ₕ* λᵏ.(A Wⁿ[C0] y⃗)` | concrete, bounded (§3 landings) |

**Glue theorem.** With `Xₙ = Wⁿ[C0]`, for every n `A Xₙ →ₕ⁺ A Xₙ₊₁`; with
INIT the target has no normal form.

*Proof.* Towers of closed patterns over the closed C0 are closed, so every
instantiation below is capture-free. OPEN at Z := Xₙ gives
`A Xₙ →ₕ⁺ Xₙ W[Xₙ] = Xₙ Xₙ₊₁`. Rank step, for m ≥ 1:
`Xₘ Xₙ₊₁ →ₕ⁺ Xₘ₋₁ Xₙ₊₁`. Since `Xₘ = W[Xₘ₋₁]`, FAN at
(Z := Xₘ₋₁, Q := Xₙ₊₁) runs at top level and yields `Xₙ₊₁ P[Xₘ₋₁] Xₙ₊₁`; its
left factor is literally `W[Xₙ] P[Xₘ₋₁]`, so SELECT at
(Q := Xₙ, Z := Xₘ₋₁) reduces it to `Xₘ₋₁` inside the context `□ Xₙ₊₁`, one
application lifting licensed because every proper source of SELECT's chain
is a non-abstraction. Iterating the rank step from m = n down to 1 reaches
`C0 Xₙ₊₁`, and BASE at Z := Xₙ₊₁ closes the cycle at `A Xₙ₊₁`. OPEN is ⁺, so
the cycle is productive; the landings and lifting are §3's. ∎

For the exemplar the obligation lengths are OPEN 1, FAN 1, SELECT 3, BASE 0,
giving milestone gaps exactly `4n+1`, matching the independently observed
positions 0, 1, 6, 15, 28, 45, 66, 91, ….

**Discovery** (`try_selector`): reuse the Ratchet stream's candidates, trace
`W[Z] Q` to its first opaque-head state, match it as `Q P Q` to read off P,
peel the base to the tower bottom, and hand the result to `verify_selector`.
The sweep finds more kills than the single-candidate `blam cert diag` probe
accepts, because streaming discovery proposes triples the probe never tries
(`frontier.md`).

## 7. PassengerDiagonalRatchet

Forced by the exemplar `010001101000010110011000110000110110` (36 bits).
Ratchet's OPEN aborts at `Z ⟨…⟩ W[Z]` with an interleaved spine argument
`Z P[Z]`: metavariable-bearing and consumed by the tower head, it *controls*
the descent. This is why passengers are a class of their own rather than a
field of the HeadTowerRatchet, which would hide a theorem union inside one
record.

**Data:** `(A, W, P, C0)`: A, C0 closed; W, P pattern-closed.

| name | obligation | quantification |
|------|-----------|----------------|
| OPEN | `A Z →ₕ⁺ Z (Z P[Z]) W[Z]` | all closed Z |
| UNWRAP | `W[Z] Q →ₕ⁺ Q Z` | all closed Z, Q |
| DROP | `P[Z] Q →ₕ⁺ Z` | all closed Z, Q |
| SEED | `C0 Q →ₕ⁺ A` | all closed Q |
| INIT | `T →ₕ* λᵏ.(A Wⁿ[C0] y⃗)` | concrete, bounded (§3 landings) |

**Assembly.** Write `Xₙ = Wⁿ[C0]`, `Pₙ = P[Xₙ]`. The non-base rank step is

```
Xₘ₊₁ (Xₘ₊₁ Pₘ₊₁)
→ₕ⁺ (Xₘ₊₁ Pₘ₊₁) Xₘ       UNWRAP
→ₕ⁺ (Pₘ₊₁ Xₘ) Xₘ         UNWRAP, lifted
→ₕ⁺ Xₘ₊₁ Xₘ              DROP, lifted
→ₕ⁺ Xₘ Xₘ                UNWRAP
```

and diagonal descent is UNWRAP twice: `Xₘ₊₁ Xₘ₊₁ →ₕ⁺ Xₘ₊₁ Xₘ →ₕ⁺ Xₘ Xₘ`.
Hence for n > 0:

```
A Xₙ →ₕ⁺ [Xₙ (Xₙ Pₙ)] Xₙ₊₁      OPEN
     →ₕ⁺ [Xₙ₋₁ Xₙ₋₁] Xₙ₊₁       rank step, lifted
     →ₕ⁺ [C0 C0] Xₙ₊₁           diagonal descent, iterated
     →ₕ⁺ A Xₙ₊₁                 SEED, lifted
```

The n = 0 cycle is exceptional but closes directly:
`A C0 →ₕ⁺ [C0 (C0 P0)] X₁ →ₕ⁺ A X₁` by SEED on `C0 (C0 P0)`, lifted through
`X₁`. The exemplar's core-cycle gaps are 2n+4 after that base cycle, and it
certifies with all obligation counts 1. The trusted core is unchanged: the
class uses the symbolic commuting square, source-nonlam lifting, closed
A/C0, scoped W/P, and the §3 landings. Discovery is `try_pdr`.

## 8. Shapes without a class

`frontier.md` maps where discovery's candidates fail. Two shapes are named
there and deliberately have no class yet.

**The zfirst residue.** The zfirst bucket (OPEN aborts at exactly `Z W[Z]`,
then HTR's SPREAD at an endpoint mismatch) yielded the SelectorRatchet; what
remains after the selector sweep is a different shape. Its obligations must
come from an actual surviving exemplar's trace, the way each class above was
forced by one term, never from the bucket.

**Drift: gated on a finite generator.** The drift bucket shows consecutive
milestones nesting under a *different* wrapper each level. On the exemplar
`0100011010000110000110011100111000110` the three nested milestones share no
generator: first-argument sizes 70/207/1519, `plug(generalize(x₂,x₁), x₂) ≠ x₃`,
and the head appears at twenty different spine arities. The bucket is
therefore not evidence for a semantic family Wₙ; it could equally be
nonlinear wrapper evolution, mixed roles sharing (head, arity), or spine
growth. A sound indexed-wrapper certificate needs a forcing trace exhibiting
a finite generator

```
R₀                  finite index seed
Rₙ₊₁ = G[Rₙ]        fixed index constructor
X₀ = C0
Xₙ₊₁ = W[Rₙ, Xₙ]    fixed two-hole wrapper pattern
```

with the checker reasoning symbolically over opaque closed R, Z, Q, exposing
exactly one concrete `G[R′]` layer when reduction must inspect the index
(recursing on opaque `R′` with a decreasing within-cycle rank; a finite
control graph handles multiple phases, and periodic wrappers are the special
case where R is a phase tag). An unconstrained `W : Nat → Context` with
finitely many checked instances leaves the required ∀n as an assumption.

**Rules for a new class.** When synthesizing obligations from a trace, guard
against: treating a cycle-local context as globally fixed; independently
generalizing occurrences that must share one tower index; C0-specific
concrete segments; lifting through arbitrary one-hole contexts rather than
right-spine suffixes; β-equivalent rather than exact endpoints; capture under
stripped binders; unchecked recursive decrease; exceptional n = 0 phases; and
unrolling concrete depths instead of producing an induction witness.

## 9. Verification

- **Unit:** loop32 certifies end to end from its wire bits.
- **Soundness battery** (`src/classical/certificate/battery.rs`, a crate unit
  test so it runs under plain `cargo test`): every provable halter of
  4..28 bits (196,848 terms) goes through the full four-rung `try_kill` at
  `CertBudgets::THOROUGH`, and no certificate may fire. This tests the
  implementation, not the mathematics.
- **Recertification:** `scripts/recert-kills.sh` reruns `cert search` at 4×
  budgets, requires every kill line to reproduce byte-identically, and
  regenerates and kernel-checks `lean/Certs/`.
- **Lean:** every class assembly is a kernel-checked theorem from decidable
  obligations to `¬HasNormalForm`, and every kill is replayed obligation by
  obligation (`lean/README.md`).
