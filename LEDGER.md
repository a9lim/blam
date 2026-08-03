# Lab ledger

Periodically refreshed running record of this project's sessions — what
was done, what was measured, what went wrong — newest entry at the end.
When the file grows long it gets compacted; git history holds whatever
is trimmed.

## 2026-08-02 — docs made live-state; superseded data purged

Repo-wide documentation pass following a9's ledger compaction: every
markdown doc now describes the current state, with history living in
git rather than in the tree.

- **Purged 32 tracked files** (all recoverable from git history):
  superseded census tables (`census_full{,2,3,4}.txt`, dump/tail),
  frontier generations v2/v7 and their precursors
  (`unknown_seeds`, `unknowns_all`), the 42M-capacity adjudication
  inputs/outputs (`seeds_*`, `frontier_*`), `fuelcheck_65536.txt`,
  the 4..40 solomonoff files, one-off bench results +
  `bench_split.sh` (conclusions live in DESIGN.md; `bench.sh` kept
  as the reusable ablation harness), the stale root `Blc.lean`
  (subset of `lean/Blc.lean`), the dead Python probes
  `search_{var,abs}.py` (not rerunnable, superseded by
  slotsearch.rs), and the v2-era `classify.csv` (regenerable via
  tracescan; `classify41.csv` kept — still the live n=41 map).
  Root data is now exactly the canonical four: `census_full5.txt`,
  `unknowns_v8.txt`, `solomonoff_41.txt`, `solomonoff_table41.txt`.
  Verified before deleting: `census_full4`'s count columns are
  bit-identical to `census_full5`'s 4..40 rows (only timing noise
  differs), and no test or tool reads any purged file.
- **Code defaults updated**: `certsearch` and the `tracescan` usage
  header pointed at `unknowns_v2.txt` — now `unknowns_v8.txt`.
- **DESIGN.md** rewritten as architecture + current measurements
  (dated run narratives dropped; the work-meter lesson, ablation
  numbers, frontier-saturation and BB.txt cross-match conclusions
  kept as live facts).
- **SPEC.md**: the review log (§8) moved to git history; in its
  place §8 now specs the v4 classes — the full PassengerDiagonal
  assembly (OPEN/UNWRAP/DROP/SEED, rank step, diagonal descent =
  UNWRAP twice, n=0 exceptional cycle) and the drift generator gate,
  distilled from Codex's round-ten reply so the repo no longer
  depends on a local gaslamp job file. AGENTS.md docket now points
  at SPEC §8.
- **CLASSIFY.md** rewritten as the current candidate map: corrected
  readings only (no strikethrough archaeology), instruments + gates,
  both measured maps with provenance (4..40 base map 2026-07-31,
  n=41 residue 2026-08-01 with the 34 since-killed noted), family
  census with exemplars, the bucket-≠-class caveat up top. The
  ~500 lines of per-class trace dumps went to git history.
- **Interp docs**: DESIGN_NOTES ending was stale ("slot searches
  remain open" — they ran; all three slots certified optimal);
  SEARCH_SPEC reframed with the parametric contract marked
  implemented and the contextual lane as the open route.
- README/AGENTS re-pointed at canonical files only; attribution and
  ledger descriptions updated for the compaction convention.
- `cargo test --release` green post-changes.

## 2026-08-02 — qBLC pillar: survey, spec, two-round ratification

The quantum pillar went from idea to ratified spec in one day.

- **Literature survey** (three-agent web sweep) landed in
  `ref/QUANTUM_AIT.md` (untracked): QTM computability/halting, the
  three quantum-K definitions, Gács's universal semi-density matrix,
  quantum Kraft, quantum λ-calculi. Verified negatives: no quantum
  busy-beaver literature, no BLC-style wire format for quantum terms.
- **DESIGN-QBLC.md** written (second core pillar; DESIGN.md renamed
  DESIGN-BLC.md for symmetry). Target: the first concrete
  approximations to Gács's universal matrix, as an operator-valued
  census.
- **Codex round 1 (gaslamp `blc-qblc`, REJECT)**: killed rev 1's
  conflation of the trace-bounded census object with Gács's
  dimension-conditioned family (σ_k = I/2^k forces any uniform
  domination constant to 0 against a global Kraft budget); killed the
  finite-sum extension of the rank-1 domination lemma (½I dominates
  every qubit direction); forced unnormalized branch vectors
  (post-measurement normalization escapes ℤ[ω]/√2^k — 2/√3
  counterexample); killed "source size bounds live qubits" (loops
  pump `new`); demanded CP-instrument terminology, branch-local
  stores, countable branch trees, Err-before-effect. Confirmed the
  Church-pair cnot and epoch model.
- **Codex round 2 (CHANGE; S1 greenlit)**: killed the A/B =× identity
  (wrappers give only c·m(k)·G_k ⪯ M^(k) ⪯ C·G_k; classical chain
  rule needs (n,K(n))-conditioning); killed the home-class conjecture
  as stated via a cross-sector-coherence counterexample — M_Fock is
  number-superselected, class restricted to graded families;
  RATIFIED the padding route for the uniform conditional simulation
  theorem with explicit δ = ε/2^k (runtime, not description length,
  absorbs the dimension dependence); stratified ring status (finite
  approximants in-ring, limits escape — ⅓ from a coin loop; census
  output = certified Loewner brackets); vv† sole-contribution
  invariant (no separate weight factor — double-count hazard); pilot
  functional must be predeclared (each signature permutation is a
  different machine — "measured frequency" is circular). Adopted:
  maximize Ω_{success,≤N}, lexicographic tie-break.
- **Spec made live-state** (this discipline): round narration lives
  here, DESIGN-QBLC.md states the ratified design flat. AGENTS.md
  docket updated; S1 (naive reference evaluator + 120-permutation
  signature pilot) cleared to build.

## 2026-08-02 — qBLC S1: reference evaluator landed, signature frozen

First Rust of the quantum pillar, same session as ratification.

- **`src/dw.rs`**: exact Clifford+T amplitudes in Z[ω]/√2^k — four
  checked-i128 coefficients + √2-exponent, K_CAP=128, overflow is a
  Capacity fate. Ring identities unit-tested (ω⁸=1, (ω−ω³)²=2, exact
  sign of a+b√2 via the a²vs2b² trick).
- **`src/qvm.rs`**: naive small-step normal-order evaluator over
  terms + primitives + handles, per DESIGN-QBLC.md v0: species-blind
  `new`, left-to-right WHNF primitive args, Err-before-effect,
  epoch-atomic cnot with Church-pair return, branch-local stores,
  unnormalized vectors (vv† sole mass). Differential-tested against
  eval.rs on all prim-free closed terms ≤16 bits; sanity vectors:
  coin-flip mass ½+½, Bell state amplitudes exact, (2±√2)/4
  measurement weights exact, stale-epoch and same-qubit Err via the
  Church-pair path. Two lessons mid-build: (1) under call-by-name a
  β-substituted preparation DUPLICATES AS A RECIPE (two independent
  qubits) — handle values only ever share through the cnot pair, so
  clone-Errs are rarer than naively expected (pinned as test
  `cbn_duplicates_recipes_not_states`); (2) cnot check order matters
  for Err telemetry — epoch validity before coincidence.
- **`src/bin/qpilot.rs` — the signature pilot, predeclared
  functional**: all 120 permutations × 19,048 programs (4..=24 bits),
  61 s wall on 18 threads, exact accumulation throughout.
  **Winner, now frozen: `p h meas new cnot t`**, Ω_{success,≤24} =
  46757/2^24 ≈ 0.0027869 (leaves: 1,835 halt / 17,265 err / 34
  unknown / 0 capacity). Findings: (a) every permutation's ranking
  row ties EXACTLY with its h↔t mirror, and (b) every Ω_{success,≤24}
  is dyadic despite irrational leaf weights existing — both
  observations are equivalent to "no ≤24-bit program both creates
  superposition and sends the two outcomes to different fates"; both
  should break at larger N, and the first fate-divergent measurement
  is where Ω_success goes irrational (now an Open question in the
  spec). (c) The winner hands `h` to the FIRST argument — the
  short-prefix population beats deep-idiom cheapness, killing the
  frequency intuition the predeclared functional replaced.
- `cargo test --release` fully green (52 lib + all classical
  integration suites; classical engines untouched). Pilot raw table
  regenerable: `qpilot --max-n 24`.
