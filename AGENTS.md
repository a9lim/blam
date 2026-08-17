# Working in this repo

Rust engine for binary lambda calculus / AIT experiments, verified against
Tromp's Haskell. The root `README.md` is the public story and repository map.
`docs/STATUS.md` is the single authority for current measurements and the open
docket. Durable classical and quantum architecture, proof plans, research
notes, and monthly history live under `docs/`. Canonical measurement outputs
live in `data/`; standing protocols are runnable from `scripts/`.

This file carries the conventions and operational facts that must be in hand
before changing the project. Read `docs/STATUS.md` before research or docket
work; do not duplicate its moving state here.

## Ground rules

- `ref/AIT` is a submodule pinned to the a9lim/AIT fork: upstream tromp/AIT
  plus additive commits only (currently one, `uni.rs` at the root; CI enforces
  additivity). Treat it read-only here; fork changes
  happen in their own clone, land on the fork's master, then a deliberate pin
  bump. Initialize with `git submodule update --init`.
  `contrib/ait-uni/verify.sh` is the only thing in the tree that reads it —
  `tests/tromp_vectors.rs` inlines its vectors, so the whole test suite
  passes without the clone.
- The verification bar for any engine change is `cargo test --release
  --all-features` *and* a plain `cargo test --release` (the no-lab dispatcher
  arms only exist under default features), then a census spot-check
  (`scripts/spot-check.sh`) whose halt counts are
  bit-identical to `data/classical/census_table.txt` at the sizes touched.
  Halts have been invariant through every change in history; treat drift as a
  bug in the change, not a discovery.
- `data/` holds results, not scratch, and only canonical generations live in
  the tree. The classical census, frontier, and Ω/K outputs are in
  `data/classical/`; the operator census is in `data/quantum/`; certificate
  evidence and self-interpreter logs have their own subdirectories. Filenames
  are unversioned where a bound can advance: the covered range is stated in
  the file and `docs/STATUS.md`, superseded generations live in git history,
  and a bound bump regenerates in place. Regenerate rather than hand-edit via
  `scripts/census-regen.sh` and `scripts/solomonoff-regen.sh`.

## Conventions that will bite you

- **1-indexed de Bruijn**: `Var(1)` is the innermost binder, matching the BLC
  wire format (`1ⁿ0` = var n). Tromp's `uni.c` parses 0-based; same bits,
  different in-memory convention.
- Size identity: |M| = 2L + 4A + 2 + X (L lambdas, A apps, X = Σ of the
  *0-based* indices, i.e. one less than the in-memory value at each variable
  occurrence) for closed M. Closed-term code is prefix-free.
- `.blc` files are ASCII `0`/`1`; `.blc8` are packed MSB-first; both
  extensions appear extensionless in `ref/AIT` (quine is ASCII, hilbert
  packed).
- I/O polarity is inverted from intuition: `0` → true = λx.λy.x.
- Checked-in `.blc` goldens in `ref/AIT` are post-beam-search
  (`optimize 57 2 1`). Byte-exact targets need that pass;
  `bin/take1k.blc` is a stale golden, so do not target it.
- `tools/blcc.py` is the encoder oracle (reproduces eight repo goldens
  byte-exactly, no GHC needed). `ref/AIT`'s `uni.py`, `uni.rb`, and siblings
  work as execution oracles. Two standalone analyzers sit beside it, wired
  into no script: `tools/bbtxt.py` (cross-match Tromp's `BB.txt` fail traces
  against our census unknowns) and `tools/frontier.py` (group an adjudication
  run's unknowns by λ-wrap seed and flag verdict disagreement within a
  chain).

## The engines

The library is three layers — `blc` substrate, symmetric `classical` and
`quantum` pillars, `lab` behind its own feature — and one binary, `blam`,
whose subcommands live in `src/cli/`. Lab-gated subcommands are recognised
without the feature and say how to get themselves; do not "fix" that by
deleting the arm. A third pillar, `quantum-algebraic` (qALC: quantum *control*,
storeless, runtime states in ℓ² over token configurations), has an accepted
Python/Lean reference and proof surface in `qalc/`; its Rust engine
(`src/qalc/`) has completed phases 0–4 of the ratified sketch
(`docs/quantum-algebraic/rust-pillar.md`): typed schema, the
PyReprKey/wire codec split, the canonical-invariant `Amp`, the kernel
step table with its exact-Dw evolvers (`src/qalc/kernel.rs`), and the
composed full-NF machine (`src/qalc/readback.rs` — dispatcher, BA
adapters, typed totalization, predecessor inverses, composed
evolvers), plus the linear-SSA compiler, native-CNOT shadow, structural
admission, and finite checker (`compiler.rs`, `shadow.rs`, `gate2check.rs`),
plus checked Gate-1 admission/WF/RRI and total public semantics
(`admission.rs`, `wf.rs`, `semantics.rs`). Fixtures live in three runtime
trees plus one embedded selector pin, with four exporters: the kernel
files under `tests/qalc/` — twenty suite programs plus three Dw-only
T-phase probes, regenerated only by `qalc/export_rust_fixtures.py`
(the qALC workflow byte-checks them) — and the 30 composed Gate-1
cores plus RBL corpus under `tests/qalc/composed/`, regenerated only
by `qalc/export_composed_fixtures.py`; the complete 917-state mixed Gate-2
carrier, expanded repr corpus, and Python-generated compiler-pin manifest live
under `tests/qalc/gate2/`, regenerated only by
`qalc/export_gate2_fixtures.py`; `src/qalc/admission_pins.qfx` is stripped
from the authoritative kernel fixtures only by
`qalc/export_admission_fixtures.py`. `tests/qalc_kernel.rs`,
`tests/qalc_composed.rs`, and `tests/qalc_gate2.rs` regenerate every one byte-identically from
the Rust engine alone — the Gate-1 30-core differential (7,507 states
/ 7,417 columns, per-edge predecessor inverses, totalization probes)
and the Gate-2 917-state / 913-column differential are closed. Kernel
error/guard arms unreached by any carrier or probe, the composed
`egi`/`invalid-kernel-target` arm, and Gate-2 shadow error/refused-predecessor
arms outside clean compiler carriers are pinned by review only (passed Codex
drift reviews, findings folded). `docs/quantum-algebraic/architecture.md` is the contract;
`token.md` is the active IAM-lineage token design; `kernel.md` is the
current-only v1.43 register; `machine.md` is read-only history. Architecture
Gate 1 is closed: the reference composed machine supplies exact H/T
scattering, full-NF readback, typed halt/error sectors, exact predecessor
fibres, validated finite admission with conservative-history fallback, and
`U`/`μ_p`/`ρ_p`/`M`/`Ω_qALC`. Its 30 finite cores and concrete Lean
checks pass the authoritative battery and fresh-context audit #6. The stronger
ambient lifecycle theorem is optional; raw-WF recall is known noninjective.

The live implementation, batteries, generated evidence, and proof records are
`qalc/{gate1_check.py,GATE1.md,gate2_check.py,GATE2.md}`. Gate 2
closed on 2026-08-13: the actual composed machine now has an unbounded
arbitrary-circuit H/T/CNOT refinement from one common reachable encoded-input
cut to exact ideal columns, full-NF output, one literal terminal block, no
earlier halt, arbitrary finite amplitudes, and cap-free structural compiler
admission. Clean finite Bell/Toffoli/nonlinear carriers and the 917-state
Python/Lean differential remain independent evidence. Historical alternatives,
audits, and superseded proof routes live only in `docs/ledger/`, git history,
and external audit records. Rust Phase 4 and the default-built `blam qalc`
`run`/`gram`/`compile`/`fixtures` group landed 2026-08-17; census remains a
separate later layer. qALC work must leave classical and qBLC rows
bit-identical.

`classical::ladder` owns the halting ladder, and every classical driver
(`census`, `adjudicate`, `solomonoff`) adjudicates through it: prescan →
oracle prefilter → KN at budget1 (transitions budget1×64) → KN at budget2
(transitions budget2×64) → escalation engine (`classical::escalation`, cap
2M) → KN rescue at 10⁷ β, transitions 32×β (`--rescue-trans-mult`). Every
field of `LadderCfg::default()` is the value the canonical census table was
generated at, with the measurement that fixed it in the field doc. `adjudicate`
is `adjudicate_fast` (rungs 1–3) followed on a survivor by `adjudicate_slow`
(rungs 4–6), so a scheduler that runs the cheap half of a size class before
the expensive half gets identical verdicts by construction rather than by
parallel maintenance. Rescue β stays 10⁷ through n=41, but the margin
is thin: the max successful rescue is 9,457,564 β, only 1.06× headroom. Raise
`--rescue` before running n=42. The 32× transition multiplier has a 1.88×
margin over the worst measured successful ratio (17.0×, the n=38 champion:
9.45M β via 160.4M transitions). The rung-2 64× cap reroutes exactly one term
in 4..40 (n=39) through escalation to the same halt. Both trims are
verdict-identical on full sweeps. Budget for ~6 min wall and ~33 min CPU for
census 4..40 on the M5 Max: user time is the stable number, wall tracks
ambient load (the measurements and the scheduler A/B are in STATUS).

- `classical::machine` (KN machine): every `Sink` implementation must supply
  `var` with an O(1) body — it is a required method, not a defaulted one,
  because the O(n) default in an uncharged n once cost a 5× slowdown.
  `normalize_capped` takes explicit β and transition budgets;
  plain `normalize` applies the transition floor `1 << 22`.
- `classical::escalation`: the escalation engine charges one shared work meter
  on every primitive operation (`EngineCfg::work_mult` × cap, default 16;
  `--work-mult 2` bounds live memory to ~4 GB/worker for big adjudications
  and has never lost a verdict).
  The self-feedback certificate (`redloop`) fires on syntactic
  self-applications. Probes run at `probe_fuel` β (default 4096; verified
  insensitive through 65,536 on the whole frontier). Verdicts are typed:
  `NoNf::Diverge { head_chain }` versus `NoNf::Unknown(Why::{Capacity,
  WorkMeter})`.
- Engine config is data, not ambient: the library reads no environment at
  all. Every driver resolves the tunables at the CLI layer —
  `args::engine_cfg` takes flag → environment (`BLC_WORK_MULT` /
  `BLC_PROBE_FUEL`, kept as documented fallbacks) → measured default and
  passes an `EngineCfg` down, and the engine's only public entry points
  (`escalation::normal_form`, `normal_form_spine`) take it as an
  argument. `census`, `adjudicate`, `solomonoff`, `q census`, and
  `q skeleton` expose `--work-mult` / `--probe-fuel`; `blam slots` has no
  knob flags and resolves the environment alone, once, through a private
  `OnceLock` in `src/cli/slots.rs`. `cert search` has no engine knobs — its
  budgets are the `head_step` steps / nodes / lemma-steps triple, not the
  work meter.
- `blc::enumerate`: tasks are bit-reversal-interleaved on purpose.
  Expensive terms cluster by enumeration prefix and rayon splits by index
  range; do not simplify the order back.
- The `solomonoff` driver also owns the speed-prior (Levin) surface
  (`docs/classical/speed.md` is the contract). Two unit grids coexist in its
  outputs: m/Ω masses are 2⁻⁶⁴ units, speed masses are 2⁻¹²⁸ units with
  directed rounding — do not mix them when post-processing. Unknowns are
  charged on the upper side only, at t-floors read from the machine's
  fuel-death counters (`Machine::last_steps`; on a β death the counter
  includes the contraction it could not fund). `data/classical/speed_floors.txt`
  is part of the certificate-trim protocol, not a diagnostic.
- The census memos live in the census driver, deliberately outside the ladder:
  they reuse one term's fate for a *different* term, which is a fact about an
  enumeration rather than about a term. Keeping them out is what lets
  `adjudicate` and `solomonoff` share the ladder without inheriting a sweep's
  accumulated state.
- The census λ-wrap memo reuses a body's escalation-tier verdict for
  Halt/Diverge only. A hit proves the body closed via prefix-freeness; nf+2,
  same steps, chains propagate. Unknown is a resource outcome, not a fate,
  so seed-Unknown wraps run the ordinary ladder. Do not extend the memo to
  Unknowns; that reuse was built and deliberately removed.
- The census no-whnf head memo kills App-rooted terms whose head is a
  spine-certified no-whnf diverger (the escalation engine threads a spine
  flag; history and redloop fires on the root's own head chain qualify,
  oracle fires never do). Sound because no-whnf — unlike no-nf — transfers
  through application heads. Fates measured bit-identical across 4..40; only
  the escal path distribution moves.
- Census scheduling is two-phase within each group: phase A fuses generation
  with the ladder's cheap rungs across a range-split `par_iter`, phase B feeds
  the ~0.3% of survivors through an atomic work queue at single-term
  granularity. Groups run sequentially; the unit of parallelism for an
  expensive term is that term, not the enumeration subtree it came from.
- `census --checkpoint FILE --groups K` gives kill-safe group-level
  resume (config-pinned header, torn tails discarded); `--memo-out` /
  `--memo-in` persist the λ-wrap and no-whnf memos across runs. The format is
  `blamckpt v4` and the memo files use a shared tag-first codec: **files
  written by any earlier format are invalid and must be regenerated** —
  nothing in `data/` uses either format, so this costs only recompute. The
  checkpoint module is CLI-internal (`src/cli/ckpt.rs`), shared by `census`
  and `q census`; each driver owns the proof that its accumulator merges
  order-independently. A cold delta run
  (`census n n`) is halt-identical to the monolithic row but
  needs `--memo-in` for fate-identical Unknown/Diverge attribution at
  App-rooted compositions and for the escal column — memo files are part
  of the delta protocol, not a speedup.
- The census's trailing `# redloop:` line reads process-global atomics, so a
  *resumed* run counts only the fires it recomputed. Compare that line between
  monolithic runs only.
- `escalation::normal_form_spine` is the oracle-free adjudicator for
  generic-argument questions (`p x⃗` with rigid placeholders): every
  Diverge is history/redloop and spine-attributable. Targeted
  adjudication only, never enumeration throughput. The quantum escalation
  ladder built on it lives in `docs/quantum/escalation.md`; its drivers are
  `blam q skeleton FILE` (`--sig`, whose *length* sets the hole count, plus
  `--steps` / `--size`) and `blam q census` (`--dump-unknowns`,
  `--terms-file`, `--skeleton CAP`, and `--sig` for alternate signature
  universes — canonical data stays on the frozen five).
- `quantum::certificate` is the trusted skeleton checker. `adjudicate` returns
  `Result<SkelVerdict, OpenProgram>` — a typed error, never a silent hole
  reinterpretation — and `CapOut` carries `reason: Steps | Size`, `steps`, and
  `high_water_bits`, which is the telemetry the escalation docket's stratified
  sample needs. `blam q skeleton` prints an additive
  `capout split: steps-bound N  size-bound M` line on stderr.
- `classical::certificate` is the trusted checker layer for v1.2 Ratchet, v2
  HeadTowerRatchet, v3 SelectorRatchet, and v4 PassengerDiagonalRatchet. Discovery is
  `classical::certificate::search` — untrusted rayon search including HNF
  descent into closed spine arguments for `-ARG` kills, public only under
  `lab` but compiled for tests via `cfg(any(test, feature = "lab"))`.
  `try_kill` is the one four-rung sweep that both `blam cert search` and the
  soundness battery run. Sweep defaults (`CertBudgets::SWEEP`) are 1000
  steps / 100k nodes / 4096 lemma steps, measured kill-equivalent to the
  battery's 2000/200k (`::THOROUGH`). A complete four-rung frontier sweep
  (v1 + HTR + selector + PDR) measured 981.3 s wall / 6,630 s user at
  `--threads 8` on the M5 Max over the then-4,235-term frontier
  (2026-08-08, the sweep that discovered the eight PDR kills) — 1.84
  core-hours, well under the pre-measurement four-core-hour estimate,
  wall tail-bound as predicted.
  For a new kill, append to
  `data/certificates/ratchet_kills.tsv`, run `scripts/recert-kills.sh`,
  regenerate the frontier with `scripts/census-regen.sh`, trim Ω by exact
  fraction arithmetic, and ledger it. The soundness battery is a crate unit
  test at `src/classical/certificate/battery.rs` — inside the crate so it runs
  under plain `cargo test` while discovery stays off the default public
  surface: 196,848 provable halters ≤28 bits through the exact sweep
  ladder, zero fires, under a second at release. `blam cert diag` writes the
  maps described in `docs/classical/certificates/frontier.md`; its buckets
  are abort fingerprints under one candidate triple, not class boundaries.

## Ops lessons

- **Wall-clock is a UX budget; optimize everything by default.** Parallelize
  every sweep, battery, and binary with rayon from the first version. Never
  probe with the naive core: it is the deliberately slow executable spec, and
  any sound engine's `Ok` proves halting. Time new tests and binaries before
  declaring them done; anything slower than seconds is a problem to fix now.
  Runtime estimates have been wrong in both directions, so measure first.
- The work meter bounds allocations, not live graph size. For big
  adjudications, stream verdicts (`--terms-file` emits one line per result),
  use few threads, pass `--work-mult 2`, and run a RAM watchdog.
- Watchdogs must hold the exact child PID (`$!`). Never use
  `pgrep -f | head -1`; it matches the shell wrapper.
- When parsing prose-adjacent data such as `BB.txt` TODO lines, hard-cut at
  the first non-term character and assert variable indices <64 before unary
  encoding. Prose digits once became three ~200 GB strings. `tools/bbtxt.py`
  is the version that gets this right.
- Profile the size where the problem lives; the n=40 tail is invisible at
  n=37.
- This is a9's daily driver. Leave RAM headroom, kill strays when done, and
  check `ps aux | grep blam` before declaring the machine clean.

## Collaboration

Claude and Codex are co-equal here; handoffs run over the `gaslamp` CLI.
Existing threads: `blc-conformance` (certificate exchange),
`blc-interpreter` (design theory), `blc-interp-search` (slot-search spec),
`blc-qblc` (qBLC design ratification), `qblc-selfint` (self-interpretation and
bisimulation), `qblc-omega-witnesses` (dyadicity hunt and phase-2 design),
`blam-reshape` (v2 refactor design ratification and reviews),
`qalc-architecture` (qALC design contract adversarial review,
ratification, and amendments), `qalc-token-machine` (qALC token
machine feasibility and kernel review), and `qalc-rust-pillar` (Rust
reference pillar implementation-sketch review).
The kernel audit rounds (closed 2026-08-10 at audit #35's PASS)
deliberately ran threadless — a fresh context per round was the point —
labeled `qalc-vNNN-fresh-audit`; reuse that convention for any future
fresh-context verification.
Send raw evidence—encodings, diffs, measured bits—not summaries.
