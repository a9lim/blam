# blc

A fast Rust engine for [John Tromp's binary lambda
calculus](https://tromp.github.io/cl/Binary_lambda_calculus.html), built
for algorithmic information theory: exhaustive term censuses,
busy-beaver frontiers, and exact Solomonoff/Kolmogorov measurements.

## Headline numbers

- **Complete census of every closed λ-term of 4–41 bits**:
  526,039,969 terms adjudicated (halt / diverge / unknown) in ~16.5
  min on an M5 Max (4–40 alone: ~7 min, vs ~4.3 h for the reference
  Haskell tooling). Every [A114852](https://oeis.org/A114852) count
  and every published [BBλ](https://oeis.org/A333479) value in range
  reproduced exactly (`census_full5.txt`).
- **The first BBλ(41) bound: ≥ 1,074,266,118 bits** — the busy
  beaver's first billion-bit row, one size past every published
  table (241,372,280 of the 242,222,714 closed 41-bit terms proven
  halting; the census left 2,500 unknowns, since cut to 2,347 by the
  certificate campaign).
- **BBλ(32) is fully mechanical** — `loop32`, the famous 32-bit term
  hand-excluded even in Tromp's tree, now carries a machine-checked
  divergence certificate (the *ratchet*, below). Every closed term of
  ≤32 bits is adjudicated with no hand exclusions anywhere.
- **4,235 unknowns survive maximum effort** (`unknowns_v8.txt`:
  1,888 across 4–40, fewer than the reference ledger at every
  comparable size — at n=34–36 this engine proves strictly more
  terms divergent than the traced reference engine — plus 2,347 at
  the new n=41 frontier).
- **The halting probability, exactly bracketed**:
  Ω restricted to programs ≤41 bits lies in
  **[0.124105086764, 0.124105092919]**, computed in exact rational
  arithmetic from the census counts; the interval width *is* the
  total mass of the 4,235 unknowns — the census frontier expressed
  as bits of Ω. Cross-checked by independent regeneration
  (`solomonoff_41.txt`): its pre-certificate upper bound minus the
  297 kills' exact mass (1703·2⁻⁴¹) reproduces the interval to the
  last printed digit, and its internal unknown count is exactly
  frontier + kills (4,532 = 4,235 + 297).
- **The coding theorem, watched live**: K(x) and −log₂ m(x) agree
  within a bit for every high-mass normal form in range
  (`solomonoff_table41.txt`).
- **A semantic divergence certificate**: a generalization of the
  reference `redloop` rule (see below) that fires 11,367 times in the
  4–40 census and is fuel-robust — re-running the frontier at 16×
  probe fuel flips nothing.
- **The ratchet certificate**: a machine-checked proof format for
  *unbounded-period* loops — states `A Wⁿ[C0]` growing forever, which
  no exact-recurrence window can see. Bounded symbolic head
  reductions over closed metavariables plus a glue theorem; checkers
  in `src/cert.rs`, spec and proofs in `tools/cert/SPEC.md`,
  co-designed and adversarially reviewed with Codex across ten
  rounds. Three certificate classes: the v1 ratchet (with
  under-binder and trailing-spine-vector extensions), the v2
  `HeadTowerRatchet` (six replayed obligations over named
  metavariables, for loops whose tower argument itself takes head
  position), and the v3 `SelectorRatchet` (the wrapper *selects*:
  FAN hands control to the fresh argument carrying a second pattern
  `P[Z]`, SELECT contracts a wrapper layer back to the stored one —
  derived from a 35-bit forcing exemplar the v1/v2 verifiers
  measurably reject). Together they kill **297 frontier terms**
  including `loop32` — 144 across the 4–40 frontier plus 153 of the
  2,500 fresh n=41 unknowns (`tools/cert/ratchet_kills.txt`),
  re-certified byte-identically at 4× discovery budgets, with a
  soundness battery running every provable halter ≤28 bits (196,848
  of them) through the exact three-checker sweep ladder — zero false
  fires, in under a second (`tests/cert_battery.rs`).
- **Every certificate is a kernel-checked theorem** (`lean/`): the
  first mechanical BLC formalization anywhere — zero sorries, no
  mathlib. `¬ HasNormalForm loop32` twice over (a single-redex
  invariant argument on `propext` alone, and as a corollary of the
  general head-factorization bridge `HeadDiverges → ¬HasNormalForm`,
  proven for every term via indexed parallel reduction); a symbolic
  checker layer whose one trusted rule is a commuting square; generic
  assemblies for all three certificate classes plus a rigid-head
  argument bridge (head factorization *with normal-form transport* —
  no confluence needed); and `certlean`, an untrusted emitter that
  turns `ratchet_kills.txt` into **297 individually kernel-checked
  `¬HasNormalForm` theorems** — every kill in the campaign — each
  pinned to its named bits by a kernel-checked wire encoding
  (`lean/Certs/`, ~1.9 s for the whole batch, axioms `propext` +
  `Quot.sound`). Details in `lean/README.md`.
- **The 170-bit self-interpreter is certified locally optimal**: all
  three parser branches are exhaustively optimal — VAR (21 bits, 2,672
  pruned candidates), APP (41 bits, 10.2M), ABS (43 bits, **1.43
  billion candidates in 32 s**) — each with the reference as unique
  survivor and *zero* residual unknowns (every capped candidate proven
  divergent). A design-space sweep places every credible structural
  rearrangement at 171–179 bits with the fixpoint knot unique through
  20 bits. Beating 170 now requires a new representation idea, not a
  better search (`src/bin/slotsearch.rs`, `tools/interp/`).

## The engine

A ladder of increasingly expensive adjudicators, each sound:

1. **Prescan** — a term with no redex is its own normal form.
2. **Divergence oracle** — Tromp's `noNF`/`isW` prefilter, ported.
3. **KN machine** (`src/vm.rs`) — a defunctionalized Crégut-style
   strong-normalization machine (≡ NbE), ~166M β/s single-thread,
   β-fuel *and* transition caps, normal-form bits streamed to a sink
   (nf size costs O(1) space).
4. **Escalation engine** (`src/bb.rs`) — a port of the reference
   `normalForm`: divergence oracle at every application, redex-history
   loop detection, plus the **self-feedback certificate**: for a
   self-application `A A` with `A = λx.x Q(x) …` closed and ⊥-free,
   if bounded probes give nf(A) = nf(Q(A)), then `A A` has no head
   normal form (the iterates `Tₙ₊₁ = Q(Tₙ)` are all β-equivalent and
   the rigid head re-demands the spine forever). Exact-equality
   `redloop` is the special case.
5. **KN rescue** at 10⁷ β — big-growth halters (the BBλ champions)
   that choke a substitution-based reducer normalize here in ms.

Every resource is bounded by one shared work meter charged on every
primitive operation — the design lesson of the project (see
`DESIGN-BLC.md`, "the work-meter lesson").

Enumeration (`src/enumerate.rs`) packs terms ≤63 bits into `u64`s and
splits the generation tree into subtree tasks fused with the consumers
(rayon), bit-reversal-interleaved so prefix-clustered expensive
families don't serialize.

## The quantum pillar: qBLC

The same census methodology extended to quantum-preparing programs
(design spec: `DESIGN-QBLC.md`): untyped BLC plus five primitive
constants `new / meas / cnot / t / h` handed to every program as an
application signature (order frozen by a predeclared 120-permutation
pilot), classical control, a branch-local quantum store with *dynamic*
linearity (epoch-tracked handles — cloning a qubit is a runtime `Err`,
not a type error), and measurement as exact branching: nothing is ever
sampled, every amplitude lives in **Z[ω]/√2^k exactly** (`src/dw.rs`,
ω = e^{iπ/4}), and resource exhaustion is a typed fate, never a wrong
number.

The target object is an operator-valued Solomonoff prior: the census
operator **M_Fock = ⊕ₖ M^(k)**, where M^(k)|≤N = Σₚ 2^(−|p|) vₚvₚ†
over programs halting with k live qubits — number-superselected by
construction, with **Tr M_Fock = Ω_success**. (The dimension-
conditioned Gács family G_k is the separate universality candidate;
the two are provably distinct and sandwich-related — see the spec.)

First results (`qcensus_table41.txt`: **the full 526,039,969-program
population of 4–41 bits** — the classical census's exact range — in
~30 min, per-program mass conservation Σ‖leaf‖² = 1 asserted exactly
across all 529M leaves):

- **Ω_{success,≤41} = 3424188513/2⁴⁰ ≈ 0.0031143**, exactly
  bracketed.
- **M^(1) is Hermitian and positive definite** (exact determinant
  sign), eigenvalues ≈ 6.8·10⁻⁴ and 4.8·10⁻⁸; the census's measured
  ranking of single-qubit states:
  **|0⟩ ≫ |+⟩ > T|+⟩ > |−⟩ ≫ |1⟩**.
- **Entanglement enters at exactly n=41** (`cnot (h (new X)) (new Y)`
  = a Bell pair): the 2-qubit ranking is
  **|00⟩ ≫ Bell Φ⁺ > Bell Φ⁻ > |++⟩**, the Φ⁺/Φ⁻ gap being exactly
  twice the Bell coherence M²[0][3] = 3/2⁴³. Sectors open on
  predicted schedule: k=2 at n=33, k=3 by n=41.
- Fate-divergent measurement exists from 22 bits (470,289 programs
  by ≤41) — yet **every halt mass through n=41 is dyadic**, while
  the operator's *entries* are already irrational: the √2-parts
  cancel exactly in every trace. Ω_success first goes irrational
  only once an h·t·h sandwich reaches a measurement (explicit
  witness at 45 bits). To our knowledge this is the first computed
  operator census of quantum-preparing programs.
- Two one-in-526-million events at n=41: the pillar's first
  clone-death Err (`SameQubit`) and its first capacity fate (a
  `new`-pump exceeding 12 live qubits).

The engines mirror the classical layout: `src/qeval.rs` is the naive
reference evaluator (the executable spec), `src/qvm.rs` the KN-store
machine (~200× faster on bulk) — lockstep-verified on *full leaf
sequences* (fates including stores, exact masses, contraction counts)
over the entire ≤24-bit program population.

## Running it

```
cargo build --release

# census of all closed terms of 4..40 bits, with self-verification
target/release/census 4 40 --verify

# one-term verbose adjudication
target/release/census --term 010001101000011010

# batch adjudication of a term list, full ladder, streamed verdicts
target/release/census --terms-file unknowns_v8.txt

# Solomonoff prior / K-complexity / Ω sweep
target/release/solomonoff 4 41 --table solomonoff_table41.txt

# certificate sweep over the frontier (all three classes)
target/release/certsearch --terms-file unknowns_v8.txt --threads 8

# regenerate the Lean certificate modules, then kernel-check them
cargo run --release --bin certlean && cd lean && lake build Certs

# quantum operator census (M_Fock mode; --cond-k K for the G_k sweep)
target/release/qcensus --max-n 41 --trans 67108864 --out qcensus_table41.txt
```

Knobs: `BLC_WORK_MULT` (work-meter multiplier; `2` = memory-bounded
adjudication mode), `BLC_PROBE_FUEL` (certificate probe β budget,
default 4096).

## Verification

- A114852 term counts exact at every size; all published BBλ witnesses
  4..34 reproduced (including the 327,686-bit normal form at n=34).
- The fast VM is lockstep-verified against a naive reference
  normalizer (`src/eval.rs`, the executable spec) — output bits *and*
  β-step counts — on all 658 closed terms ≤18 bits, plus targeted
  vectors.
- Halt counts are invariant under every engine change in the repo's
  history (regression guarantee; soundness arguments live in
  `DESIGN-BLC.md`).
- Conformance tests (`tests/tromp_vectors.rs`) parse Tromp's own
  corpus: clone it first with
  `git clone --depth 1 https://github.com/tromp/AIT ref/AIT`
  (gitignored, treated read-only).

## Layout

- `src/` — engine (`term`, `parse`, `eval` naive reference, `vm` KN
  machine, `oracle`, `bb` escalation + certificate, `enumerate`,
  `cert` the trusted certificate checkers; quantum pillar with the
  same layout `q`-prefixed: `qeval` naive reference, `qvm` KN-store
  machine, `dw` the exact Z[ω]/√2^k ring).
- `src/bin/` — drivers: `census` and `solomonoff` (the measurements),
  `certsearch` (certificate discovery sweep), `certdiag` (frontier
  classifier/probe instrument), `certlean` (Lean certificate
  emitter), `slotsearch` (interpreter slot searches), `qcensus` and
  `qpilot` (the quantum census and signature pilot).
- `lean/` — the Lean 4 formalization (own README).
- `tools/` — analysis: `blcc.py` (.lam→.blc compiler, byte-exact
  against 8 repo goldens), `bbtxt.py` (BB.txt trace cross-matcher),
  `frontier.py`; `tools/cert/` (certificate spec, proofs, kills
  file, classifier maps); `tools/interp/` (the self-interpreter lab:
  slot searches, knot search, sound search spec, design notes);
  `tools/uni/` (the distilled interpreter + PR kit).
- `DESIGN-BLC.md` — classical architecture, measured results, open
  questions; `DESIGN-QBLC.md` — the quantum pillar's design spec.
- `LEDGER.md` — the running lab notebook: recent sessions, with
  compacted entries living on in git history.
- Data: `census_full5.txt` (the canonical census table, 4–41),
  `unknowns_v8.txt` (the 4,235-term live frontier),
  `solomonoff_41.txt`/`solomonoff_table41.txt` (the Ω/K sweep),
  `qcensus_table41.txt` (the quantum operator census).
  Superseded generations live in git history, not the tree.

## Roadmap

- qBLC: the Gács-family G_k approximants at depth and the numeric
  sandwich constants against M^(k); the dyadicity threshold (smallest
  program with an irrational halt mass — none ≤41, witness at 45);
  the uniform conditional simulation theorem; quantum Kraft in Lean
  (`DESIGN-QBLC.md`, Staging and Open questions).
- Certificate v4 classes (specs in `tools/cert/SPEC.md` §8, measured
  candidate maps in `tools/cert/CLASSIFY.md`): the PassengerDiagonal
  first (assembly fully derived, 4 probe-accepted exemplars), then a
  zfirst variant derived from an actual survivor trace; level-indexed
  "drift" wrappers stay gated until an exemplar exhibits a finite
  generator.
- Lean: prefix-freeness/Kraft, then machine-checked K upper bounds.
- The contextual slot search (drop the parametric contract's must-use
  mask): survivors there are hypotheses needing whole-interpreter
  splice + battery, not proofs — the one mechanical route left to
  sub-170.
- n=42: needs a `--rescue` raise first (the n=41 rescue margin is
  1.06×; see `AGENTS.md`).
- Upstream: `tools/uni/` holds the distilled `uni.rs` (call-by-name
  parity with `uni.py`, byte-identical on the corpus plus three
  adversarial witnesses, ~18× faster) with its PR kit — submission
  pending.

## Attribution

The λ-calculus, the encoding, the BBλ problem, the reference
implementations, and the published values are all John Tromp's
([tromp/AIT](https://github.com/tromp/AIT)); `src/bb.rs` and
`src/oracle.rs` re-implement algorithms from `BB.lhs`/`AIT.lhs`.
This repo is an independent engine, verified against his.

Built by [a9lim](https://github.com/a9lim) with Claude (Anthropic) and
Codex (OpenAI) as agent collaborators — `LEDGER.md` and the commit
history are the honest record of what that looked like.

MIT license.
