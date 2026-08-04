# Engine design (classical pillar)

Architecture, the rationale behind it, and the measured results that
justify it. Working document — argue with it. The running record of
how results landed is LEDGER.md (recent) and git history (permanent);
live operational facts are in AGENTS.md. The quantum pillar's design
spec is DESIGN-QBLC.md.

## Workload (measured, not assumed)

- Closed terms by BLC size (OEIS A114852, triple-confirmed): 284M terms
  ≤ 40 bits; 526M ≤ 41; 3.4B ≤ 44; growth ≈ 1.96×/bit asymptotically.
- **99.7% of closed terms normalize** (Tromp's BB.txt, n=32/36). The
  "most terms diverge" folk assumption is false.
- Fuel distribution at ≤ 24 bits: **median 1 β-step, max 11**; 8–30% of
  terms are already in normal form depending on n.
- Tromp's Haskell enumeration baseline: ~18.4k terms/s (BB.txt timings) —
  4.3 h for ≤ 40 bits.

Consequence: **per-term fixed overhead dominates the enumeration tier
completely.** Allocator behavior, parse cost, and pre-checks matter;
steps/sec of the reducer barely does. Deep reduction only matters for
the busy-beaver tail and the self-interpreter work.

## Architecture: fast tiers over one reference core

**Reference core** (`src/eval.rs`): naive shift/subst normal-order
normalizer — the executable spec. Slow, obviously correct,
differential-tested against Tromp's corpus and the corrected BBλ table.
Every fast path must agree with it (the fast VM is lockstep-verified on
output bits *and* β-step counts over all 658 closed terms ≤18 bits,
plus targeted vectors). Never used for sweeps — any sound engine's Ok
proves halting, and the KN machine is orders of magnitude faster.

**Enumeration engine** (the census ladder; rung layout and budgets in
AGENTS.md "The engines"):

- Machine (`src/vm.rs`): **defunctionalized Crégut KN ≡ NbE with
  explicit closures** (~166M β/s single-thread). APLAS 2020
  (arXiv:2009.06984) proves KN and NbE are the same algorithm under
  defunctionalization, which collapses that design choice; the
  defunctionalized form is the one Rust can arena-allocate.
- Binding: **de Bruijn indices in syntax, levels in values**; rigid
  variables are level markers; level→index at readback (`depth − 1 − lvl`).
  O(1) context extension; no shifting. Levels only pay because we go
  under binders (strong normalization).
- Memory: **one `bumpalo::Bump` per worker, `reset()` after every term,
  no GC ever.** (Measured on Tromp's nf.c: its GC costs 3× wall-clock and
  inflates step counts 65% by discarding the spine stack.) Nodes are u32
  arena indices, not pointers.
- Term repr: flat `[u32]`, tag in low bits. Decode bits → this once;
  never reduce over the bitstring.
- Control: **explicit spine/continuation stacks, zero native recursion**
  (nf.c's recursive readback segfaults at ~131k depth; BB(34)'s normal
  form is 65k-deep). Normal-form bits stream to a `Sink`, so measuring
  a huge nf costs O(1) space.
- Pre-checks, in order: (a) already-in-NF linear scan (skips 8–30%);
  (b) Tromp's syntactic divergence oracle from BB.lhs (`noNF`/`isW`);
  (c) in the escalation engine, redex-history loop detection plus the
  self-feedback certificate (below).
- Parallelism: rayon over enumeration subtree tasks fused with the
  consumers, thread-local arenas, bit-reversal-interleaved task order
  (expensive families cluster by enumeration prefix; interleaving is
  what keeps 18 threads busy at n≥40).

**Escalation engine** (`src/bb.rs`): a port of the reference
`normalForm` — divergence oracle at every application, redex-history
loop detection — for the terms the KN budgets can't settle. Cached
`Meta{bits, hash, max-free, node counts, ⊥}` on every node makes size
accounting, history hashing, closedness and ⊥-checks O(1) instead of
tree walks; the fast paths bill the work meter exactly what the
replaced walks charged, so meter exhaustion — and hence every verdict —
is independent of the caching.

**Deep programs** (self-interpreter lab, universal machine): the same
KN machine with explicit β + transition budgets. Fallback if size
explosion ever binds: Tromp's combinator-compilation path (uni.c's ION
machine, ~280M steps/s) — but bracket abstraction decouples its step
count from β-count, so fuel would not be comparable across paths.

## Fuel and metrics

- **Fuel = leftmost-outermost β-steps.** Sound as a cost model
  (Accattoli & Dal Lago, LMCS 2016, arXiv:1601.01233) and the
  AIT-meaningful unit. Tromp's tooling has no β-counter to match (his
  Haskell is NbE with nothing to instrument; uni.c counts ION iterations
  over a combinator translation), so the choice is ours.
- **The cross-implementation comparable is normal-form BLC bit-size** —
  that is BBλ's metric (BB1.lhs `bb0` is the corrected table; BB.20.out
  is stale).
- β-fuel alone bounds nothing (see the work-meter lesson below): every
  β budget is paired with a transition budget, and the escalation
  engine runs a shared per-operation work meter.

## I/O conventions (universal machine)

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
- **Fork of tromp/AIT as project home:** PR mechanism only (the repo
  actively merges outside PRs); `tools/uni/` holds the distilled
  interpreter and its PR kit.

## Measured results

Canonical table: `data/census_table.txt` — every closed term of 4..41 bits
(526,039,969 terms) adjudicated in ~16.5 min on the M5 Max, 4..40
alone ~7.2 min (vs ~4.3 h for the reference Haskell tooling over
4..40). Headline numbers and their cross-checks are in README.md;
operational state (frontier, Ω bracket, rescue margins) in AGENTS.md.

Verification: A114852 counts exact at every published size (20, 24, 28,
32, 36, 40); BBλ(n) reproduced for every published value 4..34,
including 327,686 at n=34; n=32 halt count 975,507 matches BB.txt.
Halt counts have been invariant under every engine change in the
repo's history.

BBλ lower bounds at sizes with pending unknowns (max computed |nf|
per `data/census_table.txt`): 98,421 (n=35) · 1,441,774 (36) · 4,290,711
(37) · **222,333,282 (38)** · 10,263,449 (39) · 222,333,284 (40, the
λ-wrap of the 38-champion — a consistency check that fell out for
free) · **1,074,266,118 (41)**.

### What each optimization buys (ablations at n=28..31; `scripts/bench.sh`)

- **Oracle prefilter: ~3×.** Without it every diverger burns both KN
  budgets and a full escalation; with it 2/3 of divergers cost one
  linear scan.
- **Fused parallel generation: ~8×.** Enumeration split into subtree
  tasks and run inside the workers; a serialized generator starves 18
  threads.
- **NF-prescan: neutral** at these sizes — a redex-free term also falls
  out of KN budget-1 in 0 steps almost as cheaply. Kept for clarity.
- **Cached-Meta escalation nodes: 1.37×** on the full census, and the
  invariant that de-risked the change (meter billing identical by
  construction) is the pattern for any future traversal shortcut.
- **Measured budget trims** (rescue transitions 64×→32×β, rung-2 floor
  1<<22→64×β): ~2.2× together on the full census, each verified
  verdict-identical on a full sweep. The moral, appended to the
  work-meter lesson: budget *heuristics* survive until someone measures
  the real ratios. The census prints `rescued:` / `stuck rescues:` /
  `rung2:` telemetry so the margins stay observable as sizes grow —
  current margins are in AGENTS.md ("The engines").

### The work-meter lesson (three bugs, one family)

Every semantic budget missed a syntactic cost corner:

1. **β-fuel doesn't bound the KN machine** — closure-chain walks between
   contractions can spin unboundedly (the classic machine-steps-vs-β gap;
   cost: one 2-hour hang). Fix: transition cap alongside every β cap.
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

Memory corollary: the meter bounds total *allocations*, not *live*
graph size — at large capacities the escalation engine's live graph
can reach tens of GB per worker. Big adjudication runs use few
threads, streamed verdicts, a watchdog on the child pid, and
`BLC_WORK_MULT=2`, which bounds live memory to ~4 GB/worker by
construction and has never lost a verdict.

### The frontier is saturated, not under-fueled

All frontier seeds ≤36 bits were re-adjudicated at `--bb-cap 42000000`
— Tromp's exact capacity, 21× the census default: **every verdict
stayed UNKNOWN**, at both the full work meter and `BLC_WORK_MULT=2`
(identical verdicts wherever both ran). The engine's proving power
saturates by 2M capacity; more fuel is not where new kills come from.
That is why the certificate campaign (`tools/cert/`) exists.

Cross-matching BB.txt's per-term `-- TODO:` fail traces
(`tools/bbtxt.py`): 123 of the reference's 128 traced fails are exactly
our unknowns; his hand analyses mark 106 of them as loops (all unknown
for us too). The five he fails that we resolve are the BBλ champions
(both 327,686-bit witnesses at n=34, the 98,421 witness at 35, and
wraps) — a pure BB reducer chokes on big-growth halters, the KN rescue
resolves them in milliseconds. BB.txt's summary lines report far fewer
fails than its own traces, so the file is multi-generational; the
summary-line engine's extra proving power turned out to be BBold.lhs
`redloop`, which we generalized.

### The self-feedback divergence certificate

Co-developed with Codex: for a syntactic self-application `A A` with
`A = λx.x Q(x) R̄(x)` closed and ⊥-free, if bounded KN probes give
`nf(A) = nf(Q(A))`, then `A A` has no head normal form — the rigid
head `x` survives normalization, so any hnf shape re-demands the same
spine and the states `Tₙ₊₁ = Q(Tₙ)` are all ≡β. BBold's
exact-equality `redloop` is the special case `Q(A) ≡ A`.
Implementation: `bb.rs redloop`, armed at the same hook as the
redex-history check; probes at `BLC_PROBE_FUEL` β (default 4096,
verified insensitive through 65,536 — 16× — on the whole frontier).

Besides its kills (11,367 proofs on the 4–40 census), it makes the
census *faster* (n=32: 2.79 → 1.14 s): loops that previously burned
both meters now exit on a cheap probe. At n=32 the engine reaches
exact parity with Tromp's ledger — both sides fail only `loop32`,
which the ratchet certificate (`tools/cert/SPEC.md`) then killed and
the Lean formalization proved twice.

### The λ-wrap memo

λ.T reuses T's escalation-tier verdict for Halt/Diverge ONLY: a map
hit proves the body closed via prefix-freeness; nf+2, same steps;
chains propagate. ~3% wall at n≤41; the share grows with n. Unknown
is a resource outcome, not a fate — seed-Unknown wraps run the
ordinary ladder. The memo was once extended to Unknowns and
deliberately retracted: don't rebuild that.

## Open questions

- No published head-to-head of KN vs NbE vs graph reduction for strong
  normalization in a systems language — our benchmarks are still the
  only data point we know of. The bench harness keeps the naive core
  as one contender.
- Environment representation (cons-list vs flat vec) and explicit-stack
  vs `stacker`: unstudied, settle empirically.
- Memoizing across shared structure: the λ-wrap memo realized the
  cheap end; the general shared-prefix normal-form memo remains
  unstudied.
