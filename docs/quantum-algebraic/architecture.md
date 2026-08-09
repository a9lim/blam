# Quantum-algebraic BLC (qALC) architecture

This document is the durable architecture contract for blam's
quantum-algebraic pillar. It uses the same structure as the classical and
quantum architectures so the three systems can be compared layer by layer.

**The pillar is a design contract without an engine**: nothing in `src/`
or `data/` is qALC-relative yet, and the two gates that stand between
this document and implementation are stated in §9. The contract is
ratified through gaslamp thread `qalc-architecture`; the development
history and the superseded rewriting-machine formalizations live in
`../ledger/2026-08.md` and `machine.md`.

## 1. Purpose and position among the pillars

qALC is the quantum-control pillar. The existing pillars occupy two corners
of the control/data square:

- `classical`: classical control, classical data;
- `quantum` (qBLC): classical control, quantum data — programs are
  classical BLC controllers driving an exact gate-based store through five
  opaque primitives (Selinger–Valiron's "quantum data, classical control").

qALC takes the third corner: quantum control, no store. The runtime state
is a vector in ℓ² over machine configurations; superposition of *control*
— of the reduction itself — is the object of study. qBLC's architecture
(`../quantum/architecture.md` §7) chose classical control to obtain
monotone positive operator approximants and to avoid an unresolved
quantum-halting semantics. The construction here is designed to recover
both inside quantum control (§4: typed invariant-sector halting;
conditional on the machine of §9 item 1), which would make that choice a
convenience rather than a necessity. And the objects it excludes —
interference between reduction paths, real-valued halting mass, coherent
output operators — are exactly the ones this pillar exists to measure.

qALC is a separate pillar, not a revision: qBLC's objects, data, and
docket are untouched, and the verification contract (§7) requires
bit-identical classical and qBLC rows after any qALC work.

## 2. Target objects

For a program `p` (a closed BLC term, unchanged wire code), the machine
prepares `|init(p)⟩` — the root query token over the immutable invocation
term `p h t`, with initial direction, empty context stacks, and initial
readback control — with amplitude 1, and applies the global step isometry
`U` (§4) once per transition. Positions are structural and
program-relative (no allocation identity), so the global state space is
an explicit orthogonal direct sum over invocation sectors. With `P_halt` the projection onto
halted configurations:

```text
μ_p(τ) = ‖P_halt U^τ |init(p)⟩‖²          (monotone nondecreasing in τ)
μ_p    = lim_τ μ_p(τ)                      (halting mass of p)
Ω_qALC = Σ_p 2^(−|p|) μ_p.
```

Halting mass is the central softening: the classical fate column
{Halt, Diverge, Unknown} becomes a real number in [0,1] with exact
monotone lower approximants and certificate-driven upper brackets. A
single program is already an Ω-like object. Every effect-free program (§6)
has `μ_p ∈ {0,1}`; the converse fails — HH is effectful with mass 1. A
divergence certificate on a sector of the superposition bounds `μ_p` from
above, so the classical certificate machinery generalizes from verdicts to
intervals.

The output object is an operator on ℓ² of closed normal forms over
BLC ∪ {h, t}:

```text
ρ_p(τ) = Tr_{control, garbage, tick} [ P_halt ψ_τ ψ_τ† P_halt ]
M      = Σ_p 2^(−|p|) ρ_p,        Tr M = Ω_qALC.
```

`ρ_p(τ)` is Loewner-monotone in τ (§4.6), so the house bracket discipline
`M_known ⪯ M ⪯ M_known + ε I` carries over. Unlike qBLC's
number-superselected `M_Fock`, `M` can carry coherences *between output
terms*; §4.6 states exactly which branch pairs contribute off-diagonal
mass.

The Kraft accounting is unchanged from qBLC: `|p|` is the program's own
prefix-free length, and the applied constants are invocation convention,
not program bits.

## 3. Semantic contract

### Language and invocation

Programs are ordinary closed BLC terms — unchanged wire format, 1-indexed
de Bruijn, unchanged size identity. **The program syntax contains no
quantum constant**: `h` and `t` exist only as opaque values passed in by
the invocation `p h t`, so prefix-freeness and the Kraft sum are untouched
by construction, the same trick qBLC's signature uses. The two-lambda
wrapper `λh.λt. …` is an idiom, not a restriction. The application order
`h` before `t` matches the frozen qBLC signature's relative order; it must
be frozen in one place in code, with an order-pinning test, before any
canonical data is generated.

### Canonical booleans and polarity

```text
0̂ := λλ.2   (= λx.λy.x, true — the BLC encoding of bit 0)
1̂ := λλ.1   (= λx.λy.y, false)
```

Polarity matches the classical I/O convention and qBLC's `meas` outcome
convention: bit 0 is true. The computational basis of a qubit-like
position is {0̂, 1̂} by syntactic equality with these normal forms,
nothing looser.

### δ-rules

The constants are rigid atoms. The δ-rules specify *amplitudes*, not
rewrites — in the machine they are realized as unitary scattering on
gate fibres (§7) after the machine's internal delimited interrogation
of the applied constant's argument establishes its value:

```text
h 0̂  →  (0̂ + 1̂)/√2         t 0̂  →  0̂
h 1̂  →  (0̂ − 1̂)/√2         t 1̂  →  ω·1̂,      ω = exp(iπ/4).
```

`h` (with Toffoli-class λ-terms, §6) and `t` restore the Clifford+T
amplitude ring. Recognition of the canonical booleans is owned by the
interrogation/readback layer, not by pattern-matching a rewritten term.
An argument whose interrogation returns a closed normal form that is
not a canonical boolean drives an error transition into the absorbing
error sector (§4.4), not a stuck normal form. An argument still under
interrogation is an ordinary running configuration, and a divergent
interrogation stays in the running sector. A constant applied to a
rigid open variable remains neutral. An unapplied or partially applied
constant in normal position is an ordinary normal form and may appear
in outputs.

### No sums in syntax

Formal superpositions never appear in program or term syntax. A runtime
"superposition" is a weighted set of ordinary basis configurations; the
calculus never rewrites a sum. `h`'s δ-fibre is the only
amplitude-branching column of `U` and `t`'s the only scalar column;
every non-δ column is basis-to-basis. The Lineal call-by-base question
dissolves: there is never a superposed *subterm* to substitute (§4.2).

### Strategy

The machine does not rewrite: the invocation term is immutable and
evaluation is token transport. The classical strategy commitment survives
as two clauses. First, **observational conservativity**: if rigid-atom
leftmost-outermost normalization of `p X₁ X₂` reaches normal form `n`,
the machine's internal full-readback process halts with output `n`; if it
has no normal form, the machine never enters `Halt` (§6). No per-step
simulation of leftmost reduction is required — token transitions do not
project step-for-step onto redex steps, and demanding that they do would
rule out the adopted dynamics. Second, **machine-relativity transfers to
the token clock**: the token/query/readback schedule and its step count
are part of the machine's definition and therefore part of the physics —
a different schedule is a different `U` and different canonical objects,
δ event order is whatever the schedule makes it, and β/δ-convertibility
is **not** a semantic equality in qALC. Machine-relativity does not
resolve the algebraic-λ non-confluence pathologies; it chooses one side
of them. Duplication is generator semantics stated as a constraint rather
than as syntax-copying: contraction revisits the same immutable subterm
under distinct exponential contexts, each visit to an unfired δ
occurrence is a distinct gate event (`(λx. f x x)(h 0̂)` yields two
independent Hadamard events), and no machine rule copies an
already-superposed runtime value. Branch-level fan-out of a fired outcome
is still written explicitly in code (`h b̂ A B` fires the gate, then
selects per branch).

## 4. State space and dynamics

### 4.1 Configurations

The basis of the state space is **canonical token configurations over
the immutable invocation term**: the invocation identity together with
token position, direction, context stacks (multiplicative and
exponential), and internal query/readback control. Positions are
structural — a rooted zipper into the invocation term — with no
allocation identity.

Two rejected substrates motivate this choice (record: `machine.md` and
the ledger). Bare terms are too coarse: for a rigid
context, the sources `λf. f (h 0̂) 0̂` and `λf. f 0̂ (h 0̂)` are
orthogonal, but their images under a bare-term step overlap in
`λf. f 0̂ 0̂`, so no bare-term linear extension is an isometry. And
ordinary KN control is irreversible: its variable transition discards
which variable/environment path selected the closure, and no frame
discipline that distinguishes configurations during δ firing can later
unwind to a common configuration without losing orthogonality — an
isometry preserves inner products under every iterate. The adopted
substrate is IAM-lineage token transport (Danos–Regnier), whose
classical transition table is bideterministic — injective per row, with
pairwise-disjoint ranges classified by position kind and tape top — as
prior structure. That is the design guide, not the proof: the complete
qALC table, including δ scattering, full-normal-form readback, error
entry, and halted entry, still owes the orthonormal-columns proof on the
reachable graph. The active machine design is `token.md`; `machine.md`
is the historical record of the failed rewriting formalizations.

### 4.2 The step isometry

`U` is the linear extension of the deterministic machine step: each basis
configuration steps by its unique token transition — except at a δ fibre,
where the unitary block produces `h`'s two-branch superposition or `t`'s
phase, and at error entry. `U` is required to be an isometry on the
closed span of configurations reachable from any `init(p)`; no extension
to a unitary on all of ℓ² is demanded, since every target object depends
only on norms, sector projections, and partial traces of reachable
states. A same-space unitary extension would be needed only for a
stronger physical-realizability claim, which this pillar does not make.
Every basis column has finite support with exact ring coefficients, and
one step applied to a finitely-supported state is effectively computable
— the sparse reference evaluator (§7) depends on this.

No-cloning is structural rather than enforced: amplitudes attach to whole
configurations, never to subterms or token payloads, and the machine
contains no copy operation anywhere — contraction is revisitation of an
immutable subterm under distinct exponential contexts (§3). qBLC's
entire handle/epoch apparatus has no qALC counterpart because the store
it protected does not exist.

### 4.3 Halting: typed invariant sectors, not fixed points

A configuration is *halted* when it carries the `Halt` constructor. Halted
configurations cannot be fixed points: if `U(x) = x` and some arriving
step also maps `c₁ → x` (every reachable halted state has such a `c₁`,
and `c₁ ≠ x`), `U` is not injective. The general structure is the
wandering subspace of `V = U|_S`: newly arriving halted amplitude
`a = P_S U r` lies in `S ⊖ V(S)`, hence `V^m a ⊥ V^n b` whenever `m ≠ n`.

**Normative halted dynamics.** Halt entry is typed with disjoint
constructors so no unticked halted basis state exists — the final readback
transition produces the halted form directly:

```text
RunDone(nf, g, terminal-control) → Halt(nf, g, terminal-control, 0)
Halt(nf, g, c, k)                → Halt(nf, g, c, k+1)
```

`P_halt` contains only `Halt` states; once a history enters the halt
sector it only ticks, so no history halts twice. Halted evolution is
`identity_output ⊗ identity_garbage ⊗ identity_terminal-control ⊗
unilateral-shift_tick`, every branch entering at tick zero (common
origin). For the token machine this factorization is itself normative:
halted states must factor **isometrically** as
`ℓ²(NF) ⊗ garbage ⊗ terminal-control ⊗ tick` — either an internal
reversible readback controller constructs a canonical normal-form
register, or the halted token transcript decomposes bijectively into
`(nf, garbage)`. A many-to-one classical decoder from terminal traces to
normal forms is not acceptable: it would silently choose which traces
merge coherently. Query scheduling and readback are internal to the
single time-homogeneous `U` — an external driver relaunching token
queries would make `τ`, halting age, monotonicity, and interference
driver-relative rather than machine-relative. Full normal forms are
essential: a term with a weak-head normal form but no normal form must
remain non-halting under the strong-normalization target. Invariance alone is deliberately not enough — a halt-sector
unitary rotating `|0̂⟩` toward `|+⟩` preserves halted mass while wrecking
the monotone reduced output of §4.6; the normative form is what makes
§4.6 a theorem. What mass monotonicity itself needs is only invariance,
not fixedness:

**Lemma (monotone halting mass).** If `U` is an isometry and
`U(S) ⊆ S` for the halted subspace `S`, then `‖P_S U ψ‖ ≥ ‖P_S ψ‖`.
*Sketch:* write `ψ = ψ_S + ψ_⊥`; `Uψ_S ∈ S`, and
`⟨Uψ_S, P_S Uψ_⊥⟩ = ⟨Uψ_S, Uψ_⊥⟩ = ⟨ψ_S, ψ_⊥⟩ = 0`, so
`‖P_S Uψ‖² = ‖Uψ_S‖² + ‖P_S Uψ_⊥‖²`.

This recovers exactly the monotone lower-semicomputable approximants that
qBLC's classical-control decision was made to protect: `μ_p(τ)` is exact,
monotone, and computable at every finite τ, so `μ_p` and `Ω_qALC` are
lower semicomputable.

### 4.4 Error and stuck sectors

Species errors (a constant applied to a non-boolean canonical form) and
any other semantic error enter their own absorbing sectors with the same
typed invariance-plus-tick treatment, retaining the error kind and
enough argument-interrogation transcript and control to make error entry
injective — coherence being irrelevant in the error sector does not
permit information loss — and error columns participate in the full
pairwise range matrix. Norm is conserved globally: halted
mass, error mass, and still-running mass sum to exactly 1 at every finite
τ. `Unknown` and `Capacity` remain resource outcomes of a finite *run* —
the driver stopping — not machine states, matching the house taxonomy.

### 4.5 Garbage, merging, and where the quantumness lives

Two branches interfere only when they occupy the *same basis configuration
at the same global time*. This makes the garbage discipline constitutive,
not cosmetic: under full logging — an exact, ordered, collision-free
append-only history, `log′ = log · encode(step)` — two histories that ever
differ can never regain identical logs, so no two distinct branches ever
re-merge, every δ-branching decoheres immediately, `t`'s phases become
observationally irrelevant, and qALC collapses into a probabilistic
λ-calculus with √2-shaped coins — quantum in name only. The entire
quantum content of the design lives in the merge discipline.

The vocabulary needs care in a token machine: live multiplicative and
exponential stacks are *control*, not automatically garbage;
predecessor-fibre residue means any information a configuration must
carry beyond the canonical live token state; terminal garbage is
whatever non-output token/readback state survives at `RunDone`.
Classical bideterminism makes ordinary token steps singleton-predecessor
by construction, but it neither proves the chosen stack representation
minimal nor covers the δ, readback, and terminal boundaries. The
**minimal-garbage theorem** is this pillar's first formal work item:
define the machine of §4.1 as a concrete transition table, prove its
columns orthonormal on the reachable configuration graph, characterize
the minimal residual garbage, and prove the invariant-sector lemma in
that machine. "Minimal" here is *local
minimality within the fixed machine representation* — residue must
distinguish exactly each classical predecessor fibre not already
orthogonalized by a quantum transition. A global minimum over arbitrary
reversible realizations is not claimed: that comparison class is unlikely
to be canonical and may hide undecidable semantic equivalence. Until the
machine exists, `U`, `μ_p`, and `M` are not defined objects, and
everything downstream is conditional.

**Synchronization as convention.** Under the common-origin tick, a
branch's halting time is recorded in its tick offset: two branches
reaching the same normal form at different times sit at different chain
positions forever, so coherence between halting branches exists only at
equal halting time with equal residual garbage. This is a convention, not
a consequence of injectivity: a time-homogeneous entry map may choose a
fixed tick offset from the terminal configuration alone — entering output
`a` at label 0 and output `b` at label `d` already permits unequal-time
coherence whenever the offset difference matches the arrival-time
difference, with no timing information encoded anywhere (the `b` chain
simply has no reachable states below `d`); only *adaptively* aligning
arbitrary arrivals would require the incoming configuration to encode
relative timing. qALC adopts the common origin deliberately: it is
Bernstein–Vazirani's synchronized-halting construction made a machine
convention (compare the quantum control machine synchronization
constraint of Yuan–Villanyi–Carbin), it is the natural choice, and it is
load-bearing for §4.6. Revisit only if unequal-time output coherence ever
becomes a wanted object.

### 4.6 Output coherence blocks

Group halted branches by (halting time, residual garbage, terminal
control). Within a group, branches with different normal forms contribute
a coherent block `v v†` to `ρ_p`; across groups, contributions add
incoherently. Given the normative halted dynamics of §4.3 — this is where
it earns its keep — each block is constant once formed, groups persist
(equal-time branches keep equal tick counts forever), and a branch
arriving later belongs to a later group and cannot enlarge an earlier
block, so `ρ_p(τ)` is a sum of a growing set of fixed PSD blocks —
Loewner-monotone with limit `ρ_p`. Off-diagonal mass in `M` therefore
comes exactly from equal-time branch pairs with equal traced spectator
state — equal residue and terminal control, not necessarily *empty*
residue: **coherence is earned by uncomputation**, and the off-diagonal
structure of `M` is a record of which programs clean up after themselves.
What beyond control, garbage, and tick is traced out — and whether a
designated-output alternative is worth defining — is an explicit open
design question, matching the same open question in qBLC.

## 5. Exactness and resource model

Amplitudes live in the qBLC scalar ring `ℤ[ω]/√2^d` unchanged; the `Dw`
type, `ExactSum`, `K_CAP` capacity behavior, and checkpoint codecs are
reused as-is. The engine never samples and never touches floating point;
f64 mirrors are display-only.

The conservation battery *strengthens* from qBLC's inequality to an
equality: `‖ψ_τ‖² = 1` exactly at every transition, with all mass in
typed sectors. Budgets are typed as in qBLC: global transitions (the
clock), support size (branch count), and scalar magnitude (`K_CAP`);
exhaustion yields `Unknown`/`Capacity` resource outcomes distinct from
semantic error mass. Unbounded claims are stated as monotone brackets —
`μ_p` by lower approximants plus certificate upper bounds, `M` by Loewner
brackets — never as floating-point limits or finite-ring assertions about
limits that need not lie in the ring.

## 6. Fragments

**Effect-free fragment.** A run of `p h t` is *effect-free* when no
transition ever consumes a constant — no δ fires and no error transition
involving a constant fires. ("Never fires a δ" alone is not enough:
`λh.λt. h h` is a classical normal form whose invocation reaches the
species error `h h` without firing any boolean δ-rule.) Effect-free
evolution proceeds on a single basis path — no δ fires, so no branching
— and its observable outcome matches classical rigid-atom reduction of
`p X₁ X₂`: the same normal form through the machine's internal readback
and the same fate, with no evolving term projection and no step-for-step
correspondence claimed (§3). That is the skeleton semantics qBLC's
trusted checker already adjudicates, so conservativity is outcome
identity with *rigid-atom reduction*, not with bare-program census rows; every effect-free program has
`μ_p ∈ {0,1}`; and the qBLC skeleton machinery is the natural tool for
scoping the fragment.

**h-only fragment.** Defined semantically: no reachable transition fires
`t`. ("Never applies `t` in the text" is not plainly syntactic here — the
constants arrive at invocation and can be passed through arbitrary
higher-order plumbing; a conservative *syntactic* subset for conventional
two-lambda wrappers is worth naming separately for cheap census
flagging.) Amplitudes are real, in ℤ[1/√2]. Conjecture: call a program
*D-circuit-shaped for halting* when, in the unfolded history tree, every
history first entering the halt sector has fired exactly `D` Hadamards;
then every halting history has amplitude `±2^(−D/2)`, terminal amplitudes
are `n_c/2^(D/2)`, and the halting mass `Σ n_c²/2^D` is dyadic.

The witness reading is a **finite-approximant statement**: if `μ_p(τ)`
has a nonzero `√2` coefficient at finite τ, then some basis configuration
at time τ coherently merges histories with opposite Hadamard-count parity
— a configuration receiving only one parity has amplitude either dyadic
or `√2 ×` dyadic, so its squared norm is dyadic, and a finite sum of
dyadics stays dyadic. It deliberately does **not** lift to the limit: an
irrational limit mass needs no merging at all — a program can halt on
dyadic branch masses `2^(−n)` gated by the computable binary digits of
`1/√2`, giving `μ_p = 1/√2` with every history orthogonal. That is the
same countably-many-dyadic-branches phenomenon qBLC's exactness contract
already records; a limit-level witness requires an additional
finite-support or uniform-`D` hypothesis. Nor does mere
desynchronization produce √2 terms at finite τ: unequal depths ending in
orthogonal garbage stay dyadic, depths differing by an even number merge
without √2 terms, and irrational contributions can cancel in aggregate.
This fragment is the dyadicity campaign's natural sequel instrument: in
full qALC, ω already carries non-dyadicity, so the witness reading is
fragment-relative.

**Universality.** Toffoli-class reversible operations are expressible as
pure λ-terms on Church-encoded data, and Shi–Aharonov make
Toffoli+Hadamard a universal gate set (real amplitudes; complex via the
standard rebit encoding), with `{h, t}` giving Clifford+T natively. But
the theorem is about *abstract clean gates*: a λ-term computing a
reversible Boolean function generically realizes `|x⟩ ↦ |F(x)⟩|g_x⟩`
with input-dependent garbage under this machine, and tracing `g_x`
dephases exactly the superpositions universality needs. Input-independent
garbage is necessary but not sufficient under the common-origin halt
convention: input-dependent *running time* places outputs at different
tick ages and dephases them just as surely. What qALC requires is a
**clean coherent compilation theorem**: for a single common transition
count `T`, `U^T |x, clean⟩ = |F(x), g*, c*, 0⟩` for every basis input
`x` — same `T`, same residual garbage `g*`, same terminal control `c*`,
the intended amplitudes, with `|x, clean⟩` and the result read through
canonical token initialization and halted-output states. Clean
compilation must be realized by synchronized reversible token transport
and uncomputation; no construction may basis-copy an unknown quantum
result (`machine.md` §9.1), and the classical Bennett discipline
applies only where the copied register is genuinely classical.
Synchronization is not automatic. Until it is
proved, universality is a target, not a property, and the H–NOT–H witness
(§7) is its smallest instance. A formal statement of what universality
means for qALC's objects — presumably a Gács-style domination claim for
`M` within an appropriate class — is also unwritten.

## 7. Planned engine stack and verification contract

Planned module tree `blam::qalc`, drivers under a new `blam` subcommand
group; the reference evaluator represents `ψ_τ` as an exact sparse map
from configurations to `Dw` scalars and applies `U` transition by
transition.

A fast engine, if the reference is too slow for a census, faces a
*stricter* bar than qBLC lockstep — final fate/mass/support equality is
insufficient, because in qALC internal configurations and residue
determine future interference: the configuration algebra is semantic
state, not implementation detail. A fast engine must either produce the
identical exact sparse amplitude map over canonical configurations at
every transition, or come with an isometric intertwining
`W U_ref = U_fast W` preserving the halt and error projections and the
output partial trace. "Transition" throughout means one reference
semantic `U`-step: implementation microsteps are unobservable and
unconstrained, and the displayed intertwiner is time-preserving — it
does not license a different semantic clock. An engine with a genuinely
different semantic cadence needs a clocked dilation
(`W U_ref = U_fast^r W`) or a synchronized simulation relation
preserving halt ages and output traces — a stronger theorem than this
contract grants, since timing is physical here (§4.5). Hash-consing and
representation tricks are fine below that line; branch-dependent
allocation identity is not (`token.md` §1, canonical position
identity).

Two clauses are normative machine contract, not just test surface. First,
δ-steps are **clean δ fibres, gate-indexed**: for every spectator
configuration `κ` and gate `q ∈ {h, t}`,

```text
U |q, b, κ⟩ = Σ_b' (Q_q)_b'b |b', J_q(κ)⟩,     Q_h = H,  Q_t = diag(1, ω)
```

with each `J_q` one injective spectator transition, identical across
input booleans and output branches *within its gate fibre*, no residue
depending on either, landings jointly orthogonal across gate kinds —
`J_q† J_r = δ_qr I`, realizable as a gate-kind landing tag — and
orthogonal to the range of every non-δ transition column. A single
landing `J` shared by both gates is not sound: `U|h,0,κ⟩` and
`U|t,0,κ⟩` would overlap at `1/√2` despite orthogonal sources. What HH
needs is equal residue across the two H columns, not literally untouched
context. The fibre must be exhibited, not metaphorical: the design must
identify the canonical pairing of the two boolean input states and the
two output states sharing one spectator fibre with exactly equal
spectators. Boolean values encoded by token *position* are acceptable
precisely when that pairing is exhibited; quantum control must reside in
superposed token configurations — a classically-positioned token driving
a hidden quantum payload register is the classical-control corner, not
this pillar. Second, halted dynamics has the §4.3 normative typed form.
Every qALC engine change must then satisfy:

1. `cargo test --release --all-features` and plain `cargo test --release`;
2. exact norm conservation (equality battery) on every tested program;
3. the monotonicity battery: `μ_p(τ)` nondecreasing, per transition, on
   the full test range;
4. the orthonormal-columns battery: the transition table is column-
   orthonormal over the reachable configuration graph at small sizes
   (subsumes pairwise inner-product spot-checks);
5. effect-free conservativity: fates and masses identical to classical
   rigid-atom reduction of `p X₁ X₂` on the covered range (§6);
6. **the HH witness**: `h` twice on the same position halts with mass 1
   on `0̂` and mass 0 on `1̂` — destructive cancellation, separating
   quantum semantics from the probabilistic degeneration (which yields
   the same mass but a mixed output at (1/2, 1/2));
7. **the H–NOT–H witness**: `h (NOT (h 0̂))` with `NOT` a pure λ-term
   halts with mass 1 on `0̂` (HXH = Z on `|0⟩`) — HH alone certifies only
   local δ coherence, and an engine could pass it while β garbage from
   any interposed λ-term destroys every nontrivial coherent computation;
   this witness is the smallest test that λ-computation between gates is
   coherence-transparent;
8. **the negative witness**: for `λb. b I I` (a non-injective boolean
   map) applied to a fired `h` outcome, the synchronized images of basis
   inputs `0̂` and `1̂` remain orthogonal full configurations and never
   merge into the same halted basis state. The assertion is
   inner-product preservation, not a reduced-output statement — both
   branches may output `I`, and tracing orthogonal garbage yields
   `|I⟩⟨I|` either way; unitarity forbids the merge, and an engine that
   merges them has a non-injective column; and
9. bit-identical classical *and* qBLC rows: qALC must remain isolated
   from both existing engines.

## 8. Design decisions

- **Quantum control, storeless:** the pillar's reason to exist; state is
  ℓ²(configurations), qubits are emergent boolean positions, and the
  qBLC store discipline has nothing to protect.
- **`{h, t}` primitives:** Clifford+T ring native, scalar layer reused
  wholesale; the satisfying h-only design is kept as a fragment
  instrument rather than the primitive set.
- **Classical syntax only:** programs are prefix-free bits; superposition
  is runtime-only. Anything else is a different (BvDL-flavored) research
  program with a broken size identity.
- **Token-transport dynamics on a reversible interaction machine:**
  qALC's defining machine is IAM-lineage. The invocation term is
  immutable and read-only; a basis configuration canonically identifies
  that invocation together with token position, direction, context
  stacks, and internal query/readback control. Gate arguments reach δ
  nodes by reversible transport, never by basis-copying an unknown
  superposition. Classical IAM bideterminism is the design guide, not
  the proof: the complete qALC transition table — including δ
  scattering, full-normal-form readback, error entry, and halted entry —
  must still satisfy the orthonormal-columns contract. The route was
  chosen over β-dynamics on a reversible rewriting machine after the
  latter's coherence protocol fell to a no-cloning countermodel
  (`machine.md` §9.1: copying a superposed δ-argument result before
  uncomputation produces `CNOT(|+⟩|0⟩) = |Φ⁺⟩`, and the adjoint pass
  cannot restore a clean entry state). The token machine's clock and
  merge discipline define `U`, `μ_p`, and `M`; a rewriting machine is
  the parked alternative and would define *different objects* — no
  equivalence, refinement, or preservation of the rewriting proposal is
  claimed.
- **Typed invariant-sector halting, common origin:** fixed points are
  incompatible with injectivity; invariance suffices for monotone mass;
  the common-origin tick and the normative halted form (§4.3) are chosen,
  not forced — they buy equal-time-only coherence and Loewner-monotone
  outputs, and the injective unequal-time alternative (fixed
  output-dependent entry offsets) is recorded and declined.
- **Clean δ fibres:** gates act as `gate ⊗ J_q` with gate-indexed
  injective boolean-independent landings, jointly orthogonal across gate
  kinds and against every non-δ range (§7); branch-dependent δ residue
  would kill even the HH witness, and a landing shared across gate kinds
  would break isometry outright.
- **Leftmost-outermost strong reduction:** the house strategy; the
  machine is the definition — which chooses one machine-relative
  reduction sequence rather than resolving algebraic-λ non-confluence,
  and β/δ-convertibility is not a semantic equality here (§3).
- **Exactness:** ring arithmetic only, conservation as equality, brackets
  for every unbounded claim.
- **Name:** qALC, quantum algebraic lambda calculus — lineage-accurate:
  the algebraic λ-calculus (Vaux; Ehrhard–Regnier) is exactly the
  calculus of linear combinations of λ-terms, Lineal (Arrighi–Dowek) its
  unitary-flavored cousin, and qALC is a machine-first quantum
  restriction of that family.

## 9. Boundaries and open obligations

1. **The reversible machine + minimal-garbage theorem** (§4.1, §4.5) —
   the gating work item: a canonical token transition table (IAM-lineage
   per `token.md`) including δ scattering, full-normal-form readback,
   and the error/halting adapters, orthonormal columns proved on the
   reachable graph, residual garbage locally minimal in the
   predecessor-fibre sense, invariant-sector lemma proved in that
   machine. `U`, `μ_p`, and `M` are undefined until this exists.
2. **Clean coherent compilation** (§6): λ-defined Toffoli-class terms
   with input-independent garbage, terminal control, *and transition
   count* under the machine of item 1; gating for any universality claim.
3. Merge-discipline canonicity: is the minimal-garbage `U` unique in any
   useful sense, and what exactly is the class of programs whose branches
   re-merge (the "coherence is earned" economy made precise)?
4. D-circuit-shaped dyadicity in the h-only fragment (§6): statement and
   proof against the machine of item 1.
5. Universality/domination statement for `M` (§6), downstream of item 2.
6. Self-interpretation: interpretation slows branches, timing is physical
   (§4.5), so bisimulation with the classical self-interpreter is at best
   up-to-dilation with garbage uncomputed before output; whether an
   exact-ring universal simulation exists at all is open.
7. Relations among Ω objects: `Ω_qALC` versus classical `Ω` and qBLC's
   `Ω_success` — inequalities, domination, or incomparability.
8. Reachability: which finitely-supported ring-valued unit vectors arise
   as `ψ_τ` (small lemma, low priority).
9. Signature order freeze (§3) before any canonical data.
10. Output convention (§4.6) — deliberately open, mirroring qBLC.

Items 1 and 2 gate implementation: no `src/qalc/` code before the machine
is formal and its witnesses computed by hand in the formal token-machine
document. The scalar ring needs nothing — the unresolved object is the
configuration algebra, not the amplitudes.

## 10. Lineage and related documents

Standard references this design leans on: Danos–Regnier (the Interaction
Abstract Machine — the principal machine lineage) and
Accattoli–Dal Lago–Vanoni (the λIAM, its λ-calculus presentation, and
the bideterminism analysis), Arrighi–Dowek (Lineal; linear extension,
gates as constants), Vaux and Ehrhard–Regnier (algebraic λ-calculus;
Taylor expansion as the canonical source of term sums), van Tonder
(history-tracked unitary λ-reduction), Bernstein–Vazirani (QTM
well-formedness and synchronized halting), Shi and Aharonov
(Toffoli+Hadamard universality), Bennett (reversible computation and
uncomputation), Yuan–Villanyi–Carbin (synchronization limits of quantum
control flow), Selinger–Valiron (the design point qBLC occupies),
Hasuo–Hoshino and Dal Lago–Faggian–Valiron–Yoshimizu (quantum GoI and
multitoken machines), Bădescu–Panangaden (why quantum control plus
recursion has no settled semantics — the gap this pillar's measurements
would inform).

- Classical counterpart: `../classical/architecture.md`
- Quantum-store counterpart: `../quantum/architecture.md`
- Active machine design: `token.md`
- Historical failed rewriting drafts (v0/v1): `machine.md`
- Development history and review record: `../ledger/2026-08.md`
- Moving state and docket: `../STATUS.md`
- Canonical evidence: none yet; `data/quantum-algebraic/` reserved.
