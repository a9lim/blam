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
with one measurement CLI on top.

Design principles throughout: every fast path is differential-tested
against a naive executable spec; every engine is total (fuel
exhaustion is a typed verdict, never a hang, and resource limits are
charged on a shared work meter); every quantum amplitude is exact
(ℤ[ω]/√2^k integers — no floating point anywhere).

## Install

The CLI — `cargo install`, which puts the `blam` driver on `PATH`:

```bash
cargo install blam                     # the `blam` measurement CLI
cargo install blam --features lab      # …plus the research subcommands
```

The library — `cargo add`, which adds a dependency and no binary:

```bash
cargo add blam                        # library, default features
cargo add blam --no-default-features  # engines only — one dependency, im-rc
```

Adding blam as a dependency never installs an executable, so the two
lines are not interchangeable. The default `cli` feature carries the
binary and owns the rayon dependency; the library engines themselves
need nothing but `im-rc`. The non-default `lab` feature adds the
research instruments (`lab::*`), the untrusted certificate-discovery
surface, and the subcommands built on them.

For the full lab — canonical data tables, the Lean formalization, and
Tromp's reference corpus for the `uni.rs` parity harness:

```bash
git clone --recurse-submodules https://github.com/a9lim/blam
```

Several subcommands default to repository paths the crates.io package
does not ship: `blam cert lean` reads
`data/certificates/ratchet_kills.tsv` and writes `lean/Certs/`, and the
protocols in `scripts/` regenerate files under `data/`. Cloning the repo
is the supported way to run the certificate and measurement protocols;
an installed binary still takes explicit paths for them.

## Library

The library has a `blc` substrate, three semantic pillars, and a lab layer.
`classical` and `quantum` each pair a reference executable spec with a
differential-tested machine and trusted certificate checkers. `qalc` supplies
the storeless quantum-control machine, exact amplitudes, structural admission,
and circuit compiler. The `lab` feature holds research instruments nothing
canonical depends on. One verb pair is semantic rather than cosmetic:
classical terms `normalize`, quantum programs `run`.

`classical::reference` is a textbook-faithful normal-order normalizer
that serves as the executable spec. Terms use **1-indexed de Bruijn**
(`Var(1)` = innermost binder), matching the wire format (`00` λ, `01`
application, `1ⁿ0` variable n); closed-term code is prefix-free, which
is what makes the Kraft sums of AIT exact.

```rust
use blam::classical::reference::normalize;
use blam::parse_all;

// (λx.x x)(λx.x) — bits in, bits out
let (nf, steps) = normalize(&parse_all("01000110100010")?, 1_000)?;
assert_eq!((nf.to_bits().as_str(), steps), ("0010", 2)); // λx.x
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
(trusted checkers for four machine-checkable divergence-certificate
classes), and `blc::enumerate` (parallel closed-term enumeration,
`u64`-packed). `classical::ladder` is the one cheapest-verdict-first
halting pipeline over all of them — pre-scan, oracle, two machine rungs,
escalation, rescue — configured by an explicit `LadderCfg` whose
defaults are the budgets the canonical census table was generated at.
Every sweep driver in the repo adjudicates through it.

```rust
use blam::classical::ladder::{self, LadderCfg, Verdict};
use blam::classical::machine::{Machine, Pool, SizeSink};

let mut pool = Pool::new();
let root = pool.decode_str("010001101000011010").unwrap(); // Ω
let mut sink = SizeSink::default();
let o = ladder::adjudicate(&LadderCfg::default(), &pool,
                           &mut Machine::new(), root, &mut sink);
assert_eq!(o.verdict, Verdict::Diverge); // proven, on the oracle rung
```

### qBLC

The quantum pillar mirrors the classical layout: `quantum::reference`
is the reference evaluator, `quantum::machine` the lockstep-verified
fast path, `quantum::scalar` the exact ring, `quantum::certificate` the
trusted skeleton checker. Programs are ordinary untyped BLC — quantum
enters through an application signature of five primitives in the order a
predeclared pilot fixed (`h / meas / new / cnot / t`; `quantum::sig::FROZEN`
and a pinning test hold it, because every number in `data/quantum/` is
relative to it). Qubits are opaque runtime handles with dynamic linearity
(reusing a consumed handle is a runtime `Err`, not a type error),
measurement branches the machine with exact weights — nothing is ever
sampled — and each branch leaf carries a typed fate: `Halt(store)`,
`Unknown`, `Capacity`, or `Err`.

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
`examples/adjudicate.rs`, `examples/enumerate.rs`, `examples/bell.rs`,
`examples/parse_file.rs`.

## Drivers

One binary, `blam`, whose subcommands live in `src/cli/` and whose command
table is grouped by epistemic tier rather than typing depth: engines,
measurements, certificates, instruments. Production sweeps use rayon;
`q oddmin` is an intentionally direct reference driver. Subcommands marked
*(lab)* need `--features lab` — a binary built without it names them and
says how to get them rather than pretending they do not exist.

| subcommand | what it does |
|---|---|
| `census` | adjudicate every closed term in a size range (halt / diverge / unknown) through a ladder of engines |
| `adjudicate` | the same ladder on one term or a file of them, verbosely |
| `normalize` | normalize a closed term on the KN machine |
| `solomonoff` | Solomonoff prior m(x), prefix complexity K(x), two-sided Ω bounds — exact 2⁻⁶⁴-unit arithmetic — plus the speed-prior (Levin) surface: S(x), Kt(x), depth⁰(x), certified Ω_speed brackets, and time spectra in exact 2⁻¹²⁸ units |
| `cert search` *(lab)* | divergence-certificate discovery sweep over a frontier file |
| `cert lean` | emit the certificate kills as Lean 4 modules for kernel checking |
| `cert diag` *(lab)* | where the discovery pipeline drops a term, stage by stage |
| `trace` *(lab)* | reduction-shape classifier and probe instruments |
| `q run` | run one qBLC program, one line per branch leaf |
| `q census` | the quantum operator census (`--cond-k K` dimension-conditioned mode, `--sig` alternate signature universes) |
| `qalc census` | exact finite-clock `p h t` census with Ω brackets and optional sparse `M` output |
| `q skeleton` | the trusted divergence sweep over census Unknowns (`--sig` sets the hole count by its length) |
| `q selfint` | qBLC self-interpretation and effect-tree bisimulation measurement |
| `q galois idiom` / `q galois complement` *(lab)* | the two-stage dyadicity campaign |
| `q oddmin` *(lab)* | gated reference-DP driver for the CNOT-free √2 theorem lane |
| `slots` *(lab)* | exhaustive self-interpreter slot searches |

```bash
cargo build --release                 # census, solomonoff, q census, cert lean
cargo build --release --features lab  # …plus every subcommand marked (lab)

# census of all closed terms of 4..40 bits, with self-verification
target/release/blam census 4 40 --verify

# one-term verbose adjudication
target/release/blam adjudicate 010001101000011010

# Ω / K sweep;  quantum census
target/release/blam solomonoff 4 41 --table data/classical/solomonoff_table.txt \
    --unknown-floors data/classical/speed_floors.txt
target/release/blam q census 4 41 --out data/quantum/census_table.txt
target/release/blam qalc census 4 24 --steps 256

# certificate sweep, then kernel-check the kills in Lean
target/release/blam cert search --file data/classical/unknowns.txt
target/release/blam cert lean && cd lean && lake build Certs
```

Engine knobs are flags on the ladder subcommands: `--work-mult`
(escalation work meter per capacity bit; `2` = memory-bounded
adjudication) and `--probe-fuel` (the redloop probe's β budget), with
`BLC_WORK_MULT` / `BLC_PROBE_FUEL` honoured as fallbacks. The standing
measurement protocols are encoded in `scripts/` (spot-check, census
regeneration, Ω/K regeneration, certificate re-certification).

## Verification

- The fast machine is lockstep-verified against the naive spec — output
  bits *and* β-step counts — over every closed term ≤18 bits; the
  quantum fast path likewise, over full leaf sequences (fates,
  stores, exact masses) for the entire ≤24-bit population.
- Conformance vectors from Tromp's corpus are inlined in
  `tests/tromp_vectors.rs`, so the suite needs no clone; every
  published A114852 count and BBλ value in range is reproduced
  exactly. The `ref/AIT` submodule — the
  [a9lim/AIT](https://github.com/a9lim/AIT) fork, pinned at upstream
  plus one additive commit, additivity enforced in CI — backs the
  `uni.rs` parity harness in `contrib/ait-uni/`.
- The certificate soundness battery is a crate unit test rather than an
  integration test, so plain `cargo test` streams every provable halter
  ≤28 bits through all four trusted checkers and asserts nothing fires.
- CI diffs a census spot-check against the canonical table on every push;
  any halt-count drift is a failure.
- CI checks formatting and clippy-with-warnings-denied, then runs the
  release test suite on Ubuntu and macOS in three shapes —
  `--all-features`, default features, and `--no-default-features` — so
  the lab targets, the no-lab dispatcher arms, and the im-rc-only
  library are each exercised.
- Every one of the 305 certificate kills is an individually
  kernel-checked `¬HasNormalForm` theorem in Lean 4 (zero sorries, no
  mathlib), pinned to its wire bits by a kernel-checked encoding.

## Selected results

The complete classical census covers 526,039,969 closed terms through 41
bits. It gives BBλ(41) >= 1,074,266,118 bits, settles BBλ(32) modulo the
kernel-checked certificate layer, and brackets the finite-range halting mass
as:

```text
Omega|<=41 in [0.124105086764, 0.124105092895]
```

The 170-bit classical self-interpreter is locally optimal across its three
exhaustive slot-search families. The speed-prior sweep supplies exact Kt,
depth, and time-spectrum data with post-certificate open mass below `5.93e-12`
on the beta clock.

The qBLC operator census covers the same population. Its successful mass is
`3424188513 / 2^40`; entangled successful outputs first occur at 41 bits.
The trusted skeleton layer proves 815,700 unknown-frontier programs divergent.
Output-operator irrationality first appears at 34 bits, Galois-odd leaf mass at
45 bits, and non-dyadic total successful mass at 53 bits.

The current measurements, exact evidence paths, proof boundaries, and ordered
docket live in [STATUS](docs/STATUS.md).

### qALC

qALC is the third pillar: storeless quantum control with runtime states in ℓ²
over token configurations. The [architecture](docs/quantum-algebraic/architecture.md)
and [kernel register](docs/quantum-algebraic/kernel.md) define exact H/T
scattering, full-NF readback, typed terminal sectors, checked finite admission,
a conservative total fallback, and the semantic objects `U`, `μ_p`, `ρ_p`,
finite `M`, and `Ω_qALC`.

The clean compiler sector refines arbitrary typed H/T/CNOT circuits from one
common reachable input cut to exact ideal columns, with arbitrary finite
amplitudes, full-NF output, literal common terminal garbage, tick zero, and no
earlier halt. The Rust pillar implements the complete surface and byte-checks
its transition/carrier evidence against the Python/Lean reference.

```bash
blam qalc compile 2 h:0 cx:0:1
blam qalc run 'TERM' --steps 221
blam qalc gram 'TERM'
blam qalc fixtures tests/qalc/HH.qfx
blam qalc compile 1 h:0 --term-only | blam qalc run --file - --steps 51
blam qalc census 4 24 --steps 256 --matrix qalc-matrix.txt
```

`run` and `gram` also accept `--file FILE [--program NAME]`; `--file -` reads
the one-line form emitted by `compile --term-only`. `census` is the separate
measured layer over ordinary closed BLC programs: it invokes each `p` as
`p h t`, retains the original `2^-|p|` weight, reports exact halt/error/running
mass and an Ω bracket, and optionally writes sparse finite-`M` coordinates.
Its checked-admission preflight and bounded full-cap pool change scheduling
only; `--admission-threads` can tune the latter without changing the report.

## Layout

- `src/` — the library and `src/cli/` measurement driver. The library contains
  the `blc` substrate, classical, quantum, and qALC pillars, plus lab-gated
  instruments.
- `examples/` — runnable versions of the README snippets.
- `tests/` — integration, differential, conformance, qALC fixture, and
  checkpoint-resume suites.
- `docs/STATUS.md` — current measurements, proof boundaries, and open docket;
  domain directories contain durable current contracts.
- `data/` — canonical classical, quantum, certificate, and self-interpreter
  outputs; regenerate rather than hand-edit.
- `scripts/` — standing measurement and recertification protocols.
- `lean/` — Lean 4 formalization and generated divergence theorems.
- `qalc/` — accepted Python/Lean qALC reference, proof records, batteries, and
  generated finite evidence.
- `tools/` — reusable utilities and analyzers.
- `contrib/ait-uni/` — portable `uni.rs` upstream kit and parity harness.
- `ref/AIT` — pinned Tromp corpus and execution oracles.

The crates.io package ships the engine and drivers (`src/`, `examples/`, this
README, and the license). Research data, proofs, scripts, and reference
oracles remain repository-only. Git history is the archive for superseded
documentation and data generations.

## Attribution

The lambda calculus, encoding, BBλ problem, reference implementations, and
published values are John Tromp's
([tromp/AIT](https://github.com/tromp/AIT)); `classical::escalation` and
`classical::oracle` reimplement algorithms from `BB.lhs` and `AIT.lhs`.
This repository is an independent engine verified against his.

Built by [a9lim](https://github.com/a9lim).

AGPL-3.0-or-later covers this repository's own code (© 2026 a9lim). The
`ref/AIT` submodule is upstream Tromp material without a license file; rights
remain the author's.
