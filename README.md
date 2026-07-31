# blc

A fast Rust engine for [John Tromp's binary lambda
calculus](https://tromp.github.io/cl/Binary_lambda_calculus.html), built
for algorithmic information theory: exhaustive term censuses,
busy-beaver frontiers, and exact Solomonoff/Kolmogorov measurements.

## Headline numbers

- **Complete census of every closed λ-term of 4–40 bits**:
  283,817,255 terms adjudicated (halt / diverge / unknown) in ~7 min
  on an M5 Max — vs ~4.3 h for the reference Haskell tooling. Every
  [A114852](https://oeis.org/A114852) count and every published
  [BBλ](https://oeis.org/A333479) value in range reproduced exactly
  (`census_full3.txt`).
- **2,032 unknowns survive maximum effort** — fewer than the reference
  ledger at every comparable size. At n=32 the frontier matches
  Tromp's exactly (the sole survivor is the famous `loop32`, which no
  engine proves mechanically); at n=34–36 this engine proves strictly
  more terms divergent than the traced reference engine.
- **The halting probability to nine exact decimals**:
  Ω restricted to programs ≤40 bits lies in
  **[0.123995323359, 0.123995329152]**, computed in exact integer
  arithmetic (masses in units of 2⁻⁶⁴, u128 accumulators). The
  interval width *is* the total mass of the 2,032 unknowns — the
  census frontier expressed as bits of Ω (`solomonoff_40.txt`).
- **The coding theorem, watched live**: K(x) and −log₂ m(x) agree
  within a bit for every high-mass normal form in range
  (`solomonoff_table.txt`).
- **A semantic divergence certificate**: a generalization of the
  reference `redloop` rule (see below) that fires 11,367 times in the
  census and is fuel-robust — re-running all 2,032 unknowns at 16×
  probe fuel flips nothing.
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
`DESIGN.md`, "the work-meter lesson").

Enumeration (`src/enumerate.rs`) packs terms ≤63 bits into `u64`s and
splits the generation tree into subtree tasks fused with the consumers
(rayon), bit-reversal-interleaved so prefix-clustered expensive
families don't serialize.

## Running it

```
cargo build --release

# census of all closed terms of 4..40 bits, with self-verification
target/release/census 4 40 --verify

# one-term verbose adjudication
target/release/census --term 010001101000011010

# batch adjudication of a term list, full ladder, streamed verdicts
target/release/census --terms-file unknowns_v2.txt

# Solomonoff prior / K-complexity / Ω sweep
target/release/solomonoff 4 40 --table solomonoff_table.txt
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
  `DESIGN.md`).
- Conformance tests (`tests/tromp_vectors.rs`) parse Tromp's own
  corpus: clone it first with
  `git clone --depth 1 https://github.com/tromp/AIT ref/AIT`
  (gitignored, treated read-only).

## Layout

- `src/` — engine (`term`, `parse`, `eval` naive reference, `vm` KN
  machine, `oracle`, `bb` escalation + certificate, `enumerate`).
- `src/bin/census.rs`, `src/bin/solomonoff.rs` — the two drivers.
- `tools/` — analysis: `blcc.py` (.lam→.blc compiler, byte-exact
  against 8 repo goldens), `bbtxt.py` (BB.txt trace cross-matcher),
  `frontier.py`, and `tools/interp/` (the self-interpreter lab:
  slot searches, knot search, sound search spec, design notes).
- `DESIGN.md` — architecture, measured results, open questions.
- `LEDGER.md` — the overnight lab notebook: how these results
  happened, including the failures.
- Data: `census_full3.txt` (canonical table), `unknowns_v2.txt` (the
  2,032 survivors), `solomonoff_40.txt`, benchmarks, frontier files.

## Roadmap

- The contextual slot search (drop the parametric contract's must-use
  mask): survivors there are hypotheses needing whole-interpreter
  splice + battery, not proofs — the one mechanical route left to
  sub-170.
- A certificate for `loop32` — the one 32-bit term nobody proves.
- Lean 4 track: verified prefix-freeness/Kraft, machine-checked K
  upper bounds (no Lean BLC formalization exists yet).
- A distilled `uni.rs` to PR upstream to tromp/AIT.

## Attribution

The λ-calculus, the encoding, the BBλ problem, the reference
implementations, and the published values are all John Tromp's
([tromp/AIT](https://github.com/tromp/AIT)); `src/bb.rs` and
`src/oracle.rs` re-implement algorithms from `BB.lhs`/`AIT.lhs`.
This repo is an independent engine, verified against his.

Built by [a9lim](https://github.com/a9lim) with Claude (Anthropic) and
Codex (OpenAI) as agent collaborators — `LEDGER.md` is the honest
record of what that looked like.

MIT license.
