# Working in this repo

Rust engine for binary lambda calculus / AIT experiments, verified
against Tromp's Haskell. README.md has the public story; DESIGN-BLC.md
has classical architecture + measured results; DESIGN-QBLC.md is the
quantum pillar's design spec (pre-implementation); LEDGER.md is the
running lab notebook.
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
  green, then a census spot-check whose **halt counts are bit-identical**
  to `census_table41.txt` at the sizes you touch. Halts have been invariant
  through every change in history; treat any drift as a bug in your
  change, not a discovery.
- Data files in the repo root are results, not scratch, and only the
  canonical generation lives in the tree: `census_table41.txt` (census
  4..41), `unknowns_41.txt` (live frontier: 4,235 terms — the
  1,888-term 4..40 residue plus 2,347 at n=41, the 297 certificate
  kills in `tools/cert/ratchet_kills.txt` already subtracted), and
  `solomonoff_41.txt` + `solomonoff_table41.txt` (Ω/K sweep).
  Superseded generations live in git history. Regenerate rather than
  hand-edit.

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
  ~40 min at 8 threads. New-kill protocol: re-certify at 4× budgets
  (`--steps 4000 --nodes 400000`, diff byte-identical), regenerate
  the frontier file, trim Ω by exact fraction arithmetic, rerun
  `certlean` + `lake build Certs`, ledger it.
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

## Live state (2026-08-01)

- **Census**: canonical 4..41 in `census_table41.txt` (~16.5 min;
  4..40 alone ~7.2 min). BBλ(41) ≥ 1,074,266,118 bits. n=32 row has
  zero unknowns — BBλ(32) fully mechanical.
- **Frontier**: `unknowns_41.txt`, 4,235 terms. Ω|≤41 ∈
  [0.124105086764, 0.124105092919] (round-nearest 12 digits, exact
  fractions in `solomonoff_41.txt` + the kills' mass).
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
  `certlean` — regenerate, never hand-edit.
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
  ubuntu/macos, census spot-check 4..32 diffed against the canonical
  table, `lake build Certs`, fork-additivity guard. Work lands on
  `dev`; `main` stays green. crates.io packaging verified (`include`
  allowlist ships the engine alone; name `blam` free).

## Open docket

- **qBLC (second pillar)**: design ratified (DESIGN-QBLC.md; rounds
  in LEDGER.md 2026-08-02/03). Two target objects — operator census
  M_Fock (Tr = Ω_success, number-superselected) and the
  dimension-conditioned Gács family G_k. **Signature order frozen:
  `p h meas new cnot t`**. S1 landed (reference evaluator
  `src/qeval.rs` + ring `src/dw.rs` + pilot); S2 LANDED (2026-08-03):
  KN-store fast path `src/qvm.rs` (~200× naive on bulk, lockstep-
  verified on full leaf sequences vs qeval over the ≤24 population —
  keep that test green when touching either engine) + census bin
  `src/bin/qcensus.rs`. S3 core LANDED (overnight 2026-08-03):
  canonical `qcensus_table41.txt` = the FULL classical-census
  population (526,039,969 programs, 4..41, ~30 min).
  Ω_{success,≤41} = 3424188513/2⁴⁰; M^(1) PD, ranking
  |0⟩ ≫ |+⟩ > T|+⟩ > |−⟩ ≫ |1⟩; M^(2): first entangled halts at
  exactly n=41, ranking |00⟩ ≫ Φ⁺ > Φ⁻ > |++⟩; every halt mass
  dyadic through 41 while operator ENTRIES are irrational (√2-parts
  cancel in every trace); first SameQubit Err + first Qubits
  capacity, single events at 41; qBLC frontier = 1,619,650 unknowns.
  Budgets β=4096/trans=2²⁶ measured-headroom; β×16 resolves zero
  unknowns (measured — the unk column is a real frontier).
  `--cond-k K` runs Object B mode (`p k̄ ⟨sig⟩`). Next: G_k
  approximant runs + sandwich constants; dyadicity threshold hunt
  42..45; output-convention question still open for Object B (v0 =
  whole-live-store).
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
spec). Send raw evidence — encodings, diffs, measured bits — not
summaries.
