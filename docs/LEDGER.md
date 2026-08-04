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

## 2026-08-03 — project renamed to blam; root data names harmonized

`blc` is taken on crates.io (an active, unrelated BLC implementation,
30k downloads), so the crate needed a new name regardless; rather
than overload `qBLC` (which names the quantum pillar, not the
umbrella) the project is now **blam** — binary lambda machine.
Crate + lib paths, GitHub repo (`a9lim/blam`; old URLs redirect),
and the PR_KIT letter all updated. BLC-the-calculus keeps its name
everywhere: the DESIGN docs, `lean/Blc/`, `blcc.py`, `BLC_*` env
vars are about the language, not the project.

- Root data files now content-named like the quantum side (version
  counters were redundant with git-history-holds-generations):
  `census_full5.txt` → `census_table41.txt`, `unknowns_v8.txt` →
  `unknowns_41.txt`. Referents updated (README, AGENTS, DESIGN-BLC,
  CLASSIFY.md, the `certsearch` default path, the `tracescan` usage
  header); ledger history deliberately untouched.
- Cleanup pass found the tree already clean — the 2026-08-02 purge
  did the real work. Every suspected one-off (`loop32_trace.py`,
  `search_fix.py`, `classify41.csv`, the slotsearch logs) is
  referenced and load-bearing; kept. Only the empty `tmp/` dir went
  (now gitignored).
- Verification: `cargo test --release` fully green under the new
  crate name; census 4..36 rerun — closed/halt/diverge/unknown
  columns bit-identical to `census_table41.txt` at every size.

## 2026-08-03 — publish prep: CI, dev branch, ref/AIT submodule, crates packaging

Leadup to the upstream PR: the repo becomes publishable, and the PR
payload becomes a pinned, continuously-exercised artifact.

- **ref/AIT: gitignored clone → submodule.** a9 forked tromp/AIT
  (a9lim/AIT); one additive commit (c0831de) puts `uni.rs` at the
  fork root — exactly the tree the upstream PR ships. blam pins it
  as the `ref/AIT` submodule, so the conformance goldens now live at
  a reproducible SHA instead of upstream HEAD. `tools/uni/` keeps
  kit + parity harness, drops its interpreter copy; verify.sh
  compiles `ref/AIT/uni.rs`. Upstream carries no license file —
  README notes rights remain the author's; referenced, never
  vendored.
- **CI** (`.github/workflows/ci.yml`): fmt; clippy at -D warnings;
  release tests + uni parity on ubuntu/macos; census spot-check
  4..32 with n/closed/halt/diverge/unknown/escal/max|nf|/beta
  columns diffed against `census_table41.txt` (0.36 s locally);
  `lake build Certs` (elan pinned by lean-toolchain, cached);
  fork-additivity guard (`git diff upstream/master...HEAD` must be
  all-A). Dependabot weekly on actions + the two runtime crates.
- **Tree brought to the CI bar**: cargo fmt (18 files, mechanical);
  clippy fixes (is_multiple_of ×3, two while-let rewrites in the
  vm/qvm var readers, char-comparison) plus targeted allows (dw.rs
  ring method names, four 8-arg adjudicators); dead `church` helper
  dropped from tromp_vectors.
- **Verified after the changes**: full `cargo test --release` green
  (34 tests), verify.sh all vectors byte-identical from the
  submodule, census 4..32 spot-check bit-identical to the canonical
  table.
- **crates.io**: name `blam` free (sparse index 404); Cargo.toml
  gains rust-version 1.87, keywords/categories, readme, and an
  `include` allowlist — package = engine sources + README/LICENSE,
  27 files, ~112 KiB compressed, verified building in isolation.
  Publishing stays manual (a9 holds the token); CI-side publishing
  is a9's follow-up.
- **Repo surface**: README badges (CI/crates/license) + submodule
  instructions + fork/licensing notes; ten GitHub topics; dev
  branch created — work lands on dev, main stays green.
- **Pre-publish (same day)**: version 0.1.0 → 1.0.0; relicensed
  MIT → AGPL-3.0-or-later (canonical gnu.org text; SPDX in
  Cargo.toml; README badge/attribution and the PR letter's license
  line updated). Package re-verified at 1.0.0. a9 publishes.
- **Shipped + release automation (same day)**: a9 published blam
  1.0.0 to crates.io manually; v1.0.0 tagged at the exact published
  commit (0b50332) + GitHub release created. release.yml added in
  ogdoad's vein: version-bump-armed on main, guard probes
  crates.io/tag/release independently (self-resuming), publish via
  trusted publishing (OIDC, environment `crates-io` — a9 configures
  on crates.io), then tag + GH release. Born dormant: v1.0.0 already
  tagged.

## 2026-08-03 — qBLC self-interpretation measured: E_q = intL I, 176 bits

DESIGN-QBLC.md proof obligation 2, compiled and measured (both Codex
consults on record: thread `qblc-selfint`). The anticipated "signature
adapter + continuation wrapper" collapses to six bits: qBLC passes its
primitives by application, so a decoded program receives the signature
through ordinary β — HOAS makes the quantum extension of the classical
interpreter nearly free.

- **Construction**: `E_q = intL I` — the 170-bit interp-lab optimum
  applied to the identity continuation. Protocol `intL cont bits =
  cont (\env.parsed) unparsed` puts the unparsed tail in the environment
  slot; for closed programs the seed env is unreachable (lexical-depth
  invariant, Codex-verified; Tromp's own `uni = intL (\z.z omega)` leans
  on the same invariance with a divergent env). Quote: Church-pair list
  of the wire bits, FALSE tail; |⌜p⌝| = 14|p| + zeros(p) + 6 exactly
  (linear, NOT quadratic); |E_q ⌜p⌝| = 184 + 14|p| + zeros(p).
- **176 is tight within the protocol** (app 2 + intL 170 + minimal
  closed cont 4, and I is the unique 4-bit closed term). NOT claimed
  globally optimal: a two-entry/shared-knot specialized root is the one
  live search lane (Codex gut: 176 survives). Naive cont-fusion loses —
  one head contraction of E_q expands to 328 bits.
- **Verification** (bin `qselfint`; pinned tests in the bin + suite):
  - Pure layer, KN machine: nf(E_q ⌜p⌝) ≡ nf(p) bit-exactly over the
    full 4..=24 population — 19,014 verified / 34 skips /
    0 mismatches, 25.3 ms. (The 34 are divergers by cross-reference
    to the classical census, which has zero unknowns ≤24 — the bin's
    own fuel exhaustion proves only resource-out; Codex nit, banked.)
  - Quantum layer, reference evaluator, upgraded to TRUE effect-trace
    comparison after Codex flagged endpoint-only leaves: qeval now has
    `run_traced` (per-leaf root-to-leaf Effect paths — New/H/T/Cnot with
    qubits+epochs, Meas with outcomes; β erased by construction).
    Direct at β=4096/trans=2²⁶, interpreted at β=2²⁰/trans=2²⁴, plus an
    independent qvm cross-check of every interpreted run — endpoint
    level (fate/mass/steps); the effect-ORDER differential is
    qeval-vs-qeval (Codex round-2 ratified that division of evidence).
    Full 4..=24 population: **19,014 verified / 34 unresolved skips /
    0 mismatches**, 2,433 s wall (contended with the radical sweeps).
    β-stuttering: mean ×51.5, max ×212 (Σinterp/Σdirect contractions).
  - witness45 reproduces its (2±√2)/4 leaves under interpretation
    (18 → 784 contractions).
  - Effectful-tail canary: seed env poisoned with QTerm-level `new t`,
    deepest binder in strict primitive position — traces identical; the
    parser provably never forces the seed.
- **What 176 licenses**: a self-hosting evaluator constant; a
  conditional-interpreter constant when ⌜p⌝ is supplied uncharged; the
  quoted-program family bound above; a fixed uniform-in-k Kraft penalty
  for a once-quoted simulator (Object B-relevant). NOT a K-invariance
  constant (quote is linear ×14–15, and Object B's invariance route is
  the simulation theorem). Not to be inserted into the A/B sandwich —
  the direct λk̄.p wrapper is sharper on the upper side.
- **Open**: event-labelled small-step bisimulation (the proof); the
  specialized-root search lane; interpreted-run prefix comparison for
  unresolved programs (Unknown leaves are resource outcomes, not
  certified divergence — sweep skips are labelled accordingly).

## 2026-08-03 — Ω dyadicity: involution broken at 53, threshold candidate drops

Claude's swap-involution claim (fate-divergent selector programs pair
off size-preservingly, √2-parts cancelling) sent through thread
`qblc-omega-witnesses`; Codex broke its generality with the observation
that KN reduction under binders lets a Church boolean fate-split on ONE
argument: true E → λy.E keeps E alive (Species Err if E = t t), false E
→ λy.y erases it and halts. No second continuation, no swap mate.

- **P53** = λ⁵. (meas (h (t (h (new t))))) (t t), 53 bits:
  `00000000000101111100111111001100111111001111010011010`
  Leaves [Err(Species) at (2+√2)/4, Halt at (2−√2)/4] — halt mass
  irrational, Ω contribution (2−√2)/2⁵⁵. Verified in-tree through both
  engines and pinned (`first_fate_divergent_nondyadic_witness_at_53`).
- What survives of the involution: the literal two-argument selector
  subclass genuinely pairs (e.g. S t (t t) ↔ S (t t) t at 57). Codex's
  one-hole-context sweep around the 35-bit sandwich body: no non-dyadic
  successful context below overhead 8; at overhead 8, S (t t) is the
  sole non-dyadic member of 13 contexts — P53 is minimal in family.
- Corrections banked: (λb. b b) S duplicates the measurement RECIPE
  under call-by-name (no sharing) — the b b intuition was misstated;
  a syntactic "≥2 h" prescan is unsound under β-duplication (use
  abstract primitive-taint instead).

## 2026-08-03 — Radical-aggregate census: idiom sector goes non-dyadic at exactly 53

The decisive measurement, built and run same-day (bin `qradical`,
Codex-designed filter: λ⁵-idiom slice, {h,meas,new,t} all mentioned —
sound within the idiom since β can duplicate but not conjure slot
references; validated by EXACT count match with Codex's independent DP
at n=53: 90,064,344 filtered of 12,255,471,630 enumerated, a 136× cut).
Per-size exact Σ of successful mass in ℤ[ω]-radical form, √2-coefficient
extracted; mass-conservation asserted per program. Budgets β=512/2²⁰
(hunt precedent), 469 s total on 18 threads.

- **Per-size Σ_success √2-coefficients, idiom sector**:
  n=46..52 all EXACTLY 0 — while nondyadic-leaf programs proliferate
  underneath (2, 4, 4, 16, 22, 66, 114 programs) — then
  **n=53: Σ_success = 59195837/4 − (1/4)·√2 ≠ dyadic.**
  The decomposition is not a coincidence of sums: per-program
  fate-divergent accounting (Σ-halt-mass irrational per program, added
  to the bin same-day with a witness45/P53 discriminator test) finds
  **fatediv = 1 at n=53, and the unique program is bit-exactly P53**.
  All 230 other nondyadic-leaf programs (of 231) cancel within-program
  — the involution holds everywhere except the one term Codex
  constructed to break it.
- **Idiom-sector Ω contribution 46..53**:
  463909831/2⁵⁵ − √2/2⁵⁵.
- Caveats, each named: (1) n=53 has unk=752 — adjudicated at canonical
  β=4096/trans=2²⁶ (8×/64× the sweep budgets): count IDENTICAL (752),
  unresolved mass bracket IDENTICAL (1467/2, every pending mass
  dyadic), Σ_success bit-identical; the only movement was +7,168
  zero-mass Err leaves from deeper zero-amplitude forks. The unknowns
  are β-insensitive loops — resource outcomes, same epistemic status
  as every census unknown in the repo. (2) The non-idiom complement
  (programs not opening with λ⁵ that still reach primitives through
  β-plumbing) is unmeasured for 46..53 — phase 2 (abstract
  primitive-taint evaluator) is the single remaining blocker on the
  full-population statement. Full population is measured dyadic through
  45 by the earlier hunt.
- **Status**: first non-dyadic per-size success aggregate at exactly
  n=53 in the idiom sector. Ω_{success,≤53} is irrational unless the
  unmeasured complement exactly cancels −√2/2⁵⁵ — no mechanism known.
  Threshold question effectively answered pending phase 2.
- New infra: `src/bin/qradical.rs` (+3 unit tests: frame_mentions
  classify, P53 aggregate = 1/2 − √2/4 exact, small-size dyadic idiom
  aggregates; optional [beta] [trans] args; FATEDIV accounting),
  `enumerate.rs::split_tasks_at` (seeded λ⁵ tasks + coverage test).

## 2026-08-04 — repo reorganized: docs/, data/, scripts/; unversioned data names

- Root de-cluttered into a by-type layout, discussed and picked by a9:
  `docs/` (DESIGN-BLC, DESIGN-QBLC, SPEC-BISIM, LEDGER — filenames
  unchanged, location only), `data/` (all canonical measurement
  outputs), `scripts/` (standing protocols + bench). Root keeps
  README, AGENTS/CLAUDE, LICENSE, Cargo.*. Sub-labs (`tools/cert`,
  `tools/interp`, `tools/uni`) deliberately kept intact — the new-kill
  protocol touches spec + kills + certlean + Lean as a unit, so the
  cert lab stays one directory rather than being split by type.
- Data filenames drop the `41` bound suffix: `census_table41.txt` →
  `data/census_table.txt`, `unknowns_41.txt` → `data/unknowns.txt`,
  `solomonoff_41.txt`/`solomonoff_table41.txt` →
  `data/solomonoff{,_table}.txt`, `qcensus_table41.txt` →
  `data/qcensus_table.txt`. Rationale: the covered range is stated
  in-file and in AGENTS live state, superseded generations already
  live in git history, and the n=42 era now regenerates in place with
  zero path churn in CI, bin defaults, or docs. Contents untouched —
  pure `git mv` (regenerate-don't-hand-edit respected).
- Standing protocols encoded as runnable scripts, prose → shell:
  `scripts/spot-check.sh` (the regression bar; CI's census-spot-check
  job now calls it instead of inlining), `scripts/census-regen.sh`
  (table + frontier with kill subtraction and the identity check
  raw = frontier + kills; validated on the live tree: 4,532 = 4,235 +
  297, zero overlap; installs to data/ only on the full range;
  carries the n≥42 rescue-raise warning), `scripts/recert-kills.sh`
  (4× re-cert with sorted byte-identical diff, then certlean + lake),
  `scripts/solomonoff-regen.sh`. `bench.sh` moved in and made
  location-independent.
- Referents updated in living docs only (README, AGENTS, DESIGN-BLC,
  DESIGN-QBLC, CLASSIFY.md, CI, certsearch/tracescan defaults);
  ledger entries before this one keep their historical paths.
  Cargo `include` allowlist untouched — crates.io packaging invariant.
- src/ left flat on purpose: a module regroup is a public-API break
  on the published crate (forces a major bump through the armed
  release flow) and the clutter was never there.
- Docs pass (same session): README gains the two newest qBLC
  headlines (E_q = 176 bits; the idiom-sector dyadicity threshold at
  53) and a current-only roadmap; DESIGN-QBLC header un-staled
  (S1–S3 core landed) and the irrationality open question records
  the measured n=53 layer + phase-2 route; DESIGN-BLC drops the
  resolved crate-name question; AGENTS qBLC docket compressed to
  current-state form (engines / measured state / next), live state
  dated 2026-08-04, gaslamp thread list completed. Version bumped to
  1.0.1 on dev — publishes via release.yml on the next main merge.
- README reworked package-first (a9's call: it read as a findings
  list): install → library tour with verified code snippets
  (classical parse/normalize + KN machine; a qBLC Bell-pair program
  that lands on exactly 41 bits, the census's entanglement
  threshold, with exact amplitudes) → drivers table → verification →
  findings compressed to one "Selected results" breath with absolute
  links (crates.io readers get no repo-relative paths). Snippets are
  committed as examples/normalize.rs + examples/bell.rs so cargo
  test/clippy keep them honest.

## 2026-08-04 — sub-176 lane opened and closed at this rung: two-entry minimum is exactly 176

a9 green-lit the parked §8 lane (SPEC-BISIM); step 1 per the ratified
protocol — hand-compile the two-entry knot families, exact bit
accounting before any enumeration — handed to Codex (thread
`qblc-selfint`, job `cx-20260804-152111-2cad`, sol tier).

- **Verdict: no family in the two-entry/single-knot grammar reaches
  ≤175; the minimum is exactly 176**, attained by the incumbent
  `intL I` AND by its root-fused spelling `(λa. a a I)(λa. F (a a))`
  — identical counts (L,A,X) = (16,26,38); fusing `I` into the knot
  was the obvious one-bit candidate and it ties exactly. Stated as a
  local theorem with 7 explicit hypotheses (frozen cons' + branch
  meanings, (cont,list) protocol, one knot, root-non-VAR + cont=I +
  dead tail, the enumerated knot classes, the five sharing
  placements, no contextual rewrite into frozen branch bodies).
- Family table (per-family minima): above-knot/self-app **176**;
  continuation-timing **177** (excluded if branch meanings are
  byte-frozen; the only near miss); two-level knot **179**; Curry Y
  **188**; recursive-N **202**; factored-N **218**; mode/pair
  **220**; specialized first unrolling **267**. The 150-bit generic
  core F = 2(13)+4(21)+2+38; incumbent knot +20; opaque root call +6.
- **Sharp next lane** (docketed, a9's call): any ≤175 winner has ≤25
  bits outside F — generalize the tools/interp opaque-knot search
  (14,803 contexts through 20 bits, incumbent unique survivor) to
  accept the specialized root contract, extend to 25 bits, battery
  the survivors. More compelling than enumerating hand families
  further.
- Classical reading: no family here approaches 170 (recursive-N's
  generic export is 239); this pass opens no classical threat. A
  contextual saving inside F would attack both constants; a
  root-non-VAR/I-specific saving would attack only 176.
- Expectation on record ("176 survives") held.

## 2026-08-04 — Phase 2 instrument: built, double-validated, protocol set; adjudication economics measured

The dyadicity complement sweep (thread `qblc-omega-witnesses` rounds
3–4). Sizing first: exact (size, depth)-DP counts, anchored
bit-identically to TWO measured numbers (qcensus 4..41 total
526,039,969; qradical's n=53 idiom enumeration 12,255,471,630) —
**the complement 46..53 is 933,062,632,336 programs**, 36× phase 1's
enumeration, killing round-2's abstract-evaluate-everything on
contact. Round 3 (job cx-20260804-152110-ee13) ratified the
replacement: concrete-first, the abstract lattice deferred entirely.

- **Instrument** (`src/bin/qcomplement.rs`; shared exact accounting
  extracted to `src/radical.rs`): rung-0 syntactic filter — leading-λ
  count k = (leading zeros)/2 on the packed u64; consumed-binder
  required-mention masks REQ[k] ({h,meas,new,t} ∩ consumed), sound by
  the provenance lemma, NOTHING assumed about stack args — then a
  hunt-budget sweep (512/2²⁰) where full resolution gives exact
  per-program Σ_success (terminal stability, r3-corrected: resolved
  trees are budget-independent; partial trees do NOT extend and
  contribute nothing). Unresolved programs stream UNCAPPED to a file;
  `adjudicate` mode re-runs exactly that file; two-pass composition
  unit-tested ≡ single canonical sweep. The √2-coefficient rides its
  own overflow-independent accumulator (rationally re-embedded
  √2-parts) and is SECTOR-COMPLETE — rejects contribute exactly 0 to
  it; the rational subtotal is survivors-only, labelled as such.
  Slice mode ('i/m' over the interleaved task list, disjoint exact
  cover, merge unit-tested) splits n=52/53 into ≤2h runs.
- **Killed design, recorded**: v1 had an inline canonical rung;
  trans-bound divergers cost ~trans·(node visits), so 2²⁶ inline
  multiplies diverger cost ~64× — the first 42..45 attempt was killed
  mid-run on this discovery. Two-pass (phase-1 economics) replaced it.
- **Pre-run cross-validation**: rung-0 survivor counts at n=46 match
  Codex's independent inclusion-exclusion DP bit-exactly
  (3,539,258,498 entering the sweep; all four k-slices). Cumulative
  rung-1 across 46..53: 621,961,800,725 (rung 0 removes 33.342%).
- **Ground-truth validation, complement 42..45** (5.65B programs,
  264.9s, 13–14.4M prog/s at 18 threads): **√2-coefficient EXACTLY 0
  at every size, fatediv 0** — the exhaustive hunt reproduced
  (witness45 is idiom-sector, k ≥ 5, correctly invisible). Unresolved
  rate stable 0.36–0.38%, ALL β-bound: unkT = 0 — not one
  transition-bound unknown in the entire complement through 45.
- **Adjudication economics, measured**: canonical (4096/2²⁶)
  adjudication costs ~8.8 ms/program (β-burners grow their terms).
  n=42's full adjudication: of 1,062,530 unresolved, **758 resolved
  (99.93% β-insensitive at 8×), all to Err/zero-mass leaves —
  Σ_success shift EXACTLY 0, √2 track untouched** (phase 1's "count
  IDENTICAL" pattern at 10³× scale). Extrapolated full-complement
  adjudication ≈ 2.3B programs ≈ 13 days — DEFERRED to a future
  session by a9's call (with the ≤1-2h-per-run protocol now standing:
  iterate fast, chunk everything; sweeps checkpoint per size, slices
  cover big sizes, unresolved files kept on disk for the adjudication
  session; candidate protocols in the round-4 Codex reply, recorded
  in-thread).
- **Prediction pinned for n=51** (falsifiable, ahead of the run):
  wrapped witness45 — `(λx.x)·W` at k=0 and `λ.(W 1)` at k=1, both
  exactly 51 bits — must give nondyadic ≥ 4 with fatediv = 0.
- Sweeps 46..49 running as the first ≤1h block at entry time;
  per-size results get their own entry as blocks land.
