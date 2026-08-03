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

## 2026-08-03 — qBLC S2: KN-store fast path + the M^(1) operator census

The fast path built, lockstep-verified, and driven through the first
operator census, one session after S1.

- **`src/qkn.rs` — the KN-store machine**: vm.rs's defunctionalized
  Crégut pattern (flat u32 nodes, explicit frame stack, append-only
  env arena) extended with Prim/Handle node species, a store hook at
  primitive application, and copy-on-fork at `meas` (fork clones only
  the frame stack + store; env arena and node pool are append-only
  and shared across branches). Store effects are qvm's own methods —
  one implementation, so amplitudes compare bit-identically. The
  design subtlety that would sink a naive port: when a primitive's
  argument turns out NEUTRAL (rigid head), neutrality propagates
  through the whole contiguous run of pending primitive frames at
  once (`h (cnot x M)` with x rigid leaves both prims symbolic and M
  a plain normalization job) — so a rigid arrival converts the entire
  spine-context run (Arg→Norm, Cnot1→Norm on its held second
  argument, Prim1/Cnot2→Skip) before readback, and species checks
  fire only at *value* arrival. Caught at design time, pinned as test
  `neutral_propagates_through_prim_frames`.
- **Lockstep verification**: identical leaf sequences — fate
  including the full store, exact mass, contraction count, leaf
  order — over the whole ≤24-bit population at two signature orders,
  plus tiny-β boundary mirrors (β ∈ {1,3,8,64}: qvm performs the
  β-th contraction then declares Unknown at the next check; the
  machine reproduces the off-by-one exactly), branch-capacity and
  qubit-capacity mirrors. Zero divergences, first compile. `Leaf`
  gained a `steps` field for this; Store/Fate/Leaf gained PartialEq;
  qvm semantics untouched.
- **Measured speed**: bulk-row throughput ~7.7M programs/s (n=23:
  4,405 programs in 570 µs) ≈ 200× the naive core; full-sweep
  aggregate 416k programs/s at ≤36 — wall is dominated by the
  unknowns tail, each burning the full β budget at ~2k transitions
  per contraction. β-sensitivity measured: ×16 β (65536) resolves
  ZERO of the ≤28 unknowns at 50× the wall — β=4096 is the right
  canonical budget; the unknown column is a genuine frontier, like
  the classical census.
- **`src/bin/qcensus.rs` — S2 canonical run** (`qcensus_table36.txt`,
  spec-v0 output convention: live store at Halt): 24,325,850 programs
  (4..=36 bits), 24,470,544 leaves, 58 s wall on 18 threads.
  β=4096, trans=2²⁶ (measured max 8.4M — 8× headroom), qubits 12
  (max seen 2), branches 4096 (max seen 6). Mass conservation
  (Σ leaf masses = 1 exactly) asserted per program across the whole
  sweep — zero violations, zero ring overflows. Ω_{success,≤24}
  reconfirms the pilot's 46757/2²⁴ through an independent engine.
- **The numbers**: Ω_{success,≤36} = 105268717/2³⁵ ≈ 0.0030637,
  bracket upper +unk = 0.0030789; Err mass 0.1204 (14.85M species,
  3.58M handle-applied; zero stale/retired/same-qubit — clone-death
  needs the cnot pair, which first HALTS at 33 bits). Sectors:
  Tr M^(0) = 0.00239 (1.77M halts), Tr M^(1) = 0.000673 (310k),
  Tr M^(2) = 27/2³⁵ ≈ 7.9e-10 (29 halts — the k=2 sector OPENS at
  n=33 exactly as predicted: `cnot (new X) (new Y)` costs 33 bits;
  all still |00⟩, first entangled halt needs 41).
- **M^(1) structure**: hermitian exactly, positive definite (det
  sign +1, exact via √2-aligned numerator comparison — the naive
  product exceeds K_CAP), eigenvalues ≈ 6.733e-4 and 3.78e-8.
  Off-diagonal (4973, 0, −8, −220)/√2⁷⁴ — genuinely complex once
  `t (h (new X))` fits (n=30). State ranking ⟨ψ|M^(1)|ψ⟩:
  |0⟩ ≫ |+⟩ > T|+⟩ > TH₋ > |−⟩ ≫ |1⟩ — the census prefers phase
  alignment with the |+⟩-heavy off-diagonal; |1⟩ mass is pure
  h-leakage (5201/2³⁷).
- **Milestone separation (corrects an S1 conjecture)**: fate
  divergence and Ω-irrationality do NOT arrive together. First
  fate-divergent program at 22 bits — λλλ. (2 (1 1)) 2 =
  `((meas (new new)) meas cnot) t`: measuring a fresh |0⟩ forks into
  outcome-0 (mass 1, dies Species at `meas t`) and outcome-1 (mass
  EXACTLY 0, halts as the undersaturated normal form `cnot t`).
  18,479 fate-divergent programs by ≤36; every halt mass still
  dyadic — divergent fates ride zero-mass or dyadic branches.
  Irrationality needs a measured qubit whose outcome weights are
  non-dyadic, i.e. the h·t·h sandwich: explicit witness
  `meas (h (t (h (new X))))` at 45 bits (5-λ form; trailing-
  application compressions plausibly reach the high 30s). Measured:
  zero non-dyadic halt leaves through n=36. The exact threshold is
  an open mini-search.
- Full suite green (62 lib + all integration; classical engines and
  census untouched). Open per spec: the output-convention question
  is still marked decide-before-S2 — this run is v0
  (whole-live-store, the convention M_Fock is defined on); a
  convention change costs one ~1-min rerun.

## 2026-08-03 — naming harmonized; overnight continuation begins

a9's convention, now standing: **a quantum file is its classical
counterpart's name with `q` prefixed.** So the naive reference
evaluator `qvm.rs` → `qeval.rs` (analog of `eval.rs`), and the
KN-store fast machine `qkn.rs` → `qvm.rs` (analog of `vm.rs`) —
earlier ledger entries use the old names, true as written. Bins were
already conformant (`qcensus`, `qpilot`). README gained the quantum
pillar (section, layout, roadmap — it had none of it); docs now fully
current. Full suite green post-rename. a9 to bed; overnight
authorization: chase the pillar as far as it goes.

## 2026-08-03 overnight — S3 core: the operator census at classical depth

The ≤41 canonical run — the full 526,039,969-program population, the
classical census's exact range — through the fast path in 29.8 min
(`qcensus_table41.txt`, table36 superseded to git history). Mass
conservation held across all 529,359,246 leaves; zero ring overflows;
4× transition headroom (max 16.8M / 2²⁶ cap).

- **Ω_{success,≤41} = 3424188513/2⁴⁰ ≈ 0.003114281310445**, bracket
  upper 0.003131 (+1,619,650 unknowns' mass — the qBLC frontier).
  Err mass 0.1210.
- **Entanglement enters at exactly n=41** as predicted
  (`cnot (h (new X)) (new Y)` = Bell Φ⁺, 41 bits on the nose).
  2-qubit ranking: |00⟩ ≫ Φ⁺ > Φ⁻ > |++⟩ ≫ basis-flipped states,
  the Φ⁺/Φ⁻ gap exactly 2·M²[0][3] = 6/2⁴³. M^(2) is fully populated
  (16/16 nonzero — fork-collapsed branches put mass into coherences
  cheaper than pure unitary constructions do). Sectors: k=2 opened
  at 33 (1,462 halts), k=3 by 41 (20 halts), k≥4 empty.
- **The irrationality structure sharpened**: every halt MASS through
  n=41 is dyadic (zero non-dyadic leaves in 43.66M halts), yet
  M^(1)'s entries are already irrational — e.g. M¹[1][1] =
  (−9 + 105858ω − 105858ω³)/√2⁸³. The √2-parts live in how mass
  splits between |0⟩ and |1⟩ (h·t·h states from n=34) and cancel
  exactly in every trace. Operator geometry goes irrational before
  any scalar does.
- **Two one-in-526M firsts at n=41**: the pillar's first clone-death
  Err (SameQubit — err split [403,406,440 species / 80,676,647
  handle-applied / 0 / 0 / 1]) and its first capacity fate (one
  Qubits cap — a new-pump exceeding 12 live within β=4096). Max
  branch tree 1,364 leaves; 470,289 fate-divergent programs; max
  live 3.
- Harness additions, all lockstep-green: M^(2) 4×4 exact accumulator
  + Bell rankings, `--min-n`, `--cond-k K` (Object B mode: programs
  run as `p k̄ ⟨sig⟩` with a Church-numeral dimension — G_k
  approximant sweeps), qpilot ported to the fast machine (reproduces
  the frozen winner; ≤18 sanity shows the S1 h↔t mirror tie intact).
  Note: table41's header line predates the mode label (binary
  compiled mid-run); regenerating will say `[M_Fock]`.

## 2026-08-03 overnight, cont. — mirror-break at 28; G_k approximants

- **Pilot robustness at ≤28 (fast machine, 120 perms × 197,263
  programs): the frozen order `[h meas new cnot t]` remains the
  winner — and the h↔t mirror tie BREAKS, dyadically.** The mirror
  pair differs by exactly 1/2²⁹ with identical fate counts
  (17,567/180,231/406 both): one 28-bit program's measured qubit is
  |+⟩ under the h-order (P(halt-branch) = ½) and |0⟩ under the
  t-order (P = 0 for the same branch). Third rank now distinct
  ([meas h new cnot t]). So the S1 conjecture's milestones fully
  separate: fate-divergence (22) < mirror-break (≤28, dyadic) <
  irrationality (>41; hunt running). Spec Open question updated.
- **G_1, G_2 approximants at ≤36** (`--cond-k`, scratchpad
  g1_36/g2_36): G_1 Ω_success = 81504605/2³⁶ ≈ 0.001186, 1-qubit
  sector Tr = 29209703/2³⁷ ≈ 2.125e-4, matrix PD with the same
  |0⟩-dominant shape as M^(1); eyeball sandwich ratio M^(1)|≤36 vs
  G_1|≤36 spans ~3.2 (|0⟩ weight) to ~4.2 (|1⟩/off-diag) — exact
  generalized-eigenvalue probe at wrap-up. G_2's dimension-2 sector
  holds only 9 halts at ≤36 — Object B approximants are early at
  this depth; deeper G_2 needs the ≤41-scale run.

## 2026-08-03 overnight, close — the dyadicity threshold: n = 45, tight

The hunt swept 42..45 exhaustively at β=512/trans=2²⁰ (witnesses are
shallow halters; caveat: a sub-45 witness needing >512 contractions
would be missed — none plausible). 5.8B programs in ~22 min total at
~4.4M programs/s aggregate:

- n=42: 452,574,468 programs — clean (103 s)
- n=43: 840,914,719 — clean (187 s)
- n=44: 1,573,331,752 — clean (362 s)
- n=45: 2,933,097,201 — **2 non-dyadic halt leaves** (652 s)

The two leaves are BOTH branches of one program:
`000000000001111100111111001100111111001111010` =
**λ⁵. meas (h (t (h (new t))))** — the hand-predicted h·t·h sandwich
witness, found tight by exhaustion; the 45-bit construction bound was
exact, no compressed form exists. Branch masses (2+√2)/4 and
(2−√2)/4, both halting (church booleans are NFs, qubit retired) —
so their sum is 1 and the program's Ω contribution is a dyadic 2⁻⁴⁵:
**Ω_success remains dyadic through 45.** The full picture, all
measured: irrationality invades in strict layers, each cancelling
one level up — operator interior (n=34: M^(1) diagonal splits) →
individual leaf masses (n=45 exactly) → the scalar Ω, which needs
the sandwich PLUS fate-divergent branches (bool applied to
fate-differing continuations, ~low 50s; beyond sweep reach, open).
Witness pinned cross-engine as `first_nondyadic_witness_at_45`
(63rd test; suite green).

Sandwich probe (display-grade f64, cutoff approximants): the
generalized spectrum of (M^(1)|≤36, G_1|≤36) is **[3.168, 4.171]** —
M^(1) sits between 3.17·G_1 and 4.17·G_1 in the Loewner order at
this depth. Both constants O(1), ratio 1.32: the two target objects
are near-proportional at census depth — the first numeric
instantiation of the sandwich. (G_2's dimension-2 sector holds only
9 halts at ≤36; deeper conditioning runs are future work.)

Machine left clean; all work committed and pushed.
