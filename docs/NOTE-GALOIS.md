# The Galois structure of qBLC halting mass

*Status: working note, opened 2026-08-04. T1 is proved at paper level
below (Lean formalization parked behind the L2 machine layer, which
wants the same configuration formalization). T2/T3 are stated with
proof plans; the oddmin instrument (stage 1a validation layer:
`src/odd.rs`) is live and r4-hardened; the DP design is r4/r4b-frozen
with a gated build. Spar record: `qblc-omega-witnesses` rounds
r1–r4b, 2026-08-04. Measured inputs: LEDGER entries of 2026-08-03/04.*

## 1. Setting

Amplitudes live in Z[ω]/√2^k, ω = e^{iπ/4} (`src/dw.rs`); real masses
in Z[1/2, √2]. Gal(Q(ζ₈)/Q) = {σ₁, σ₃, σ₅, σ₇} ≅ V₄, with σ₇ =
complex conjugation and σ₃, σ₅ the two √2-flippers (σ₅ = σ₇∘σ₃; they
agree on real masses). We fix σ = σ₅ (ω ↦ −ω), under which
σ(H) = −H and σ(T) = T·Z.

A program's branch tree (qeval) carries unnormalized cylinder masses;
a leaf's mass is a product of Born factors. The per-size census
deliverable Σ_success and its √2-coefficient are sums of per-program
Σ Halt masses (`qcomplement`'s sector-complete accumulator).

**Accounting identity (Tier A).** For resolved, non-overflowed
programs, per-size √2-coefficient = Σ over programs of per-program
√2-parts; `fatediv = 0` (no program with irrational Σ Halt mass)
implies per-size √2 ≡ 0. Premises: `deferred_sqrt2 = 0` and
`radical_unknown = 0` — both measured 0 at every size so far. The
campaign's information content is the fatediv column, plus absence of
cross-program cancellation where fatediv > 0.

## 2. T1: the finite-trace Galois identity

**Twisted semantics C♯**: identical evaluator, except every T firing
applies TZ to the store. The Z is semantic — it emits no event and
consumes no epoch (a source-level t⁴ encoding would break the trace
bijection). Capacity/budget behavior is excluded from the statement.

**Theorem (T1).** For every program C and labeled outcome prefix s,
the C and C♯ executions have identical terms, qubit ids, live/retired
maps, epochs, and classical control state; if h(s) H-events have
fired, their amplitude vectors satisfy σ(v_s) = (−1)^{h(s)} · v♯_s.
Consequently every labeled leaf has the same fate tag at the same
step count, and w_{C♯}(s) = σ(w_C(s)).

*Proof.* Induction along each branch, on the paired configurations.
Classical steps (β, species/epoch checks, ArgView dispatch) never
read amplitudes, so they act identically and preserve the pairing.
New appends |0⟩ (σ-fixed). H: σ(Hv) = −Hσ(v) — the sign joins the
(−1)^{h(s)} bookkeeping and cancels in vv†. T: σ(Tv) = TZ·σ(v),
which is exactly the twisted step. CNOT is a rational permutation
matrix, σ-fixed. A measurement with the same outcome label applies
the same computational-basis projector, which commutes with
entrywise σ; masses satisfy σ(m) = σ(v)·σ(v)† = m♯ since the Galois
group is abelian (σ∘conj = conj∘σ) and the H-sign squares away. ∎

**Corollaries.**
1. Per-program Galois-odd mass: [√2] Σ_Halt(C) =
   (Σ_Halt(C) − Σ_Halt(C♯)) / (2√2) over any finite prefix-free Halt
   set — the odd part is half the mass gap to the twisted shadow.
   This is independently testable: run the twisted machine and diff
   (a ~20-line qeval variant; cross-check instrument if wanted).
2. The achievable-success-mass set is σ-closed up to size overhead:
   Z = T⁴ makes the twist realizable in-language (bijective trees,
   relabeled traces).
3. **Limits.** σ does not extend to arbitrary real limits; for
   unbounded trees define the twist asymmetry directly,
   Δ(C) = P_Halt(C) − P_Halt(C♯) (both monotone approximants
   converge). Δ is the correct "√2-scoped" object: Δ(C) = 0 is
   compatible with P_Halt(C) = 1/3.

## 3. The threshold zoo (measured)

| n  | artifact | structure |
|----|----------|-----------|
| 45 | witness45 | first Galois-odd leaves anywhere (β=512-qualified); H·T·H·meas, both arms Halt, (2±√2)/4, σ-paired, Σ = 1 |
| 48 | complement witness | same sandwich, K-plumbed at k=3 (eats cnot arg); σ-paired |
| 49 | +1-bit sibling | payload `new new` for `new t`; σ-paired |
| 50 | three plumbing variants | two payload extensions of the 48 frame (`new meas`, `new (λ.1)`) + a λ⁴ re-plumb discarding cnot; all σ-paired, (2±√2)/4 |
| 51 | wrapper orbit, 12 programs | prediction CONFIRMED: the pre-registered pair `(λx.x)·W45` / `λ.(W45 1)` + the same id/eta wraps at interior λ-depths, two K-plumbs, one `(1 1)`-argument echo of P53; 24 leaves, all σ-paired, fatediv 0 |
| 53 | P53 = λ⁵.(W (1 1)) | first UNPAIRED program: boolean applied to a 6-bit poison pill; Err at (2+√2)/4, Halt at (2−√2)/4. +8-bit split, minimal in the one-hole family |
| 85 | 1/3-program | rejection loop, semantic P_Halt = 1/3 ∉ Z[1/2]: non-dyadic RATIONAL limits are a distinct threshold (n_{Q∖D} ≤ 85), invisible to every finite-budget sweep; sub-53 existence open |

Dyadicity of the full population is measured through 51 (complement
√2 ≡ 0 exactly at 42..51, fatediv 0 everywhere; idiom ≡ 0 through
52, non-dyadic at exactly 53). The 51 row sharpens the §5 story:
six spare bits buy only frames *around* the sandwich — asymmetric
continuation demonstrably costs 8.

## 4. The theorem package (open)

- **T2 (sub-53 exclusion, finite trees).** No closed program of size
  ≤ 52 realizes a Galois-odd branch mass together with a downstream
  success effect exposing it; the minimum realization is P53 at 53.
  The 45+8 decomposition is evidence, not proof — β-duplication lets
  one source occurrence serve several runtime roles, so the honest
  bound needs quantitative subject reduction. Technology (r3-frozen):
  weighted abstract inhabitance over OPEN TRANSDUCERS (Call(i)
  edges; application substitutes for Call(1) + least fixed point;
  closed summaries + 0/1/ω demand are provably too coarse — use
  ordering vs gates matters). Trusted side checks constructor
  closure of a complete fixed-point table (L[lam Φ] ≤ 2 + L[Φ],
  L[app(Φ,Ψ)] ≤ 2 + L[Φ] + L[Ψ] over every abstract output);
  witness replay proves attainability only.
- **Stage 1a (oddmin): min CNOT-FREE odd-trace weight = 45.** The
  scope restriction is forced, and measured: min cnot-trace weight
  ∈ (22, 28] — the 28-bit λ⁴ witness `λ⁴.((1 (2 1)) (2 1))` fires a
  Cnot effect (verified; same-qubit cnot Errs before the effect, so
  two news are floor; ≤22 exhaustive has none) — so any monitor that
  latched accept on cnot would cap its provable minimum at 28.
  Validation layer live and r4-hardened (`src/odd.rs`): per-qubit
  may-set S ⊆ {X,Y,Z}×{even,odd}; H swaps X↔Z, T feeds X/Y both
  ways grade-flipped, meas accepts on (Z, odd); verdicts
  {Even, MayOdd, NeedsCnot} with cnot as out-of-scope, never accept;
  epoch-checked certificate replay rejects forged traces. Sound by
  the product-structure argument (a product of even Born factors is
  even, so an odd leaf forces an odd-readable measurement);
  no-CNOT separability makes the single distinguished lineage
  sound. Measured tight at small sizes: ≤22 exhaustive, zero
  MayOdd. DP build plan (r4/r4b-frozen): ordered Call edges (a
  multiset loses use-ordering), outer Knuth min-first + complete
  same-weight LFP saturation (substitution is zero-cost — the
  argument's weight was paid at the App), trusted/untrusted split
  `oddmin_ref` / `oddmin` search / checker-invokes-ref-only, and a
  GATED prototype: weights 16/20/24 first, stop if canonical
  summaries exceed ~10⁶. **Prototype built and gate-green
  (2026-08-04)**: witness45 composes to a 44-node summary and is
  accepted through the closed pipeline; exact vs qeval on all
  closed ≤22 (zero looseness); 96/751/6,346 summaries at
  W=16/20/24 in seconds. Four measured domain revisions
  (SPEC-ODDMIN §9: ★ observation fan, continuation-specialized
  frames, closure-env restriction, one-shot closed evaluation)
  await the r6 ruling; the open design hole is a component-scoped
  Top widening for Ω-style self-appliers (⊤ cells) before the
  ladder to 44.
- **Stage 1b (the cnot companion): Pauli-string path parity.** The
  T-count shortcut is backwards — a T acting on even-grade X/Y
  support is exactly how odd grade is created. The correct lemma
  (Codex r4, statement level): expand the unnormalized branch
  density operator in Pauli strings, grade coefficients by
  √2-parity; New introduces even I/Z, H and CNOT conjugate strings
  grade-flat (symplectic routing), T on local I/Z is grade-flat, T
  on local X/Y branches and toggles grade, projectors preserve
  grade. Hence: **a Galois-odd finite branch mass forces a
  projector-compatible Pauli path whose count of X/Y-active T
  transitions is odd.** Contrapositive: all-even path parity ⇒ even
  mass, WITH cnot in scope. Monitor form: may-sets of
  (x, z, g) ∈ F₂^{2n} × F₂. This is the lemma that removes stage
  1a's cnot-free premise; source T-count alone can never decide it
  because H/CNOT routing determines each T's local letter.
- **T3 (infinite-tree control).** Below 53, every program has
  Δ(C) = 0 — the only piece that can discharge the β-insensitive
  unknown bracket (finite-tree theorems never do). Scoped to √2:
  rational non-dyadic limits are a separate threshold (§3, 85-bit
  upper bound) and a separate minimization problem.

## 5. Why the pattern held (informal summary)

Below 45 the wire grammar cannot afford the H–odd-T–H–meas sandwich
at all, so every Born factor is even and every mass dyadic. From 45
to 52 (measured; T2's claim) the sandwich exists but every affordable
continuation treats the two σ-conjugate arms identically — the
Galois twist maps each program's tree to itself with conjugate
masses, and the halting set is twist-invariant, so odd parts cancel
program-by-program. At 53, eight bits buy the cheapest asymmetric
continuation (apply the boolean to a poison pill; Err one arm), the
twist-invariance of fates breaks, and Σ_success leaves Z[1/2]. The
campaign's remaining sweeps (51–53) test exactly this story's
complement predictions.
