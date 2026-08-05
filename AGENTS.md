# Working in this repo

Rust engine for binary lambda calculus / AIT experiments, verified
against Tromp's Haskell. README.md has the public story; `docs/` holds
the deep records — DESIGN-BLC.md (classical architecture + measured
results), DESIGN-QBLC.md (the quantum pillar's design spec),
SPEC-BISIM.md (bisimulation statement + proof plan), SPEC-ODDMIN.md
(the stage-1a compositional DP: domain, transfers, trust split,
certificate, build gates), NOTE-GALOIS.md
(the Galois structure of qBLC halting mass: T1 proved, T2/T3 plans,
the threshold zoo), LEDGER.md (the running lab notebook; entries
before 2026-08-04 cite pre-reorg paths).
Canonical measurement outputs live in `data/`; the standing protocols
are runnable from `scripts/`.
This file tracks what you need to work here now: conventions, live
engine facts, live state, and the open docket.

## Ground rules

- `ref/AIT` is a submodule pinned to the a9lim/AIT fork: upstream
  tromp/AIT plus additive commits only (currently one — `uni.rs` at
  the root, the staged upstream PR; CI enforces additivity). Treat it
  read-only here; fork changes happen in their own clone, land on the
  fork's master, then a deliberate pin bump. Init:
  `git submodule update --init`. `tests/tromp_vectors.rs` needs it;
  the unit suite passes without it.
- The verification bar for any engine change: `cargo test --release`
  green, then a census spot-check (`scripts/spot-check.sh`) whose
  **halt counts are bit-identical** to `data/census_table.txt` at the
  sizes you touch. Halts have been invariant through every change in
  history; treat any drift as a bug in your change, not a discovery.
- `data/` holds results, not scratch, and only the canonical
  generation lives in the tree: `census_table.txt` (census 4..41),
  `unknowns.txt` (live frontier: 4,235 terms — the 1,888-term 4..40
  residue plus 2,347 at n=41, the 297 certificate kills in
  `tools/cert/ratchet_kills.txt` already subtracted),
  `solomonoff.txt` + `solomonoff_table.txt` (Ω/K sweep), and
  `qcensus_table.txt` (quantum operator census). Filenames are
  unversioned on purpose: the covered range is stated in the file and
  here, superseded generations live in git history, and a bound bump
  regenerates in place with zero path churn in CI, bin defaults, or
  docs. Regenerate rather than hand-edit — `scripts/census-regen.sh`
  (table + frontier, kills subtracted, subtraction identity checked)
  and `scripts/solomonoff-regen.sh`.

## Conventions that will bite you

- **1-indexed de Bruijn**: `Var(1)` is the innermost binder, matching
  the BLC wire format (`1ⁿ0` = var n). Tromp's `uni.c` parses 0-based;
  same bits, different in-memory convention.
- Size identity: |M| = 2L + 4A + 2 + X (L lambdas, A apps, X = Σ
  indices) for closed M. Closed-term code is prefix-free.
- `.blc` files are ASCII '0'/'1'; `.blc8` are packed MSB-first; both
  extensions appear extensionless in ref/AIT (quine is ASCII, hilbert
  packed).
- I/O polarity is INVERTED from intuition: '0' → true = λx.λy.x.
- Checked-in `.blc` goldens in ref/AIT are post-beam-search
  (`optimize 57 2 1`) — byte-exact targets need that pass;
  `bin/take1k.blc` is a stale golden, don't target it.
- `tools/blcc.py` is the encoder oracle (reproduces 8 repo goldens
  byte-exactly, no GHC needed). ref/AIT's `uni.py`/`uni.rb` etc. work
  as execution oracles.

## The engines

Ladder in `src/bin/census.rs`: prescan → oracle prefilter → KN at
budget1 (transitions budget1×64) → KN at budget2 (transitions
budget2×64) → escalation engine (`src/bb.rs`, cap 2M) → KN rescue at
10⁷ β, transitions 32×β (`--rescue-trans-mult`). Rescue β stays 10⁷
through n=41, but the margin is now THIN: the max successful rescue is
9,457,564 β (n=41) — 1.06× headroom. RAISE `--rescue` BEFORE RUNNING
n=42. The 32× transition mult has a 1.88× margin over the worst
measured successful ratio (17.0×, the n=38 champion: 9.45M β via
160.4M transitions); the rung-2 64× cap re-routes exactly one term in
4..40 (n=39) through escalation to the same halt. Both trims verified
verdict-identical on full sweeps. Census 4..40: ~7.2 min; 4..41:
~16.5 min.

- `src/vm.rs` (KN machine): any `Sink` impl MUST override `var` with
  an O(1) body — the default is O(n) in an *uncharged* n and cost a 5×
  slowdown once. `normalize_capped` takes explicit β + transition
  budgets; plain `normalize` applies the transition floor (1<<22).
- `src/bb.rs`: the escalation engine charges one shared work meter on
  every primitive op (`BLC_WORK_MULT` × cap, default 16; `=2` bounds
  live memory to ~4 GB/worker for big adjudications and has never lost
  a verdict). The self-feedback certificate (`redloop`) fires on
  syntactic self-applications; probes run at `BLC_PROBE_FUEL` β
  (default 4096; verified insensitive through 65,536 on the whole
  frontier). Verdicts are typed: `NoNf::Diverge` vs
  `NoNf::Unknown(Why::{Capacity, WorkMeter})`.
- `src/enumerate.rs`: tasks are bit-reversal-interleaved on purpose —
  expensive terms cluster by enumeration prefix and rayon splits by
  index range; don't "simplify" the order back.
- census λ-wrap memo: λ.T reuses T's escalation-tier verdict for
  Halt/Diverge ONLY (a map hit proves the body closed via
  prefix-freeness; nf+2, same steps; chains propagate). Unknown is a
  resource outcome, not a fate — seed-Unknown wraps run the ordinary
  ladder. Don't "extend" the memo to Unknowns; that reuse was built
  and deliberately removed (ledgered).
- `src/cert.rs` (trusted checkers, three classes: v1.2 ratchet, v2
  HeadTowerRatchet, v3 SelectorRatchet) + `src/bin/certsearch.rs`
  (untrusted rayon discovery, streams candidates through the checker
  ladder per term, hnf descent into closed spine args → `-ARG`
  kills). Sweep defaults 1000 steps/100k nodes (measured
  kill-equivalent to 2000/200k); a full three-rung frontier sweep is
  ~40 min at 8 threads. New-kill protocol: append the kills to
  `ratchet_kills.txt`, run `scripts/recert-kills.sh` (re-certifies
  everything at 4× budgets with a byte-identical diff, then
  `certlean` + `lake build Certs`), regenerate the frontier
  (`scripts/census-regen.sh` subtracts kills), trim Ω by exact
  fraction arithmetic, ledger it.
  `tests/cert_battery.rs` = soundness battery (196,848 provable
  halters ≤28 bits through the exact sweep ladder, zero fires,
  ~0.5 s); `src/bin/certdiag.rs` probes surviving candidates and
  writes the CLASSIFY.md maps — its buckets are abort fingerprints
  under one candidate triple, NOT class boundaries (the selector
  sweep proved this: 30 probe-accepts became 40 kills).

## Ops lessons (each bit us once)

- **Wall-clock is a UX budget — optimize everything, by default.**
  a9 lives on the other side of the terminal: a 2-hour single-thread
  grind and an instant result are different products even when the
  verdicts are identical, and slow runs force her to babysit tabs.
  Concretely: parallelize every sweep/battery/bin with rayon from the
  first version (subtree tasks exist in `enumerate.rs`); never probe
  with the naive core — it is the executable spec, deliberately slow;
  any sound engine's Ok proves halting (the KN machine took the cert
  battery from ~45 min to 0.17 s); time new tests and bins before
  declaring them done, and treat anything slower than seconds as a
  bug to fix now, not later. Estimates of runtime have been wrong in
  BOTH directions repeatedly — measure, then say the number.
- The work meter bounds *allocations*, not *live* graph size. Big
  adjudication runs: stream verdicts (`--terms-file` prints one line
  per result — kills lose nothing), few threads, `BLC_WORK_MULT=2`,
  and a RAM watchdog.
- Watchdogs must hold the exact child pid (`$!`). NEVER
  `pgrep -f | head -1` — it matches the shell wrapper.
- When parsing prose-adjacent data (BB.txt TODO lines), hard-cut at
  the first non-term character and assert var indices < 64 before
  unary-encoding. Prose digits once became three ~200 GB strings.
- Profile the size where the problem actually lives; the n=40 tail is
  invisible at n=37.
- This is a9's daily driver. Leave RAM headroom, kill strays when
  done, `ps aux | grep census` before declaring the machine clean.

## Live state (2026-08-04)

- **Census**: canonical 4..41 in `data/census_table.txt` (~16.5 min;
  4..40 alone ~7.2 min). BBλ(41) ≥ 1,074,266,118 bits. n=32 row has
  zero unknowns — BBλ(32) fully mechanical.
- **Frontier**: `data/unknowns.txt`, 4,235 terms. Ω|≤41 ∈
  [0.124105086764, 0.124105092919] (round-nearest 12 digits, exact
  fractions in `data/solomonoff.txt` + the kills' mass).
- **Certificates**: 297 kills in `tools/cert/ratchet_kills.txt`
  (214 RATCHET + 34 RATCHET2 + 39 SELECTOR + ten `-ARG` variants),
  all re-certified at 4× budgets. Spec + glue proofs in
  `tools/cert/SPEC.md` (§8 specs the planned v4 classes); candidate
  maps in `tools/cert/CLASSIFY.md` — its bucket-≠-class caveat is
  load-bearing, don't soften it.
- **Lean** (`lean/`, own README): flagship proven twice, general
  head-factorization bridge for every term, symbolic checker layer,
  generic assemblies for all three classes, rigid-head `argKill`
  bridge — **297/297 kills kernel-checked** with wire-identity
  theorems (`lake build Certs`, ~1.9 s), zero sorries, no mathlib,
  axioms [propext, Quot.sound]. `lean/Certs/` is GENERATED by
  `certlean` — regenerate, never hand-edit. New 2026-08-04:
  `Blc/Selfint.lean` — the bisimulation seed: intL kernel-pinned by
  wire identity, |E_q| = 176 kernel-checked, quote linearity proved;
  L1/L2 parser statements ratified (residual-tail form), proofs open.
- **Interpreter lab** (`tools/interp/`): 170-bit self-interpreter
  certified locally optimal (all three slots exhaustive, unique
  survivor = reference, zero residual unknowns).
- **uni.rs** (root of the `ref/AIT` fork; kit + parity harness in
  `tools/uni/`): distilled interpreter at call-by-name parity with
  uni.py (three adversarial witnesses as regression vectors in
  verify.sh), ~18× faster. Staged as the fork's one additive commit;
  a9 sends the PR (PR_KIT.md).
- **Publish infra** (2026-08-03): CI on push/PR — fmt, clippy at
  -D warnings (tree kept clean), release tests + uni parity on
  ubuntu/macos, census spot-check 4..32 via `scripts/spot-check.sh`,
  `lake build Certs`, fork-additivity guard. Work lands on
  `dev`; `main` stays green. crates.io packaging verified (`include`
  allowlist ships the engine alone). Published: v1.0.0; v1.0.1
  (layout + docs pass) staged on dev, publishes on the next main
  merge. AGPL-3.0-or-later.
  Releasing = bump the Cargo.toml version on main;
  release.yml publishes via trusted publishing (environment
  `crates-io`) then tags + GH-releases, dormant while the version is
  already tagged, self-resuming on partial failure.

## Open docket

- **qBLC (second pillar)**: design + staging history in
  DESIGN-QBLC.md (ratified; S1–S3 core landed). Two target objects —
  operator census M_Fock (Tr = Ω_success, number-superselected) and
  the dimension-conditioned Gács family G_k. **Signature order
  frozen: `p h meas new cnot t`**.
  Engines: `src/qeval.rs` naive reference (the executable spec) +
  ring `src/dw.rs`; `src/qvm.rs` KN-store fast path (~200× naive,
  lockstep-verified vs qeval over the full ≤24 population — keep
  that test green when touching either engine). Bins: `qcensus`
  (`--cond-k K` = Object B mode `p k̄ ⟨sig⟩`), `qpilot`, `qselfint`,
  `qradical`.
  Measured state: canonical `data/qcensus_table.txt` = the full
  526,039,969-program population 4..41 (~30 min) at β=4096/trans=2²⁶
  (β×16 resolves zero unknowns — the 1,619,650-term unk column is a
  real frontier). Ω_{success,≤41} = 3424188513/2⁴⁰; M^(1) PD,
  ranking |0⟩ ≫ |+⟩ > T|+⟩ > |−⟩ ≫ |1⟩; first entangled halts at
  exactly n=41 (|00⟩ ≫ Φ⁺ > Φ⁻ > |++⟩); halt masses dyadic through
  41 while operator ENTRIES are irrational (√2-parts cancel in every
  trace). Self-interpretation: E_q = intL I = **176 bits** (HOAS
  collapses the adapter to 6 bits; tight within the intL protocol,
  global optimality open; effect-trace verified — the bisimulation
  is the proof obligation, statement + plan in SPEC-BISIM.md).
  Dyadicity threshold: idiom-sector Σ_success non-dyadic at exactly
  **n=53** (unique fate-divergent witness P53, pinned test; 53's
  unknowns β-insensitive). **Phase-2 dyadicity campaign**
  (`qcomplement`, per-size sweeps of the non-λ⁵ complement at
  β=512/trans=2²⁰, unresolved streamed to `.phase2/`, runs chunked
  under a9's ≤1-2h protocol): **complement √2-coefficient EXACTLY 0
  at every size 42..51, fatediv 0 — full-population dyadicity
  stands through 51**, and the 51 row confirmed the pre-registered
  prediction (wrapped-witness45 wrapper orbit: 12 programs, 24
  σ-paired leaves). The witness zoo lives in NOTE-GALOIS.md §3;
  every witness wire is an `src/odd.rs` test fixture; per-size
  detail in the ledger. Campaign PAUSED at 51 (a9, 2026-08-04);
  remaining when resumed: 52 in ~2 'i/m' slices, 53 in ~4. The big
  adjudication is DEFERRED to its own session (protocol in the
  ledger: exhaustive β=1024 re-sweep 46..52(+53), then
  event-stratified canonical samples); small open task: widen/
  count-bound the pending-bracket reporting (overflows ok=false at
  ≥46 scale; √2/Σ tracks unaffected). Codex prior: 95% the
  threshold stays 53.
  **√2-theorem lane (active)**. Proved/ratified: Tier-A accounting
  identity + T1 (finite-trace Galois twist; Δ(C) for limits);
  P53 = witness45 + 8-bit split; n_{1/3} ≤ 85 (rational-limit
  threshold is a separate problem). Stage 1a is SCOPED CNOT-FREE —
  min cnot-trace weight ∈ (22, 28], so any latch-based bound caps
  at 28; the cnot sector belongs to stage 1b (Pauli-string path
  parity, statement in NOTE-GALOIS.md §4). Instruments live:
  `src/odd.rs` (trusted monitor: verdicts {Even, MayOdd,
  NeedsCnot}, epoch-checked replay, pure step_h/t/meas kernels,
  tight ≤22) and `src/oddmin.rs` + `oddminproto` (the reference DP:
  ★-observation interaction-NFA domain, continuation-specialized
  frames, must-bound closure restriction, one-shot closed
  evaluation, pure-component widening — design Codex-ratified
  through r6, spec + measured findings in SPEC-ODDMIN.md §§1–10).
  Current measured state: witness45 accepts closed (44-node
  summary), cnot28 rejects, EXACT vs qeval on all 6,069 closed ≤22
  (zero looseness; 19 ⊤ cells, all concretely non-odd — the
  alpha-only port-identity canon loss); zero splice-⊤ through
  W=24; closed-slice counts 96/751/6,346 at W=16/20/24, driver
  1.1 s; growth ≈ ×1.7/bit crosses the 10⁶ stop near W≈34.
  NEXT (stage 2, Codex-ordered): BindId alpha-normalization +
  weak-ε canon + port renumbering (kills the 19 ⊤s) → rerun 24,
  probe 26/28/30 → simulation-preorder antichain after
  constructor-monotonicity checks → the general component-scoped
  post-fixpoint (ScopeId origins; checker verifies post-fixpoint
  only) → search-side pruning for the ladder to 44. Scope note:
  the handle-aliasing lemma is "closed, pre-CNOT" only (cnot's
  Church pair re-enables aliasing in stage 1b).
  Bisimulation lane: **Lean seed landed** (`lean/Blc/Selfint.lean`;
  intL kernel-pinned via wire identity, |E_q|=176 kernel-checked,
  quote linearity proved; L1/L2 statements round-4-ratified — the
  r4 counterexample forced ParserResult's residual-tail form; L2 =
  VAR engine, ParserStatement = induction motor, closed L1 =
  corollary; proofs open). Sub-176: the §8 two-entry lane is CLOSED
  at exactly 176 (local theorem, LEDGER.md 2026-08-04); remaining
  mechanical lane = ≤25-bit joint root+knot context search around
  the 150-bit core F (a9's call).
  **Next session (a9's pick, 2026-08-04): the G_k lane / Object B.**
  Order: (1) output-convention spar with Codex (whole-live-store vs
  designated-output — gates everything; the designated arm would
  restore compositionality and re-enable internal relabeling,
  obligation 3); (2) exact sandwich constants c·m(k)·G_k ⪯ M^(k) ⪯
  C·G_k for the frozen machine (bit accounting, sub-176 style);
  (3) first G_1/G_2 approximant runs via qcensus `--cond-k` at small
  sizes (~minutes each) → measured H̲(ψ|k) for named states — the
  first concrete conditional quantum complexity numbers anywhere
  (novelty search before any such claim ships). Parked behind it,
  any order: remaining sweep blocks; adjudication session; Kraft/
  prefix-freeness Lean lane; the irrationality-strata results note;
  the H…T…H…meas necessity lemma as a theorem; L2 proof work.
  Classical engines untouched — the bit-identity bar applies to
  them, not to qBLC's new surface. Literature survey in
  `ref/QUANTUM_AIT.md` (untracked).

- **v4 certificate classes, in Codex-ratified order — specs in
  `tools/cert/SPEC.md` §8**: (1) PassengerDiagonal (§8.1) — the
  complete assembly is derived; needs only existing commuting-square
  + v1.2 machinery; keep it a separate class. (2) zfirst (§8.2) —
  derive obligations from an actual survivor trace, not the bucket.
  Drift is GATED (§8.3): no certificate until an exemplar exhibits a
  finite generator Rₙ₊₁ = G[Rₙ] (an unconstrained W : Nat → Context
  leaves the ∀n assumed).
- **Lean lanes**: prefix-freeness/Kraft (Blc/Wire.lean's `blcCode`
  is the seed), then machine-checked K upper bounds.
- **n=42**: blocked on a `--rescue` raise (margin 1.06× at n=41 —
  see The engines); a9 decides the new cap. Expect possible
  legitimate row improvements 4..41 ⇒ new canonical table +
  frontier/Ω rebuild.
- **Contextual slot search** (`tools/interp/SEARCH_SPEC.md` §2):
  drop the must-mask to 0; survivors are hypotheses needing
  whole-interpreter splice + battery, not proofs.
- **Upstream PR**: a9 sends tromp/AIT the uni.rs PR herself, from
  a9lim/AIT master — already the staged payload, pinned as `ref/AIT`
  (PR_KIT.md has the text + letter). Never push to repos outside a9's
  own account from a session.

## Collaboration

Claude and Codex are co-equal here; handoffs run over the `gaslamp`
CLI. Existing threads: `blc-conformance` (the certificate exchange),
`blc-interpreter` (design theory), `blc-interp-search` (slot-search
spec), `blc-qblc` (qBLC design ratification), `qblc-selfint`
(self-interpretation + bisimulation), `qblc-omega-witnesses`
(dyadicity hunt + phase-2 design). Send raw evidence — encodings,
diffs, measured bits — not summaries.
