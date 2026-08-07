# blam — binary lambda machine

[![CI](https://github.com/a9lim/blam/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/a9lim/blam/actions/workflows/ci.yml)
[![crates.io](https://img.shields.io/crates/v/blam.svg)](https://crates.io/crates/blam)
[![license: AGPL-3.0-or-later](https://img.shields.io/badge/license-AGPL--3.0--or--later-blue.svg)](LICENSE)

A fast Rust engine for [John Tromp's binary lambda
calculus](https://tromp.github.io/cl/Binary_lambda_calculus.html), plus
**qBLC**, a quantum extension with exact Clifford+T semantics. Built
for algorithmic information theory — exhaustive term censuses,
busy-beaver frontiers, exact Solomonoff/Kolmogorov measurement,
machine-checked divergence certificates — and shipped as a library
with a set of measurement drivers on top.

Design principles throughout: every fast path is differential-tested
against a naive executable spec; every engine is total (fuel
exhaustion is a typed verdict, never a hang, and resource limits are
charged on a shared work meter); every quantum amplitude is exact
(ℤ[ω]/√2^k integers — no floating point anywhere).

## Install

```bash
cargo add blam
```

For the full lab — canonical data tables, the Lean formalization, and
Tromp's reference corpus for conformance tests:

```bash
git clone --recurse-submodules https://github.com/a9lim/blam
```

## Library

The reference core is `term` / `parse` / `eval`: a textbook-faithful
normal-order normalizer that serves as the executable spec. Terms use
**1-indexed de Bruijn** (`Var(1)` = innermost binder), matching the
wire format (`00` λ, `01` application, `1ⁿ0` variable n); closed-term
code is prefix-free, which is what makes the Kraft sums of AIT exact.

```rust
use blam::classical::reference::normalize;
use blam::classical::Budget;
use blam::parse_all;

// (λx.x x)(λx.x) — bits in, bits out
let term = parse_all("01000110100010")?;
let nf = normalize(&term, &mut Budget::new(1_000))?;
assert_eq!(nf.to_bits(), "0010"); // λx.x
```

`classical::machine` is the production engine: a defunctionalized Crégut-style
strong-normalization machine (~166M β/s single-thread), backed by a
reusable flat `Vec<Node>` pool, with β *and* transition budgets and the
normal form streamed to a `Sink`. Measuring a gigabyte-scale normal form
therefore needs no gigabyte-scale output allocation.

```rust
use blam::classical::machine::{Machine, Pool, StringSink};

let mut pool = Pool::new();
let root = pool.decode_str("01000110100010").unwrap();
let mut nf = StringSink(String::new());
let steps = Machine::new().normalize(&pool, root, 1_000, &mut nf)?;
assert_eq!((nf.0.as_str(), steps), ("0010", 2));
```

Around the core: `classical::oracle` (Tromp's syntactic divergence
prefilter), `classical::escalation` (redex-history loop detection plus a
semantic self-feedback divergence certificate), `classical::certificate`
(trusted checkers for three machine-checkable divergence-certificate
classes), and `blc::enumerate` (parallel closed-term enumeration,
`u64`-packed).

### qBLC

The quantum pillar mirrors the classical layout: `quantum::reference`
is the reference evaluator, `quantum::machine` the lockstep-verified
fast path, `quantum::scalar` the exact ring. Programs are ordinary untyped BLC — quantum enters
through an application signature of five primitives
(`new / meas / cnot / t / h`, order frozen by a predeclared pilot).
Qubits are opaque runtime handles with dynamic linearity (reusing a
consumed handle is a runtime `Err`, not a type error), measurement branches
the machine with exact weights — nothing is ever sampled — and each branch
leaf carries a typed fate: `Halt(store)`, `Unknown`, `Capacity`, or `Err`.

```rust
use blam::quantum::reference::{apply_signature, run};
use blam::quantum::sig::FROZEN;
use blam::quantum::Budget as QBudget;
use blam::{app, lam, var};

// λ⁵. cnot (h (new t)) (new t) — a Bell pair, in 41 bits (the size
// where entanglement first enters the census)
let body = app(
    app(var(2), app(var(5), app(var(3), var(1)))),
    app(var(3), var(1)),
);
let p = (0..5).fold(body, |b, _| lam(b));

let leaves = run(apply_signature(&p, &FROZEN), &QBudget::default());
// one Halt leaf: 2 live qubits, amplitudes exactly (|00⟩ + |11⟩)/√2,
// mass exactly 1, in 9 contractions
```

Runnable versions of these snippets: `examples/normalize.rs`,
`examples/bell.rs`, `examples/parse_file.rs`.

## Drivers

One binary, `blam`, whose subcommands live in `src/cli/`; production
sweeps use rayon, while `q oddmin` remains an intentionally direct
reference driver. Subcommands marked *(lab)* need `--features lab` — a
binary built without it names them and says so rather than pretending
they do not exist.

| subcommand | what it does |
|---|---|
| `census` | adjudicate every closed term in a size range (halt / diverge / unknown) through a ladder of engines |
| `adjudicate` | the same ladder on one term or a file of them, verbosely |
| `normalize` | normalize a closed term on the KN machine |
| `solomonoff` | Solomonoff prior m(x), prefix complexity K(x), two-sided Ω bounds — exact 2⁻⁶⁴-unit arithmetic |
| `cert search` *(lab)* | divergence-certificate discovery sweep over a frontier file |
| `cert lean` | emit the certificate kills as Lean 4 modules for kernel checking |
| `cert diag` *(lab)* / `trace` *(lab)* | frontier classification and probe instruments |
| `q census` | the quantum operator census (`--cond-k K` dimension-conditioned mode, `--sig` alternate signature universes) |
| `q skeleton` | the trusted divergence sweep over census Unknowns |
| `q run` | run one qBLC program, one line per branch leaf |
| `q selfint` / `q galois idiom` *(lab)* / `q galois complement` *(lab)* | self-interpretation measurement and the two-stage dyadicity campaign |
| `q oddmin` *(lab)* | gated reference-DP driver for the CNOT-free √2 theorem lane |
| `slots` *(lab)* | exhaustive self-interpreter slot searches |

```bash
cargo build --release                   # add --features lab for the instruments

# census of all closed terms of 4..40 bits, with self-verification
target/release/blam census 4 40 --verify

# one-term verbose adjudication
target/release/blam adjudicate 010001101000011010

# Ω / K sweep;  quantum census
target/release/blam solomonoff 4 41 --table data/classical/solomonoff_table.txt
target/release/blam q census 4 41 --trans 67108864 --out data/quantum/census_table.txt

# certificate sweep, then kernel-check the kills in Lean
target/release/blam cert search --file data/classical/unknowns.txt
target/release/blam cert lean && cd lean && lake build Certs
```

Knobs: `BLC_WORK_MULT` (work-meter multiplier; `2` = memory-bounded
adjudication), `BLC_PROBE_FUEL` (certificate probe β budget). The
standing measurement protocols are encoded in `scripts/`
(spot-check, census regeneration, certificate re-certification).

## Verification

- The fast VM is lockstep-verified against the naive spec — output
  bits *and* β-step counts — over every closed term ≤18 bits; the
  quantum fast path likewise, over full leaf sequences (fates,
  stores, exact masses) for the entire ≤24-bit population.
- Conformance tests parse Tromp's own corpus from the `ref/AIT`
  submodule (the [a9lim/AIT](https://github.com/a9lim/AIT) fork,
  pinned at upstream plus one additive commit; CI enforces
  additivity). Every published A114852 count and BBλ value in range
  is reproduced exactly.
- Halt counts are invariant under every engine change in the repo's
  history — CI diffs a census spot-check against the canonical table
  on every push.
- Every one of the 297 certificate kills is an individually
  kernel-checked `¬HasNormalForm` theorem in Lean 4 (zero sorries, no
  mathlib), pinned to its wire bits by a kernel-checked encoding.

## Selected results

The measurements this engine exists for, in one breath: the complete
census of all 526,039,969 closed terms of 4–41 bits (~16.5 min on an
M5 Max) giving the first BBλ(41) bound (≥ 1,074,266,118 bits) and a
fully mechanical BBλ(32); Ω restricted to ≤41 bits exactly bracketed
in [0.124105086764, 0.124105092919]; the 170-bit self-interpreter
certified locally optimal; and on the quantum side the first computed
operator census of quantum-preparing programs (to our knowledge) —
Ω_success exactly, single- and two-qubit state rankings, entanglement
entering at exactly 41 bits, irrationality invading in measured
layers (operator entries at 34, leaf masses at 45, per-size
aggregates at 53 in the idiom sector — the non-λ⁵ complement
measured exactly dyadic through 51 so far), and qBLC
self-interpreting in 176 bits (proven minimal across the two-entry
interpreter families).

The current research boundary and ordered docket live in
[STATUS](https://github.com/a9lim/blam/blob/main/docs/STATUS.md). The durable
architecture is split into
[classical](https://github.com/a9lim/blam/blob/main/docs/classical/architecture.md)
and
[quantum](https://github.com/a9lim/blam/blob/main/docs/quantum/architecture.md)
pillars; proof plans and research notes are grouped beneath those domains.
Canonical evidence lives in
[data/](https://github.com/a9lim/blam/tree/main/data), the Lean formalization
in [lean/](https://github.com/a9lim/blam/tree/main/lean), and the chronological
record in the
[monthly ledger](https://github.com/a9lim/blam/tree/main/docs/ledger).

## Layout

- `src/` — the library (`blc` substrate, `classical` and `quantum`
  pillars, `lab` instruments); `src/cli/` — the `blam` binary.
- `examples/` — the README snippets, runnable.
- `tests/` — unit, differential, conformance, and certificate
  soundness batteries.
- `docs/STATUS.md` — the sole authority for moving results and the open
  docket; `docs/classical/` and `docs/quantum/` hold durable architecture,
  specifications, proof plans, and research notes; `docs/ledger/` is
  chronological history.
- `data/` — canonical evidence, divided into classical, quantum,
  certificate, and self-interpreter domains (regenerated, never hand-edited;
  superseded generations live in git history).
- `scripts/` — the standing protocols, runnable.
- `lean/` — the Lean 4 formalization (own README).
- `tools/` — reusable low-level utilities and analyzers; prose and canonical
  outputs do not live here.
- `contrib/ait-uni/` — the portable upstream `uni.rs` PR kit and parity
  harness.
- `ref/AIT` — submodule: the conformance corpus and execution
  oracles.

This root README is the repository's reading map and stable public story.
Moving facts belong only in `docs/STATUS.md`; architecture documents state
durable contracts, and the ledger is append-only history. The crates.io
package ships the Rust crate and driver sources (`src/` + this README);
research evidence, proofs, and supporting utilities live only in the repo.

## Attribution

The λ-calculus, the encoding, the BBλ problem, the reference
implementations, and the published values are all John Tromp's
([tromp/AIT](https://github.com/tromp/AIT)); `src/bb.rs` and
`src/oracle.rs` re-implement algorithms from `BB.lhs`/`AIT.lhs`. This
repo is an independent engine, verified against his.

Built by [a9lim](https://github.com/a9lim). Development history is preserved
in the
[monthly ledger](https://github.com/a9lim/blam/tree/main/docs/ledger)
and the commit graph; the live documentation describes the current system.

AGPL-3.0-or-later — covering this repo's own code (© 2026 a9lim).
The `ref/AIT` submodule is upstream Tromp material (which carries no
license file; rights remain the author's), referenced by pin, never
vendored.
