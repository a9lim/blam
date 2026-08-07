# Classical BLC architecture

This document is the durable architecture contract for blam's classical
pillar. Current measurements and the open docket live in `../STATUS.md`;
chronological development history lives in `../ledger/`.

## 1. Purpose and target objects

The classical pillar turns binary lambda calculus into an exact experimental
machine for algorithmic information theory. Its principal outputs are:

- the exhaustive halt/diverge/unknown census of closed BLC terms by wire size;
- BBλ lower bounds from the largest computed normal forms;
- exact finite-range Solomonoff mass, prefix complexity, and Ω brackets;
- a mechanically checked frontier of unresolved programs; and
- reusable divergence certificates whose accepted instances are replayed in
  Lean.

The workload determines the architecture. There are 526,039,969 closed terms
through 41 bits and the population grows by about 1.96× per bit. Roughly 99.7%
of short closed terms normalize, usually in one β-step; deep reduction is
concentrated in a tiny busy-beaver and self-interpreter tail. Enumeration
therefore cares first about fixed per-term overhead and only second about peak
reducer throughput.

## 2. Semantic contract

### Language and wire format

BLC uses the prefix code

```text
00 M       lambda
01 M N     application
1ⁿ0        variable n
```

Variables are 1-indexed de Bruijn indices: `Var(1)` is bound by the nearest
enclosing lambda. For a closed term with L lambdas, A applications, and
X = Σ indices,

```text
|M| = 2L + 4A + 2 + X.
```

Closed-term encodings are prefix-free. That makes the finite Kraft and
Solomonoff sums exact rather than heuristic.

### Evaluation

The semantic reference is leftmost-outermost strong normalization under
binders. Fuel is counted in β-contractions. A successful run returns the exact
BLC normal form; a proven non-normalizer returns `Diverge`; exhaustion of a
resource bound returns `Unknown`, never a semantic claim.

Normal-form wire size is the cross-implementation BBλ metric. β-counts are
useful internally but are not directly comparable with Tromp's Haskell NbE or
the ION iterations reported by `uni.c`.

### Universal-machine I/O

- `.blc` files contain ASCII `0`/`1`; `.blc8` files are packed MSB-first.
- Bit polarity is fixed: `0` is true (`λx.λy.x`) and `1` is false
  (`λx.λy.y`).
- Streams use Scott-style cons cells; byte mode is a list of eight-bit
  MSB-first bit lists.
- The program prefix parses greedily; byte mode discards the remainder of the
  current byte before program input begins.
- Checked-in optimized programs are produced through `tools/blcc.py` using
  Tromp's `optimize 57 2 1` convention. The tool is an independent compiler
  oracle validated against eight repository goldens.

## 3. Engine stack

### Shared substrate

`src/blc/` holds what both pillars stand on: `term.rs` (1-indexed de Bruijn
trees), `wire.rs` (the prefix codec, built on an explicit pending-constructor
stack so a wire-legal λ-tower costs heap slots rather than call frames),
`enumerate.rs` (closed-term generation), and the crate-private `reduction.rs`
kernel — textbook shift and capture-avoiding substitution, the single place a
redex is contracted on plain trees.

### Reference semantics

`src/classical/reference.rs` is the executable specification: ordinary trees,
direct shift and substitution through the shared kernel, leftmost-outermost
order, fuel in β-steps. This path favors transparent correctness and is used
for differential tests, not exhaustive sweeps.

### Enumeration and fast normalization

`src/blc/enumerate.rs` generates closed terms directly as `(u64, length)`
pairs. Subtree tasks are bit-reversal-interleaved because expensive terms
cluster by enumeration prefix; interleaving prevents long-tail worker
starvation.

`src/classical/machine.rs` is a defunctionalized Crégut KN machine:

- syntax uses de Bruijn indices while runtime values use levels;
- terms live in a reusable flat `Pool` of `Node`s addressed by `u32` indices;
- the environment and control stacks are explicit, so evaluation does not
  depend on the native call stack;
- the pool is cleared and reused between terms; and
- normal-form bits stream into a `Sink`, allowing size measurement without
  materializing large outputs. `Sink::var` is a required method, never
  defaulted: a default that spelled `1ⁿ0` out through `one`/`zero` would
  cost O(n) per variable in an n nothing charges for.

The KN machine is equivalent to normalization by evaluation under
defunctionalization and preserves leftmost-outermost β-counts. Its measured
contraction rate is a moving number and lives in `../STATUS.md`; census
throughput is in any case usually limited by enumeration overhead rather than
by contraction rate.

### The adjudication ladder

`src/classical/ladder.rs` is the one implementation of the
cheapest-decisive-rung-first pipeline. Every driver that adjudicates a closed
term runs it, at budgets carried by `LadderCfg` — whose `Default` is the
configuration the canonical census table was generated at, with each field's
measurement recorded beside it:

1. pre-scan for an already-normal term;
2. apply the sound syntactic divergence oracle in `src/classical/oracle.rs`;
3. run the KN machine at `budget1` β, transitions `budget1 × 64`;
4. run it again at `budget2` β, transitions `budget2 × 64`;
5. invoke the escalation engine in `src/classical/escalation.rs` at `bb_cap`;
   and
6. give remaining candidates a KN rescue at `rescue` β, transitions
   `rescue × rescue_trans_mult`.

The rescue rung serves two purposes at once: it catches big-growth halters the
escalation engine ran out of room on, and it recovers the canonical β count of
a halt the engine proved (the engine's `simplify` inlines β-steps, so its own
count is not canonical and it reports none).

`adjudicate` runs the whole ladder. It is composed of `adjudicate_fast`
(rungs 1–3, which resolve about 99.7% of a size class in bounded time per
term) and `adjudicate_slow` (rungs 4–6) — one implementation with two entry
points, so a scheduler that wants to run the cheap half of a whole size class
before touching the expensive half gets the same verdicts by construction
rather than by parallel maintenance. A survivor of the fast half leaves no
telemetry behind, which is what lets the slow half start from a fresh record.

The census's cross-size memos are deliberately *not* part of the ladder: they
reuse one term's fate for a different term, which is a fact about an
enumeration rather than about a term, and `blam adjudicate` and
`blam solomonoff` must be able to share this code without inheriting a
sweep's accumulated state.

The escalation engine ports the reference `normalForm` strategy from Tromp's
`BB.lhs`: it applies the divergence oracle at every application, tracks redex
history (with his `simplify` argument canonicalization, which is what lets the
history catch loops whose redexes otherwise grow a fresh wrapper each cycle),
and runs the self-feedback certificate described below. Nodes cache size,
hash, closedness, maximum free index, bottom-freeness, and allocation
accounting so repeated checks stay O(1) without changing meter charges.

### Certificate layer

`src/classical/certificate/` is the trusted checker layer. `mod.rs` holds the
pattern-term representation and the trusted checkers `verify`, `verify_htr`,
and `verify_selector` for Ratchet, HeadTowerRatchet, and SelectorRatchet.
`search_impl.rs` is untrusted discovery — public as
`classical::certificate::search` only under the `lab` feature, compiled for
tests otherwise — and `battery.rs` is the in-crate soundness battery, which
lives inside the crate so it keeps running under plain `cargo test` while
discovery stays off the default public surface. Accepted candidates are
rechecked by the trusted layer and then emitted as Lean data by
`blam cert lean`. The certificate contract is `certificates/specification.md`.

### Drivers

There is one binary, `blam` (`src/cli/`), whose command table is grouped by
epistemic tier rather than by typing depth:

- engines: `blam normalize` (KN on a named term), `blam adjudicate` (the full
  ladder, verbosely or streamed over a file);
- measurements: `blam census` (exhaustive behavioral census and BBλ),
  `blam solomonoff` (exact finite-range m, K, and Ω accounting);
- certificates: `blam cert search` (discovery), `blam cert lean` (Lean
  generation), `blam cert diag` (where discovery drops a term);
- instruments: `blam trace` (reduction-shape classification), `blam slots`
  (self-interpreter slot search).

Research instruments and the untrusted discovery surface live behind the
non-default `lab` feature; a binary built without it still *recognises* their
names and says how to get them, rather than pretending the commands do not
exist. `src/cli/ckpt.rs` is a CLI-internal module, not library surface: it is
the shared group-checkpoint layer both the classical and the quantum census
drive.

## 4. Exactness and resource model

### Typed outcomes

`Halt` and `Diverge` are semantic verdicts. `Unknown` is a bounded-search
result and must never be memoized or interpreted as evidence of divergence.
This distinction is load-bearing in the census ladder and certificate
workflow.

### Dual machine budgets

β-fuel alone does not bound the KN machine: arbitrarily long environment and
control walks may occur between contractions. Every KN run therefore has both
a β budget and a transition budget.

The escalation engine presents a different hazard: substitution,
simplification, and oracle recursion can consume large syntactic work without
advancing a semantic counter. It uses one shared work meter charged on every
primitive operation, at `work_mult` units per capacity bit. Large adjudications
use a small worker count, streamed output, and `--work-mult 2` to bound memory
pressure. Engine configuration is explicit `EngineCfg`/`LadderCfg` data
rather than ambient state, throughout the library: the drivers take
`--work-mult` and `--probe-fuel` and honour `BLC_WORK_MULT`/`BLC_PROBE_FUEL`
only as fallbacks, resolving both at the CLI layer before any compute starts.

The meter bounds total charged work, not live graph size. Operational
watchdogs and explicit memory headroom remain part of large-run correctness.

### Cross-size memoization

Two facts let one term's adjudication settle a different term. Both live in
the census driver, above the ladder.

**The λ-wrap memo.** For a closed term T, `λ.T` has the same normalization
fate, the same β sequence, and a normal form two bits larger. The census
therefore reuses escalation-tier `Halt` and `Diverge` verdicts across lambda
wraps; because the code is prefix-free, a hit in a map of closed memoized
terms proves the body closed with no walk, and hits re-insert themselves so
λλ-chains stay free. It never reuses `Unknown`: the wrapped program must run
the ordinary ladder because resource exhaustion is not a semantic property.
The map rolls by size parity — during size n it holds size n−2's verdicts and
is read-only.

**The no-whnf head memo.** An application's head reduction *is* its head's
head reduction, so a term with no weak head normal form heads no application
that has one: no-whnf transfers through application heads, for every argument.
The census keeps a monotone set of terms proven to have no whnf and kills any
App-rooted term whose head is in it. Heads are strict subterms, hence facts
from strictly smaller sizes, so the set is read-only within a size. A kill is
itself a no-whnf fact and a valid λ-wrap `Diverge` seed.

The soundness boundary is exactly no-whnf versus no-nf, and it is not a
technicality. Having no *normal form* does not transfer through an application
head: the head can reach weak head normal form and the ensuing contraction can
erase whatever prevented full normalization. `λx. x Ω` =
`000110010001101000011010` has no normal form, yet applying it to `λa.λb. b`
= `000010` normalizes to `λb. b` in two β-steps. So the λ-wrap memo's
`Diverge` facts are not admissible here, and neither is a `Diverge` from just
anywhere in the search.

The attribution rule follows: only proofs that land on the root's own
head-reduction chain qualify. The escalation engine threads a spine flag, and
redex-history and redloop fires on that chain set it; oracle fires never
qualify — and never reach the test, since they resolve on the oracle rung
instead.

### Self-feedback certificate

For a closed, bottom-free self-application `A A` with rigid head variable x,
bounded normalization can establish that the application regenerates an
equivalent demanded spine. This proves infinite head reduction and generalizes
the exact-state `redloop` pattern. The certificate is checked at the same hook
as redex-history recurrence and uses `probe_fuel` β for its bounded probes.

## 5. Sweep execution

### Two-phase group scheduling

A census size class is enumerated in generation tasks, and rayon splits a
`par_iter` by index range — so a task that happens to contain a nine-million-β
rescue owns that cost alone while the rest of the pool idles, and at the top
sizes that tail is minutes long. A finer split of the *generation* does not
help, because the expensive terms are individually expensive. The unit of
parallelism changes instead. Each group runs in two phases:

- **Phase A** fuses generation with the memo lookups and the ladder's cheap
  half, so a task's cost is roughly proportional to how many terms it emits —
  which is what a range split balances well. It returns the ~0.3% of terms
  that survive rung 1.
- **Phase B** re-schedules those survivors one at a time through an atomic
  counter, each worker holding one pool and machine for its whole run of the
  queue, so the longest single term costs its group its own runtime and
  nothing more.

Groups stay sequential and a group is recorded only after both phases, so the
checkpoint contract below is untouched: a kill during phase B costs exactly
the current group. Nothing about a term's fate depends on which phase or
worker ran it — both memos are immutable for the whole size, and the slow half
of the ladder on a freshly decoded term reproduces the single pass exactly,
transition counts included. Only the order of the per-group record vectors
changes, and every consumer of those sorts or set-collects.

### Checkpointing and delta runs

`--checkpoint FILE` splits each size into K sequential groups (`--groups`,
default 64) and appends each group's full accumulator to the file as it
completes; rerunning the same command resumes after the last complete group.
The format is `blamckpt v4`:

```text
blamckpt v4 <driver config ...> target=N groups=K
G <n> <gi> <secs>
<record body lines, driver-owned tags — G/E reserved>
E <n> <gi>
```

Each record is one buffered write committed by its `E` end marker, so a kill
can only leave a truncated *suffix*: the first malformed line ends the valid
prefix, and everything from there is discarded and recomputed. Accumulator
merging must be order-independent for a grouped run to reproduce monolithic
output, and each driver owns that proof — the census's is a total witness
tie-break at tied |nf|, so the reported champion does not depend on the
partition.

The header is the fence. It pins everything that can change what a group
record *means*: the ladder budgets, the record-format version, the engine
tunables that change verdicts (work multiplier, probe fuel), and the SHA-256
fingerprint of the *contents* of any seeded memo file. A mismatch refuses the
resume loudly rather than merging two different measurements into one table
row. Scheduling-only knobs deliberately do not fence, so a rerun at a
different thread count still resumes: the header carries the task-split
target, which a resume adopts from the file (the default split is
thread-count dependent), and `--chunk` is therefore ignored — with a warning
— under `--checkpoint`.

Delta runs use `--memo-out` / `--memo-in`, which persist the λ-wrap and
no-whnf memos in the same one-line record grammar the checkpoint bodies use —
one codec, so the two files cannot drift. A cold `blam census n n` is
halt-identical to the monolithic row (halts, |nf|, β totals) but may report
`Unknown` where the sweep's accumulated no-whnf facts prove `Diverge`, and it
re-escalates memo-covered wraps. Seeded with `--memo-in` from a run through
n−1 the row is bit-identical, escalation column included. Memo files are
therefore part of the delta protocol, not a speedup — which is exactly why
their content is fingerprinted into the checkpoint header.

One reporting caveat: the trailing `redloop:` line counts process-global
atomics, so a resumed run reports only the fires it recomputed. Table rows are
unaffected.

## 6. Verification contract

Every engine change must satisfy:

1. `cargo test --release`, plus `cargo test --release --all-features` so the
   `lab` surface (instruments and untrusted discovery) is tested too;
2. differential agreement between `classical::reference` and
   `classical::machine` on output bits and β-counts;
3. conformance against Tromp's corpus and published BLC counts
   (`tests/tromp_vectors.rs`, whose bit strings are inlined so the suite runs
   without the `ref/AIT` clone);
4. the relevant `scripts/spot-check.sh` census rows, with halt counts
   bit-identical to `data/classical/census_table.txt`; and
5. certificate recertification (`scripts/recert-kills.sh`) and
   `lake build Certs` when certificate paths or data change.

The fast machine is exhaustively lockstep-tested against the reference over
all closed terms through 18 bits plus targeted deep vectors, and the two-phase
scheduler is pinned against an unsplit one-pass sweep, size by size, through
28 bits. The certificate soundness battery passes 196,848 provable halters
through the exact discovery ladder and requires zero certificate fires. All
297 canonical kills are additionally kernel-checked in Lean with wire-identity
theorems.

Independent Python tools remain deliberately separate where shared
implementation would weaken the evidence:

- `tools/blcc.py` checks compilation;
- `tools/certificates/loop32_trace.py` checks the foundational growing loop;
- `tools/self-interpreter/harness.py` (with `lc.py`, `db.py`) checks the
  published 170-bit term, and `search_fix.py` runs the knot search;
- `tools/bbtxt.py` cross-matches Tromp's `BB.txt` `-- TODO:` fail traces —
  the terms his own BB run could not adjudicate — against our census
  unknowns, encoding his de Bruijn notation to BLC bits and reporting, per
  size, which side adjudicated what; and
- `tools/frontier.py` groups an adjudication run's verdict lines by their
  innermost closed λ-wrap seed and flags any disagreement inside a `00`-chain,
  which would mean threshold dependence or an engine bug.

## 7. Measured characteristics

Canonical census coverage and wall-clock, and the current BBλ, frontier, and Ω
values, are maintained in `../STATUS.md` and the tables under
`data/classical/`.

Stable performance findings, each an A/B that left the verdict vector
unchanged:

- the divergence-oracle prefilter is worth about 3× on the measured census;
- fusing generation into the workers is worth about 8× over serialized
  generation;
- cached escalation metadata is worth about 1.37×;
- the measured transition budgets — 64× β on the KN rungs, 32× on the rescue
  — roughly halve tail cost while preserving the full verdict vector;
- λ-wrap memoization saves about 3% of wall time, with increasing value as the
  size bound grows; and
- two-phase group scheduling is worth 1.97× on a 4..38 sweep and 2.24× under
  `--checkpoint --groups 64` (sequential A/B, 18 threads): the gain is larger
  under checkpointing because a straggler tail per group is exactly what
  single-phase scheduling pays for 64 times over.

The unresolved frontier is saturated with respect to simple capacity raises.
Re-adjudicating the low-size seeds at the reference 42-million redex capacity
does not change their verdicts. New progress comes from stronger proof
classes, not larger instances of the same bounded reducer.

## 8. Design decisions

- **KN rather than graph reduction:** it preserves the chosen β metric,
  supports explicit budgets, streams readback, and behaves predictably on
  arbitrary untyped terms.
- **No HVM/Lamping fast path:** the available oracle-free fragments exclude
  patterns central to this workload, and their interaction counts are not the
  chosen semantic metric.
- **No hash-consing in the census hot path:** short-lived terms have high
  churn and insufficient stable duplication to repay the bookkeeping.
- **No optimal-reduction metric:** Lévy sharing changes the cost model rather
  than merely accelerating the selected one.
- **No native recursion in production evaluators:** known normal forms exceed
  safe call-stack depths.
- **No Unknown memoization:** resource outcomes are rerun, never promoted to
  semantic facts.
- **No no-nf reuse through application heads:** only the no-whnf fact
  transfers, and only with spine attribution.

## 9. Boundaries and related documents

The durable engine contract ends here. Moving measurements and work ordering
belong in `../STATUS.md`.

- Certificate classes and their proof obligations:
  `certificates/specification.md`
- Frontier classification evidence: `certificates/frontier.md`
- Classical self-interpreter theory and exhaustive search:
  `self-interpreter/`
- Quantum counterpart: `../quantum/architecture.md`
- Formal proofs: `../../lean/README.md`
- Canonical classical evidence: `../../data/classical/`
