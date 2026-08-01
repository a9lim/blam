# Working in this repo

Rust engine for binary lambda calculus / AIT experiments, verified
against Tromp's Haskell. README.md has the public story; DESIGN.md has
architecture + measured results; LEDGER.md is the 2026-07-31 overnight
lab notebook. This file is what you need to work here without
re-deriving the night's lessons.

## Ground rules

- `ref/AIT` is a read-only clone of tromp/AIT (gitignored). Never edit
  it. Recreate: `git clone --depth 1 https://github.com/tromp/AIT ref/AIT`.
  `tests/tromp_vectors.rs` needs it; the unit suite passes without it.
- The verification bar for any engine change: `cargo test --release`
  green, then a census spot-check whose **halt counts are bit-identical**
  to `census_full3.txt` at the sizes you touch. Halts have been invariant
  through every change in history; treat any drift as a bug in your
  change, not a discovery.
- Data files in the repo root are results, not scratch. The canonical
  census table is `census_full3.txt`; `unknowns_v4.txt` is the live
  frontier (1,902 terms — `unknowns_v2.txt` minus the 130 ratchet
  kills in `tools/cert/ratchet_kills.txt`). Regenerate rather than
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
10⁷ β, transitions 32×β (`--rescue-trans-mult`). Rescue β stays 10⁷:
the max successful rescue is 9,452,558 β — lowering it loses a
halter. The 32× transition mult has a 1.88× margin over the worst
measured successful ratio (17.0×, the n=38 champion: 9.45M β via
160.4M transitions); the rung-2 64× cap re-routes exactly one term in
4..40 (n=39, `escal` 169,921→169,922 in `census_full3.txt`) through
escalation to the same halt. Both trims verified verdict-identical on
full sweeps. Census 4..40: ~7.2 min (was ~23.8 pre-2026-07-31-daytime).

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

## Ops lessons (each bit us once)

- Budgets phrased in semantic units (β-steps, redex bits, allocations)
  eventually meet a term that is syntactically expensive in a way the
  unit can't see. Bound every loop by the shared work meter.
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

## Open docket (detail in LEDGER.md "Where I'd point us next")

- ~~ABS/APP interpreter slot searches~~ **done** —
  `src/bin/slotsearch.rs`, results in `tools/interp/SEARCH_RESULTS.md`.
  All three slots (VAR 21, APP 41, ABS 43 bits) are exhaustively optimal
  under the parametric contract: unique survivor = reference, nothing
  smaller, zero residual unknowns. Remaining lane is the *contextual*
  one (§2 of the spec) — drop the must-mask to 0; a survivor there is a
  hypothesis needing splice + battery, not a proof.
- ~~`loop32`~~ **done** (2026-07-31 evening) — the ratchet certificate
  (`src/cert.rs`, spec+proof in `tools/cert/SPEC.md`, Codex-reviewed
  twice: v1 glue theorem, then v1.2 trailing-spine lifting). 130
  frontier kills total (`tools/cert/ratchet_kills.txt`), n=32 row
  now zero, Ω width −10.6%. `certsearch` is the sweep bin (rayon
  parallel; discovery untrusted, checker trusted). Next lane: ratchet
  v2 = `HeadTowerRatchet` (SPEC.md §5, co-designed with Codex —
  Meta(id), indexed towers, six replayed obligations; forcing example
  n=35 `01000110100001100001010110001011010`; classifier coordinates
  in `tools/cert/CLASSIFY.md`).
- ~~bb.rs Meta caching~~ **done** (2026-07-31 daytime): cached-Meta
  nodes with exact meter parity, verified bit-identical on a full 4..40
  sweep. Honest gain 1.37× overall — the 2-5× estimate was wrong
  because post-patch the wall is stuck KN rescues, not the bb engine.
- ~~Rescue-by-`Why` budgets~~ **refuted, superseded by transition
  trims (done)**: ALL successful rescues 4..40 come from Capacity
  unknowns (max 9,452,558 β — no room to trim β); work-meter unknowns
  never rescue. The measured levers landed instead: rescue transitions
  32×β, rung-2 transitions 64×β (see "The engines"). Cumulative
  daytime speedup incl. Meta caching: 3.28× (23.8 → 7.2 min), verdicts
  bit-identical. Census prints `rescued:`/`stuck rescues:`/`rung2:`
  telemetry to keep the margins observable.
- λ-wrap memoization; n=41 census (~242M terms, nothing blocks it).
- Lean 4 track (no existing BLC formalization); ratchet-checker
  soundness is the flagship (Codex staging: infinite head chain →
  head standardization → `¬ HasNormalForm loop32`). Distilled `uni.rs`
  PR to tromp/AIT (repo root has uni.c/js/pl/py/rb — no uni.rs slot
  filled).

## Collaboration

Claude and Codex are co-equal here; handoffs run over the `gaslamp`
CLI. Existing threads: `blc-conformance` (the certificate exchange),
`blc-interpreter` (design theory), `blc-interp-search` (slot-search
spec). Send raw evidence — encodings, diffs, measured bits — not
summaries.
