# blam — binary lambda machine

[![CI](https://github.com/a9lim/blam/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/a9lim/blam/actions/workflows/ci.yml)
[![crates.io](https://img.shields.io/crates/v/blam.svg)](https://crates.io/crates/blam)
[![license: AGPL-3.0-or-later](https://img.shields.io/badge/license-AGPL--3.0--or--later-blue.svg)](LICENSE)

A fast Rust engine for [John Tromp's binary lambda
calculus](https://tromp.github.io/cl/Binary_lambda_calculus.html) and
algorithmic information theory. It runs Tromp's programs and reimplements
his two tools, `blc` and `uni`, checked byte for byte against the originals
(the few deliberate differences are listed in
[programs](docs/classical/programs.md)). It also measures: exhaustive
censuses of every closed term through 41 bits, busy-beaver values proved
exact to BBλ(35), certified bits of the halting probability Ω, exact
Solomonoff and speed-prior masses, and divergence certificates checked in
Lean. Two quantum pillars with exact Clifford+T semantics sit beside the
classical one: **qBLC** (quantum data under classical control) and **qALC**
(storeless quantum control).

Design principles throughout: every fast path is differential-tested
against a naive executable spec; every engine is total (fuel
exhaustion is a typed verdict, never a hang, and resource limits are
charged on a shared work meter); every quantum amplitude is exact
(ℤ[ω]/√2^k integers — no floating point anywhere).

## Install

```bash
cargo install blam                     # the `blam` command
cargo install blam --features lab      # …plus the research subcommands
cargo add blam                         # the library (no binary)
cargo add blam --no-default-features   # engines only — one dependency, im-rc
```

The default `cli` feature carries the binary and owns the rayon
dependency; the library engines need nothing but `im-rc`. The non-default
`lab` feature adds research instruments (`lab::*`), the untrusted
certificate-discovery surface, and the subcommands built on them.

For the canonical data, the Lean formalization, the measurement protocols,
and Tromp's program corpus (the examples below use it), clone with the
submodule:

```bash
git clone --recurse-submodules https://github.com/a9lim/blam
```

## Quick start

Terms go in as wire bits, as λ-notation, or as a `.lam` / `.blc` / `.blc8`
file:

```bash
blam normalize '(\x.x x) (\y.y)' --db          # \1   (2 beta)
blam adjudicate '(\x.x x) (\x.x x)'            # DIVERGE, on the oracle rung
```

`blam blc` is Tromp's `blc` tool, every action, without GHC.
`blam uni` is his universal machine:

```bash
cd ref/AIT
blam blc run8 ait/bf.lam < ait/hw.bf                       # Hello World!
blam blc run characteristic_sequences/primes.lam | head -c 32
echo -n abracadabra | blam blc run8 lists/sort.lam         # aaaaabbcdrr
blam blc blc ait/uni.lam          # the compiled bits, as `blc blc` prints them
blam blc boxchar ait/uni.lam      # Tromp's lambda diagram
(cat hilbert; echo 12) | blam uni
```

Programs run on a call-by-need machine that shares work the way Tromp's
Haskell evaluator does. Output streams as it is computed, so an endless
list prints until its reader stops reading. Memory is the live data, under a
cap (`--live`). [`docs/classical/programs.md`](docs/classical/programs.md)
is the contract, including the few deliberate differences from Tromp's
tools.

`blam golf` shrinks programs by β-steps alone and certifies the result
([golf](docs/classical/golf.md)).

## Results

The classical census covers all 526,039,969 closed terms through 41 bits.
With kernel-checked adjudications of every program it leaves open at 33–35
bits, it independently confirms Tromp's busy-beaver values
**BBλ(33) = 1,812**, **BBλ(34) = 327,686**, and
**BBλ(35) = 38,127,987,424,941 normal-form bits**
([OEIS A333479](https://oeis.org/A333479)), the last a symbolically proved
Church numeral 3^27; the exhaustive census itself remains a Rust computation
([proof record](docs/classical/certificates/busy-beaver.md), formalizing
Tromp's hand arguments). It also gives the finite-range halting mass

```text
Omega|<=41 in [0.124105086841, 0.124105091271]
```

Past the census range, a certified count of normalizing terms beyond 41
bits and an exact bound on the closed-term Kraft mass bracket the true
halting probability over all sizes, pinning its first nine binary digits
([omega](docs/classical/omega.md)):

```text
Omega in [0.125480570009, 0.125985261357]  =  0.001000000...
```

An 8M-sample estimate on the full ladder puts Ω at 0.1259743, 2.2×10⁻⁶ below
the tenth bit's threshold, so the tenth bit is almost certainly 0; it is not
proven.

- **The coding theorem on BLC's own machine**
  ([coding](docs/classical/coding.md)): the constant is certified at
  c ≥ 3.689; compression starts at 22 bits and stays a duplication effect, at
  0.2–0.6% of normal forms, through 41 bits; and an output's mass among
  programs at least 6 bits longer picks out the compressible outputs with AUC
  0.98–1.00.
- **The speed prior** ([speed](docs/classical/speed.md)): exact Kt, depth,
  and time spectra, with post-certificate open mass below 3.19×10⁻¹² on the β
  clock.
- **The self-interpreter** ([interpreter](docs/classical/self-interpreter/interpreter.md)):
  162 bits, six below Sean Palmer's 168. Its reader applies the input stream
  to the identity, so the first cell selects its own tail as the zero branch,
  and passes the parser's second-bit stage as an operand that the variable
  branch erases. Lean proves it correct for every closed program, as it does
  the previous record, the 165, and the 168. Nothing smaller appears in its
  let structure or its βη components. Every self-interpreter has at least 37
  bits by a reviewed handwritten proof, and at least 27 kernel-checked in Lean
  ([global floor](docs/classical/self-interpreter/global-floor.md)). The same
  reader gives universal machines of 172 (non-strict) and 184 (strict) bits,
  against Tromp's 178 and 190, and Lean proves all four universal
  ([universal](docs/classical/self-interpreter/universal.md)).
- **The rest of tromp/AIT** ([golf](docs/classical/golf.md), sent upstream as
  [tromp/AIT#13](https://github.com/tromp/AIT/pull/13)): 40 programs shrink by
  1,159 bits in all. The IOCCC BLC8 universal machine goes from 43 bytes to 38
  (strict) and 36 (non-strict), the bytewise BLC2 machine from 500 to 390
  bits, KP(x) ≤ KO(x) + c from c = 615 to 540, the symmetry-of-information
  constants by up to 132 bits, and Loader's number fits in 1781 bits.

The qBLC operator census covers the same population. Its successful mass is
`3424188513 / 2^40`; entangled successful outputs first occur at 41 bits.
The trusted skeleton layer proves 815,700 unknown-frontier programs
divergent. Output-operator irrationality first appears at 34 bits,
Galois-odd leaf mass at 45 bits, and non-dyadic total successful mass at 53
bits.

qALC's output operator dominates the whole classical BLC output prior at four
bits of overhead, so `Ω_qALC ≥ Ω_BLC / 16` and `Ω_qALC ≥ 1/256`
unconditionally ([objects](docs/quantum-algebraic/objects.md)). Its
finite-clock census is converged contiguously through 27 bits, and its speed
prior has a certified ε-stopping rule.

The current measurements, evidence paths, proof boundaries, and ordered
docket live in [STATUS](docs/STATUS.md).

## Check it yourself

From a clone (`cargo build --release`), each claim above has a short path
to its evidence:

```bash
# The census through 35 bits in a few seconds; every row is bit-identical
# to the canonical table but for its timing columns. (CI checks 4..32.)
scripts/spot-check.sh 4 35

# Every certificate kill and direct BB proof, kernel-checked in Lean 4
# (no sorries, no mathlib), then the frontier, exact bounds, and true-Ω
# endpoints they imply, regenerated and diffable against data/.
cd lean && lake build Certs BusyBeaver && cd ..
scripts/bb-regen.sh && git diff --stat data/

# Tromp's toolchain, byte for byte (needs GHC to build his blc).
tools/ait/build_blc.sh /tmp/tromp && tools/ait/actions.py --blc /tmp/tromp/blc
```

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
strong-normalization machine (~170M β/s single-thread), backed by a
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

`blc::notation` reads Tromp's λ-notation and compiles it as his `blc blc`
does. `classical::lazy` is the call-by-need machine that runs programs, and
`classical::io` holds Tromp's I/O conventions: input lists, his `bshow`
reading of a normal form, and `Reader`, a `Sink` that performs that reading
while the normal form streams.

```rust
use blam::{app, blc::notation};
use blam::classical::io::{self, Dialect, Reader};
use blam::classical::lazy::{Lazy, Limits};
use blam::classical::machine::Pool;

// Prepend the bit 0 to the input, and read the output as blc run does.
let prog = notation::compile(r"\input. let cons = \a\b\p. p a b in cons (\x\y.x) input")?;
let mut pool = Pool::new();
let root = pool.from_term(&app(prog, io::bits(&[true, true], io::nil())));
let mut out = Reader::new(Dialect::Tromp, 0, Vec::new());
Lazy::new().normalize(&pool, root, Limits::default(), &mut out)?;
assert_eq!(out.finish()?, b"011");
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
`examples/adjudicate.rs`, `examples/run_program.rs`, `examples/enumerate.rs`,
`examples/bell.rs`, `examples/parse_file.rs`.

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
Its checked-admission preflight and bounded canonical-retry pool change
scheduling only; `--retry-threads` can tune the latter without changing the
report.

## Drivers

One binary, `blam`, whose subcommands live in `src/cli/` and whose command
table is grouped by epistemic tier rather than typing depth: engines,
programs, measurements, certificates, instruments. Production sweeps use rayon;
`q oddmin` is an intentionally direct reference driver. Subcommands marked
*(lab)* need `--features lab` — a binary built without it names them and
says how to get them rather than pretending they do not exist.

| subcommand | what it does |
|---|---|
| `census` | adjudicate every closed term in a size range (halt / diverge / unknown) through a ladder of engines |
| `adjudicate` | the same ladder on one term or a file of them, verbosely |
| `normalize` | normalize a closed term on the KN machine (`--db` prints it in de Bruijn notation) |
| `blc ACTION FILE` | John Tromp's `blc` tool, every action: `run`/`run8`/`runf`/`runO`, `nf`, `hnf`, `print`, `blc`, `size`, the combinator translations, the lambda diagrams |
| `uni [-b]` | John Tromp's universal machine `uni`, bit or byte mode, with named-program composition |
| `golf letopt` / `component` / `check` | size optimizers for any BLC program: exact let structures, βη component search and descent, β-certificates and normal-form differentials |
| `solomonoff` | Solomonoff prior m(x), prefix complexity K(x), two-sided Ω bounds — exact 2⁻⁶⁴-unit arithmetic — plus the speed-prior (Levin) surface: S(x), Kt(x), depth⁰(x), certified Ω_speed brackets, and time spectra in exact 2⁻¹²⁸ units |
| `omega leaves` | leaf tables for the certified bounds on the true Ω: every closed term ≤ MAX bits on the census ladder, each open term judged once through its minimal closure |
| `cert search` *(lab)* | divergence-certificate discovery sweep over a frontier file |
| `cert lean` | emit the certificate kills as Lean 4 modules for kernel checking |
| `cert diag` *(lab)* | where the discovery pipeline drops a term, stage by stage |
| `trace` *(lab)* | reduction-shape classifier and probe instruments |
| `q run` | run one qBLC program, one line per branch leaf |
| `q census` | the quantum operator census (`--cond-k K` dimension-conditioned mode, `--sig` alternate signature universes) |
| `q skeleton` | the trusted divergence sweep over census Unknowns (`--sig` sets the hole count by its length) |
| `q selfint` | qBLC self-interpretation and effect-tree bisimulation measurement |
| `q galois idiom` / `q galois complement` *(lab)* | the two-stage dyadicity campaign |
| `q oddmin` *(lab)* | gated reference-DP driver for the CNOT-free √2 theorem lane |
| `qalc run` / `gram` / `compile` / `fixtures` | exact qALC evolution, Gram audits, the H/T/CNOT circuit compiler, and fixture regeneration |
| `qalc census` | exact finite-clock `p h t` census with Ω brackets, optional sparse `M` output, and the `--speed` arrival spectrum with certified Ω_speed brackets |
| `slots` *(lab)* | exhaustive self-interpreter slot searches |
| `selfint ctx` / `hole` / `wiring` *(lab)* | searches below the self-interpreter and the universal machine: contextual slots, one- or two-hole sketches of any interpreter, every wiring around the parser |

```bash
cargo build --release                 # everything not marked (lab)
cargo build --release --features lab  # …plus every subcommand marked (lab)

# census of all closed terms of 4..40 bits, with self-verification
target/release/blam census 4 40 --verify

# one-term verbose adjudication
target/release/blam adjudicate 010001101000011010

# Ω / K sweep;  quantum census
target/release/blam solomonoff 4 41 --table data/classical/solomonoff_table.txt \
    --unknown-floors data/classical/speed_floors.txt
target/release/blam q census 4 41 --out data/quantum/census_table.txt
scripts/qalc-census-extend.sh 25 60 15  # shared 15-minute budget per qALC size

# certificate sweep, then kernel-check the kills in Lean
target/release/blam cert search --file data/classical/unknowns.txt
target/release/blam cert lean && cd lean && lake build Certs BusyBeaver
```

Engine knobs are flags on the ladder subcommands: `--work-mult`
(escalation work meter per capacity bit; `2` = memory-bounded
adjudication) and `--probe-fuel` (the redloop probe's β budget), with
`BLC_WORK_MULT` / `BLC_PROBE_FUEL` honoured as fallbacks. The standing
measurement protocols are encoded in `scripts/`: the spot-check, census,
Solomonoff/speed, true-Ω, and coding-theorem regeneration, the Ω estimate,
certificate recertification, the BB proof registry, and the qALC census
extension.

## Verification

- The fast machine is lockstep-verified against the naive spec — output
  bits *and* β-step counts — over every closed term ≤18 bits; the
  quantum fast path likewise, over full leaf sequences (fates,
  stores, exact masses) for the entire ≤24-bit population. The
  call-by-need machine that runs programs gives the KN machine's normal
  form on every closed term ≤26 bits.
- `blam blc` and `blam uni` are checked against Tromp's own tools, built
  from the corpus: every action on every `.lam` program in tromp/AIT, the
  run family on every closed program ≤20 bits and thousands of larger
  ones, and `uni` against Tromp's `uni.rs` in both modes (`tools/ait/`; the
  counts are in STATUS). `blam blc blc` reproduces every checked-in `.blc` golden.
- Conformance vectors from Tromp's corpus are inlined in
  `tests/tromp_vectors.rs`, so the suite needs no clone; every
  published A114852 count and BBλ value in range is reproduced
  exactly. The `ref/AIT` submodule — the
  [a9lim/AIT](https://github.com/a9lim/AIT) fork, pinned at upstream
  plus one additive commit, additivity enforced in CI — is the corpus the
  golf sweep reads.
- The certificate soundness battery is a crate unit test rather than an
  integration test, so plain `cargo test` streams every provable halter
  ≤28 bits through all four trusted checkers and asserts nothing fires.
- Every certificate exclusion and direct busy-beaver proof is an
  individually kernel-checked Lean 4 theorem (zero sorries, no mathlib),
  pinned to its wire bits by a kernel-checked encoding.
- CI runs on `main` and pull requests into it. It checks formatting, Clippy
  and rustdoc with warnings denied, and the MSRV; runs the release test suite
  on Ubuntu and macOS with `--all-features`, default features, and
  `--no-default-features`, so the lab targets, the no-lab dispatcher arms, and
  the im-rc-only library are each exercised; diffs a census spot-check
  through 32 bits against the canonical table, where any drift in any column
  fails; and kernel-checks the Lean certificates and exact bounds.

## Documentation

[`docs/STATUS.md`](docs/STATUS.md) holds every moving number and the ordered
docket. The other documents are durable: contracts for what the code
guarantees, and records of what the measurements and searches establish.

| area | documents |
|---|---|
| classical engine | [architecture](docs/classical/architecture.md), [running programs: notation, blc, uni](docs/classical/programs.md), [speed prior](docs/classical/speed.md) |
| classical results | [bits of Ω](docs/classical/omega.md), [coding theorem](docs/classical/coding.md), [AIT golf](docs/classical/golf.md) |
| certificates | [specification](docs/classical/certificates/specification.md), [frontier maps](docs/classical/certificates/frontier.md), [BB(33/34/35)](docs/classical/certificates/busy-beaver.md), [Lean](lean/README.md) |
| self-interpreter | [the 162](docs/classical/self-interpreter/interpreter.md), [global floor](docs/classical/self-interpreter/global-floor.md), [universal machine](docs/classical/self-interpreter/universal.md), [slot searches](docs/classical/self-interpreter/slots.md) |
| qBLC | [architecture](docs/quantum/architecture.md), [frontier adjudication](docs/quantum/escalation.md), [Galois structure](docs/quantum/galois.md), [odd-sector search](docs/quantum/oddmin.md), [bisimulation](docs/quantum/bisimulation.md) |
| qALC | [architecture](docs/quantum-algebraic/architecture.md), [token machine](docs/quantum-algebraic/token.md), [kernel register](docs/quantum-algebraic/kernel.md), [instance identity](docs/quantum-algebraic/instance-identity.md), [objects](docs/quantum-algebraic/objects.md), [speed prior](docs/quantum-algebraic/speed.md), [Rust pillar](docs/quantum-algebraic/rust-pillar.md), [reference and proof records](qalc/README.md) |

[`AGENTS.md`](AGENTS.md) carries the working conventions for changing the
repository.

## Layout

- `src/` — the library and `src/cli/` measurement driver. The library contains
  the `blc` substrate, classical, quantum, and qALC pillars, plus lab-gated
  instruments.
- `examples/` — runnable versions of the README snippets.
- `tests/` — integration, differential, conformance, qALC fixture, and
  checkpoint-resume suites.
- `docs/` — `STATUS.md` and the durable documents above.
- `data/` — canonical classical, quantum, certificate, self-interpreter, and
  AIT-golf outputs; regenerate rather than hand-edit.
- `scripts/` — standing measurement and recertification protocols.
- `lean/` — Lean 4 formalization and generated divergence theorems.
- `qalc/` — accepted Python/Lean qALC reference, proof records, batteries, and
  generated finite evidence.
- `tools/` — reusable utilities and analyzers.
- `contrib/PR_KIT.md` — drafts for the upstream tromp/AIT pull requests.
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
