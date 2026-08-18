# Rust qALC pillar

This document is the implementation contract for `blam::qalc`. The accepted
Python/Lean reference lives in `qalc/`; Rust is an independently executable,
fixture-pinned port of that semantics. The public surface provides the qALC
term grammar, exact dynamics, static sector selection, clean H/T/CNOT
compilation, and finite semantic approximants.

The Python reference remains the source oracle for generated evidence. Rust
must regenerate every checked-in fixture byte-for-byte, but it does not
rediscover the certificates that define the reference corpus.

## 1. Scope and isolation

The pillar implements:

- the H/T token kernel;
- composed full-normal-form readback and typed totalization;
- the native-CNOT machine and linear-SSA circuit compiler;
- cap-free structural admission for recognized compiler images;
- checked finite Gate-1 admission with a conservative total fallback; and
- exact `U`, `mu_p`, `rho_p`, finite `M`, and `Omega_qALC` approximants.

`src/qalc/` depends only on `quantum::scalar::Dw` and `crate::hash` outside its
own tree. It adds no traits or configuration to the classical or qBLC pillars.
The classical census and qBLC operator census must remain bit-identical with
qALC present or absent.

The population census remains a separate measured layer over this reference
API. `blam qalc census` supplies the ordinary BLC enumerator, `p h t`
invocation convention, exact Kraft aggregation, resource brackets,
checkpointing, and optional sparse-`M` persistence without changing `U`.
Selection is scheduled in two phases: a successful 1,000-state first-candidate
probe is already a complete checked admission, while every inconclusive probe
retries the unchanged 300,000-state canonical selector in a bounded rayon
pool. A probe failure never selects conservative history. Performance timing
is stderr-only telemetry and does not enter the deterministic report or
checkpoint accumulator.

## 2. Module map

```text
src/qalc/
  term.rs        qALC terms, positions, closedness, and binder lookup
  mark.rs        typed kernel/readback marks and canonical repr ordering
  state.rs       kernel and composed-machine basis states
  amp.rs         canonical exact amplitude wrapper over Dw
  wire.rs        strict qfx parser, serializer, and commitments
  kernel.rs      H/T token transition table and exact evolvers
  readback.rs    full-NF dispatcher, adapters, totalization, predecessors
  compiler.rs    typed H/T/CNOT circuits and linear-SSA compiler/recognizer
  shadow.rs      native-CNOT transition table and custom predecessors
  gate2check.rs  compiler-sector structural checks and finite audit
  admission.rs   finite Gate-1 carrier validation and direct RRI check
  wf.rs          the W0-W9 well-formedness subset used by admission
  semantics.rs   total sector selection and public semantic objects
```

`src/hash.rs` supplies the dependency-free SHA-256 core shared by qfx
commitments and CLI checkpoint/provenance records. `src/cli/qalc/` contains
thin drivers over the public library API.

The qALC term type is intentionally distinct from `blc::Term`: qALC adds gate
leaves and its positions are semantic state identifiers. Sharing the classical
term type would couple the pillars and make invalid states representable.

## 3. Exact amplitudes

`Amp` wraps `quantum::scalar::Dw` under the invariant:

```text
stored Amp => fully reduced canonical Dw
```

The wrapper is local because qBLC deliberately permits noncanonical `Dw`
representations during accumulation. `Amp` canonicalizes every arithmetic
result, so structural equality and hashing are value equality. Fixture decode
is strict: a noncanonical raw tuple is rejected rather than normalized, which
keeps exporter defects visible.

All arithmetic is fallible. An `i128` overflow or `K_CAP` exit is a typed
Capacity outcome. Evolution is transactional: if any branch overflows, the
partial target map is discarded and the whole step returns Capacity.
Iteration order is deterministic, so the capacity boundary is reproducible.

Runtime amplitudes remain separate from `ExactSum`, which accumulates the
larger Kraft-weighted quantities used by finite `M` and `Omega_qALC`.

## 4. State identity and interchange

Python state identity uses repr-keyed stable ordering in exactly two places:
frames in RS and instance keys in KD bundles. `mark.rs` reproduces that order
with a narrow iterative `PyReprKey` renderer. This renderer is not the file
format.

`wire.rs` owns `qalc-fixtures v1`, a separate strict, typed, line-oriented qfx
format. It covers the complete kernel and composed grammar, rejects duplicate
certificate positions and over-deep input, and satisfies:

```text
serialize(parse(file)) == file
```

The serializer is therefore the normative encoding. Carrier columns retain
row order and zero-amplitude branches; sparse evolution traces alone cannot
pin a transition table.

## 5. Admission and total semantics

`semantics::select` chooses exactly one machine representation:

1. A recognized compiler image receives cap-free structural Gate-2 admission.
2. Otherwise, finite Gate-1 carrier closure, W0-W9 validation, and direct
   reachable-recall injectivity may admit the composed machine.
3. Every remaining closed term receives the conservative source-history
   representation.

The selector is total. Certificate discovery remains a Python research
instrument; Rust validates pinned candidates and performs the checked
no-erasure retry but does not port the search algorithm.

The structural compiler path is syntax-directed and independent of carrier
size. `compile_circuit`, `recognize_compiled`, and `compiler_certificate`
share one grammar, while mutation tests ensure near-images fall through to an
ordinary non-image selection rather than inheriting a certificate.

`U` is the exact one-step sparse linear extension of the selected machine.
Halt and error sectors retain their predecessor information and advance on
unilateral tick tails. `mu_p` and `rho_p` are finite-time observations of
that same evolution; `finite_M` and `omega_qalc_approximant` add exact Kraft
weights over finite program sets.

## 6. Differential evidence

There are four fixture families:

| Surface | Generator | Rust consumer |
|---|---|---|
| kernel programs and T probes | `qalc/export_rust_fixtures.py` | `tests/qalc_kernel.rs` |
| composed Gate-1 carriers | `qalc/export_composed_fixtures.py` | `tests/qalc_composed.rs` |
| Gate-2 compiler/shadow carrier | `qalc/export_gate2_fixtures.py` | `tests/qalc_gate2.rs` |
| embedded selector candidates | `qalc/export_admission_fixtures.py` | `src/qalc/admission_pins.qfx` |

The kernel corpus pins complete columns and dynamic traces. The composed
corpus pins carrier order, exact unmerged columns, commitments, digest chains,
absorption finals, predecessor inverses, and totalization probes. The Gate-2
corpus pins the compiler grammar, term and certificate images, the complete
917-state mixed carrier, literal row schedules, clean cuts, ideal columns, and
terminal garbage.

Regeneration runs the Python reference first. Rust's `blam qalc fixtures`
then regenerates the same products from the engine and byte-compares them.
Fixtures are deterministic across `PYTHONHASHSEED` values.

## 7. CLI and verification

The default-built command group is:

```text
blam qalc run TERM                 exact finite-time evolution under U
blam qalc gram TERM                finite Gram audit of the selected machine
blam qalc compile WIDTH [GATE...]  compile h:W, t:W, and cx:C:T operations
blam qalc fixtures FILE...         regenerate and byte-check qfx evidence
blam qalc census [MIN] MAX          finite-clock census over ordinary BLC p h t
```

`run` and `gram` accept a canonical term, a one-term text file, or a named
program from a qfx file. A qfx input is provenance-bearing: its certificate
must equal the certificate selected by the public semantics before execution.
`census` instead constructs the canonical invocation from each enumerated BLC
program and keeps the gates outside its prefix length. `--admission-threads`
controls only the full-cap second-phase pool (up to eight workers by default),
not the selector or census semantics.

The qALC verification contract is:

```bash
python qalc/gate1_check.py
python qalc/gate2_check.py
PYTHONHASHSEED=1 python qalc/export_rust_fixtures.py --check
PYTHONHASHSEED=1 python qalc/export_composed_fixtures.py --check
PYTHONHASHSEED=1 python qalc/export_gate2_fixtures.py --check
PYTHONHASHSEED=1 python qalc/export_admission_fixtures.py --check
cargo test --release --all-features
cargo test --release
bash scripts/spot-check.sh
```

The two gate commands above are explicit local runtime/Python batteries and
intentionally do not generate or compile Lean. `python
qalc/gate1_lean_check.py` and `python qalc/gate2_lean_check.py` are manual
proof-surface checks, run only when that surface intentionally changes. The
path-scoped qALC CI runs neither full battery nor Lean; it checks fixture
determinism under two hash seeds, while ordinary CI owns the Rust differential
suites. Rust tests also
pin norm equality, monotone halt mass, orthonormal columns, effect-free
conservativity, HH cancellation, H-NOT'-H coherence, the negative witness,
compiler cleanliness, and cross-pillar isolation.

## 8. Boundaries

The public semantic claim is exact for every finite closed input sector under
the total selector. The finite Gate-1 certificates and concrete Lean mirrors
do not prove a uniform raw-WF lifecycle theorem. Raw-WF recall is known to be
noninjective; admission checks the stronger property only on complete
reachable carriers.

The ambient lifecycle/minimal-carrier theorem, general probe-exit
classification, and broader arrival/pop determinacy are optional research
questions. They are not premises of `U` or the clean compilation theorem.

The authoritative semantic contract is `architecture.md`; the transition
register is `kernel.md`; the executable theorem boundaries are
`../../qalc/GATE1.md` and `../../qalc/GATE2.md`.
