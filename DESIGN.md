# Engine design

Synthesis of three research passes (2026-07-30): archaeology on Tromp's AIT
repo, interpreter-optimization literature + measurements, ecosystem survey.
Working document — argue with it.

## Workload (measured, not assumed)

- Closed terms by BLC size (OEIS A114852, triple-confirmed): 284M terms
  ≤ 40 bits; 3.4B ≤ 44; growth ≈ 1.96×/bit asymptotically.
- **99.7% of closed terms normalize** (Tromp's BB.txt, n=32/36). The
  "most terms diverge" folk assumption is false.
- Fuel distribution at ≤ 24 bits: **median 1 β-step, max 11**; 8–30% of
  terms are already in normal form depending on n.
- Tromp's Haskell enumeration baseline: ~18.4k terms/s (BB.txt timings) —
  4.3 h for ≤ 40 bits.

Consequence: **per-term fixed overhead dominates the enumeration tier
completely.** Allocator behavior, parse cost, and pre-checks matter;
steps/sec of the reducer barely does. Deep reduction only matters for the
self-interpreter tier.

## Architecture: two tiers over one reference core

**Reference core (exists):** naive shift/subst normal-order normalizer
(`src/eval.rs`) — the executable spec. Slow, obviously correct,
differential-tested against Tromp's corpus and the corrected BBλ table
through n=34. Every fast path must agree with it on samples.

**Tier A — enumeration engine** (the 284M-term sweep):

- Machine: **defunctionalized Crégut KN ≡ NbE with explicit closures**.
  APLAS 2020 (arXiv:2009.06984) proves KN and NbE are the same algorithm
  under defunctionalization, which collapses that design choice; the
  defunctionalized form is the one Rust can arena-allocate.
- Binding: **de Bruijn indices in syntax, levels in values**; rigid
  variables are level markers; level→index at readback (`depth − 1 − lvl`).
  O(1) context extension; no shifting. Levels only pay because we go under
  binders (strong normalization).
- Memory: **one `bumpalo::Bump` per worker, `reset()` after every term,
  no GC ever.** (Measured on Tromp's nf.c: its GC costs 3× wall-clock and
  inflates step counts 65% by discarding the spine stack.) Nodes are u32
  arena indices, not pointers.
- Term repr: flat `[u32]`, tag in low bits. Decode bits → this once;
  never reduce over the bitstring.
- Control: **explicit spine/continuation stacks, zero native recursion**
  (nf.c's recursive readback segfaults at ~131k depth; BB(34)'s normal
  form is 65k-deep).
- Pre-checks, in order: (a) already-in-NF linear scan (skips 8–30%);
  (b) Tromp's syntactic divergence oracle from BB.lhs (`noNF`/`isW` —
  resolves all but ~25 in 11.1M at n=36); (c) redex-history loop
  detection, with the mode-switch reset subtlety from BB.lhs:89.
- Parallelism: rayon `par_chunks` over enumeration subtrees (hundreds+
  terms per task), thread-local arenas. Embarrassingly parallel.

Target: ~1M terms/s/core ⇒ **≤ 40 bits in ~20 s on 16 cores** vs Tromp's
4.3 h. The win is per-term overhead, not reducer speed.

**Tier B — deep programs** (self-interpreter, universal machine, m(x)
dovetailing): same machine with a growable heap and stacks. Here size
explosion is reachable and the Accattoli useful-sharing results start to
bind; revisit sharing only if profiling demands it. Fallback: Tromp's
combinator-compilation path (uni.c's ION machine, measured ~280M
steps/s) — but bracket abstraction decouples its step count from β-count,
so Tier B fuel would not be comparable across paths.

## Fuel and metrics

- **Fuel = leftmost-outermost β-steps.** Sound as a cost model
  (Accattoli & Dal Lago, LMCS 2016, arXiv:1601.01233) and the
  AIT-meaningful unit. Tromp's tooling has no β-counter to match (his
  Haskell is NbE with nothing to instrument; uni.c counts ION iterations
  over a combinator translation), so the choice is ours.
- **The cross-implementation comparable is normal-form BLC bit-size** —
  that is BBλ's metric (BB1.lhs `bb0` is the corrected table; BB.20.out
  is stale).
- Tier A budgets of 10³–10⁴ are generous given the measured median of 1.
- Tier B may add a memory ceiling; note Tromp's BB.lhs fuels by
  cumulative redex bit-size (42M budget) — an alternative if β-count
  proves unsatisfying for the tail.

## I/O conventions (for the universal-machine milestone)

- `.blc` = ASCII '0'/'1'; `.blc8` = packed MSB-first. `ait/quine` is
  ASCII, `hilbert` is packed — both extensionless.
- **Polarity: '0' → true = λx.λy.x, '1' → false = λx.λy.y.** Inverting
  this silently complements all output.
- Streams: Scott-style `cons = \z. z h t`, nil = false; byte mode = list
  of 8-bit MSB-first bit-lists. Output = maximal well-formed cons-list
  prefix of the result.
- Program prefix parses greedily off the stream; byte mode discards the
  rest of the current byte before input starts.
- Checked-in `.blc` files are post-`optimize 57 2 1` (η + shrinking β
  beam search) — byte-exact encoding goes through `tools/blcc.py`
  (validated against 8 repo goldens; `bin/take1k.blc` is a known-stale
  golden, don't target it).

## Rejected

- **HVM / interaction nets:** built on the oracle-free Lamping fragment —
  **unsound for arbitrary untyped terms**, and the excluded patterns
  (self-application, Church-numeral composition) are exactly what
  dominates short closed terms. Silent wrong answers are disqualifying
  for AIT. Also: interactions ≠ β-steps, 8 GB reservation, no fuel API.
- **Hash-consing:** low intra-term duplication + high churn in
  enumeration = worst case for it.
- **Optimal (Lévy) reduction:** not a reasonable cost model (Lawall &
  Mairson 1996); wrong unit for AIT regardless of speed.
- **Fork of tromp/AIT as project home:** PR mechanism only, at `uni.rs`
  distillation time (repo actively merges outside PRs: 9/10, latest
  2026-07-24).

## Validation ladder

1. Decode/encode round-trip: Omega table rows, 5 smallest closed terms,
   corpus bitstrings (done in tests/tromp_vectors.rs).
2. BBλ witnesses n=20..34 against BB1.lhs values (done, naive core;
   redo on fast VM).
3. Differential: fast VM vs naive core on exhaustive small n + random
   larger terms.
4. Enumeration counts vs A114852; halting fractions vs BB.txt.
5. Universal machine: `uni.lam` bits ++ quine ++ quine self-doubling;
   take256; primes1k (1024-bit characteristic sequence); bf.blc8 +
   hw.bf → "Hello World!"; hilbert byte-mode. Oracles: uni.py/rb/pl/js
   in ref/AIT (no GHC needed).
6. BBλ(n) reproduction for all published n, then the frontier.

## Results (census of 2026-07-31)

Full sweep of every closed term of 4..40 bits: **283,817,255 terms in
~24 min** on the M5 Max (18 threads), vs ~4.3 h for Tromp's Haskell
tooling over the same range. Canonical table in `census_full2.txt`
(includes the divergence certificate and the audit patches; 2,032
unknowns, listed in `unknowns_v2.txt`; per-size unknown-cause splits
~83% capacity / 17% work-meter).

Verification: A114852 counts exact at every published size (20, 24, 28,
32, 36, 40); BBλ(n) reproduced for every published value 4..34,
including 327,686 at n=34; n=32 halt count 975,507 matches BB.txt.

Frontier lower bounds (max computable |nf|, pending unknowns at each
size): 98,421 (n=35) · 1,441,774 (36) · 4,290,711 (37) ·
**222,333,282 (38)** · 10,263,449 (39) · 222,333,284 (40, the λ-wrap of
the 38-champion — a consistency check that fell out for free).

### What each optimization buys (bench_results.txt, n=28..31)

- **Oracle prefilter: ~3×.** Without it every diverger burns both KN
  budgets and a full escalation; with it 2/3 of divergers cost one
  linear scan.
- **Fused parallel generation: ~8×.** Enumeration split into subtree
  tasks and run inside the workers; a serialized generator starves 18
  threads.
- **NF-prescan: neutral** at these sizes — a redex-free term also falls
  out of KN budget-1 in 0 steps almost as cheaply. Kept for clarity.
- **budget1 16 vs 64 vs 512: flat** — *explained post-audit*: rung 1's
  transition floor equaled rung 2's, so rung 1 was redundant at any β
  height. It now runs at `budget1 × 64` transitions and is a real rung.
- **Task-split granularity 1152..73728: flat** (bench_split_results.txt)
  — but this A/B ran at n=37, where the expensive tail is invisible.
  The audit's live profile of n=40 found the tail *does* serialize
  there: expensive terms cluster by enumeration prefix, adjacent tasks
  are adjacent prefixes, and rayon splits by index range — 17 of 18
  workers idle. Fix: bit-reversal task interleave
  (`enumerate::interleave_tasks`). The other real cost stands: each
  Unknown burns a stuck rescue (~3.2 s of transition fuel).

### The work-meter lesson (three bugs, one family)

Every semantic budget missed a syntactic cost corner:

1. **β-fuel doesn't bound the KN machine** — closure-chain walks between
   contractions can spin unboundedly (the classic machine-steps-vs-β gap;
   cost: one 2-hour hang). Fix: transition cap at 64× β-fuel.
2. **Redex-size capacity doesn't bound the escalation engine** —
   subst/simplify allocation on huge intermediates is invisible to it.
   Fix: a work meter charged in the `lam`/`app` constructors.
3. **The oracle allocates nothing**, so an allocation-charged meter is
   blind to its quadratic recursion on huge terms. Fix: the same meter,
   moved to the oracle and charged per predicate step.

The robust invariant: **one shared meter, charged on every primitive
operation of every engine**, armed per adjudication. Any budget phrased
in a semantic unit will eventually meet a term that is syntactically
expensive in a way the unit can't see.

### Frontier unknowns (42M-capacity adjudication)

The 2903 census unknowns (n=32..40) collapse to 2282 λ-wrap seeds. All
103 seeds ≤36 bits were re-adjudicated at `--bb-cap 42000000` — Tromp's
exact capacity, 21× the census default: **every verdict stayed
UNKNOWN**, at both the full work meter and the memory-bounded
`BLC_WORK_MULT=2` (identical verdicts wherever both ran). Our port's
proving power saturates by 2M capacity.

Cross-matching BB.txt's per-term `-- TODO:` fail traces
(`tools/bbtxt.py`): 123 of his 128 traced fails are exactly our
unknowns; his hand analyses mark 106 of them as loops (all unknown for
us too). The five he fails that we resolve are the BBλ champions (both
327,686-bit witnesses at n=34, the 98,421 witness at 35, and wraps) —
his pure BB reducer chokes on big-growth halters, our KN rescue
resolves them in milliseconds. BB.txt's summary lines report far fewer
fails (1/4/6/17/25) than its own traces (5/2/17/32/72), so the file is
multi-generational; the summary-line engine's extra proving power
turned out to be BBold.lhs `redloop`, which we then generalized.

### The self-feedback divergence certificate (closing the gap)

The night's theory result, co-developed with Codex: for a syntactic
self-application `A A` with `A = λx.x Q(x) R̄(x)` closed and ⊥-free,
if bounded KN probes give `nf(A) = nf(Q(A))`, then `A A` has no head
normal form — the rigid head `x` survives normalization, so any hnf
shape re-demands the same spine and the states `Tₙ₊₁ = Q(Tₙ)` are all
≡β. BBold's exact-equality `redloop` is the special case `Q(A) ≡ A`.
Implementation: `bb.rs redloop`, armed at the same hook as the redex-
history check; probes at `BLC_PROBE_FUEL` β (default 4096).

Effect on the census: unknowns 2,903 → **2,032** (11,367 certificate
proofs), halts unchanged at every size — and faster (n=32: 2.79 →
1.14 s), since loops that previously burned both meters now exit on a
cheap probe. n=32 reaches exact parity with Tromp's ledger (both sides
fail only `loop32`, which no engine mechanically proves); at 34-36 we
prove strictly more than his traced engine, including both previously
unexplained 35/36-bit residuals. Fuel-robustness: re-adjudicating all
2,032 survivors at `BLC_PROBE_FUEL=65536` (16×) flips nothing.

### The daytime patch set (2026-07-31 afternoon): a measured 3.28×

Census 4..40 went from ~23.8 min to **7.2 min** (`census_full3.txt`,
the canonical table) in three verdict-preserving steps, each verified
by a full sweep:

1. **Cached-Meta escalation nodes (1.37×).** Lam/App nodes carry
   `Meta{bits, hash, max-free, node counts, ⊥}` composed O(1) at
   construction; size accounting, history hashing, closedness and
   ⊥-checks stop walking trees (walks that were exponential on
   Rc-shared structures). The invariant that de-risked it: traversal
   fast paths bill the work meter *exactly* what the replaced walk
   charged (O(1) formulas from cached counts), so meter exhaustion —
   and hence every verdict and cause split — is bit-identical by
   construction. The audit's 2-5× estimate was wrong because the
   post-patch wall was elsewhere: stuck KN rescues.
2. **Rescue transition cap 64× → 32×β.** Measured across every
   successful rescue in 4..40: worst transition/β ratio is 17.0 (the
   n=38 champion, 9,452,558 β via 160,434,707 transitions), so 32×
   keeps a 1.88× margin while halving the dominant stuck-rescue cost.
   The β budget is untouchable — the champion uses 94.5% of it.
3. **Rung-2 transition floor 1<<22 → 64×β.** Telemetry showed exactly
   one rung-2 success in the entire census ever exceeded 64×β
   transitions, while ~150k stuck rung-2 attempts per big size burned
   the full 4.2M-transition floor. That one term (n=39) now routes
   through escalation+rescue to the same halt — the sole column change
   anywhere: `escal` 169,921 → 169,922.

Moral, appended to the work-meter lesson: budget *heuristics* (64×,
1<<22) survive until someone measures the real ratios; the census now
prints `rescued:` / `stuck rescues:` / `rung2:` telemetry so the
margins stay observable as sizes grow.

Memory note: at 42M capacity the escalation engine's *live* graph can
reach tens of GB per worker even though the meter bounds total
allocations — adjudication runs use few threads, a watchdog on the
child pid, and streamed verdicts. `BLC_WORK_MULT=2` bounds live memory
to ~4 GB/worker by construction and lost nothing empirically.

## Open questions

- No published head-to-head of KN vs NbE vs graph reduction for strong
  normalization in a systems language — our benchmarks will be the first
  data point. Bench harness should keep the naive core as one contender.
- Environment representation (cons-list vs flat vec) and explicit-stack
  vs `stacker`: unstudied, settle empirically.
- Crate name: `blc` is taken on crates.io (ljedrz/blc). Decide before
  any publish; local name unaffected.
- Memoizing normal forms of shared enumeration prefixes: promising
  (siblings share structure by construction), but only after the simple
  engine is measured.
