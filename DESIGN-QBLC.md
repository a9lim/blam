# qBLC design (quantum pillar)

Design spec for the quantum counterpart of the classical engine.
Ratified 2026-08-02 after two adversarial Codex rounds (gaslamp thread
`blc-qblc`; the round record is in LEDGER.md). S1 (evaluator) is
cleared to build. Working document — argue with it. Sibling:
DESIGN-BLC.md (classical pillar). Literature grounding:
`ref/QUANTUM_AIT.md` (untracked survey); load-bearing sources: Gács
quant-ph/0011046, Müller quant-ph/0605030 / 0707.2924, Vitányi
quant-ph/0102108, Schumacher–Westmoreland quant-ph/0011014,
Kliuchnikov 1306.3200.

## Why this exists

Quantum AIT has existence theorems and zero concrete machines. The
invariance theorem took eight years (BvDL 2000 → Müller 2008) because
nobody had a machine to point at; no wire format, no measured
interpreter constant, and — to our knowledge — no concrete complexity
bound for any quantum state exists in the literature. BLC's founding
move — replace O(1) with a countable number — has never been made
quantum-mechanically. This pillar makes it, treated as an
investigation, not a build: the deliverables are measured objects, and
a failure is a finding about what is genuinely possible.

## Target objects — there are two, and they cannot be one

**Object A — the operator census** (the Ω-flavored object):

    M_Fock = ⊕_k M^(k),   M^(k)|≤N = Σ_{p, |p|≤N} 2^(−|p|) · ρ_p^(k)

over programs run bare (`p` applied to the signature), ρ_p^(k) the
subnormalized k-live-qubit successful output. One global Kraft budget;
Σ_k Tr M^(k) ≤ 1; **Tr M_Fock = Ω_success**, the successful-output
mass (Err excluded by construction; distinct from raw halting
probability — the name says so). Loewner-monotone in N; finite-census
notation Ω_{success,≤N}. This is the census deliverable and the Ω|≤41
sibling.

**Object B — the conditional family** (the Gács candidate):

    G_k = Σ_p 2^(−|p|) · ρ_{p,k}

where p receives k as a free condition — run as `p k̄ ⟨signature⟩`
(k̄ a Church numeral) — and only Halt leaves with exactly k live qubits
contribute. Each k has its **own full Kraft budget**, mirroring Gács's
m(x|N): a fixed program can serve every k without its weight decaying
in k. This is the object the universality theorem is about, and the
algorithmic content is the **uniformity in k** — within any fixed k,
domination is nearly vacuous (any full-rank computable density
dominates the whole finite sector); the theorem lives in the single
constant working across the family.

Object A is not a Gács candidate: its sector traces are summable
(Σ t_k ≤ 1), so against the computable family σ_k = I/2^k any uniform
constant dies (c ≤ t_k → 0). Do NOT repair A into B by normalizing
sectors: t_k is only lower-semicomputable, and dividing by it destroys
lower semicomputability. Derived scalars (from G_k):
H̲(ψ|k) = −log⟨ψ|G_k|ψ⟩ with measured numbers for named states.

**How A and B relate — a sandwich, not an identity:**

    c·m(k)·G_k  ⪯  M^(k)  ⪯  C·G_k

Discarding the condition (λk̄.p, 2 bits) gives M^(k) ⪯ 4·G_k; paying
the address (sample k from an internal universal m(k)) gives
M^(k) ⪰ 2^(−K(k)−O(1))·G_k. No stronger relation holds: the upper
bound M^(k) ⪯ C·2^(−K(k))·G_k does not follow, and the classical
mirror is the same sandwich — the prefix chain rule conditions on
(n, K(n)), not n alone; an exact chain-rule analogue would need a
(k, K(k))-conditioned family, which is a *different* family from
Gács's G_k (not pursued in v0). The K(k) address tax in the lower
bound is exactly the summability that blocks A's family-universality;
B never pays it. B is NOT A conditioned on sector k — that quotient
is the rejected normalization; B changes the experiment, not the
conditioning. At small k the sandwich constants are a few bits, so
*weights* agree within a few bits — but a few bits of slack can
reorder nearby states, so eigenstructure and rankings do not transfer
between A and B: compute both, compare as a finding.

**Conjecture (A's home-class universality).** M_Fock is block-diagonal
in live-qubit number — allocation count is **superselected**: the
machine cannot prepare coherence between sectors, and no
block-diagonal operator can dominate a class permitting cross-sector
coherence (spread a computable unit vector coherently over 2^(2n)
sectors at weight 2^(−n); AM–HM on the compressed diagonal forces the
constant to 0). The conjecture is therefore stated over the graded
class only: **M_Fock is universal among number-superselected lsc
families ⊕_k σ_k with Σ_k Tr σ_k ≤ 1**, by direct global-increment
simulation. The superselection rule itself is a finding: the census
object's universality class is dictated by what the machine physically
cannot prepare.

## Design principle

Every fork is decided by **faithfulness to Gács's construction**. His
μ is classical algorithmic probability pointing at quantum states —
built from classically-described preparations, weighted by a classical
prefix machine's Kraft mass, universal via monotone (lower
semicomputable) limits, conditioned on dimension. The choices below
are not conservative compromises; they are the construction.
Interference cannot enter the prior (domination needs monotone
positive limits; amplitude sums cancel), so nothing is lost by keeping
the machinery classical except the states.

## The forks (decided)

1. **Control: classical** (Selinger–Valiron side, not Lineal). Gács's
   μ, Perrier's Ξ_Q, Tadaki's Ω-operator are all classical-control
   objects; quantum control imports the QTM halting swamp (Myers →
   Ozawa → Linden–Popescu → Miyadera–Ohya, unresolved) plus the
   algebraic-λ-calculus inconsistency: divergent terms produce
   coefficient/norm blowup — the frontier terms are exactly where
   quantum-control semantics stops being defined.
2. **Duplication: full untyped BLC; linearity is a store discipline,
   not a syntax discipline.** Universality requires Turing-complete
   preparations, which live in duplication; syntactic linearity kills
   the target theorem (the affine fragment strongly normalizes — its
   G_k is computable and dominates nothing). No-cloning forbids
   duplicating *states*, not *terms*: duplicating a preparation runs
   the recipe twice and allocates two independent qubits — always
   legal. Use-once is enforced dynamically on handles (epochs, below);
   violation is a fate, not a type error. Measurement returns Church
   booleans — duplicable classical data — placing the basis-copy
   bridge exactly where physics puts it.
3. **Effects: CP instruments, exact distribution tracking.** `meas`
   branches the machine with exact weights; both branches are
   followed; nothing is ever sampled. The outcome-summed instrument is
   trace-preserving; the successful-halting output map is
   trace-nonincreasing CP (not "CPTP" globally). A branch that
   diverges loses its mass — subnormalization is the semimeasure
   structure, arriving on its own.
4. **Wire format: classical bits, byte-identical to BLC.** The code is
   untouched (00 λ, 01 app, 1ⁿ0 var, 1-indexed); quantum enters
   through an interface convention (the gate signature), the same move
   as Tromp's I/O streams. Classical Kraft Σ2^(−|p|) ≤ 1 is what
   bounds Tr M_Fock. Consequence accepted: BvDL qubit-program
   complexity is out of scope; Vitányi (classical descriptions) and
   Gács (via G_k) are in.
5. **Gate set: Clifford+T** — signature {new, meas, cnot, t, h}.
   Universal for BQP, and every reachable amplitude lies in
   **ℤ[ω]/√2^k, ω = e^{iπ/4}** (√2 = ω − ω³): exact arithmetic, no
   floating point anywhere in the pillar, and every preparable state
   has algebraic entries — Clifford+T outputs are Gács-elementary
   states by construction.

## Language spec (v0)

**Program** = any closed BLC term p, |p| its ordinary BLC size (code
unchanged ⇒ prefix-free ⇒ Kraft). Run conventions: Object A evaluates
p applied to the signature; Object B evaluates p applied to k̄ then the
signature. The five-λ prefix is the *idiom*, not a constraint — every
closed term is a program; most produce Err junk, as most classical
programs produce garbage streams (measured: ~91% of leaves are Err at
the pilot cutoff).

**Signature order — FROZEN (pilot run 2026-08-02): application order
`p h meas new cnot t`.** Procedure as predeclared: all 120
permutations swept over the 19,048 closed terms of 4..=24 bits
(`qpilot`, 61 s), functional = max Ω_{success,≤24} exact,
lexicographic tie-break. Winner Ω_{success,≤24} = 46757/2^24 ≈
0.0027869, in an exact tie with its h↔t mirror `t meas new cnot h`
(every ranking row pairs with its mirror at identical exact mass —
see LEDGER.md for the interpretation), broken lexicographically as
predeclared. Note the winner gives `h` to the *first* argument
(outermost binder = longest de Bruijn index inside the full five-λ
idiom): the successful population at small sizes is dominated by
short-prefix programs, so "who arrives first" beats "who is cheapest
inside the deepest idiom" — the frequency intuition the pilot
replaced.

**Handles** are a new opaque value species Handle(qubit, epoch) — no
intro form in syntax (only `new` creates them), and the *only*
elimination is as a primitive argument: a handle in operator position
(`#q M`) is **Err**, not a stuck normal form (a stuck form would
silently count as Halt and change the census). The store tracks the
current epoch per qubit; gates consume an epoch and return a fresh
one. Forgery is impossible (handles are not Church-encodable), which
is what makes the dynamic linearity check meaningful. Allocation ids,
epochs, and the store are **branch-local** after measurement splits.

**Reduction rules** (fire under KN normal order, wherever the redex
is, including under binders; the machine is the spec). Primitive
arguments evaluate strictly left-to-right to weak head normal form;
epoch consumption is atomic, occurring only when the full primitive
redex is assembled:

- `new M → #(q,0)` — fresh qubit in |0⟩; M discarded unevaluated
  (cheapest idiom: apply to any in-scope var, 2 bits).
- `h #(q,e) → #(q,e+1)` — H applied to q in store. Same for `t` (T
  gate).
- `cnot #(q,e) #(r,f) → λz. z #(q,e+1) #(r,f+1)` — Church pair of
  fresh epochs; q = r is Err. (Returning a single handle instead
  would permanently strand the other live qubit — not an equivalent
  optimization.)
- `meas #(q,e)` — branches with exact weights; returns the Church
  boolean of the outcome under the classical polarity convention
  ('0' → true = λx.λy.x); the qubit is retired.
- **Err** fires when a primitive meets a canonical non-handle value
  (λ-abstraction, Church data, pair), a stale epoch (duplication was
  attempted), a retired qubit, or coincident cnot arguments — and the
  species check precedes any effect: `h (λx. new x)` is Err *before*
  anything allocates. A primitive applied to a rigid (bound) variable
  is neutral — it stays symbolic in the normal form; Err is a
  value-level event, not an open-syntax event.

**Fates**, per branch leaf: Halt(store), Diverge, Err,
Unknown(resources). The mathematical branch tree may be countably
infinite (a recursive coin-flip halts on countably many finite
branches); only the resource-truncated evaluator returns a finite
tree, with Unknown leaves carrying the truncated mass — the Loewner
bracket absorbs it. Halting probability p_halt = Σ ‖v‖² over Halt
leaves ∈ [0,1]: the classical trichotomy softens into a distribution,
with Err a genuinely new fate class (clone-death statistics are a
census question no one has asked).

**Output convention** (v0, provisional until S2): at a Halt leaf, the
output state is the joint state of *live* qubits (allocated,
unmeasured, unretired), tensor-ordered by allocation rank; sector
k = live count (Object B: leaves with live count ≠ k are excluded).
Err leaves contribute nothing anywhere (Ω_success := Tr M_Fock makes
this automatic). Accepted consequence: inaccessible live garbage is
part of the output — output behavior is *not* compositional under
"discard an ancilla" intuitions. The normal form's shape is ignored
except for halting; NF-bit-size metrics are defined only for
handle-free NFs (serialization of handle occurrences: reserved).
Alternative arm (designated-output list, uni-style) recorded under
Open questions.

## Exact arithmetic

**Branch vectors are unnormalized** — load-bearing, not stylistic:
post-measurement normalization leaves the ring (a two-qubit
HTH-prepare / cnot / measure-0 run leaves norm² = 3/4, and 2/√3 ∉
ℤ[ω]/√2^k), while the unnormalized vector and the weighted projector
stay inside. **The vv† invariant: a Halt leaf's sole contribution is
vv† — its trace ‖v‖² already IS the branch probability.** No separate
weight factor exists anywhere in the accumulation path; multiplying
again would double-count, and the evaluator makes that impossible by
construction. Amplitudes are elements of ℤ[ω]/√2^k: four integer
coefficients (1, ω, ω², ω³) + a √2-denominator exponent — the
standard exact Clifford+T representation. Coefficients use checked
i128; overflow is a Capacity fate, not UB.

**Ring status is stratified:** finite branch vectors and finite
resource-truncated approximants have ring entries; the unbounded
limits M^(k), G_k generally do NOT — a recursive coin loop (repeat on
11, |0⟩ on 00, |1⟩ on 01/10) outputs ⅓|0⟩⟨0| + ⅔|1⟩⟨1|, and ⅓
escapes every dyadic ring even though every finite branch is dyadic.
Exact output representation = monotone finite ring-valued approximants
plus a Loewner remainder bound; "computed exactly" always means
*exact certified brackets*, the Ω|≤41 discipline lifted to operators:
M_known ≤ M ≤ M_known + (unknown mass)·I.

**Capacity is a fate, not an assumption.** Source size does NOT bound
live qubits — an unbounded loop can pump one syntactic `new`
arbitrarily many times, so the live-qubit count must be *measured*,
never inferred from source size. The work-meter doctrine
(DESIGN-BLC.md, "the work-meter lesson") extends with live-qubit /
statevector / coefficient-magnitude capacity charges; exceeding any
is Unknown(Capacity), mass into the bracket.

## Proof obligations (open)

1. **Uniform conditional simulation theorem** (the universality
   theorem for Object B; route fixed, proof open): for every
   uniformly lower-semicomputable semi-density family {σ_k}, a
   constant c_σ > 0 with c_σ·σ_k ≤ G_k for all k simultaneously.
   Strategy: one fixed program reads k̄ plus an enumeration index for
   σ, samples increment s with mass w_s (fair-coin sampler over
   computable weights), synthesizes ρ̃_s with ‖ρ_s − ρ̃_s‖_∞ ≤ δ at
   runtime — gate count charged to *runtime*, not description length
   (k-qubit synthesis rates are dimension-dependent, Kliuchnikov
   1306.3200, which is why hard-coded approximant programs are the
   wrong construction). Padding with **δ = ε/2^k**:
   τ = (ρ̃ + δI)/(1+ε) is a density matrix with τ ⪰ ρ/(1+ε) — a
   constant *independent of k*; δ shrinking with k costs runtime
   depth only, so uniformity survives. Proof details owed:
   (a) ancilla-free synthesis or explicit ancilla retirement — under
   whole-live-store semantics a stray ancilla shifts the output
   sector; (b) operational preparation of ρ̃ including exact sampling
   of its eigenvalue mixture; (c) the fair-coin sampler for the
   increment weights; (d) the final constant, simulator Kraft weight
   included. Fallback if the proof fails: universality relative to an
   *operationally defined* class — uniformly lsc output families of
   conditional Clifford+T programs — with a realizability theorem
   ("matrices with ring entries" is NOT automatically that class),
   and the delta to full Gács documented as a finding. Either exit is
   a result.
2. **Effect-trace self-interpretation**: the claim is **weak trace
   equivalence up to pure β-stuttering, in unbounded semantics** —
   E⌜p⌝σ⃗ and pσ⃗ fire the same effects in the same order. The decode
   phase of the standard interpreter is pure administrative work (the
   call-by-name environment translation preserves thunk
   duplication/discard), so the claim is expected; prove it by
   small-step bisimulation covering allocation order and measurement
   continuations. Two claims deliberately NOT made: resource fates
   are not preserved (a program discarding a huge subterm unevaluated
   halts directly, while the interpreter parses the subterm first and
   can hit Unknown — trace equivalence is an unbounded-semantics
   statement, not census-ladder equivalence); and the 170 bits is
   `intL` alone — the qBLC constant includes the signature adapter
   and continuation wrapper, so compile and measure the wrapper
   before stating any number.
3. **Convention-dependence**: for a fixed permutation π_k of
   allocation ranks, M'^(k) = P_{π_k} M^(k) P_{π_k}† exactly — an
   external representation theorem, no qBLC program involved.
   History-dependent conventions do not admit a single conjugating
   unitary per sector, and under whole-live-store semantics there is
   no internal O(1) relabeling program (inaccessible handles can't be
   permuted); an internal version returns only if a designated-output
   interface makes all outputs accessible.
4. **Classical-engine isolation.** The classical census's bar
   (bit-identical halt counts) is untouchable: qBLC is a separate
   evaluator built on the same term repr and enumeration, not a
   modification of `vm.rs`/`bb.rs` hot paths. The classical memos
   (λ-wrap, oracle prefilter) do NOT transfer until re-audited under
   effect semantics — the divergence oracle's soundness argument has
   never seen an effectful redex.

## Deliverables

1. **M^(1), M^(2) at census sizes, as exact certified Loewner
   brackets** (Object A; the limits escape the ring — brackets, not
   single matrices) — to our knowledge the first computed
   operator-census of quantum-preparing programs anywhere (novelty
   search before any such claim ships). Eigenstructure; the census's
   ranking of quantum states in measured bits: weight of |0⟩ vs |+⟩
   vs T|+⟩ vs Bell.
2. **Ω_success = Tr M_Fock** with an exact Loewner bracket;
   Ω_{success,≤N} per census size.
3. **G_1, G_2 approximants** (Object B) and H̲ bounds for named
   states (|+⟩, Bell, GHZ_k, T-state). Gács Thm 8 sandwich
   (H̲ ≤⁺ K_Vitányi ≤⁺ 4H̲ + 2log H̲): numeric instantiation only
   after the paired machine constants are established — the
   inequality is machine-relative and a raw shortest-preparation
   search does not instantiate it by itself.
4. **The softened fate census**: halting-probability histogram, Err
   (clone-death) statistics, capacity-fate statistics, measured
   live-qubit distribution, affine-fragment overlay.
5. **Self-interpreter transfer** (obligation 2), with the measured
   wrapper constant if the bisimulation holds.
6. **The uniform conditional simulation theorem** (obligation 1) — or
   its documented failure plus the operational-class fallback.
7. **Lean lane (later)**: finite-dimensional quantum Kraft
   Tr(2^(−Λ)) ≤ 1; the simulation theorem if it lands.

## Staging

S0 spec ratification (**done**, 2026-08-02) → S1 evaluator (**done**,
2026-08-02: naive reference evaluator `src/qeval.rs` + exact ring
`src/dw.rs` + pilot `src/bin/qpilot.rs`; signature order frozen) →
S2 M^(1) operator census (**done**, 2026-08-03: KN-store fast path
`src/qvm.rs`, lockstep-verified against qeval on leaf sequences — fate
incl. store, exact mass, contraction count — over the full ≤24
population; census bin `src/bin/qcensus.rs`; β=4096/trans=2²⁶ with
measured headroom; per-program mass conservation asserted sweep-wide)
→ S3 operator census at classical-census depth (**core done**,
2026-08-03 overnight: canonical `qcensus_table41.txt` — the full
526,039,969-program population 4..41 in ~30 min; Ω_{success,≤41} =
3424188513/2⁴⁰; M^(1) PD, ranking |0⟩ ≫ |+⟩ > T|+⟩ > |−⟩ ≫ |1⟩ with
irrational operator entries whose √2-parts cancel in every trace;
M^(2) with the first entangled halts at exactly n=41, 2-qubit
ranking |00⟩ ≫ Φ⁺ > Φ⁻ > |++⟩; sectors k=2 at 33, k=3 by 41; first
SameQubit Err and first Qubits capacity, both single events at 41;
`--cond-k` G_k harness built — G_k approximant runs and the sandwich
constants remain) → S4 Thm 8 groundwork + interpreter transfer → S5
Lean. Each stage is a publishable finding on its own; stopping early
is a valid outcome of the investigation.

## Rejected

- **Quantum control (Lineal-style)**: halting swamp; norm blowup on
  divergent terms (semantics undefined exactly on the census's subject
  matter); unfaithful to the target — Gács needs no superposed
  programs. Revisit only for the coherent self-interpreter question
  (Müller's theorem as a λ-term), which is stage-∞ research, not this
  prototype.
- **Qubit wire format / BvDL complexity**: different target object;
  coherent prefix parsing (condensable indeterminate-length codes) is
  research-hard; breaks the census correspondence that makes the
  operator census computable here at all.
- **Static linear/affine typing**: kills universality or imports a
  type system against BLC's grain; dynamic epochs give the same
  physics with zero syntax.
- **Sampling evaluator / floating point / normalized branch states**:
  non-reproducible, non-exact, or ring-escaping. Unnormalized exact
  vectors or nothing.
- **Gate sets beyond Clifford+T**: break ring exactness (arbitrary
  rotations) or bloat the signature; T suffices for universality and
  keeps every state Gács-elementary.
- **Normalizing Object A's sectors to fake Object B**: t_k is only
  lower-semicomputable; division destroys lower semicomputability.
  The two objects stay two objects.
- **The A/B =× identity**: only the sandwich holds; the classical
  chain rule needs (n, K(n))-conditioning, and a (k, K(k))-family is
  a different object from Gács's.

## Open questions

- Where does Ω_success go irrational? The S1 conjecture fused three
  milestones; the data split them one by one. (1) Fate-divergent
  measurement from 22 bits (`((meas (new new)) meas cnot) t` —
  outcome-1 a zero-mass halting branch); 470,289 instances by ≤41.
  (2) The pilot's h↔t mirror symmetry breaks at ≤28 — dyadically:
  the mirror pair differs by exactly 1/2²⁹ with identical fate
  counts (a program whose measured qubit is |+⟩ under one order and
  |0⟩ under the other, with fate-divergent outcomes). The frozen
  order remains the winner at ≤28. (3) Non-dyadic leaf masses enter
  at **exactly n=45, measured**: the exhaustive hunt (β=512; 42–44
  clean over 5.2B programs) finds precisely one witness,
  `λ⁵. meas (h (t (h (new t))))` — the predicted h·t·h sandwich,
  tight, no compressed form below it (caveat: a sub-45 witness
  needing >512 contractions to halt would be missed; none
  plausible). M^(1)'s *entries* go irrational earlier (n=34), the
  √2-parts cancelling in every trace. Pinned cross-engine as test
  `first_nondyadic_witness_at_45`. (4) And Ω_success stays dyadic
  through 45: the witness's branches BOTH halt, so
  (2+√2)/4 + (2−√2)/4 = 1 cancels in the sum. Irrationality invades
  in strict layers — operator interior (34) → leaf masses (45) →
  the scalar Ω, which needs the sandwich *plus* fate-divergent
  branches (an applied-boolean construction, ~low 50s; open, beyond
  sweep reach).
- `cnot` return convention: Church pair is v0; residual question is
  only whether a pair-projection idiom deserves a measured shorthand.
- Output convention: whole-live-store (current) vs designated-output
  list (uni-style). The latter would restore output compositionality
  and re-enable an internal relabeling program (obligation 3); the
  former is simpler and parse-free. S2 v1 data is whole-live-store
  (the convention M_Fock is defined on); still open for Object B,
  and a convention change costs one ~1-min census rerun.
- Err-mass accounting: excluded from Ω_success by definition — but
  the Err mass is itself lower-semicomputable and may deserve its own
  census column (raw halting mass = success + Err + halting-Unknown
  resolution).
- Church-numeral k̄ vs unary-stream condition for Object B's dimension
  input: numeral is the default; measure the constant it costs small
  programs.
- Does the escalation ladder transfer? Rung structure presumably
  lifts per-branch, but the oracle prefilter and self-feedback
  certificate are unsound until re-proven for effectful terms
  (obligation 4).
