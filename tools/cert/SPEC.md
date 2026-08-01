# Ratchet certificates: mechanical divergence proofs for growing-context loops

Status: three classes live in `src/cert.rs` + `src/bin/certsearch.rs`
— v1–v1.2 (§3), the v2 `HeadTowerRatchet` (§5, co-designed with
Codex), and the v3 `SelectorRatchet` (§6, derived by Codex from a
forcing exemplar). All checkers trusted, discovery untrusted; every
class's assembly theorem is additionally **machine-checked in Lean**
(`lean/Blc/{Ratchet,HeadTower,Selector,Rigid}.lean` — the last is the
rigid-head bridge for `-ARG` kills), and every kill in
`ratchet_kills.txt` is a kernel-checked `¬HasNormalForm` theorem
(`lean/Certs/`). Adversarial review with Codex ran ten rounds on
thread `blc-conformance` (2026-07-31 → 2026-08-01); §8 logs the first
two in full, LEDGER.md carries the rest. Discovery keys milestone
families by (head, spine arity): the deep family passes through both
`A Xₙ` milestones and `A I Xₘ Xₙ` rank-step interiors, and merging
the streams destroys the growing window.

## 1. The target, and why redloop can't reach it

`loop32` = `01000110001100001011010000110110` (32 bits) is the smallest
closed term anywhere with no mechanical divergence proof — Tromp
hand-excludes it in his own tree. Parsed (1-indexed de Bruijn):

```
loop32 = F A
F = λx. x (λ_. x)            -- \1 (\2)      : λx. x (K x)
A = λx. x x (λy. y x)        -- \1 1 (\1 2)
```

`redloop` requires an exactly-recurring self-application `A A`. Here the
configuration never recurs: it *grows*. Machine-verified fact (independent
from-scratch reducer, `loop32_trace.py`, 6,000 normal-order steps):

with `C0 = λ_. A` (that is, `K A`) and wrapper `W[Z] = λy. y Z`,
the head reduction passes through exactly the milestone states

```
A C0  →+  A W[C0]  →+  A W[W[C0]]  →+  ...  →+  A Wⁿ[C0]  →+ ...
```

for n = 0..76 within those 6,000 steps, strictly consecutive, with **zero**
other states of the form `A · x`, and the n-th cycle takes exactly 2n+2
head steps — the reduction consumes the whole depth-n tower every cycle.
So no bounded *exact-state* recurrence check can see this loop: the
period is unbounded. (A detector whose window entries are patterns or
abstract states can — that is precisely what this certificate is.)
A proof must quantify over the tower depth.

## 2. Preliminaries

Closed λ-terms, 1-indexed de Bruijn, β only. *Head reduction* `→ₕ`:
the unique redex `(λ.M) N` in the position `((λ.M) N) t₂ … tₖ`
(under leading lambdas, though every state we handle is an application).
Head reduction is deterministic.

**Soundness backbone.** If the head reduction from T is infinite, T has
no head normal form, hence no β-normal form. (Standard: every nf is an
hnf; by standardization, if T has an hnf the head reduction terminates —
Barendregt 8.3.11 / 11.4.x territory. This is the same backbone redloop
rests on.)

**Lifting lemma.** If `M₀ →ₕ M₁ →ₕ … →ₕ Mₖ` and `Mᵢ` is not an
abstraction for every `i < k` (every *proper source state* — including
`M₀`, excluding only the end), then `M₀ Y →ₕ M₁ Y →ₕ … →ₕ Mₖ Y`.
(The head redex of an application whose function part is a
non-abstraction is the function part's head redex; if a source state
were an abstraction, the head step of the composite would instead
consume it via the outer redex.) If `Mₖ` is an abstraction the
composite then continues with that outer contraction, which is exactly
how our lemmas chain. [Wording per Codex review: "intermediate states"
alone is a v2-sized hole; v1's checks all start from applications, so
the distinction is latent there.]

## 3. The v1 certificate

**Data:** a triple `(A, W, C0)` where A and C0 are closed terms and W is
a pattern term with at least one occurrence of a distinguished
metavariable `Z` (write `W[Z]`; plugging a closed term for Z is
capture-free by closedness). For loop32 discovery yields
`A = λx. x x (λy. y x)`, `W[Z] = λy. y Z`, `C0 = λ_. A`.

**Checks** — each a bounded, deterministic *symbolic head reduction*
over terms extended with the opaque closed metavariable Z:

| name | obligation | quantification |
|------|-----------|----------------|
| OPEN | `A Z →ₕ⁺ (Z Z) W[Z]` | all closed Z |
| DESC | `W[Z] W[Z] →ₕ⁺ Z Z` | all closed Z |
| BASE | `C0 C0 →ₕ⁺ A` | concrete |
| INIT | `T →ₕ* λᵏ.(A Wⁿ[C0] y⃗)` for some k, n ≥ 0, any y⃗ | concrete, bounded |

(v1 had k = 0 and y⃗ empty; v1.1 added the binders, v1.2 the trailing
vector — see below.)

**Symbolic step rules** (what makes the ∀Z quantification sound):

- Z is opaque and closed: `shift(Z) = Z`, Z contains no free variables,
  substitution never enters Z.
- A redex may be contracted only if its function part is a *concrete*
  lambda. If the spine head is ever Z itself (the reduction would need
  to inspect Z), the check ABORTS — that triple simply doesn't certify.
- Every *intermediate* state of a check (strictly between start and end)
  must be a non-abstraction, so the lifting lemma applies when the
  reduction runs inside a left spine. End states may be abstractions.
- Each check must reach its target *exactly* (syntactic equality)
  within a step bound. All checks are decidable and cheap.

For loop32: OPEN is 1 step (no intermediates), DESC is 2 steps (the one
intermediate, `W[Z] Z`, is an application), BASE is 1 step.

**Glue theorem.** If OPEN, DESC, BASE hold, then for every n:

```
A Wⁿ[C0] →ₕ⁺ A Wⁿ⁺¹[C0]
```

hence the head reduction from `A C0` is infinite, and with INIT the
target T has no normal form.

*Proof.* By OPEN with Z := Wⁿ[C0]:
`A Wⁿ[C0] →ₕ⁺ (Wⁿ[C0] Wⁿ[C0]) W[Wⁿ[C0]]`. The right factor is
literally `Wⁿ⁺¹[C0]`. Now reduce the left factor inside the spine:
DESC with Z := Wⁿ⁻¹[C0] gives `Wⁿ Wⁿ →ₕ⁺ Wⁿ⁻¹ Wⁿ⁻¹` (abbreviating
`Wᵏ = Wᵏ[C0]`), and by the intermediate-non-abstraction condition each
of those steps lifts into the context `□ Wⁿ⁺¹`. Induct down to
`C0 C0`, apply BASE (lifted the same way) to reach `A Wⁿ⁺¹[C0]`.
Every step in the chain is a genuine head step and there is at least
one (OPEN is ⁺), so the head reduction is infinite. ∎

Note the proof nowhere needs W linear in Z, and nowhere needs A, W, C0
to be in normal form.

**Under-binder extension (v1.1).** Discovery and INIT match milestones
after stripping leading lambdas: a state `λᵏ.(A · Wⁿ[C0])` with A, W,
C0 all *closed* (the existing certificate gates) carries the ratchet
exactly as a top-level state — head reduction is defined under leading
binders, so the body's infinite head chain is the state's. Candidates
whose extracted triple captures an ambient variable fail the closedness
checks and never certify. Motivation: the frontier classification
(tools/cert/CLASSIFY.md) found 1,320/2,032 unknowns presenting as bare
abstractions, invisible to top-level spine matching.

**Trailing-vector extension (v1.2).** INIT (and discovery's milestone
scan) decompose the full application spine: a state
`λᵏ.(A Wⁿ[C0] y₁ … yⱼ)` certifies for any j ≥ 0. Soundness is
iterated lifting: every state of the certified infinite chain
`A Wⁿ[C0] →ₕ A Wⁿ⁺¹[C0] →ₕ …` is a non-abstraction — the lemma
checks enforce it on every proper source state, and in the assembled
chain each lemma endpoint occurs applied to the pending tower
argument (BASE's endpoint `A` appears only as `A Wⁿ⁺¹[C0]`), hence
as an application. The lifting lemma therefore applies pointwise to
every step; after the first lift every state is syntactically an
application, so lifts through y₂ … yⱼ are automatic. The trailing
vector is never substituted into, shifted, or inspected, so it may be
open (including in the k stripped binders); INIT never compares
trailing vectors across observed milestones — it selects ONE state,
and the lifted certified execution preserves that exact vector.
There is no soundness reason to bound j; `init_trail` is recorded in
the report for audit but is not certificate data. [Reviewed by Codex,
round two.]

**INIT matching note.** The implementation matches `x = Wⁿ[C0]` by
*peeling*: `match_wrapper(w, x)` requires every `Meta` position of w to
carry the identical subtree and is the exact tree-inverse of `plug`.
Soundness of peeling: if the peel chain bottoms out at the (closed) C0,
then rebuilding bottom-up plugs only closed terms — for which `plug` is
genuine capture-free substitution — so `x` *is* the closed tower, tree-
identically. An extracted subtree that references binders of w can
never terminate the chain, because tree-equality with the closed C0
forces closedness. (Codex's "least dangerous" alternative — construct
`C0, W[C0], …` forward and compare — is equivalent here; peeling is
kept for efficiency, with this argument recorded as its license.)

**Relation to redloop.** redloop certifies *exact* recurrence of a
self-application (period bounded, window 1). Ratchet certifies the
simplest *unbounded-period* family: state n is `A Wⁿ[C0]`, and the
inductive structure (DESC peeling one tower layer) is precisely the
part no windowed history mechanism can express. In TRS terms this is
the analog of non-looping nontermination via pattern rules —
Emmes–Enger–Giesl, *Proving Non-Looping Non-Termination Automatically*,
IJCAR 2012 (citation verified by Codex; the ratchet is a specialized
head-strategy, closed-metavariable instance of the pattern-rule idea).
Related: TRS loop certificates `s →⁺ C[sσ]` (Thiemann–Giesl–
Schneider-Kamp, *Decision Procedures for Loop Detection*) and the
static higher-order dependency-pair framework (Fuhs–Kop) — the latter
lives in typed higher-order rewriting, not untyped β. Codex found no
closer automatic untyped-λ certificate in the searched literature (a
search finding, not an exhaustive novelty claim). Tromp's 2020 commit
`346c99f` adds loop32's hand reduction and hard exclusion; no
repository issue or discussion presents a mechanical certificate.

## 4. Discovery (untrusted)

The checker is the only trusted component. Discovery runs a bounded
concrete head trace with per-state snapshots and:

1. scans for a state family `S_i = H · x_i` with a common head H
   (candidate A := H);
2. anti-unifies consecutive arguments x_i, x_{i+1} to extract a
   wrapper candidate W and base C0 (x_i should match `Wⁱ⁻ⁱ⁰[x_{i0}]`);
3. hands `(A, W, C0)` to the checker. Garbage in ⇒ ABORT, never a
   wrong certificate.

## 5. v2: the `HeadTowerRatchet` (co-designed with Codex, round two)

v1 hard-codes the state shape `A Wⁿ[C0]` and the collapse core `Z Z`.
The forcing example is the 35-bit frontier term
`01000110100001100001010110001011010`: its wrapper is perfectly
consistent, but OPEN's natural endpoint is `Z W[Z]` — the tower
argument itself takes head position, where v1's opacity must abort
(MetaHead). Codex derived its exact recurrence: with `I = λu.u`,
`A = λx. x W[x]`, `W[Z] = λy. y I Z y`, `C0 = A`, the rank step
`R(m,N): Xₘ₊₁ Xₙ →ₕ⁺ Xₘ Xₙ` takes exactly 11+3(m+N) steps and the
full cycle `A Xₙ →ₕ⁺ A Xₙ₊₁` takes 1 + (9n²+25n)/2 — matching the
measured milestone gaps 1, 18, 44, 79, … exactly. Crucially the
cycle-internal context term is Xₙ₋₁ — cycle-local, NOT globally
fixed; any schema that generalizes it to an opaque constant loses an
essential tower correlation.

**The decisive design result: this family does not force general
pattern-headed schemas or cyclic proof graphs.** It forces three
things only — indexed towers, *named* closed metavariables, and
ordinary well-founded induction around the existing opaque symbolic
reducer. The certificate class:

- Data: closed `A`, `C0`, `I`, wrapper `W`; metavariables get
  identities `Meta(id)` (same id ⇒ identical instantiation,
  different ids independent; `shift(Meta i) = Meta i`, substitution
  never enters).
- Replayed obligations (lengths for the forcing example in
  parentheses; BASE is 0 steps there because `C0 = A`):

```
BASE(Z):     C0 Z    →ₕ* A Z            (0)
OPEN(Z):     A Z     →ₕ⁺ Z W[Z]         (1)
SPREAD(Z,Q): W[Z] Q  →ₕ⁺ Q I Z Q        (1)
PEEL(Z):     W[Z] I  →ₕ⁺ Z I            (3)
BOUNCE(Z):   A I Z   →ₕ⁺ Z I I Z        (3)
ERASE(Z):    A I I Z →ₕ⁺ Z              (7)
```

- A FIXED theorem (proved once, on paper/in Lean — not per-term)
  assembles these into `R(m,N)` and the cycle: SPREAD exposes
  `Xₙ I`; PEEL iterates N times; BASE+BOUNCE; PEEL m times;
  BASE+ERASE; then descend `Xₙ Xₙ₊₁` through `R(n−1,n+1) … R(0,n+1)`
  and finish with BASE. Every state in the assembled chain is again
  a non-abstraction, so v1.2's trailing-vector lifting carries over.
- Proof-term calculus for the checker (structured AST, not a graph):
  `Replay(symbolic_steps) | Seq | Lift(trailing_spine) |
  NatRec(index, zero, succ) | Call(lemma, instantiation)`, with
  `Tower(0) = C0`, `Tower(succ n) = W[Tower(n)]` unfolded by
  definitional equality (not a β-step — never inspects an opaque
  metavariable).
- Two proof strata, kept separate: the *productive* theorem
  `CYCLE(n): S(n) →ₕ⁺ S(n+1)` (cycle count increases forever — it
  is NOT part of a well-founded measure), and *terminating* helpers
  (`PEEL_TO(n)`, `DESC(m,N)`) whose recursive calls must
  syntactically decrease. Productivity = each CYCLE contains ≥1 real
  head step.
- The symbolic commuting square `s →ₕˢʸᵐ s′ ⇒ inst(s) →ₕ inst(s′)`
  remains the ONLY primitive reduction-simulation rule; tower
  unfolding, left-spine lifting, composition, induction, and
  decrease-checking are proved combinators that merely assemble it.

Discovery (untrusted): anti-unify milestones for `A`, `W`, `C0`;
enumerate small closed subterms of `A` and `W` as candidate `I`;
hand `(A, W, C0, I)` to the six-check verifier; the fixed theorem
manufactures the indexed proof. Failure modes to guard when
synthesizing from traces: treating the cycle-local Xₙ₋₁ as globally
fixed; independently generalizing occurrences that must share one
tower index; C0-specific concrete segments; lifting through
arbitrary one-hole contexts rather than right-spine suffixes;
β-equivalent rather than exact endpoints; capture under stripped
binders; unchecked recursive decrease; exceptional n=0 phases (the
first cycle here has length 1); unrolling concrete depths instead of
producing an induction witness.

A finite control graph may return later as *discovery IR* compiled
into this proof AST; building graph SCCs and a lexicographic-measure
solver first would enlarge the trusted surface before any frontier
example requires it. Shapes plausibly still beyond this class
(alternating heads, growth in outer evaluation contexts,
normalization-equal milestones) wait for their own forcing examples.

## 6. v3: the SelectorRatchet (derived by Codex, round nine)

Forced by the 35-bit exemplar `01000110100001100001011000001111010`
(A = C0 = λx. x W[x], W[Z] = λq. q P[Z] q, P[Z] = λa.λb.Z), which v1
must reject (OPEN ends at `Z W[Z]`, not `(Z Z) W[Z]`) and the
HeadTowerRatchet must also reject (its SPREAD expects `Q I Z Q`; here
the fan-out is `Q P[Z] Q` — the abort is an endpoint mismatch, not a
Z-headed reduction; the round-nine trace corrected an earlier
misreading of exactly this point).

**Data:** `(A, W, P, C0)` — A, C0 closed; W and P pattern-closed with
every hole `Meta(0)`; W contains at least one hole (P may contain any
number, including zero). The wrapper is a *selector*: applied to a
fresh argument it hands control to that argument, passing along a
second unary pattern carrying its stored layer; one wrapper layer
applied to that pattern reduces to the stored layer.

**Checks** — bounded symbolic head reductions, every proper source
state a non-abstraction and non-Meta (the same `check_reduces`
discipline as v1/v2); Z and Q are independent opaque closed
metavariables; `W[Q]` is built by syntactic hole-renaming BEFORE the
check (unambiguous under the Meta(0) gates):

| name | obligation | quantification |
|------|-----------|----------------|
| OPEN | `A Z →ₕ⁺ Z W[Z]` | all closed Z |
| FAN | `W[Z] Q →ₕ⁺ Q P[Z] Q` | all closed Z, Q |
| SELECT | `W[Q] P[Z] →ₕ⁺ Z` | all closed Z, Q |
| BASE | `C0 Z →ₕ* A Z` | all closed Z (may be 0 steps) |
| INIT | `T →ₕ* λᵏ.(A Wⁿ[C0] y⃗)` | concrete, bounded (v1.2 landing) |

**Glue theorem.** With `Xₙ = Wⁿ[C0]`: for every n,
`A Xₙ →ₕ⁺ A Xₙ₊₁`, hence with INIT the target has no normal form.

*Proof.* Towers of closed patterns over the closed C0 are closed, so
every instantiation below is capture-free. OPEN at Z := Xₙ gives
`A Xₙ →ₕ⁺ Xₙ W[Xₙ] = Xₙ Xₙ₊₁`. Rank step, for m ≥ 1:
`Xₘ Xₙ₊₁ →ₕ⁺ Xₘ₋₁ Xₙ₊₁` — since `Xₘ = W[Xₘ₋₁]`, FAN at
(Z := Xₘ₋₁, Q := Xₙ₊₁) runs at the state's top level and yields
`Xₙ₊₁ P[Xₘ₋₁] Xₙ₊₁`; its left factor is literally `W[Xₙ] P[Xₘ₋₁]`,
so SELECT at (Q := Xₙ, Z := Xₘ₋₁) reduces it to `Xₘ₋₁` inside the
context `□ Xₙ₊₁` — one application lifting, licensed because every
proper source of SELECT's chain is a non-abstraction. Iterating the
rank step from m = n down to 1 reaches `C0 Xₙ₊₁`; BASE at
Z := Xₙ₊₁ closes the cycle at `A Xₙ₊₁`. OPEN is ⁺, so the cycle is
productive; the under-binder and trailing-vector lifting is v1.2's,
verbatim. ∎

For the exemplar the measured obligation lengths are OPEN 1, FAN 1,
SELECT 3, BASE 0, giving milestone gaps exactly `4n+1` — matching the
independently observed positions 0, 1, 6, 15, 28, 45, 66, 91, ….

**Discovery** (untrusted): reuse the v1 stream's `(A, W, C0)`
candidates; trace `W[Z] Q` to its first opaque-head state, match it
as `Q P Q` to read off P, peel the base to the tower bottom, hand to
`verify_selector`. Checkers: `verify_selector` in src/cert.rs;
driver `try_selector`; sweep tag `SELECTOR` (± `-ARG`).

Measured acceptance on the 2026-08-01 frontier probe: 30 of the 456
live ratchet-candidates pass all four obligations (the 131-term
`zfirst` abort bucket is a signature, not a class); 110 more reach a
Q-headed FAN endpoint of a different shape — unexplored variants.
The full sweep then landed **40 kills** — the 10 beyond the probe's
30 came out of that fan-shape bucket, because streaming discovery
proposes candidate triples the single-triple probe never tried
(buckets are abort fingerprints, not class boundaries). All 40
re-certified byte-identically at 4× budgets.

## 7. Verification battery

- Unit: loop32 certifies end-to-end from its wire bits.
- Soundness battery: run discovery+checker over all census *halters*
  at small sizes and assert zero certificates fire (they can't, if the
  checker is correct — this tests the implementation, not the math).
- The four redloop true-positives at 32 bits must NOT certify via
  ratchet unless they genuinely have the shape (no requirement either
  way; ratchet and redloop are complementary).
- Fuel robustness: discovery at multiple trace budgets; certificates
  found must be identical (the checker result is budget-independent
  once found).

## 8. Review log

**2026-07-31, Codex (thread `blc-conformance`, job
cx-20260731-151501-5ad2).** Verdict: *glue theorem survives, no
soundness counterexample.* Independently reproduced the loop32 trace
with a from-scratch head-only reducer (77 milestones, consecutive
indices, gaps 2n+2). Findings, both fixed same day: (1) the Python
reference had an argument-descent branch (never exercised by loop32) —
now head-only by construction; (2) lifting condition strengthened to
every proper source state (`check_reduces` now rejects an abstraction/
`Meta` *start* state too). Confirmed: symbolic opacity of the closed
metavariable is sound ("concrete lambda" = outer constructor is `Lam`,
body may contain Z); exact de Bruijn tree equality suffices for INIT;
obligations must take ≥1 step (INIT may take 0). Prior-art citations
verified (§3). Lean staging advice adopted (§8 of the project docket):
(a) certify the infinite head chain, (b) prove/import head
standardization, (c) derive `¬ HasNormalForm loop32` — with the
symbolic layer's commuting square `inst(s) →ₕ inst(s′)` as the central
checker theorem.

**2026-07-31, Codex round two (thread `blc-conformance`, job
cx-20260731-193136-4a8c).** Verdict on v1.2: *"v1.2 is sound. Ship it
after correcting two misleading comments and adding one targeted
test. I found no semantic or implementation hole in trailing-spine
lifting."* Independently reproduced the two exemplar certifications
(`init_trail` 1 and 2) and ran the cert test suite. Corrections, all
applied: (1) "each lemma endpoint is an application" was false as
written — BASE ends at `A`, an abstraction; the assembled chain only
ever contains it applied to the pending tower argument; (2) the
trailing-vector claim rephrased: INIT selects one state and the
lifted execution preserves that exact vector (discovery may observe
unrelated vectors — it is untrusted); (3) adversarial test
`λu. A C0 u` (trailing argument open in the stripped body) added.
Confirmed: no soundness reason to bound j; `init_trail` stays report
data, not certificate data. Round two also derived the deep-family
exact recurrence and co-designed the v2 `HeadTowerRatchet` (§5),
including the correction that the cycle-internal context term is the
cycle-local Xₙ₋₁, not a global constant. The 24-kill sweep count was
reported to Codex, not independently re-swept by them.

**Rounds three through ten (2026-07-31 → 2026-08-01)** are logged in
LEDGER.md and the `blc-conformance` gaslamp thread: round three
(streaming discovery, wrapper-ID hardening), four through six (uni.rs
and the Lean bridge), seven (v3 staging), eight (HTR Lean design +
the wire-identity audit gap), nine (the SelectorRatchet derivation
and the zfirst/passenger corrections), ten (independent verification
of the Lean rigid-head bridge at 1d9c600; the PassengerDiagonal
assembly derivation; the drift generator gate).
