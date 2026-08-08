# Current state and open docket

This is the single authority for blam's moving research state: canonical
measurements, proof boundaries, and ordered next work. The root `README.md`
is the stable public map; domain documents state durable contracts; the
monthly ledger preserves chronology.

Last updated: 2026-08-07.

## Classical state

### Census and algorithmic probability

- `data/classical/census_table.txt` covers every closed BLC term from 4
  through 41 bits: 526,039,969 programs. The 4..40 prefix takes about six
  minutes wall on the M5 Max (two 2026-08-07 runs under the two-phase group
  scheduler, 323.6 s and 397.9 s, ~1,980 s user each — wall tracks ambient
  load, user does not). The full 4..41 range has not been re-timed since the
  scheduler landed, so its last measured 16.5 minutes stands as an upper
  bound. The KN machine's single-thread throughput stands at its last
  measurement, about 166M β-contractions per second on the M5 Max (the
  figure README cites; this line is its authority). The 2026-08-07
  regeneration under the r7 engine (no-whnf head memo,
  partition-independent witness tie-break, sorted unknown order) is
  fate-invariant at every size:
  halt/diverge/unknown, max|nf|, and β totals bit-identical; only the
  escalation-path distribution, witness lines, and ordering moved. Census
  runs are group-checkpointed and delta-runnable (`--checkpoint`,
  `--memo-in/out`; engine facts in AGENTS.md).
- BBλ(41) is at least 1,074,266,118 normal-form bits. The n=32 row carries
  exactly one unknown, and it is a certified diverger: a Ratchet kill in
  `data/certificates/ratchet_kills.tsv`, kernel-checked as
  `lean/Certs/Size32.lean`. So BBλ(32) is settled modulo the certificate
  layer, not by the ladder alone, and the certified frontier below starts
  at 33 bits.
- The current certified frontier is `data/classical/unknowns.txt`: 4,227
  terms after removing the certificate kills (the eight
  PassengerDiagonalRatchet kills landed 2026-08-08; subtraction
  identity 4,532 raw = 4,227 + 305 verified on regen).
- The finite-range plain halting mass is
  `Ω|≤41 ∈ [0.124105086764, 0.124105092895]`. Exact base fractions are
  in `data/classical/solomonoff.txt`; the tightened upper endpoint also
  accounts for certified divergers removed from the raw unknown mass
  (305 kills, 14,730,395,648 × 2⁻⁶⁴ exactly; the 2026-08-08 trim
  removed 53/2⁴¹).

### Divergence certificates and Lean

- `data/certificates/ratchet_kills.tsv` contains 305 checked kills:
  214 Ratchet, 34 HeadTowerRatchet, 39 SelectorRatchet, 8
  PassengerDiagonalRatchet (2026-08-08, sizes 36/38/39/40×4/41 — all
  one engine family, the §8.1 exemplar's 26-bit head under wraps and
  trailing args), and ten rigid-head argument variants.
- Every kill is replayed at four times the discovery budgets and compiled to
  an individual Lean theorem in `lean/Certs/`.
- `lake build Certs` checks all 305 `¬HasNormalForm` theorems and their wire
  identities in a few seconds. The development has no sorries and no
  mathlib dependency; its only reported axioms are `propext` and
  `Quot.sound`.
- `classical::certificate` is the trusted checker layer. `blam cert search`
  is untrusted discovery, and `blam cert lean` generates `lean/Certs/`;
  generated files are not edited by hand.
- `blam cert diag` buckets are abort fingerprints for one proposed candidate,
  not semantic class boundaries. Class counts inferred from those buckets are
  lower bounds only.

### Self-interpreter

- The 170-bit classical self-interpreter is locally optimal across the three
  exhaustive parametric slot searches. VAR, ABS, and APP each have the
  reference fragment as their unique survivor, with no residual unknowns.
- Fixpoint shape, continuation timing, environment-cell variants, and binder
  placement have also been searched as described in
  `classical/self-interpreter/design.md`.
- The remaining mechanical improvement lane is the contextual search in
  `classical/self-interpreter/search-spec.md` §2. A contextual survivor is a
  hypothesis until it is spliced into the full interpreter and passes the
  entire semantic battery.

### Classical docket

(PassengerDiagonalRatchet shipped 2026-08-08 as the v4 class — checker,
discovery rung, Lean assembly `lean/Blc/Passenger.lean`, eight kills
through the full recert+kernel pipeline; Codex-reviewed. Spec §8.1 is
marked implemented.)

1. Derive the next selector/zfirst class from a concrete surviving trace.
   Do not promote a `blam cert diag` bucket into a class without an exemplar
   and a finite recurrence.
2. Leave Drift gated until an exemplar exposes a finite generator
   `R_(n+1) = G[R_n]`; an unconstrained family is not a certificate.
3. Raise `census --rescue` before n=42. The largest successful n=41 rescue
   used 9,457,564 of 10⁷ β-contractions, only 1.06× headroom.
4. Formalize prefix-freeness and Kraft accounting from
   `lean/Blc/Wire.lean`, then derive machine-checked K upper bounds.

## Quantum state

### Operator census

- `data/quantum/census_table.txt` covers the full 4..41 population at
  β=4096, transitions=2²⁶, 12 live qubits, and 4,096 branches. The run
  takes about 30 minutes.
- `Ω_success,≤41 = 3424188513 / 2⁴⁰` exactly.
- The one-qubit operator is positive definite. The current named-state
  ranking is `|0⟩ ≫ |+⟩ > T|+⟩ > |−⟩ ≫ |1⟩`.
- The first entangled successful outputs occur at exactly 41 bits. In the
  two-qubit ranking, `|00⟩ ≫ Φ⁺ > Φ⁻ > |++⟩`.
- The 1,619,650 Unknown leaves sit on 1,619,647 programs. Budget was never
  the frontier: 16× β resolves none, and 16× transitions resolve none of
  the ≤26-bit population.
- The trusted skeleton checker (`quantum::certificate`, driven by `blam q
  skeleton`; ladder in `docs/quantum/escalation.md`) has adjudicated the
  full frontier:
  **815,700 programs are proven divergers** — 712,299 by exact recurrence
  of the hole-inert reduction chain, 103,401 by hole-free residuals the
  classical engines kill (58,373 oracle, 45,028 bb; split from Codex's
  independent recount, to be re-pinned by the manifest regeneration) —
  contributing exactly zero to Ω_success. Killed mass 27,958,835/2⁴¹ is
  74.45% of the unknown mass; the bracket upper endpoint tightens from
  860,741,351/2³⁸ ≈ 0.0031313588 to 6,857,971,973/2⁴¹ ≈ 0.0031186446
  (3.91× narrower). Verdict counts, exact masses, and the sorted-stream
  digests are double-computed (blam and Codex independently agree).
  Zero slow halters surfaced. Residue: 184,444 hole-demanded (genuinely
  quantum), 619,466 tier-1 capouts, and 37 hole-free residuals undecided
  classically. Those 37 residuals are 74..11,978 bits — all outside the
  enumerated ≤41 range (β-duplication grows encodings), so they are new
  compactly-generated hard classical terms, not frontier members; 28 of
  their *source programs* are verbatim classical-frontier members. The
  tier-2 capout sweep is stopped by design: a 41,843-verdict sample was
  100% capout, so a blind full sweep is low-information. `CapOut` carries
  the fired cap (`reason: Steps | Size`), the step count, and the high-water
  size in bits, and `blam q skeleton` reports the aggregate split on stderr,
  so the next move is a stratified sample rather than a blind sweep. The
  census table itself is unchanged — kills are an adjudication layer above
  it; the canonical recording protocol is settled
  (`quantum/escalation.md`) and its manifest build is docket work.
- The signature is parametric end to end (`blam q census --sig`, exact
  S/X/Z gates): alternate universes are runnable, lockstep-verified, and
  deliberately labeled; canonical data stays on the frozen five. The frozen
  order itself is `quantum::sig::FROZEN` with an order-pinning test, and is
  measurement-backed through size 34 (signature-universe section below).

Escalation docket items 1 and 2 closed 2026-08-08 (overnight run;
lockstep-verified with Codex on both):

- **The capout stratification is measured, on the full population** —
  `q skeleton --capout-telemetry` streams per-program
  reason/steps/high-water, so the docket's sample became a census for
  free. 619,466 capouts = 487,960 steps-bound (78.8%) + 131,506
  size-bound (21.2%); the size-bound share settles near 20–22% in the
  upper size tail (4..15% below n≈33). Size-bound growers breach the
  16,384-bit ceiling at median 102 steps. The steps-bound high-water
  distribution (median 3,850 bits, p99 15,898, max at the ceiling)
  already suggested hidden growers, and the tier-2 conversion sample
  proved it: every 10th steps-bound capout (48,796 programs,
  deterministic) rerun at `--steps 4096` gives **2 Loop conversions
  (both recur under 400 steps), 39,603 size-capouts (81.2% — growers
  that ran out of steps first), 9,191 still steps-bound**. Exact-cycle
  density ≈ 4×10⁻⁵: **another exact-cycle tier is refuted; the aimed
  instrument is the rung-3 hole-parametric pattern-recurrence checker,
  and its population is effectively the whole capout residue.** The
  two tier-2 loops are not in the canonical record (tier-1 caps pin
  it); they fall to rung 3 or a deliberate tier-2 protocol. The
  16×-steps sample cost 522 s wall / 8,705 s user — a full tier-2
  sweep would run ~1.5 h wall for ~20 expected kills of negligible
  mass, and is not scheduled.
- **The canonical manifest is installed**:
  `data/quantum/skeleton_manifest.txt` (built by
  `tools/skel_manifest.py`, regeneration commands inside). Both
  pinned digests reproduce byte-identically (`3d89539b63d1…` verdicts,
  `1ba28e2ffaf9…` input; LC_ALL=C sort — prefix-freeness makes
  full-line byte-lex equal bits order). The Div split is re-pinned
  from the driver's own stream (`via=` detail): 58,373 oracle /
  45,028 bb. Masses are leaf-mass accounted with the Unknown/Capacity
  split explicit (killed 27,958,835/2⁴¹; remaining Unknown
  9,594,946/2⁴¹; the census's single qubit-cap Capacity leaf 1/2⁴¹;
  bracket upper unchanged at 6,857,971,973/2⁴¹). All 37
  residual-Unknown provenance rows carry residual sizes (74..11,978
  bits), SHA-256 identities, and classical-frontier source membership
  (28/37). Killed-side exactness argument (kill ⇒ single branch ⇒
  program mass = leaf mass) is recorded in the tool and was
  independently confirmed.

Escalation-lane docket, in order:

1. Build the rung-3 hole-parametric pattern-recurrence checker (design
   ratified, `quantum/escalation.md` rung 3) — now the measured next
   instrument for the ~750k grower-dominated capout residue.
2. Rungs 4–5 for the hole-demanded residue: reference-configuration cycle
   detection between measurements, then the E∞ universal-safety
   certificate calculus (design ratified, `quantum/escalation.md`).
3. If wholesale promotion of the discovery engine is wanted, repair the
   bot_free/simplify uniformity argument (counterexample on record) or
   supersede it with the pattern-recurrence checker.

### Signature-universe exploration

Round 2 of the signature campaign ran 2026-08-07: 146 universes over sizes
4..=32, plus the top twelve permutations re-run to 34; 9,276 core-seconds.
Every run is `blam q census 4 32 --sig LIST --threads 1`, so the campaign is
regenerable from the tree without a driver. Harness check: the frozen-order
run is bit-identical to `data/quantum/census_table.txt` rows 4..32, and its
Ω_{success,≤24} is 46757/2²⁴ — the 2026-08-02 pilot's winning value. The
outputs are non-canonical by construction and are not carried in `data/`.

- **The frozen order stands, and its tie-break is now a measurement.** `h
  meas new cnot t` is the maximum of the 120 permutations at every depth
  measured (≤24, 26, 28, 30, 32, 34). In the 2026-08-02 pilot it won a
  *lexicographic* tie with its h↔t mirror `t meas new cnot h`; that tie
  breaks by
  measurement at N=28 and stays strict through 34, in the frozen order's
  favour (margin 309/2³⁵ ≈ 9.0e-9 at ≤34). The top ten are identical at
  ≤24, ≤32 and ≤34; 35 of the 120 move position in the tail, and distinct
  Ω values go 52 → 72 as degeneracies break. No re-canonicalization is
  indicated.
- **The set axis has no freedom.** `{new, meas, cnot, h, t}` is the *unique*
  minimal complete signature over the eight-gate alphabet: `new` is the only
  handle source, `cnot` the only two-qubit gate, `meas` the only branch, and
  among the unary gates dropping `t` leaves the finite single-qubit Clifford
  group while dropping `h` leaves a finite monomial group. `s`, `x`, `z` are
  λ-definable over the five (`s = λq. t (t q)`, `z = λq. s (s q)`,
  `x = λq. h (z (h q))`), so a superset buys bits, never power.
- **Ω_success is blind to the non-Clifford resource — it cannot rank sets,
  only orders.** `h meas new cnot s` — Clifford only, Gottesman–Knill
  simulable, *not* universal — scores Ω_{success,≤32} = 25810093/√2⁶⁶ with
  190460/1964964/5404 halt/err/unk leaves: the frozen five's numbers, exact
  tuple and every count. Total successful mass is a trace and therefore
  phase-blind, and `t`, `s`, `z` are all diagonal, so the functional cannot
  see which one occupies a slot; `s` and `z` are exactly interchangeable
  everywhere measured, and `x` (a permutation, not a phase) separates from
  them only through fate-split programs (12/2³² in one slot). `h` is the
  only primitive Ω_success resolves. Universality is therefore a design
  decision (`quantum/architecture.md` §7), not something this functional
  certified or could certify — a threshold-minimizing campaign on the set
  axis needs a different instrument.
- **Arity dominates content, about 4× per slot.** Best Ω_{success,≤32} by
  signature length: 4 slots 1.090e-2 (`h new cnot t`), 5 slots 3.005e-3
  (frozen), 6 slots 8.076e-4 (`h x meas new cnot t`), 7 slots 1.031e-4,
  8 slots 2.182e-5. The best six-gate universe loses to the *worst* of the
  120 five-gate permutations (8.076e-4 against 1.208e-3), so promoting a
  definable gate to a primitive never repays its signature slot. Within the
  six-gate universes the extra gate wants to be early: slots 1–2 beat slots
  5–6 by 1.45×, whichever gate it is. Cross-arity Ω comparisons measure the
  argument-count cost, not the gate set.
- No universe in the 146 has non-dyadic Ω at ≤32, so nothing here lowers the
  irrationality thresholds below the measured 34/45/53.

What remains open on this lane: the deeper permutation sweep (≤36 and
beyond), the witness extraction below, and — if the thresholds are still the
target — an instrument that is not Ω_success. A re-canonicalization
decision, if a strongly better universe ever appears, is a9's call.

### Irrationality and Galois structure

Three thresholds must remain distinct:

- 34 bits: shortest successful program whose output operator has an
  irrational entry;
- 45 bits: shortest five-lambda gate-idiom program with Galois-odd leaf
  masses; and
- 53 bits: shortest known program whose total successful mass is non-dyadic,
  via the fate-divergent witness P53.

The idiom-sector aggregate is dyadic through 52 and non-dyadic at 53. The
non-five-lambda complement has exact zero `√2` coefficient at every measured
size 42..51, with no fate-divergent program. The complement sweep is paused
at 51; n=52 and n=53 remain. The zero coefficient is measured cancellation,
not a theorem.

A fourth, weaker threshold sits below all three and must not be confused with
them: **27 bits, the shortest program that both creates a superposition and
sends the two measurement outcomes to different verdict classes** — the
dyadic-mass precursor of P53, which additionally needs *irrational* masses on
the split. It comes from the signature campaign above, as a mass-difference
argument rather than a witness in hand: swapping h↔t in a signature can only
move a program's total successful mass if that program's leaves span more
than one verdict class, since otherwise trace preservation gives the same
total either way; leaf counts are preserved because a T-measurement still
forks two leaves, one of mass 0. Measured, the h↔t mirror ties hold exactly
through n=26 and first break at n=27 (six of the 60 permutation pairs; four
more at 28, two at 29, 48 still tied at 32), while per-size halt/err/unk leaf
counts never differ for any pair at any size. The earliest break is exactly
2⁻²⁸ = ½·2⁻²⁷, i.e. one 27-bit program with half its mass changing class. On
the frozen order the same break is at 28. This retires the 2026-08-02
prediction that the mirror ties would break at larger N.

**The witness, `P27`, is in hand and the split is Halt/Err.** Batch
re-adjudication of all 47,146 closed 27-bit programs under `h new meas cnot
t` and its mirror finds *exactly one* mass difference and zero leaf-count
differences, confirming the mechanism directly rather than by aggregate:

```text
000000010110011110011101010   λa.λb.λc. c (a (b c)) c
```

Under `h new meas cnot t` it is `meas (h (new meas)) meas cnot t`: `new`
allocates on a junk argument, `h` superposes, and the measurement's Church
boolean selects the head of what remains — outcome 0 (true, by the inverted
polarity) selects `meas`, which is then applied to the primitive `t` and
raises `Err(Species)`; outcome 1 selects `cnot`, whose partial application is
a normal form and Halts with an empty live store. So the leaves are
`Err(Species)` and `Halt(live=0)` at ½ each, successful mass ½; under the
mirror the diagonal `t` gives outcome 0 the whole mass and successful mass 0.
Both readings are `blam q run`-confirmed. P27 is the minimal shape of the
phenomenon P53 needs: P53 additionally requires the split to carry irrational
masses, which costs the extra 26 bits.

The finite-trace Galois identity T1 is proved at paper level in
`quantum/galois.md`. The sub-53 exclusion T2, its CNOT-capable companion, and
the infinite-tree statement T3 remain open.

### Odd-sector abstract interpreter

Stage 1a asks for the minimum source weight of a closed, CNOT-free trace with
a Galois-odd leaf mass. The reference monitor and compositional DP are
`lab::odd` and `lab::oddmin`, driven by `blam q oddmin` (all behind the
`lab` feature); their current contract is
`quantum/oddmin.md`.

Current measurements:

- witness45 is accepted with a 44-node summary, while the 28-bit CNOT witness
  is rejected as out of scope;
- exact agreement with the reference evaluator (`quantum::reference`) holds
  on all 6,069 closed programs through 22 bits;
- the remaining 19 conservative cells are all concretely non-odd and arise
  from alpha-only port identity;
- splice-level top is zero through W=24 and first appears at W=25 (2 cells);
- closed-slice summary counts are 96, 743, 6,271, 18,812, 57,324, 177,713,
  558,377, and 984,707 at W=16, 20, 24, 26, 28, 30, 32, and 33;
  closed-acceptance top counts are 0, 3, 37, 149, 555, 2,176, 8,047, and
  17,173 respectively, with splice-level top at 0, 0, 0, 2, 8, 45, 216, and
  478; the W=24 run takes about one second, W=28 about 14 s, W=30 about
  31 s, W=32 about 116 s, and W=33 about 220 s (2026-08-07,
  post-optimization; every row is its own run — the depth ceiling
  `dmax(w) = (max_w − w)/2` makes a taller run's intermediate lines a
  different quantity);
- **acceptance is still zero at W=33**: no closed CNOT-free trace of source
  weight ≤33 carries a Galois-odd leaf mass, which is the stage-1a lower
  bound and the reason the ladder to 44 matters;
- **W=33 is the tallest completable run, and the ceiling is set mid-ladder.**
  W=34 aborts after 149 s at *weight 30*, whose slice reaches 1,005,363 —
  5.7× the 177,713 the same weight shows as the top of its own run. The stop
  rule reads every weight, and the taller depth ceiling makes mid-ladder
  slices the largest objects in a run, so the old "million-summary stop near
  W≈33" projected from the top-weight series and read the wrong one. Pruning
  for the ladder to 44 has to bite mid-ladder; and
- measured top-weight growth is about 1.76× per weight unit (3.10×, 3.14×,
  and 1.76× across 28→30, 30→32, and 32→33).

Next steps, in order:

1. BindId alpha-normalization, weak-epsilon canonicalization, and canonical
   port renumbering;
2. add a simulation-preorder antichain after proving constructor
   monotonicity;
3. add the general component-scoped post-fixpoint with ScopeId origins and a
   trusted checker that verifies only the post-fixpoint; and
4. add search-side pruning for the ladder to 44.

The handle-aliasing lemma is scoped to closed, pre-CNOT programs. CNOT's
Church pair reintroduces handles inside lambda values and belongs to stage
1b's Pauli-string path-parity analysis.

### Self-interpretation and bisimulation

- `E_q = intL I` is 176 bits. The six-bit adapter is minimal within the
  `intL` protocol; global optimality is open.
- Direct and interpreted runs agree at the effect-tree level on the complete
  measured population through 24 bits, including terminal fates, stores, and
  exact branch masses.
- `lean/Blc/Selfint.lean` kernel-pins `intL` and the 176-bit wrapper by wire
  identity and proves quote linearity.
- Parser correctness L1, selector correctness L2, weak-head preservation L3,
  readback collapse L4, and the divergence-sensitive bisimulation clauses
  B1–B5 remain proof obligations. Their exact statements are in
  `quantum/bisimulation.md`.
- The two-entry interpreter families have minimum 176. The remaining finite
  search lane is a joint root-and-knot context around the 150-bit core.

### Conditional family `G_k`

The conditional object is implemented by `blam q census --cond-k K` but has
not yet received its first canonical data generation. The next work is:

1. decide whether Object B retains the current whole-live-store output or
   defines a separate designated-output convention;
2. derive explicit bit constants for
   `c m(k) G_k ⪯ M^(k) ⪯ C G_k`; and
3. run canonical small-size `G_1` and `G_2` approximants, then measure
   `−log⟨ψ|G_k|ψ⟩` for named states.

The output choice is genuinely object-defining. A designated output restores
compositional discarding but must be specified and measured separately from
the whole-live-store operator census.

## Repository and release state

- The v2 shape is on `dev`: one `blam` binary in place of the thirteen
  driver bins, a three-layer library (`blc` substrate, symmetric `classical`
  and `quantum` pillars, `lab` behind a non-default feature), the halting
  ladder consolidated into `classical::ladder`, engine config carried as data
  on that path rather than through the environment, and `qpilot` deleted —
  the frozen signature order lives as `quantum::sig::FROZEN` plus an
  order-pinning test, and its pilot campaign in the ledger.
- Checkpoints are `blamckpt v4` and memo files use a shared tag-first codec.
  Both formats break their predecessors: any checkpoint or memo file from
  before the bump is invalid and must be regenerated. Nothing in `data/`
  uses either format, so the cost is recompute only.
- The census two-phase group scheduler measures 1.97× on a controlled
  sequential A/B at 4..38 (250.8 s → 127.0 s) and 2.24× with
  `--checkpoint --groups 64` (389.5 s → 174.0 s), with every canonical output
  bit-identical — including a 140,883-term survivor manifest, partition
  invariance across threads {1, 2, 18} × groups {1, 7, 64}, and resume after
  a SIGKILL mid-phase-B.
- **v2.0.0 is released** (2026-08-08): published to crates.io via trusted
  publishing, tagged, and GitHub-released from the CI-validated main SHA.
  The pipeline now triggers on the main push itself and its guard waits
  for CI success on the exact SHA before anything runs — crates.io
  rejects `workflow_run`-minted trusted-publishing tokens (measured,
  status 400), which the first armed run discovered; the invariant
  (publication never outruns the verification bar) is unchanged. dev
  never arms it.
- CI runs formatting, clippy with warnings denied, the release test suite in
  three feature shapes (`--all-features`, default, `--no-default-features`)
  on Ubuntu and macOS, `uni.rs` parity, the classical 4..32 census
  spot-check, all Lean certificates, and the `ref/AIT` additivity guard.
- `ref/AIT` is the a9lim/AIT fork at upstream plus one additive `uni.rs`
  commit. `contrib/ait-uni/` contains the portable source, parity harness, and
  upstream PR kit. No upstream pull request is currently open.

### Release risks

Known and accepted for v2, stated so nobody has to rediscover them:

- **`--memo-in` is a trusted semantic cache.** Its records assign fates to
  terms the run never adjudicates, so a forged or corrupt memo file can
  change census output. The checkpoint header's `sha256_16` of the memo file
  pins *which* file the records came from, not that its facts are true; only
  a memo file this engine wrote is safe to feed back.
- **Checkpoint flush is process-kill recovery, not power-loss durability.**
  Records are `write_all` plus `flush`, with no `sync_all` — a SIGKILL loses
  nothing, a power cut or kernel panic can leave the tail in the page cache.
  Torn tails are discarded on resume, so the failure mode is lost work, not
  wrong work.
- **Alternate signature universes and very large budgets carry less
  evidence.** The `--sig` S/X/Z universes are lockstep-verified but every
  canonical measurement is on the frozen five; likewise the ladder's
  verification history sits at the measured budgets, not at arbitrarily
  raised caps. Both are runnable and both are thinner ice.
- **The low-level arena APIs assume their preconditions.** `Pool`/`Node`
  (`classical::machine`, `quantum::machine`) take arena ids the caller is
  responsible for keeping valid, and the escalation entry points want closed,
  ⊥-free terms. These are documented preconditions, not checked ones: a
  violation panics at best.
