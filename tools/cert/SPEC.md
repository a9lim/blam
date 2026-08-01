# Ratchet certificates: mechanical divergence proofs for growing-context loops

Status: v1 implemented (`src/cert.rs`, `src/bin/certsearch.rs`) and
**adversarially reviewed by Codex** (thread `blc-conformance`,
2026-07-31): *"the glue theorem survives — no soundness counterexample."*
Two review findings, both fixed: the reference reducer had a latent
(unexercised) argument-descent branch, now head-only by construction;
and the lifting side condition is enforced on every proper *source*
state, not merely intermediates (latent in v1 — every check starts from
an application — real in v2). §7 logs the review.

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
| INIT | `T →ₕ* A Wⁿ[C0]` for some n ≥ 0 | concrete, bounded |

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

## 5. v2 design lane (beyond the (Z Z)-collapse shape)

v1 hard-codes the state shape `A Wⁿ[C0]` and the collapse core `Z Z`.
Shapes it provably misses — concrete in Tromp's loop33/34 hand
analyses in `BBold.lhs`, per the Codex review, not hypothetical
taxonomy:

- alternating / mutually recursive heads: `A Xₙ → B Yₙ → A Xₙ₊₁`;
- asymmetric collapse cores such as `Z P[Z]`; triplication, several
  tower arguments;
- alternating wrappers, vector-valued tower depths;
- growth in an outer evaluation context rather than one argument;
- recurrences under binders or depending on open parameters;
- milestones equal only after a certified normalization, not
  syntactically;
- phase-dependent descent, multiple base cases.

The reviewed v2 direction (ordinary well-founded induction — not
cyclic proof, since every lemma invocation strictly decreases):

- a finite control graph of indexed state schemas;
- arbitrary exact symbolic lemma endpoints (no hard-coded core);
- several closed metavariables where needed;
- proof *scripts* of symbolic head steps + explicit lemma invocations,
  fully replayable by the small trusted checker;
- a lexicographic/multiset measure on tower depths decreasing at every
  invocation.

Discovery may stay heuristic; only the replayed script is trusted.
Build this if (and as soon as) the frontier classification shows
ratchet-adjacent families v1 leaves on the table.

## 6. Verification battery (planned)

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

## 7. Review log

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
