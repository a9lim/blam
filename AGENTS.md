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
  to `census_full4.txt` at the sizes you touch. Halts have been invariant
  through every change in history; treat any drift as a bug in your
  change, not a discovery.
- Data files in the repo root are results, not scratch. The canonical
  census table is `census_full5.txt` (4..41; full4 kept as the 4..40
  record, full3 as pre-memo telemetry); `unknowns_v7.txt` is the live
  frontier (4,275 terms: the 1,894-term 4..40 residue plus 2,381 at
  n=41 — `unknowns_v2.txt` plus the fresh 41-bit unknowns, minus the
  257 certificate kills in `tools/cert/ratchet_kills.txt`;
  intermediate v3-v6 files were derivable stepping stones, deleted).
  Regenerate rather than hand-edit.

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
4..40 (n=39, `escal` 169,921→169,922 in `census_full3.txt`) through
escalation to the same halt. Both trims verified verdict-identical on
full sweeps. Census 4..40: ~7.2 min; 4..41: ~16.5 min.

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
  twice: v1 glue theorem, then v1.2 trailing-spine lifting; the v2
  `HeadTowerRatchet` — Meta(id), indexed towers, six replayed
  obligations — is the round-two co-design, implemented same day).
  257 frontier kills total (`tools/cert/ratchet_kills.txt`: RATCHET
  and RATCHET2 lines ± -ARG variants; 138 across 4..40 plus 119 of
  the 2,500 fresh n=41 unknowns), n=32 row now zero, 4..40 Ω width
  −11.41%.
  Discovery STREAMS candidates to both checkers (a rejected family is
  retired, later families still propose — Codex round three; the fix
  immediately found 2 masked kills). Sweep defaults 1000/100k,
  measured kill-equivalent to 2000/200k at 4× less wall (~12.6 min
  full-frontier).
  `certsearch` sweeps both classes (rayon parallel; discovery
  untrusted, checkers trusted); `tests/cert_battery.rs` is the
  halter soundness battery. Next lane: v3 shapes need forcing
  examples first (alternating heads, outer-context growth —
  classifier coordinates in `tools/cert/CLASSIFY.md`).
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
- ~~λ-wrap memoization~~ **done** (2026-08-01 overnight): cross-size
  verdict memo in census.rs — λ.T reuses T's escalation-tier verdict
  (prefix-free code ⇒ a map hit proves the body closed; nf+2, same
  steps; chains propagate). Codex-reviewed: Halt/Diverge reuse is
  semantically sound; Unknown reuse was REMOVED same day (Unknown is
  a resource outcome, not a fate — seed-Unknown wraps run the
  ordinary ladder, keeping the budgeted-ladder meaning exact).
  Verified verdict-identical 4..40 post-policy; the 463 wraps of
  39-bit unknowns at n=41 all direct-adjudicate to Unknown too.
  100% hit rate, honest wall gain ~3% (post-trims the cheap tiers
  dominate; the memo's share grows with n).
- ~~n=41 census~~ **done** (2026-08-01 overnight): 242,222,714 terms
  in ~16.5 min total 4..41; BBλ(41) ≥ 1,074,266,118 bits (first
  billion-bit row, one size past every published table); 2,500
  unknowns, 119 certificate-killed same night. Canonical table
  census_full5.txt. n=42 needs a --rescue raise first (see The
  engines).
- Lean 4 track: `lean/` **proves the flagship twice** —
  `loop32_noNormalForm` (axioms propext alone) by the one-way-street
  invariant (Blc/Beta.lean `Spine`, Blc/NoNf.lean `St`), AND the
  **general bridge `headDiverges_not_hasNormalForm` for every term**
  (Blc/Subst.lean five Nipkow lemmas, Blc/Par.lean indexed parallel
  reduction + substitution theorem, Blc/Factor.lean indexed split /
  merge / lex pullback — the AFG route; the naive factorization's
  lambda-passing failure and its `redexShell` repair are ledgered).
  Zero sorries, no mathlib anywhere. Every ratchet cert's
  head-divergence now concludes ¬HasNormalForm unconditionally.
  **Symbolic checker layer + generic assembly DONE (2026-08-01
  morning)**: Blc/Sym.lean (STerm — constructor is `mvar`, `meta` is
  a Lean keyword — commuting square `symHeadStep_sound` as the one
  trusted rule, LiftReds/symStepsApp for appL lifting) +
  Blc/Ratchet.lean (RatchetCert data + Valid = seven decidable
  obligations = one `decide`; glue theorem → HeadDiverges →
  noNormalForm; loop32 as data is the PoC) + `certlean` (untrusted
  Rust emitter) + lean/Certs/ (GENERATED, separate lake target):
  **214 kernel-checked ¬HasNormalForm theorems** = every plain
  RATCHET line, ~1 s batch check, axioms [propext, Quot.sound].
  Remaining export lanes: v2/HTR assembly (34 RATCHET2 kills),
  rigid-head bridge (9 *-ARG kills). Then prefix-freeness/Kraft, K
  upper bounds.
- `uni.rs` (tools/uni/): call-by-name parity rework done after
  Codex's adversarial review found call-by-need observably diverges
  from uni.py (duplicated-argument witness) and buffered stdin broke
  streaming. Now: Name thunks for program args, memoized input cells
  (inp[n] parity incl. 1-byte read-ahead), streaming 1-byte reads,
  per-emission flush, checked output bytes; verify.sh carries the
  witnesses as regression vectors. ~18× uni.py. a9 sends the PR
  (PR_KIT.md).

## Collaboration

Claude and Codex are co-equal here; handoffs run over the `gaslamp`
CLI. Existing threads: `blc-conformance` (the certificate exchange),
`blc-interpreter` (design theory), `blc-interp-search` (slot-search
spec). Send raw evidence — encodings, diffs, measured bits — not
summaries.
