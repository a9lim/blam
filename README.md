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
  halting; 2,500 stubborn unknowns).
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
  as bits of Ω. (The ≤40 interval is [0.123995323359,
  0.123995328490]; `solomonoff_40.txt` holds the pre-ratchet census
  interval, from which the 4–40 certificates trim exactly 727·2⁻⁴⁰,
  11.41% of the width. `solomonoff_41.txt` is the independent ≤41
  regeneration: its pre-certificate upper bound minus the full
  297-kill exact mass, 1703·2⁻⁴¹, reproduces the census interval to
  the last printed digit, and its 4,532 internal unknowns are
  exactly the 4,235-term frontier plus the 297 certificate kills.)
- **The coding theorem, watched live**: K(x) and −log₂ m(x) agree
  within a bit for every high-mass normal form in range
  (`solomonoff_table.txt`).
- **A semantic divergence certificate**: a generalization of the
  reference `redloop` rule (see below) that fires 11,367 times in the
  census and is fuel-robust — re-running the frontier at 16× probe
  fuel flips nothing.
- **The ratchet certificate**: a machine-checked proof format for
  *unbounded-period* loops — states `A Wⁿ[C0]` growing forever, which
  no exact-recurrence window can see. Three bounded symbolic head
  reductions over a closed metavariable (OPEN/DESC/BASE) plus a glue
  theorem; adversarially reviewed in two rounds, checkers in
  `src/cert.rs`, spec and proofs in `tools/cert/SPEC.md`. Three
  certificate classes: the v1 ratchet (with under-binder and
  trailing-spine-vector extensions), the v2 `HeadTowerRatchet`
  (six replayed obligations over named metavariables, for loops whose
  tower argument itself takes head position — co-designed with Codex,
  who derived the family's exact cycle arithmetic), and the v3
  `SelectorRatchet` (the wrapper *selects*: FAN hands control to the
  fresh argument carrying a second pattern `P[Z]`, SELECT contracts a
  wrapper layer back to the stored one — derived by Codex from a
  35-bit forcing exemplar the v1/v2 verifiers measurably reject).
  Together they kill **297 frontier terms** including `loop32` — 144
  across the 4–40 frontier plus 153 of the 2,500 fresh n=41 unknowns
  (`tools/cert/ratchet_kills.txt`), re-certified byte-identically
  at 4× discovery budgets, with a soundness battery running every
  provable halter ≤28 bits (196,848 of them) through the exact
  three-checker sweep ladder — zero false fires, in under a second
  (`tests/cert_battery.rs`).
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
- Data: `census_full5.txt` (canonical table, 4–41; `census_full4.txt`
  kept as the 4–40 record), `unknowns_v7.txt` (the 4,275-term live
  frontier; `unknowns_v2.txt` is the pre-ratchet 4–40 set),
  `solomonoff_41.txt`/`solomonoff_table41.txt` (canonical Ω/K sweep;
  the `_40` files kept as the 4–40 record), benchmarks, frontier
  files.

## Roadmap

- The contextual slot search (drop the parametric contract's must-use
  mask): survivors there are hypotheses needing whole-interpreter
  splice + battery, not proofs — the one mechanical route left to
  sub-170.
- Certificate v4 lanes (`tools/cert/CLASSIFY.md`): the measured v3
  map's next classes — the PassengerDiagonal (4 probe-accepted
  exemplars, obligations sketched in round nine) and the zfirst
  tower-recursive wrappers — over the 4,235-term frontier's
  remaining ratchet-candidates.
- Lean 4 track (`lean/`): **`¬ HasNormalForm loop32` is proven**
  (axioms: `propext` alone; zero sorries, no mathlib) — the first
  mechanical BLC formalization anywhere — by the one-way-street
  argument AND through the **general factorization bridge
  `HeadDiverges → ¬HasNormalForm`**, proven for every term via
  indexed parallel reduction (the Accattoli–Faggian–Guerrieri
  split). On top of the bridge sit the **symbolic checker layer**
  (STerm metavariables, the commuting square as the one trusted
  rule), the **generic ratchet assemblies** (v1.2, HeadTower,
  Selector), and the **rigid-head argument bridge** (`argKill`: head
  factorization with normal-form transport — no confluence — plus
  rigid-spine shape theory), so a certificate is just data:
  `certlean` translates `ratchet_kills.txt` into Lean and **all 297
  kills are individually kernel-checked `¬HasNormalForm` theorems**,
  each pinned to its named bits by a kernel-checked wire encoding
  (`lean/Certs/`, ~1.9 s for the whole batch). Next:
  prefix-freeness/Kraft; K upper bounds.
- ~~A distilled `uni.rs`~~ **built and verified** (`tools/uni/` —
  call-by-name parity with uni.py, streaming stdin, byte-identical
  on the corpus plus three adversarial witnesses, ~18× faster; PR
  kit ready, upstream submission pending).

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
