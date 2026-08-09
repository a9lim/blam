# Quantum-algebraic BLC (qALC) architecture

**Status: design contract, pre-implementation, pre-ratification.** No engine
exists and nothing in `data/` is qALC-relative. This document is the object
under adversarial review in gaslamp thread `qalc-architecture`; on
ratification it becomes the pillar's durable architecture contract, and any
moving state acquires a section in `../STATUS.md`. Claims are marked:
**[standard]** for published results, **[design]** for choices this contract
fixes, **[claim]** for arguments made here that the review must attack, and
**[open]** for named unknowns.

## 1. Purpose and position among the pillars

qALC is the quantum-control pillar. The existing pillars occupy two corners
of the control/data square:

- `classical`: classical control, classical data;
- `quantum` (qBLC): classical control, quantum data — programs are classical
  BLC controllers driving an exact gate-based store through five opaque
  primitives (Selinger–Valiron's "quantum data, classical control"
  **[standard]**).

qALC takes the third corner: quantum control, no store. The runtime state is
a vector in ℓ² over machine configurations; superposition of *control* —
of the reduction itself — is the object of study. qBLC's architecture
(`../quantum/architecture.md` §7) chose classical control explicitly to
obtain monotone positive operator approximants and to avoid an unresolved
quantum-halting semantics. This pillar exists because both benefits are
recoverable inside quantum control (§4: invariant-sector halting), so the
dodge is a convenience, not a necessity, and the objects it excludes —
interference between reduction paths, real-valued halting mass, coherent
output operators — are exactly the ones worth measuring.

qALC is a separate pillar, not a revision: qBLC's objects, data, and docket
are untouched, and the verification contract (§7) requires bit-identical
classical and qBLC rows after any qALC work.

## 2. Target objects

For a program `p` (a closed BLC term, unchanged wire code), the machine
prepares the basis configuration for `p h t` — the program applied to the
two opaque constants — with amplitude 1, and applies the global step
isometry `U` (§4) once per transition. With `P_halt` the projection onto
halted configurations:

```text
μ_p(τ) = ‖P_halt U^τ |init(p)⟩‖²          (monotone nondecreasing in τ)
μ_p    = lim_τ μ_p(τ)                      (halting mass of p)
Ω_qALC = Σ_p 2^(−|p|) μ_p.
```

Halting mass is the central softening: the classical fate column
{Halt, Diverge, Unknown} becomes a real number in [0,1] with exact monotone
lower approximants and certificate-driven upper brackets. A single program is
already an Ω-like object; `μ_p ∈ {0,1}` exactly on the gate-free fragment
(§6). A divergence certificate on a sector of the superposition bounds
`μ_p` from above, so the classical certificate machinery generalizes from
verdicts to intervals **[design]**.

The output object is an operator on ℓ² of closed normal forms over
BLC ∪ {h, t}:

```text
ρ_p(τ) = Tr_{control, garbage, tick} [ P_halt ψ_τ ψ_τ† P_halt ]
M      = Σ_p 2^(−|p|) ρ_p,        Tr M = Ω_qALC.
```

`ρ_p(τ)` is Loewner-monotone in τ **[claim]** (§4.6), so the house
bracket discipline `M_known ⪯ M ⪯ M_known + ε I` carries over. Unlike
qBLC's number-superselected `M_Fock`, `M` can carry coherences *between
output terms*; §4.6 states exactly which branch pairs contribute
off-diagonal mass.

The Kraft accounting is unchanged from qBLC: `|p|` is the program's own
prefix-free length, and the applied constants are invocation convention,
not program bits.

## 3. Semantic contract

### Language and invocation

Programs are ordinary closed BLC terms — unchanged wire format, 1-indexed
de Bruijn, unchanged size identity. **The program syntax contains no quantum
constant**: `h` and `t` exist only as opaque values passed in by the
invocation `p h t`, so prefix-freeness and the Kraft sum are untouched by
construction, the same trick qBLC's signature uses. The two-lambda wrapper
`λh.λt. …` is an idiom, not a restriction. The application order `h` before
`t` matches the frozen qBLC signature's relative order; it must be frozen in
one place in code, with an order-pinning test, before any canonical data is
generated **[open: freeze pending, trivially two choices]**.

### Canonical booleans and polarity

```text
0̂ := λλ.2   (= λx.λy.x, true — the BLC encoding of bit 0)
1̂ := λλ.1   (= λx.λy.y, false)
```

Polarity matches the classical I/O convention and qBLC's `meas` outcome
convention: bit 0 is true. The computational basis of a qubit-like position
is {0̂, 1̂} by syntactic equality with these normal forms, nothing looser.

### δ-rules

The constants are rigid atoms. A δ-redex is a constant applied to an
argument that is *syntactically* one of the canonical booleans:

```text
h 0̂  →  (0̂ + 1̂)/√2         t 0̂  →  0̂
h 1̂  →  (0̂ − 1̂)/√2         t 1̂  →  ω·1̂,      ω = exp(iπ/4).
```

`h` (with Toffoli-class λ-terms, §6) and `t` restore the Clifford+T
amplitude ring. A constant applied to a closed normal form that is not a
canonical boolean is an error transition into the absorbing error sector
(§4.4), not a stuck normal form. A constant applied to a non-normal
argument is not a redex; reduction continues inside the argument. A constant
applied to a rigid open variable remains neutral. An unapplied or partially
applied constant in normal position is an ordinary normal form and may
appear in outputs.

### No sums in syntax

Formal superpositions never appear in program or term syntax. A runtime
"superposition" is a weighted set of ordinary basis configurations; the
calculus never rewrites a sum. `h`'s δ-rule is the only branching
transition and `t`'s the only scalar transition; everything else is the
classical machine step extended linearly **[design]**. Consequently the
Lineal call-by-base question dissolves: there is never a superposed
*subterm* to substitute (§4.2).

### Strategy

Reduction is leftmost-outermost strong normalization — the KN machine's
strategy — with δ-redexes and error transitions ranked among β-redexes by
position. The strategy is part of the machine's definition and therefore
part of the physics: a different strategy is a different `U` and different
canonical objects. Algebraic-λ non-confluence pathologies are dissolved by
machine-relativity: AIT objects are defined relative to a fixed universal
machine, and this contract fixes one **[design]**. One consequence to state
rather than hide: under normal order, `(λx. f x x)(h 0̂)` duplicates the
*unfired* gate application and yields two independent Hadamard instances.
Duplication always copies syntax, never amplitude, so this is generator
duplication, not cloning; branch-level fan-out of an already-fired outcome
is written explicitly (e.g. `h b̂ A B` fires the gate at head position and
selects per branch). Both idioms are expressible; the strategy decides only
their default reading.

## 4. State space and dynamics

### 4.1 Configurations

The basis of the state space is **machine configurations** — term plus KN
control state (focus, spine stack) plus residual garbage registers (§4.5)
— not bare terms. Bare terms are too coarse: for a rigid context, the
sources `λf. f (h 0̂) 0̂` and `λf. f 0̂ (h 0̂)` are orthogonal, but their
images under a bare-term step overlap in the term `λf. f 0̂ 0̂`, so no
bare-term linear extension is an isometry **[claim]**. The KN control state
records the firing position for free and separates these images; unlike an
append-only history log, control state unwinds as evaluation returns, so it
is implicit history that uncomputes itself.

### 4.2 The step isometry

`U` is the linear extension of the deterministic machine step: each basis
configuration steps by its unique leftmost redex (β, δ, or error
transition), with `h` producing a two-branch superposition and `t` a phase.
`U` is required to be an isometry on the closed span of configurations
reachable from any `init(p)`; no extension to a unitary on all of ℓ² is
demanded, since every target object depends only on norms and sector
projections of reachable states **[design]**.

No-cloning is structural rather than enforced: amplitudes attach to whole
configurations, never to subterms, so any duplication a β-step performs is
syntax-copying within one branch — basis fan-out, the physically permitted
copy. qBLC's entire handle/epoch apparatus has no qALC counterpart because
the store it protected does not exist.

### 4.3 Halting: invariant sectors, not fixed points

A configuration is *halted* when its term is in normal form and its control
is terminal. Halted configurations cannot be fixed points: if `U(x) = x` and
some arriving step also maps `c₁ → x` (every reachable halted state has
such a `c₁`, and `c₁ ≠ x` since its term or control differs), `U` is not
injective. More generally the halt sector of an injective dynamics can
contain no reachable cycle, so it is a forest of forward-infinite chains
**[claim]**. The minimal realization is a tick: `(nf, k) → (nf, k+1)` on a
counter register distinct from every rule transition. What monotonicity
actually needs is invariance, not fixedness:

**Lemma (monotone halting mass) [claim].** If `U` is an isometry and
`U(S) ⊆ S` for the halted subspace `S`, then `‖P_S U ψ‖ ≥ ‖P_S ψ‖`.
*Sketch:* write `ψ = ψ_S + ψ_⊥`; `Uψ_S ∈ S`, and
`⟨Uψ_S, P_S Uψ_⊥⟩ = ⟨Uψ_S, Uψ_⊥⟩ = ⟨ψ_S, ψ_⊥⟩ = 0`, so
`‖P_S Uψ‖² = ‖ψ_S‖² + ‖P_S Uψ_⊥‖²`.

This recovers exactly the monotone lower-semicomputable approximants that
qBLC's classical-control decision was made to protect: `μ_p(τ)` is exact,
monotone, and computable at every finite τ, so `μ_p` and `Ω_qALC` are lower
semicomputable.

### 4.4 Error and stuck sectors

Species errors (a constant applied to a non-boolean canonical form) and any
other semantic error enter their own absorbing sectors with the same
invariance-plus-tick treatment. Norm is conserved globally: halted mass,
error mass, and still-running mass sum to exactly 1 at every finite τ.
`Unknown` and `Capacity` remain resource outcomes of a finite *run* — the
driver stopping — not machine states, matching the house taxonomy.

### 4.5 Garbage, merging, and where the quantumness lives

Two branches interfere only when they occupy the *same basis configuration
at the same global time*. This makes the garbage discipline constitutive,
not cosmetic: if every step logged its full content, no two distinct
branches would ever re-merge, every δ-branching would decohere immediately,
and qALC would collapse into a probabilistic λ-calculus with √2-shaped
coins — quantum in name only **[claim]**. The entire quantum content of the
design lives in the merge discipline.

The KN control state carries position information at no cost and uncomputes
itself. What it cannot carry is β's substitution content: a β-step is not
injective on (term, control) alone, and whatever residue restores
injectivity is true garbage. An environment-machine variant relocates the
problem to binding-discard steps — erasure, where the irreversibility
genuinely lives. The **minimal-garbage theorem** is this pillar's first
formal work item **[open]**: define `U` on machine configurations,
characterize the minimal residual garbage under which `U` is a global
isometry, and prove the invariant-sector lemma in that machine. Until it is
proved, every downstream object is conditional on its statement.

**Forced synchronization [claim].** Because the halt sector is
forward-infinite chains, a branch's halting time is unerasable: two branches
reaching the same normal form at different times sit at different chain
positions forever and never interfere. Coherence between halting branches
exists only at equal halting time (with equal residual garbage). This is
Bernstein–Vazirani's synchronized-halting condition and the quantum control
machine synchronization constraint (Yuan–Villanyi–Carbin) arriving as
structure rather than as an imposed rule **[standard analogues]**.

### 4.6 Output coherence blocks

Group halted branches by (halting time, residual garbage, terminal
control). Within a group, branches with different normal forms contribute a
coherent block `v v†` to `ρ_p`; across groups, contributions add
incoherently. Each block is constant once formed and groups persist
(equal-time branches keep equal tick counts forever), so `ρ_p(τ)` is a sum
of a growing set of fixed PSD blocks — Loewner-monotone with limit `ρ_p`
**[claim]**. Off-diagonal mass in `M` therefore comes exactly from
equal-time, garbage-clean branch pairs: **coherence is earned by
uncomputation**, and the off-diagonal structure of `M` is a record of which
programs clean up after themselves. The output-convention question — what
beyond control, garbage, and tick is traced out, and whether any designated-
output alternative is worth defining — is explicitly parked **[open]**,
matching the same parked question in qBLC.

## 5. Exactness and resource model

Amplitudes live in the qBLC scalar ring `ℤ[ω]/√2^d` unchanged; the `Dw`
type, `ExactSum`, `K_CAP` capacity behavior, and checkpoint codecs are
reused as-is **[design]**. The engine never samples and never touches
floating point; f64 mirrors are display-only.

The conservation battery *strengthens* from qBLC's inequality to an
equality: `‖ψ_τ‖² = 1` exactly at every transition, with all mass in typed
sectors. Budgets are typed as in qBLC: global transitions (the clock),
support size (branch count), and scalar magnitude (`K_CAP`); exhaustion
yields `Unknown`/`Capacity` resource outcomes distinct from semantic error
mass. Unbounded claims are stated as monotone brackets — `μ_p` by lower
approximants plus certificate upper bounds, `M` by Loewner brackets — never
as floating-point limits or finite-ring assertions about limits that need
not lie in the ring.

## 6. Fragments

**Gate-free fragment.** A program whose run never fires a δ-rule evolves on
a single basis path; its halting mass is 0 or 1 and equals its classical
fate. qALC is a conservative extension of the classical census by
construction, and the verification contract still tests it (§7).

**h-only fragment.** Programs whose text never applies `t` (syntactically
identifiable; a census flag, not a separate design). Amplitudes are real,
in ℤ[1/√2]. Conjecture **[claim, needs proof]**: for *circuit-shaped*
programs — every root-to-leaf branch fires the same number of Hadamards —
path amplitudes are `n/√2^d` and all halting masses are dyadic; a
√2-irrational halting mass in the h-only fragment therefore witnesses
control-flow desynchronization, i.e. genuinely quantum control. "Circuit-
shaped" needs a precise machine-level definition before this is a theorem.
This fragment is the dyadicity campaign's natural sequel instrument: in full
qALC, ω already carries non-dyadicity, so the witness reading is
fragment-relative.

**Universality.** Toffoli-class reversible operations are pure λ-terms on
Church-encoded data, so with `h` alone the machine reaches the
Shi–Aharonov universal gate set **[standard]** (real amplitudes; complex
via the standard rebit encoding), and `{h, t}` gives Clifford+T natively.
A formal statement of what universality means for qALC's objects — presumably
a Gács-style domination claim for `M` within an appropriate class — is
unwritten **[open]**.

## 7. Planned engine stack and verification contract

Planned module tree `blam::qalc`, drivers under a new `blam` subcommand
group; the reference evaluator represents `ψ_τ` as an exact sparse map from
configurations to `Dw` scalars and applies `U` transition by transition. A
fast engine, if the reference is too slow for a census, arrives only with
the same lockstep discipline qBLC uses: exhaustive fate/mass/support
equality over a configured range, engines sharing the scalar layer but not
their evaluators.

Every qALC engine change must satisfy:

1. `cargo test --release --all-features` and plain `cargo test --release`;
2. exact norm conservation (equality battery) on every tested program;
3. the monotonicity battery: `μ_p(τ)` nondecreasing, per transition, on the
   full test range;
4. isometry spot-checks: pairwise inner-product preservation over the
   reachable configuration graph at small sizes;
5. gate-free conservativity: fates and masses bit-identical to the
   classical census on the covered range;
6. **the HH witness**: the program applying `h` twice to the same position
   halts with mass 1 on `0̂` and mass 0 on `1̂` — destructive cancellation,
   the single test that separates quantum semantics from the probabilistic
   degeneration (which yields the same mass 1 but a mixed output at
   (1/2, 1/2)); and
7. bit-identical classical *and* qBLC rows: qALC must remain isolated from
   both existing engines.

## 8. Design decisions

- **Quantum control, storeless:** the pillar's reason to exist; state is
  ℓ²(configurations), qubits are emergent boolean positions, and the
  qBLC store discipline has nothing to protect.
- **`{h, t}` primitives:** Clifford+T ring native, scalar layer reused
  wholesale; the satisfying h-only design is kept as a fragment instrument
  rather than the primitive set.
- **Classical syntax only:** programs are prefix-free bits; superposition
  is runtime-only. Anything else is a different (BvDL-flavored) research
  program with a broken size identity.
- **β-dynamics on machine configurations:** bare terms fail isometry;
  machine control is self-uncomputing implicit history. The token-machine
  (quantum GoI) alternative is parked, not rejected: its natively
  reversible dynamics is attractive, but it merges branches differently
  and therefore defines *different objects* — if pursued, it is a separate
  pillar, never a drop-in engine for this one.
- **Invariant-sector halting with ticks:** fixed points are incompatible
  with injectivity; invariance suffices for monotone mass.
- **Leftmost-outermost strong reduction:** the house strategy; the machine
  is the definition, which is also what dissolves algebraic-λ confluence
  pathologies.
- **Exactness:** ring arithmetic only, conservation as equality, brackets
  for every unbounded claim.
- **Name:** qALC, quantum algebraic lambda calculus — lineage-accurate: the
  algebraic λ-calculus (Vaux; Ehrhard–Regnier) is exactly the calculus of
  linear combinations of λ-terms, Lineal (Arrighi–Dowek) its
  unitary-flavored cousin, and qALC is a machine-first quantum restriction
  of that family.

## 9. Open obligations

1. **Minimal-garbage theorem** (§4.5) — the gating work item; everything
   downstream is conditional on it.
2. Merge-discipline canonicity: is the minimal-garbage `U` unique in any
   useful sense, and what exactly is the class of programs whose branches
   re-merge (the "coherence is earned" economy made precise)?
3. The forced-synchronization argument (§4.3, §4.5) survives adversarial
   review, or the halt-sector design changes.
4. Circuit-shaped dyadicity in the h-only fragment (§6): precise
   definition, then proof.
5. Universality/domination statement for `M` (§6).
6. Self-interpretation: interpretation slows branches, timing is physical
   (§4.5), so bisimulation with the classical self-interpreter is at best
   up-to-dilation with garbage uncomputed before output; whether an
   exact-ring universal simulation exists at all is open.
7. Relations among Ω objects: `Ω_qALC` versus classical `Ω` and qBLC's
   `Ω_success` — inequalities, domination, or incomparability.
8. Reachability: which finitely-supported ring-valued unit vectors arise as
   `ψ_τ` (small lemma, low priority).
9. Signature order freeze (§3) before any canonical data.
10. Output convention (§4.6) — parked deliberately.

## 10. Lineage and related documents

Standard references this design leans on: Arrighi–Dowek (Lineal; linear
extension, gates as constants), Vaux and Ehrhard–Regnier (algebraic
λ-calculus; Taylor expansion as the canonical source of term sums), van
Tonder (history-tracked unitary λ-reduction), Bernstein–Vazirani (QTM
well-formedness and synchronized halting), Shi and Aharonov
(Toffoli+Hadamard universality), Yuan–Villanyi–Carbin (synchronization
limits of quantum control flow), Selinger–Valiron (the design point qBLC
occupies), Hasuo–Hoshino and Dal Lago–Faggian–Valiron–Yoshimizu (quantum
GoI and multitoken machines, for the parked alternative),
Bădescu–Panangaden (why quantum control plus recursion has no settled
semantics — the gap this pillar's measurements would inform).

- Classical counterpart: `../classical/architecture.md`
- Quantum-store counterpart: `../quantum/architecture.md`
- Moving state and docket: `../STATUS.md` (section pending ratification)
- Canonical evidence: none yet; `data/quantum-algebraic/` reserved.
