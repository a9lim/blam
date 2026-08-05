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
  plus additive commits only (currently one, `uni.rs` at the root, the staged
  upstream PR; CI enforces additivity). Treat it read-only here; fork changes
  happen in their own clone, land on the fork's master, then a deliberate pin
  bump. Initialize with `git submodule update --init`.
  `tests/tromp_vectors.rs` needs it; the unit suite passes without it.
- The verification bar for any engine change is `cargo test --release`, then
  a census spot-check (`scripts/spot-check.sh`) whose halt counts are
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
- Size identity: |M| = 2L + 4A + 2 + X (L lambdas, A apps, X = Σ indices) for
  closed M. Closed-term code is prefix-free.
- `.blc` files are ASCII `0`/`1`; `.blc8` are packed MSB-first; both
  extensions appear extensionless in `ref/AIT` (quine is ASCII, hilbert
  packed).
- I/O polarity is inverted from intuition: `0` → true = λx.λy.x.
- Checked-in `.blc` goldens in `ref/AIT` are post-beam-search
  (`optimize 57 2 1`). Byte-exact targets need that pass;
  `bin/take1k.blc` is a stale golden, so do not target it.
- `tools/blcc.py` is the encoder oracle (reproduces eight repo goldens
  byte-exactly, no GHC needed). `ref/AIT`'s `uni.py`, `uni.rb`, and siblings
  work as execution oracles.

## The engines

The ladder in `src/bin/census.rs` is prescan → oracle prefilter → KN at
budget1 (transitions budget1×64) → KN at budget2 (transitions budget2×64) →
escalation engine (`src/bb.rs`, cap 2M) → KN rescue at 10⁷ β, transitions
32×β (`--rescue-trans-mult`). Rescue β stays 10⁷ through n=41, but the margin
is thin: the max successful rescue is 9,457,564 β, only 1.06× headroom. Raise
`--rescue` before running n=42. The 32× transition multiplier has a 1.88×
margin over the worst measured successful ratio (17.0×, the n=38 champion:
9.45M β via 160.4M transitions). The rung-2 64× cap reroutes exactly one term
in 4..40 (n=39) through escalation to the same halt. Both trims were
verdict-identical on full sweeps. Census 4..40 is ~7.2 min; 4..41 ~16.5 min.

- `src/vm.rs` (KN machine): every `Sink` implementation must override `var`
  with an O(1) body. The default is O(n) in an uncharged n and once cost a 5×
  slowdown. `normalize_capped` takes explicit β and transition budgets;
  plain `normalize` applies the transition floor `1 << 22`.
- `src/bb.rs`: the escalation engine charges one shared work meter on every
  primitive operation (`BLC_WORK_MULT` × cap, default 16; `=2` bounds live
  memory to ~4 GB/worker for big adjudications and has never lost a verdict).
  The self-feedback certificate (`redloop`) fires on syntactic
  self-applications. Probes run at `BLC_PROBE_FUEL` β (default 4096; verified
  insensitive through 65,536 on the whole frontier). Verdicts are typed:
  `NoNf::Diverge` versus `NoNf::Unknown(Why::{Capacity, WorkMeter})`.
- `src/enumerate.rs`: tasks are bit-reversal-interleaved on purpose.
  Expensive terms cluster by enumeration prefix and rayon splits by index
  range; do not simplify the order back.
- The census λ-wrap memo reuses a body's escalation-tier verdict for
  Halt/Diverge only. A hit proves the body closed via prefix-freeness; nf+2,
  same steps, chains propagate. Unknown is a resource outcome, not a fate,
  so seed-Unknown wraps run the ordinary ladder. Do not extend the memo to
  Unknowns; that reuse was built and deliberately removed.
- `src/cert.rs` is the trusted checker layer for v1.2 Ratchet, v2
  HeadTowerRatchet, and v3 SelectorRatchet. `src/bin/certsearch.rs` is
  untrusted rayon discovery, including HNF descent into closed spine
  arguments for `-ARG` kills. Sweep defaults are 1000 steps/100k nodes,
  measured kill-equivalent to 2000/200k; a complete three-rung frontier sweep
  is ~40 min at eight threads. For a new kill, append to
  `data/certificates/ratchet_kills.tsv`, run `scripts/recert-kills.sh`,
  regenerate the frontier with `scripts/census-regen.sh`, trim Ω by exact
  fraction arithmetic, and ledger it. `tests/cert_battery.rs` is the
  soundness battery: 196,848 provable halters ≤28 bits through the exact sweep
  ladder, zero fires, ~0.5 s. `src/bin/certdiag.rs` writes the maps described
  in `docs/classical/certificates/frontier.md`; its buckets are abort
  fingerprints under one candidate triple, not class boundaries.

## Ops lessons

- **Wall-clock is a UX budget; optimize everything by default.** Parallelize
  every sweep, battery, and binary with rayon from the first version. Never
  probe with the naive core: it is the deliberately slow executable spec, and
  any sound engine's `Ok` proves halting. Time new tests and binaries before
  declaring them done; anything slower than seconds is a problem to fix now.
  Runtime estimates have been wrong in both directions, so measure first.
- The work meter bounds allocations, not live graph size. For big
  adjudications, stream verdicts (`--terms-file` emits one line per result),
  use few threads, set `BLC_WORK_MULT=2`, and run a RAM watchdog.
- Watchdogs must hold the exact child PID (`$!`). Never use
  `pgrep -f | head -1`; it matches the shell wrapper.
- When parsing prose-adjacent data such as `BB.txt` TODO lines, hard-cut at
  the first non-term character and assert variable indices <64 before unary
  encoding. Prose digits once became three ~200 GB strings.
- Profile the size where the problem lives; the n=40 tail is invisible at
  n=37.
- This is a9's daily driver. Leave RAM headroom, kill strays when done, and
  check `ps aux | grep census` before declaring the machine clean.

## Collaboration

Claude and Codex are co-equal here; handoffs run over the `gaslamp` CLI.
Existing threads: `blc-conformance` (certificate exchange),
`blc-interpreter` (design theory), `blc-interp-search` (slot-search spec),
`blc-qblc` (qBLC design ratification), `qblc-selfint` (self-interpretation and
bisimulation), and `qblc-omega-witnesses` (dyadicity hunt and phase-2 design).
Send raw evidence—encodings, diffs, measured bits—not summaries.
