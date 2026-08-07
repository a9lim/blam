# Quantum BLC architecture

This document is the durable architecture contract for blam's quantum
pillar. It uses the same structure as the classical architecture so the two
systems can be compared layer by layer. Current measurements and the open
docket live in `../STATUS.md`; chronological development history lives in
`../ledger/`.

## 1. Purpose and target objects

Quantum BLC (qBLC) keeps the ordinary prefix-free BLC program language and
adds an exact quantum store behind a classical gate interface. The programs,
control flow, and Kraft weights remain classical; only the states manipulated
through that interface are quantum.

The pillar studies two related but distinct semidensity objects.

### Operator census

For bare programs applied to the gate signature,

```text
M_Fock = ⊕_k M^(k)
M^(k)|≤N = Σ_{p, |p|≤N} 2^(−|p|) ρ_p^(k).
```

Here `ρ_p^(k)` is the subnormalized successful output on the leaves with
exactly `k` live qubits. One global Kraft budget is shared across all sectors,
so

```text
Σ_k Tr M^(k) ≤ 1
Tr M_Fock = Ω_success.
```

`M_Fock` is number-superselected: the interface can allocate and retire
qubits, but it cannot prepare coherent superpositions between live-qubit
sectors. Its natural universality class is therefore the graded class of
block-diagonal lower-semicomputable semidensities with a global trace bound,
not arbitrary Fock-space operators.

### Conditional family

For a Church numeral `k̄` supplied as a condition,

```text
G_k = Σ_p 2^(−|p|) ρ_{p,k},
```

where the machine runs `p k̄ ⟨signature⟩` and retains only successful
leaves with exactly `k` live qubits. Each `k` receives its own full Kraft
budget. Uniformity in `k`, rather than domination within one finite sector,
is the content required of a Gács-style conditional universality theorem.

The two objects satisfy a coding sandwich of the form

```text
c m(k) G_k ⪯ M^(k) ⪯ C G_k,
```

where the lower comparison pays the algorithmic cost of addressing `k` and
the upper comparison discards the condition at constant program cost. They
are not equal. In particular, normalizing `M^(k)` by its sector trace does not
produce `G_k`: the trace is only lower semicomputable and the quotient need
not be lower semicomputable.

## 2. Semantic contract

### Language and invocation

Programs are ordinary closed BLC terms with the unchanged wire code and
1-indexed de Bruijn convention. Quantum behavior enters only through five
opaque primitives. The frozen signature application order is

```text
p h meas new cnot t.
```

The five-lambda wrapper is a common programming idiom, not a syntactic
restriction. Object A runs a program on the signature; Object B first supplies
the dimension condition and then the signature.

The order was chosen once, by an exhaustive 120-permutation pilot against a
predeclared functional. That campaign is finished history and is recorded in
`../ledger/`; the driver that ran it no longer exists. The frozen order's
single home in code is `quantum::sig::FROZEN`, and unit tests pin both the
sequence and its being a permutation of `Prim::CANONICAL_SET`, because every
canonical number in `../../data/quantum/` is relative to it. Alternate orders
remain reachable through `--sig` and produce non-canonical data by
construction.

### Values, stores, and dynamic linearity

`QTerm` extends classical terms with opaque primitive values and
`Handle(qubit, epoch)`. Only `new` creates a handle. Every gate consumes the
current epoch and returns a fresh one; a copied handle therefore becomes stale
after the first use. Allocation identifiers, epochs, and stores are local to
each measurement branch.

This is a store discipline, not a linear type system. Ordinary BLC remains
fully untyped and duplicative, so a preparation term can be copied and run
twice to allocate two independent states. What cannot be duplicated is
authority over one already-allocated qubit.

### Primitive effects

Primitive arguments are evaluated strictly from left to right to weak head
normal form. Species and epoch checks complete before an effect occurs.

- `new M` discards `M` without evaluating it and allocates `|0⟩`.
- `h #q` and `t #q` apply the corresponding gate and return a fresh handle.
- `cnot #q #r` updates distinct qubits and returns their fresh handles as a
  Church pair. Equal operands are an error.
- `meas #q` follows both exact outcome branches, retires the qubit, and
  returns the outcome as a Church boolean using the classical polarity.

A handle in operator position is an error, not a stuck normal form. A
primitive applied to a canonical non-handle, stale handle, retired qubit, or
invalid equal-qubit pair is also an error. A primitive applied to a rigid open
variable remains neutral until enough information is available.

### Fates and outputs

Each branch ends in one typed fate:

- `Halt(Store)` for successful normalization;
- `Unknown` when a semantic work budget is exhausted;
- `Capacity(Qubits | Amplitude | Branches)` when a representation limit is
  reached; or
- `Err(Species | HandleApplied | StaleEpoch | Retired | SameQubit)` for an
  invalid quantum operation.

At a successful leaf, the output is the whole live store in allocation-rank
order. The normal form matters only as evidence of halting; its syntax does
not select an output subsystem. Measured or otherwise retired qubits do not
appear in the output, while inaccessible but live qubits do. Changing to a
designated-output convention would define a different census and remains an
explicit open design question.

## 3. Engine stack

The pillar is one Rust module tree, `blam::quantum`. The types every layer
shares — `Prim`, `Store`, `ErrKind`, `Capacity`, `Effect`, `Fate`, `Leaf`,
`Budget` — live at the pillar root so both engines name one definition and
stores compare bit-identically.

### Reference semantics

`src/quantum/reference.rs` is the semantic reference. It evaluates branch
distributions over `QTerm`, an exact `Store`, and a typed fate. Store
operations are the one implementation of allocation, Clifford+T gates,
measurement, and epoch validation.

### Exact scalar ring

`src/quantum/scalar.rs` implements exact arithmetic in the ring
`ℤ[ω]/√2^d`, with `ω = exp(iπ/4)`. A scalar (`Dw`) is four checked `i128`
coefficients plus a denominator exponent, capped at `K_CAP`. Arithmetic
overflow becomes a capacity fate rather than wrapping or silently
approximating.

The Galois accounting is merged into the same module rather than living in a
separate radical layer: `radical_parts` splits a real scalar into its rational
and `√2` halves, `sqrt2_part` re-embeds the `√2` coefficient so it can ride
its own accumulator, and `is_dyadic` is the predicate the dyadicity campaign
tests. `ExactSum` is the one exact accumulator every sweep, census, and
campaign uses. It is structurally overflow-safe — an overflowed total has no
readable field, only an `Option` value, a loud `expect_exact`, and an
explicitly diagnostic partial — and carries an f64 mirror for display columns
plus its own checkpoint codec.

### Fast normalization

`src/quantum/machine.rs` extends the classical KN design with opaque
primitives, handles, and a branch-local store. It shares the reference
store-effect methods rather than reimplementing quantum algebra. The fast path
preserves the complete leaf distribution: fates, normal forms, stores, exact
masses, and classical β-contraction counts.

### Trusted skeleton checker

`src/quantum/certificate.rs` adjudicates a program by exact symbolic reduction
of `p X₁ … X_k`, one opaque hole per signature slot, under plain
leftmost-outermost β — no simplify, no oracle, no history abstraction. Its
verdicts are `Loop`, `HoleFree`, `NormalWithHoles`, `HoleDemanded`, and
`CapOut`; the last carries which cap fired and the chain's high-water size.

**Transfer theorem.** If the symbolic chain never exposes a hole in operator
position, then under the primitive substitution `σ` no δ-rule is ever demanded,
so the quantum machine walks the identical chain: an exact recurrence is a
proven diverger contributing zero to `Ω_success`, a hole-inert normal form is a
quantum Halt with empty store at full mass, and a hole-free residual is a
closed pure term both machines share, so classical semantic verdicts transfer
wholesale in both directions. Skeleton halts alone prove nothing, and a
demanded hole yields no claim. `escalation.md` is the authority on the ladder
built from this checker, its rungs, and the residual adjudication that follows
`HoleFree`; this section does not restate them.

### Shared sweep step

`src/quantum/sweep.rs` is the per-program step all three measurements share —
the operator census and both dyadicity sectors — with the mass-conservation
battery inside it, so no sweep can drop the check the others keep.
`src/quantum/sig.rs` is the frozen order's single home and supplies the hole
application and the Object-B Church numeral, so the census skeleton column and
the trusted checker cannot drift into adjudicating different terms.

### Drivers

All quantum drivers are subcommands of the single `blam` binary, under `q`.

- `blam q run BITS`: one program, one line per leaf, exact masses;
- `blam q census [MIN] MAX`: exhaustive successful-output census and sector
  operators (Object A; `--cond-k K` switches to the Object-B `G_k`
  approximant, `--skeleton CAP` adds the classical skeleton column);
- `blam q skeleton FILE`: the trusted-checker sweep over a terms file;
- `blam q selfint [MAX_N] [PHASE]`: effect-trace comparison for the classical
  self-interpreter;
- `blam q galois idiom|complement`: the dyadicity campaign — exact aggregate
  masses and their `√2` coefficients, phase 1 over the `λ⁵` signature idiom
  and phase 2 over its complement; and
- `blam q oddmin [W]`: bounded growth driver for the odd-sector abstract
  interpreter.

The last two are research instruments behind the non-default `lab` feature; a
default build recognises them and says how to get them.

## 4. Exactness and resource model

### Unnormalized branch vectors

Every branch carries an unnormalized state vector. A successful leaf
contributes exactly

```text
v v†,
```

whose trace is already the branch probability. There is no separate weight
to multiply into the projector. This convention keeps measurement results in
the exact ring and prevents probability from being counted twice.

Finite programs at finite budgets produce exact ring-valued approximants.
The unbounded lower-semicomputable limits need not lie in the ring: countably
many dyadic branches can converge to a non-dyadic coefficient. An exact
unbounded claim therefore consists of monotone Loewner brackets,

```text
M_known ⪯ M ⪯ M_known + ε I,
```

not a floating-point matrix or an assertion that the limit has a finite ring
representation.

### Typed budgets

`quantum::Budget` bounds β-contractions, machine transitions, live qubits, and
branch count. Source size does not bound the first three: an untyped loop can
perform unbounded classical work or repeatedly allocate from one syntactic
`new`. Coefficient growth is separately checked by the exact scalar type. A
zero β or transition budget is a typed rejection shared by both engines, not a
tighter budget: the two place their β check on opposite sides of the
contraction they charge, and at zero that difference would surface as a
lockstep disagreement.

`Unknown`, `Capacity`, and `Err` are distinct. The first two say that a finite
run did not deliver a semantic verdict; `Err` is a semantic outcome of the
language. None contributes to the successful-output operator.

## 5. Verification contract

Every quantum engine change must satisfy:

1. `cargo test --release`;
2. exhaustive `quantum::machine`/`quantum::reference` lockstep over the
   configured closed-term range;
3. equality of every leaf's fate, normal form, store, exact mass, and
   β-contraction count;
4. exact mass conservation across every primitive instrument, with losses
   accounted for only by typed non-success fates;
5. the pinned gate, measurement, entanglement, stale-handle, and
   self-interpreter witnesses; and
6. bit-identical classical census rows, because qBLC must remain isolated from
   the classical engine's behavior.

The lockstep battery currently covers all closed programs through 24 bits.
The reference and fast engines deliberately share store effects but not their
classical evaluators, so the comparison tests control flow and integration
without maintaining two subtly different quantum algebras.

Finite operator outputs are checked for Hermiticity, positive semidefiniteness,
trace bounds, and exact agreement between accumulated branch mass and matrix
trace. Research predicates such as radical-coefficient cancellation and odd
rank are tested against direct exact evaluation before they are used to prune
a search.

## 6. Measured characteristics

The canonical operator census covers every closed program from 4 through 41
bits in about 30 minutes on the reference workstation. Its exact successful
mass is

```text
Ω_success,≤41 = 3424188513 / 2^40.
```

The one-qubit operator is positive definite, so both computational-basis
states receive finite measured complexity bounds. The first entangled
successful output occurs at 41 bits. Three distinct thresholds must remain
separate: the 34-bit shortest success from an arbitrary closed term, the
45-bit shortest odd leaf mass from a five-lambda gate-signature idiom, and
the 53-bit shortest known non-dyadic total successful mass.

The exact complement census has zero aggregate `√2` coefficient through 51
bits. This is evidence of structured cancellation, not a proof that the
coefficient always vanishes. The classical self-interpreter wrapper is 176
bits and has passed effect-trace comparison; its general bisimulation theorem
remains open.

The complete current matrices, rankings, frontier counts, and odd-sector
search bounds are maintained in `../STATUS.md` and `../../data/quantum/`.

## 7. Design decisions

- **Classical control:** it gives monotone positive operator approximants and
  avoids importing an unresolved quantum-halting semantics.
- **Dynamic handle linearity:** full untyped computation remains available,
  while stale epochs enforce no-cloning at the state-authority boundary.
- **Clifford+T:** the gate set is computationally universal and supports exact
  algebraic arithmetic for every finite run.
- **Exact distribution tracking:** every measurement branch is followed; the
  engine never samples and never uses floating point.
- **Unnormalized states:** branch probability stays intrinsic to the vector
  and exact-ring closure survives measurement.
- **Separate census and conditional objects:** Object A has one global Kraft
  budget; Object B has one budget per conditioned dimension. Neither is a
  normalization of the other.
- **Whole-live-store output:** this is the current executable convention. Any
  designated-output alternative must be specified and measured as a separate
  object.

## 8. Boundaries and related documents

The finite operational semantics and exact census are implemented. Three
mathematical boundaries remain open:

- a fully formal effect-trace bisimulation between qBLC evaluation and the
  classical self-interpreter;
- a uniform conditional universality theorem for the family `G_k`, including
  a constructive monotone simulator with one constant across `k`; and
- a proof or counterexample explaining the observed cancellation of the
  `√2` operator coefficient beyond the measured range.

The superselected universality claim for `M_Fock` is deliberately narrower
than universality over arbitrary Fock-space semidensities. Cross-sector
coherence is outside the machine's output language, and a block-diagonal
operator cannot dominate families that place coherent mass across
arbitrarily many sectors.

- Classical counterpart: `../classical/architecture.md`
- Effect-trace theorem and proof obligations: `bisimulation.md`
- Conditional Gács construction: `galois.md`
- Odd-sector abstract interpreter: `oddmin.md`
- Moving measurements and docket: `../STATUS.md`
- Canonical quantum evidence: `../../data/quantum/`
