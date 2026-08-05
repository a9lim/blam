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

### Reference semantics

`src/term.rs`, `src/parse.rs`, and `src/eval.rs` form the executable
specification. Terms are ordinary trees; reduction is direct shift and
substitution. This path favors transparent correctness and is used for
differential tests, not exhaustive sweeps.

### Enumeration and fast normalization

`src/enumerate.rs` generates closed terms directly as `(u64, length)` pairs.
Subtree tasks are bit-reversal-interleaved because expensive terms cluster by
enumeration prefix; interleaving prevents long-tail worker starvation.

`src/vm.rs` is a defunctionalized Crégut KN machine:

- syntax uses de Bruijn indices while runtime values use levels;
- terms live in a reusable flat `Vec<Node>` pool addressed by `u32` indices;
- the environment and control stacks are explicit, so evaluation does not
  depend on the native call stack;
- the pool is cleared and reused between terms; and
- normal-form bits stream into a `Sink`, allowing size measurement without
  materializing large outputs.

The KN machine is equivalent to normalization by evaluation under
defunctionalization and preserves leftmost-outermost β-counts. It reaches
about 166 million β-contractions per second on the reference workstation,
although census throughput is usually limited by enumeration overhead rather
than contraction rate.

### Adjudication ladder

`src/bin/census.rs` applies the cheapest decisive rung first:

1. scan for an already-normal term;
2. apply the sound syntactic divergence oracle in `src/oracle.rs`;
3. run the KN machine at a small β/transition budget;
4. run it again at a larger budget;
5. invoke the escalation engine in `src/bb.rs`; and
6. give remaining candidates a large-budget KN rescue.

The escalation engine ports the reference `normalForm` strategy: it applies
the divergence oracle throughout reduction, tracks redex history, and runs
the self-feedback certificate described below. Nodes cache size, hash,
closedness, maximum free index, bottom-freeness, and allocation-accounting
metadata so repeated checks remain O(1) without changing meter charges.

### Certificate layer

`src/cert.rs` contains trusted checkers for Ratchet, HeadTowerRatchet, and
SelectorRatchet certificates. `certsearch` performs untrusted discovery;
accepted candidates are rechecked by the trusted Rust layer and then emitted
as Lean data by `certlean`. The certificate contract is
`certificates/specification.md`.

### Drivers

- `census`: exhaustive behavioral census and BBλ measurement;
- `solomonoff`: exact finite-range m, K, and Ω accounting;
- `certsearch`: certificate discovery over a term set;
- `certlean`: Lean certificate generation; and
- `certdiag` / `tracescan`: frontier analysis instruments.

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
primitive operation. `BLC_WORK_MULT` controls the multiplier; large
adjudications use a small worker count, streamed output, and
`BLC_WORK_MULT=2` to bound memory pressure.

The meter bounds total charged work, not live graph size. Operational
watchdogs and explicit memory headroom remain part of large-run correctness.

### Cross-size memoization

For a closed term T, `λ.T` has the same normalization fate, the same β
sequence, and a normal form two bits larger. The census therefore reuses
escalation-tier `Halt` and `Diverge` verdicts across lambda wraps. It never
reuses `Unknown`: the wrapped program must run the ordinary ladder because
resource exhaustion is not a semantic property.

### Self-feedback certificate

For a closed, bottom-free self-application `A A` with rigid head variable x,
bounded normalization can establish that the application regenerates an
equivalent demanded spine. This proves infinite head reduction and generalizes
the exact-state `redloop` pattern. The certificate is checked at the same hook
as redex-history recurrence and uses `BLC_PROBE_FUEL` for its bounded probes.

## 5. Verification contract

Every engine change must satisfy:

1. `cargo test --release --workspace`;
2. differential agreement between `eval` and `vm` on output bits and β-counts;
3. conformance against Tromp's checked-in corpus and published BLC counts;
4. the relevant `scripts/spot-check.sh` census rows, with halt counts
   bit-identical to `data/classical/census_table.txt`; and
5. certificate recertification and `lake build Certs` when certificate paths
   or data change.

The fast VM is exhaustively lockstep-tested over all closed terms through 18
bits plus targeted deep vectors. The certificate soundness battery passes
196,848 provable halters through the exact discovery ladder and requires zero
certificate fires. All 297 canonical kills are additionally kernel-checked in
Lean with wire-identity theorems.

Independent Python tools remain deliberately separate where shared
implementation would weaken the evidence: `tools/blcc.py` checks compilation,
`tools/certificates/loop32_trace.py` checks the foundational growing loop, and
the self-interpreter harness checks the published 170-bit term.

## 6. Measured characteristics

The canonical census covers all 526,039,969 closed terms from 4 through 41
bits in about 16.5 minutes on an M5 Max; 4 through 40 takes about 7.2 minutes.
The current BBλ, frontier, and Ω values are maintained in `../STATUS.md` and
the canonical tables under `data/classical/`.

Stable performance findings:

- the divergence-oracle prefilter is worth about 3× on the measured census;
- fused parallel generation is worth about 8× over serialized generation;
- cached escalation metadata is worth about 1.37× without changing verdicts;
- measured transition-budget trims roughly halve tail cost while preserving
  the full verdict vector; and
- λ-wrap memoization currently saves about 3% of wall time, with increasing
  value as the size bound grows.

The unresolved frontier is saturated with respect to simple capacity raises.
Re-adjudicating the low-size seeds at the reference 42-million redex capacity
did not change their verdicts. New progress comes from stronger proof classes,
not larger instances of the same bounded reducer.

## 7. Design decisions

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

## 8. Boundaries and related documents

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
