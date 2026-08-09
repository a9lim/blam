# Quantum-algebraic BLC (qALC) architecture

**Status: design contract, pre-implementation, pre-ratification.** No engine
exists and nothing in `data/` is qALC-relative. This document is the object
under adversarial review in gaslamp thread `qalc-architecture`; on
ratification it becomes the pillar's durable architecture contract, and any
moving state acquires a section in `../STATUS.md`. Claims are marked:
**[standard]** for published results, **[design]** for choices this contract
fixes, **[claim]** for arguments made here that the review must attack, and
**[open]** for named unknowns.

Review round 1 (2026-08-09) is incorporated: the monotone-mass lemma, the
bare-term counterexample, and the degeneration claim were confirmed; two
claims were corrected (ordinary KN control does not supply reversibility —
§4.1; equal-time-only coherence is a convention, not a consequence of
isometry — §4.3/§4.5); the conservativity fragment was repaired (effect-free
against rigid-atom reduction, not gate-free against census rows — §6); and a
universality gap was recorded (clean coherent compilation — §6). The
ratification gates are listed at the end of §9.

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
already an Ω-like object; `μ_p ∈ {0,1}` exactly on the effect-free fragment
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
canonical objects. Machine-relativity does not *dissolve* the algebraic-λ
non-confluence pathologies — it chooses one side of them: AIT objects are
defined relative to a fixed universal machine, this contract fixes one, and
the price is stated honestly: β/δ-convertibility is **not** a semantic
equality in qALC, and alternative reduction sequences are not equal —
only the machine's own sequence defines the objects **[design]**. One
consequence to state rather than hide: under normal order,
`(λx. f x x)(h 0̂)` duplicates the
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
bare-term linear extension is an isometry **[claim, review-confirmed]**.

Machine control separates *those* images, but the existing KN machine is not
the repair: ordinary KN control is irreversible. The variable transition
dereferences a closure and discards which variable/environment path selected
it — `focus Var(1), env [A]` and `focus Var(2), env [B, A]` step to the
identical configuration, and both are reachable, from `(λx.x) A` and
`(λy.(λx.y) B) A` **[review round 1, confirmed against the live machine]**.
And a frame that distinguishes two configurations during δ firing but later
unwinds to a common configuration has still lost orthogonality: an isometry
preserves inner products under every iterate, not just the first. So the
configuration basis belongs to a **new reversible abstract machine**, whose
transition table must have orthonormal columns as a checkable property;
the KN machine is its guide, not its substrate, and garbage is needed for
environment lookup, control unwinding, and readback collisions — not merely
for β substitution content.

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
injective **[claim, review-confirmed]**. The clean general statement is via
the wandering subspace of `V = U|_S`: newly arriving halted amplitude
`a = P_S U r` lies in `S ⊖ V(S)`, hence `V^m a ⊥ V^n b` whenever `m ≠ n`
**[review round 1 formulation]**.

**Normative halted dynamics [design].** Halted evolution is
`identity_output ⊗ identity_garbage ⊗ unilateral-shift_tick`, with every
branch entering at tick zero (common origin): `(nf, g) → (nf, g, 0)`,
`(nf, g, k) → (nf, g, k+1)`. Invariance alone is deliberately not enough —
a halt-sector unitary rotating `|0̂⟩` toward `|+⟩` preserves halted mass
while wrecking the monotone reduced output of §4.6; the normative form is
what makes §4.6 a theorem. What mass monotonicity itself needs is only
invariance, not fixedness:

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
not cosmetic: under full logging — meaning an exact, ordered, collision-free
append-only history, `log′ = log · encode(step)` — two histories that ever
differ can never regain identical logs, so no two distinct branches ever
re-merge, every δ-branching decoheres immediately, `t`'s phases become
observationally irrelevant, and qALC collapses into a probabilistic
λ-calculus with √2-shaped coins — quantum in name only
**[claim, review-confirmed for exactly this definition of full logging]**.
The entire quantum content of the design lives in the merge discipline.

Whatever residue restores injectivity is true garbage, and per §4.1 it is
needed at environment lookup, control unwinding, and readback collisions,
not merely at β substitution. An environment-machine formulation relocates
much of it to binding-discard steps — erasure, where the irreversibility
genuinely lives. The **minimal-garbage theorem** is this pillar's first
formal work item **[open, gating]**: define the reversible machine of §4.1
as a concrete transition table, prove its columns orthonormal on the
reachable configuration graph, characterize the minimal residual garbage,
and prove the invariant-sector lemma in that machine. Until it exists,
`U`, `μ_p`, and `M` are not defined objects, and everything downstream is
conditional.

**Synchronization as convention [design].** Under the common-origin tick,
a branch's halting time is recorded in its tick offset: two branches
reaching the same normal form at different times sit at different chain
positions forever, so coherence between halting branches exists only at
equal halting time with equal residual garbage. Review round 1 corrected
this from a structural theorem to a convention: injectivity alone does not
force it — an entry map assigning per-configuration tick offsets (realizable
in earnest only if residual garbage happens to encode arrival time, so the
offset can uncompute the clock) is injective yet permits unequal-time output
coherence after the clock is traced. qALC adopts the common origin
deliberately: it is Bernstein–Vazirani's synchronized-halting construction
made a machine convention (compare also the quantum control machine
synchronization constraint of Yuan–Villanyi–Carbin **[standard]**), it is
the natural choice, and it is load-bearing for §4.6. Revisit only if
unequal-time output coherence ever becomes a wanted object.

### 4.6 Output coherence blocks

Group halted branches by (halting time, residual garbage, terminal
control). Within a group, branches with different normal forms contribute a
coherent block `v v†` to `ρ_p`; across groups, contributions add
incoherently. *Given the normative halted dynamics of §4.3* — this is where
it earns its keep — each block is constant once formed, groups persist
(equal-time branches keep equal tick counts forever), and a branch arriving
later belongs to a later group and cannot enlarge an earlier block, so
`ρ_p(τ)` is a sum of a growing set of fixed PSD blocks — Loewner-monotone
with limit `ρ_p` **[claim, review-confirmed under the normative form]**. Off-diagonal mass in `M` therefore comes exactly from
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

**Effect-free fragment.** Review round 1 broke the naive version of this
fragment: `λh.λt. h h` is a classical normal form, yet its invocation
reaches the species error `h h` without ever firing a boolean δ-rule — so
"never fires a δ" does not give fate identity with the bare program's
census row. The correct statement: a run of `p h t` is *effect-free* when
no transition ever consumes a constant — no δ fires and no error transition
involving a constant fires. Effect-free evolution proceeds on a single
basis path and coincides step-for-step with classical leftmost reduction of
`p X₁ X₂` with rigid atoms — the skeleton semantics qBLC's trusted checker
already adjudicates — so conservativity is fate identity with *rigid-atom
reduction*, not with census rows, `μ_p ∈ {0,1}` on this fragment, and the
qBLC skeleton machinery is the natural tool for scoping it **[design,
repaired]**.

**h-only fragment.** Programs whose text never applies `t` (syntactically
identifiable; a census flag, not a separate design). Amplitudes are real,
in ℤ[1/√2]. Conjecture **[claim, definition from review round 1]**: call a
program *D-circuit-shaped for halting* when, in the unfolded history tree,
every history first entering the halt sector has fired exactly `D`
Hadamards; then every halting history has amplitude `±2^(−D/2)`, terminal
amplitudes are `n_c/2^(D/2)`, and the halting mass `Σ n_c²/2^D` is dyadic.
The witness reading is correspondingly narrow: a √2-irrational halting mass
witnesses **coherent merging of histories with opposite Hadamard-count
parity** — not mere desynchronization (unequal depths ending in orthogonal
garbage stay dyadic, depths differing by an even number merge without √2
terms, and irrational contributions can cancel in aggregate). This fragment
is the dyadicity campaign's natural sequel instrument: in full qALC, ω
already carries non-dyadicity, so the witness reading is fragment-relative.

**Universality.** Toffoli-class reversible operations are expressible as
pure λ-terms on Church-encoded data, and Shi–Aharonov make Toffoli+Hadamard
a universal gate set **[standard]** (real amplitudes; complex via the
standard rebit encoding), with `{h, t}` giving Clifford+T natively. But the
theorem is about *abstract clean gates*, and review round 1 named the gap:
a λ-term computing a reversible Boolean function generically realizes
`|x⟩ ↦ |F(x)⟩|g_x⟩` with input-dependent garbage under this machine, and
tracing `g_x` dephases exactly the superpositions universality needs. What
qALC requires is a **clean coherent compilation theorem [open, gating]**:
λ-defined Toffoli-class terms whose residual garbage is input-independent —
Bennett compute–copy–uncompute as a λ-idiom — proved against the pillar's
reversible machine. Until it is proved, universality is a target, not a
property, and the H–NOT–H witness (§7) is its smallest instance. A formal
statement of what universality means for qALC's objects — presumably a
Gács-style domination claim for `M` within an appropriate class — is also
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

Two clauses are normative machine contract, not just test surface:
δ-steps are **garbage-transparent** — a δ acts as `gate ⊗ I_context ⊗
I_garbage`, writing nothing branch-dependent — and halted dynamics has the
§4.3 normative form. Every qALC engine change must then satisfy:

1. `cargo test --release --all-features` and plain `cargo test --release`;
2. exact norm conservation (equality battery) on every tested program;
3. the monotonicity battery: `μ_p(τ)` nondecreasing, per transition, on the
   full test range;
4. the orthonormal-columns battery: the transition table is column-
   orthonormal over the reachable configuration graph at small sizes
   (subsumes pairwise inner-product spot-checks);
5. effect-free conservativity: fates and masses identical to classical
   rigid-atom reduction of `p X₁ X₂` on the covered range (§6);
6. **the HH witness**: `h` twice on the same position halts with mass 1 on
   `0̂` and mass 0 on `1̂` — destructive cancellation, separating quantum
   semantics from the probabilistic degeneration (which yields the same
   mass but a mixed output at (1/2, 1/2));
7. **the H–NOT–H witness**: `h (NOT (h 0̂))` with `NOT` a pure λ-term halts
   with mass 1 on `0̂` (HXH = Z on `|0⟩`) — HH alone certifies only local δ
   coherence, and an engine could pass it while β garbage from any
   interposed λ-term destroys every nontrivial coherent computation; this
   witness is the smallest test that λ-computation between gates is
   coherence-transparent; and
8. bit-identical classical *and* qBLC rows: qALC must remain isolated from
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
- **β-dynamics on a new reversible machine:** bare terms fail isometry,
  and ordinary KN control fails reversibility (§4.1) — the configuration
  algebra is a machine to be built, with the KN design as guide. The
  token-machine (quantum GoI) alternative is parked, not rejected: its
  natively reversible dynamics is attractive, but it merges branches
  differently and therefore defines *different objects* — if pursued, it
  is a separate pillar, never a drop-in engine for this one.
- **Invariant-sector halting with ticks, common origin:** fixed points are
  incompatible with injectivity; invariance suffices for monotone mass;
  the common-origin tick and the normative halted form (§4.3) are chosen,
  not forced — they buy equal-time-only coherence and Loewner-monotone
  outputs, and the injective unequal-time alternative is recorded and
  declined.
- **Garbage-transparent δ:** gates act as `gate ⊗ I` on configurations;
  branch-dependent δ residue would kill even the HH witness.
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

1. **The reversible machine + minimal-garbage theorem** (§4.1, §4.5) — the
   gating work item: a concrete transition table (KN-guided, not KN),
   orthonormal columns proved on the reachable graph, minimal residual
   garbage characterized, invariant-sector lemma proved in that machine.
   `U`, `μ_p`, and `M` are undefined until this exists.
2. **Clean coherent compilation** (§6): λ-defined Toffoli-class terms with
   input-independent garbage under the machine of item 1; gating for any
   universality claim.
3. Merge-discipline canonicity: is the minimal-garbage `U` unique in any
   useful sense, and what exactly is the class of programs whose branches
   re-merge (the "coherence is earned" economy made precise)?
4. D-circuit-shaped dyadicity in the h-only fragment (§6): review round 1
   proposed the definition — every history first entering the halt sector
   fires exactly `D` Hadamards — under which halting masses are `Σ n_c²/2^D`,
   dyadic; and sharpened the witness reading: a √2-irrational mass
   specifically witnesses coherent merging of histories with opposite
   Hadamard-count *parity*, not mere desynchronization (unequal depths with
   orthogonal garbage stay dyadic; even-differing depths merge without √2
   terms; irrational contributions can cancel in aggregate). Statement and
   proof against the machine of item 1.
5. Universality/domination statement for `M` (§6), downstream of item 2.
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

**Ratification gates (review round 1):** the reversible-machine transition
table with orthonormal columns (item 1); the common-origin tick and
normative halted dynamics stated as contract (§4.3, done in this revision);
garbage-transparent δ stated as contract (§7, done); the H–NOT–H clean-gate
witness in the verification contract (§7, done); the corrected effect-free
conservativity fragment (§6, done). The open gates are items 1 and 2; the
scalar ring needs nothing — the unresolved object is the configuration
algebra, not the amplitudes.

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
