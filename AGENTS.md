# Working in this repo

Rust engine for binary lambda calculus / AIT experiments, verified
against Tromp's Haskell. README.md has the public story; DESIGN.md has
architecture + measured results; MORNING.md is the 2026-07-31 overnight
lab notebook. This file is what you need to work here without
re-deriving the night's lessons.

## Ground rules

- `ref/AIT` is a read-only clone of tromp/AIT (gitignored). Never edit
  it. Recreate: `git clone --depth 1 https://github.com/tromp/AIT ref/AIT`.
  `tests/tromp_vectors.rs` needs it; the unit suite passes without it.
- The verification bar for any engine change: `cargo test --release`
  green, then a census spot-check whose **halt counts are bit-identical**
  to `census_full2.txt` at the sizes you touch. Halts have been invariant
  through every change in history; treat any drift as a bug in your
  change, not a discovery.
- Data files in the repo root are results, not scratch. The canonical
  census table is `census_full2.txt`; `unknowns_v2.txt` is the live
  frontier (2,032 terms). Regenerate rather than hand-edit.

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
budget1 (transitions budget1×64) → KN at budget2 (4096) → escalation
engine (`src/bb.rs`, cap 2M) → KN rescue at 10⁷ β. Rescue stays at
10⁷: the max successful rescue observed is 9,452,558 β — lowering it
loses a halter.

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

## Open docket (detail in MORNING.md "Where I'd point us next")

- ABS/APP interpreter slot searches per `tools/interp/SEARCH_SPEC.md`
  (sound method: close candidate under rigid binders, compare full
  β-nf against the reference slot; minutes of compute on this engine).
- `loop32`: the one 32-bit term with no mechanical divergence proof
  anywhere. A context-sensitive recurrence certificate would be new.
- bb.rs meter decoupling + `Meta{max_free,bits,hash}` caching — est.
  2–5× on the escalation tier (~98% of census CPU). Medium risk;
  verify halt-invariance at 28..33 before trusting.
- Rescue-by-`Why` budgets; λ-wrap memoization; n=41 census (~242M
  terms, ~30 min, nothing blocks it).
- Lean 4 track (no existing BLC formalization); distilled `uni.rs` PR
  to tromp/AIT (repo root has uni.c/js/pl/py/rb — no uni.rs slot
  filled).

## Collaboration

Claude and Codex are co-equal here; handoffs run over the `gaslamp`
CLI. Existing threads: `blc-conformance` (the certificate exchange),
`blc-interpreter` (design theory), `blc-interp-search` (slot-search
spec). Send raw evidence — encodings, diffs, measured bits — not
summaries.
