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
- The current certified frontier is `data/classical/unknowns.txt`: 4,235
  terms after removing the certificate kills.
- The finite-range plain halting mass is
  `Ω|≤41 ∈ [0.124105086764, 0.124105092919]`. Exact base fractions are
  in `data/classical/solomonoff.txt`; the tightened upper endpoint also
  accounts for certified divergers removed from the raw unknown mass.

### Divergence certificates and Lean

- `data/certificates/ratchet_kills.tsv` contains 297 checked kills:
  214 Ratchet, 34 HeadTowerRatchet, 39 SelectorRatchet, and ten rigid-head
  argument variants.
- Every kill is replayed at four times the discovery budgets and compiled to
  an individual Lean theorem in `lean/Certs/`.
- `lake build Certs` checks all 297 `¬HasNormalForm` theorems and their wire
  identities in about two seconds. The development has no sorries and no
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

1. Implement PassengerDiagonalRatchet as a distinct v4 certificate class,
   using the assembly in `classical/certificates/specification.md` §8.
2. Derive the next selector/zfirst class from a concrete surviving trace.
   Do not promote a `blam cert diag` bucket into a class without an exemplar
   and a finite recurrence.
3. Leave Drift gated until an exemplar exposes a finite generator
   `R_(n+1) = G[R_n]`; an unconstrained family is not a certificate.
4. Raise `census --rescue` before n=42. The largest successful n=41 rescue
   used 9,457,564 of 10⁷ β-contractions, only 1.06× headroom.
5. Formalize prefix-freeness and Kraft accounting from
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
  order itself is `quantum::sig::FROZEN` with an order-pinning test.

Escalation-lane docket, in order:

1. Run a deterministic source-size-stratified sample of the 619,466
   capouts and let it aim the next instrument: size-bound growers go to
   the hole-parametric pattern-recurrence rung (design ratified,
   `quantum/escalation.md` rung 3); step-bound bounded-size terms justify
   another exact-cycle tier. The telemetry this needs is in place —
   `reason`, `steps`, and `high_water_bits` on every `CapOut`, plus the
   aggregate `capout split` line — so what is open is the sample and its
   analysis.
2. Build the canonical skeleton-kill manifest per the settled protocol
   (`quantum/escalation.md`): sorted-verdict-stream digest
   `3d89539b63d1…`, sorted-input digest `1ba28e2ffaf9…`, Div provenance
   split, per-size verdict aggregates, exact masses and bracket
   fractions, and the 37 residual-Unknown provenance rows.
3. Rungs 4–5 for the hole-demanded residue: reference-configuration cycle
   detection between measurements, then the E∞ universal-safety
   certificate calculus (design ratified, `quantum/escalation.md`).
4. If wholesale promotion of the discovery engine is wanted, repair the
   bot_free/simplify uniformity argument (counterexample on record) or
   supersede it with the pattern-recurrence checker.

### Signature-universe exploration (planned)

The engine is ready (parametric signatures, alternate-universe lockstep,
`--sig`, checkpointed sweeps); the campaign — how the 34/45/53
irrationality thresholds and Ω_success move across signature permutations,
subsets, and extended gate sets, hunting configurations that minimize the
thresholds — is queued behind the escalation lane. A re-canonicalization
decision, if a strongly better universe appears, is a9's call.

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
- closed-slice summary counts are 96, 743, 6,271, 18,812, and 57,324 at
  W=16, 20, 24, 26, and 28; closed-acceptance top counts are 0, 3, 37, 149,
  and 555 respectively, with splice-level top at 0, 0, 0, 2, and 8; the
  W=24 run takes about one second and W=28 about 13 seconds
  (2026-08-07, post-optimization); and
- measured growth is about 1.74× per weight unit, projecting the
  million-summary stop near W≈33.

Next steps, in order:

1. BindId alpha-normalization, weak-epsilon canonicalization, and canonical
   port renumbering;
2. probe W=30 (26 and 28 are measured above);
3. add a simulation-preorder antichain after proving constructor
   monotonicity;
4. add the general component-scoped post-fixpoint with ScopeId origins and a
   trusted checker that verifies only the post-fixpoint; and
5. add search-side pruning for the ladder to 44.

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
- Crate version: the `Cargo.toml` version is v2.0.0 on dev (the reshape is
  breaking at both the library and CLI surface); the crates.io release is
  v1.0.1 until a9 publishes. The release pipeline arms only on a main push
  whose CI run succeeded, at the exact CI-validated SHA; dev never arms it.
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
