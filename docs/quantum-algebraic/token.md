# qALC machine v2 — token-transport design

**Status: ratified direction, working design sketch, pre-review.**
Route (b) of `machine.md` §9.4 — a reversible interaction/token
construction in which values are *transported* to δs rather than copied
— was chosen by a9 (2026-08-09) after the v1 Try-boundary protocol fell
to the no-cloning countermodel. The architecture §8 amendment this
required was ratified through thread `qalc-architecture` (AMEND, then
RATIFY — with the reviewer's tightened text and consequential edits)
and applied to `architecture.md` the same day. §§1–5 are the
exploration brief; §6 pins the exact classical substrate; §§7–8 are the
working design sketch and its obligations — **hand-derived, not yet
reviewed as a whole**. A parallel fresh-context feasibility review
(thread `qalc-token-machine`, same day) independently graded the route
**promising-with-hard-open-problems** and converged with the sketch on
every load-bearing point it covers: delimited gate interrogation is
new machinery (plain λIAM stops at a rigid head), raw canonical-boolean
traversal is spectator-distinguishing and one step desynchronized (two
independent derivations agree), balanced answer transport is mandatory,
readback must be an internal reversible controller, and the single
hardest problem is transport through nonlinear λ-code — H–NOT–H. Its
additions are folded in below (§6 verified bideterminism and the
jumping exclusion, §7.2 checklist, §8 kernel gate).

## 1. Why tokens

The Interaction Abstract Machine (Danos–Regnier) runs on untyped pure
terms, never rewrites the term, and is **bideterministic — natively
reversible**. The entire v0/v1 injectivity war (producer marking,
color disciplines, join charging) may dissolve at the root: orthonormal
columns could come from the dynamics instead of being engineered onto
it. The term is read-only, so there is no substitution, no closure
construction, no environment erasure — the state is a token position
plus context stacks, and the exponential-context stack plays the role
our `Look` tags played, reversibly by construction. Quantum prior art:
Hasuo–Hoshino (quantum GoI), Dal Lago–Faggian–Valiron–Yoshimizu
(multitoken machines) — typed/linear-logic settings; the untyped port
is the open engineering.

## 2. Inherited constraints (guardrails)

Items 1–8 are the four completed review rounds' guardrails; 9–13 were
added at amendment ratification. Any v2 design is dead on arrival
unless it respects:

1. **No basis-copying of unknown superpositions** — the v1 killshot:
   `CNOT(|+⟩|0⟩) = |Φ⁺⟩`, `(H⊗I)|Φ⁺⟩ ≠ |0⟩|+⟩` (`machine.md` §9.1).
   Values reach δs by *transport* or not at all; no machine rule copies
   an already-superposed runtime value.
2. **Global single-map injectivity on the reachable basis** — whatever
   the token state is, distinct sources need orthogonal images under
   every iterate, checked as a full pairwise matrix over all columns,
   δ, readback, error, and halt included.
3. **Typed invariant halting sectors with ticks** (architecture §4.3):
   no reachable fixed points; common origin; halted states factor
   **isometrically** as `ℓ²(NF) ⊗ garbage ⊗ terminal-control ⊗ tick` —
   a many-to-one classical decoder from terminal traces to normal
   forms is forbidden; error sectors identically, retaining complete
   discarded control.
4. **Interference = same configuration, same global time.** Timing is
   physical; length-unbalanced branches decohere honestly. Any claimed
   coherence must survive a step-indexed trace.
5. **Clean δ fibres, gate-indexed** (architecture §7):
   `U|q,b,κ⟩ = Σ (Q_q)_{b'b}|b′, J_q(κ)⟩`, `J_q†J_r = δ_qr I`,
   landings boolean-independent. The fibre must be *exhibited*: the
   canonical pairing of the two boolean input states and two output
   states sharing one spectator, with exactly equal spectators.
   Boolean-as-position is acceptable precisely when that pairing is
   exhibited; a classically-positioned token driving a hidden quantum
   payload register is the classical-control corner, not this pillar.
6. **Full-NF effect-free conservativity** (observational): if
   rigid-atom leftmost-outermost normalization of `p X₁ X₂` reaches
   normal form `n`, the machine's internal readback halts with output
   `n`; if no NF exists, the machine never enters `Halt` — including
   WHNF-without-NF cases. No token-step/redex-step simulation is
   required or expected.
7. **Witness battery**: HH must cancel (mass 1 on `0̂`); H–NOT–H is
   the coherence bar; the negative witness — `λb. b I I` on a fired
   `h` outcome — is an inner-product assertion: the synchronized
   images of `0̂` and `1̂` remain orthogonal *full configurations*
   (both branches may output `I`; the reduced output can't see it).
   Witness statements name wire terms only, never machine mechanisms.
8. **Fork (A) stands**: minimal-information residue, earned coherence,
   predecessor-fibre-local minimality — with token vocabulary: live
   stacks are control, not garbage; residue is what a configuration
   carries beyond the canonical live token state; terminal garbage is
   the non-output state surviving at `RunDone`.
9. **Closed semantic readback**: all query scheduling and NF
   construction happen inside one computable, time-homogeneous `U`.
   No external driver relaunching token queries — that would make τ,
   halting age, monotonicity, and interference driver-relative.
10. **Canonical position identity**: positions are structural (rooted
    zipper into the immutable invocation term), no allocation
    identity; the global space is an orthogonal direct sum over
    invocation sectors.
11. **Locally finite computability**: every basis column has finite
    support with exact ring coefficients, and one step on finite
    support is effectively computable (the sparse evaluator depends on
    it).
12. **Generator duplication as constraint**: contraction revisits the
    same immutable subterm under distinct exponential contexts; each
    visit to an unfired δ occurrence is a distinct gate event.
13. **Error completeness**: species-error entry retains enough
    interrogation transcript and control to be injective and
    participates in the full pairwise range matrix.

## 3. Questions the design must answer

1. What is the token state space, and is the linear extension of the
   token step an isometry once δ-branching is added as a unitary
   block? *(§7 sketches the answer; Lemma L1 is the crux.)*
2. How does `h` act — spell out the fibre and check guardrail 5.
   *(§7.2–7.3.)*
3. Readback: full normal forms and halting mass from a head-query
   machine, internal to `U`. *(Open — the largest undesigned
   component; §7.8.)*
4. Duplication: exponential contexts replacing the v0/v1 `Look`
   content tags. *(Native to the substrate; §6.)*
5. Timing: same synchronization physics; check H–NOT–H path lengths
   concretely. *(§7.7; trace obligation.)*
6. Where does `Ω_qALC` live. *(Designated halt states on the token
   clock; same wandering-subspace lemma; §7.8.)*

## 4. Contract amendment — ratified and applied

Architecture §8's β-dynamics decision parked the token machine as
"different objects … a separate pillar, never a drop-in engine."
Route (b) promotes it to *the* qALC machine. The amendment was
ratified in thread `qalc-architecture` (2026-08-09) with the
reviewer's tightened text — IAM bideterminism as guide-not-proof, the
immutable-invocation basis, internal readback — plus consequential
edits across §§2–10 (init as root query token, isometric halted
factorization, observational strategy clause, generator-duplication
constraint, error completeness, the negative witness as battery item
8, Danos–Regnier in the lineage) and applied to `architecture.md` in
the same commit series. The "different objects" observation was
resolved by **adoption, not refutation**: `U`, `μ_p`, `M` had never
been defined, so the token machine's clock and merge discipline become
their definition; a rewriting machine is now the parked alternative.

## 5. What carries over from v1 regardless

The typed terminal sectors and their lemma (review-confirmed twice);
the witness battery and hand-trace discipline; the defect-register
habit; the color-discipline *idea* as a fallback producer-marking tool
if bideterminism has gaps at the δ or readback boundaries; and the
review loop itself — draft, thread, countermodel, register, iterate.

## 6. The classical substrate, exact: λIAM

Source: Accattoli–Dal Lago–Vanoni, *The (Abstract) Machinery of
Interaction* (PPDP 2020, arXiv:2002.05649); table as reproduced in
*The Space of Interaction* (LICS 2021, arXiv:2104.13795, Fig. 1),
Closed CbN setting — which matches ours (invocation terms are closed).

```text
States           s ::= (t, C, L, T, d)     — code subterm, context,
                                             log, tape, direction
Logged positions l ::= (t, Cn, Ln)         — |Ln| = n = level of Cn
Tapes            T ::= ε | •·T | l·T
Logs             L ::= ε | l·L
Directions       d ::= ↓ | ↑
```

The level of a context = the number of arguments the hole lies under.
Initial state: `s_t = (t, ⟨·⟩, ε, ε, ↓)`. Final states:
`(λx.u, C, L, ε, ↓)` — the head abstraction of the weak-head normal
form. The λIAM implements Closed CbN: the run from `s_t` terminates
iff weak-head reduction terminates on `t`.

```text
•1   (t u,        C,         L,    T,                 ↓) → (t,        C⟨⟨·⟩u⟩,   L,    •·T,               ↓)
•2   (λx.t,      C,         L,    •·T,               ↓) → (t,        C⟨λx.⟨·⟩⟩, L,    T,                 ↓)
var  (x,         C⟨λx.Dn⟩,  Ln·L, T,                 ↓) → (λx.Dn⟨x⟩, C,         L,    (x,λx.Dn,Ln)·T,    ↑)
bt2  (λx.Dn⟨x⟩,  C,         L,    (x,λx.Dn,Ln)·T,   ↓) → (x,        C⟨λx.Dn⟩,  Ln·L, T,                 ↑)
•3   (t,         C⟨⟨·⟩u⟩,   L,    •·T,               ↑) → (t u,      C,         L,    T,                 ↑)
•4   (t,         C⟨λx.⟨·⟩⟩, L,    T,                 ↑) → (λx.t,     C,         L,    •·T,               ↑)
arg  (t,         C⟨⟨·⟩u⟩,   L,    l·T,               ↑) → (u,        C⟨t⟨·⟩⟩,   l·L,  T,                 ↓)
bt1  (t,         C⟨u⟨·⟩⟩,   l·L,  T,                 ↑) → (u,        C⟨⟨·⟩t⟩,   L,    l·T,               ↓)
```

Reading: `↓` states query the head variable of the code; `↑` states
search for an abstraction's argument; `↓` with a logged position on
the tape top is backtracking (`bt1` starts it, `bt2` ends it). `•`
records the crossing of an application whose identity is forgotten —
search up to β-redexes. `var` jumps from an occurrence to its binder,
saving the occurrence (with the log slice covering its level) as a
logged position; `arg` completes an argument query, moving the logged
position from tape to log as the return address for later
backtracking.

**Bideterminism is structural.** Forward: the applicable rule is
determined by direction, code shape, and tape top. Backward: target
patterns are pairwise disjoint by the dual classification —
`↓`-targets split by position kind and tape top (function-position/•
= `•1`, function-position/l = `bt1`, λ-body = `•2`, argument-position
= `arg`), `↑`-targets likewise (application = `•3`, λ/• = `•4`, λ/l =
`var`, variable = `bt2`) — and each row is individually injective
(pure stack transport; nothing is erased, `•` has constant content).
The feasibility review verified the published statement independently
against arXiv:2002.05649: the step relation is a partial bijection,
`flip(s′) → flip(s)` gives the reverse machine, and the rules occur in
inverse pairs (`•1`/`•3`, `•2`/`•4`, `var`/`bt2`, `arg`/`bt1`).
Initial states generalize to observation depth `k`:
`(t, ⟨·⟩, ε, •^k, ↓)` — the hook the readback controller iterates on.
This is exactly the property v0/v1 fought to engineer and lost:
**zero-garbage reversibility as a structural fact about the table.**
Two boundary caveats, review-supplied: a partial bijection's linear
extension is an isometry only once *totalized on reachables* — every
final or stuck shape needs a norm-one successor (tick sectors, error
adapters), or norm leaks; and the **jumping variant (λJAM) is
excluded** — its jump rule drops the skipped source state, is plainly
noninjective on the raw state grammar, and retaining the skipped
source as residue would give back the history the jump avoids.

For qALC the walked term is the immutable invocation `p h t`; the
constants are two extra leaf kinds with no classical rules of their
own — every transition at a constant leaf belongs to the δ gadget
(§7) or to neutral readback.

## 7. The δ-gadget design sketch — working notes, unverified

Everything in this section is hand-derived against §6 and **has not
been reviewed or step-indexed**; it records the design position for
the review loop, not established results.

### 7.1 Value as routing: the probe

A boolean's value, in interaction terms, is *which argument it
selects*. The gadget learns its argument's value the way the calculus
uses it: when the first query in `↓` reaches the `h` leaf (tape top
`•` — `h` is applied), the gadget consumes that `•` and launches a
**probe**: enter the argument `M` in `↓` with two probe bullets and a
gate-tagged probe frame on the tape — tape `•·•·μ_h·T`. The probe run
is an ordinary λIAM sub-run: it needs no new machinery, may hit inner
δs (branching mid-probe — this is how HH composes), may escape into
the outer term (open-head `M`), or may never return (divergent `M`;
that amplitude honestly never halts).

Exit shapes at the gadget's virtual application context, hand-derived:

```text
M = 0̂ = λa.λb.a :  •2 •2 var       — exits ↑, tape l_a·μ_h·T
M = 1̂ = λa.λb.b :  •2 •2 var •4    — exits ↑, tape •·l_b·μ_h·T
```

The standard `↑` routing against the two virtual applications then
seeks virtual slot 1 (tape top `l`) or virtual slot 2 (tape top `•`
then `l`) — i.e. **the boolean arrives as the token's exit slot: pure
position, no payload, nothing copied**. Non-boolean normal arguments
classify by other exit shapes (`λa.a` exits `l_a·•·μ_h·T`; a
three-lambda prefix strands `↓` on `μ_h`; …) and enter the species
error sector, retaining the transcript (guardrail 13). Totality of
this classification over all exit shapes is a proof obligation.

### 7.2 The δ block fires on arrival states

Let `arr_b` be the arrival state at virtual slot `b+1` for a given
spectator `κ` (tape rest `T`, log, gadget instance position). The δ
column is the unitary block **directly on arrivals** — no copy, no
uncompute step, so the v1 killshot shape cannot arise:

```text
U |arr_b, κ⟩ = Σ_b′ (Q_q)_{b′b} |ans_b′, J_q(κ)⟩      Q_h = H, Q_t = diag(1, ω)
```

with `ans_b′` gate-tagged answer-routing states (the `J_q` landing
tags give cross-gate orthogonality). "Partial injection + unitary
blocks" is *not* automatically an isometry; the feasibility review's
checklist is adopted as the proof shape — `U†U = I` exactly when:
(1) the ordinary step is injective on ordinary sources; (2) each
reachable source matches exactly one rule; (3) each `Q_q` is unitary;
(4) `κ ↦ landing(q, b′, κ)` is injective; (5) landing subspaces for
distinct gate kinds are orthogonal; (6) every δ landing is orthogonal
to every ordinary successor; (7) reachable finals have norm-one
successors (ticks/errors — totalization); (8) landings are valid
reachable-basis states and the reachable span is forward-invariant.
One-step column orthonormality then propagates to every iterate.

The global-injectivity risk is concentrated in one place: the block
absorbs the arrival's `b`-dependent tape prefix (`l_a·μ` vs
`•·l_b·μ`), so two *different* reachable arrivals at the same slot
with the same spectator would collide. Hence:

**Lemma obligation L1 (arrival-residue determinacy).** For every
reachable (gate instance, slot, spectator) triple, exactly one arrival
residue is reachable. Per classical branch this holds because the
probe run from a fixed entry is deterministic; across δ-branches it is
*arranged* by §7.3. This is the design's load-bearing lemma.

### 7.3 Balanced virtual answers

After firing, the gadget must behave as `b̂′` toward the outstanding
outer question. Real booleans route *asymmetrically* (the exit shapes
above differ in depth and leave different logged positions) — routing
a fired outcome through real-boolean shapes would attach `b′`-dependent
residue and rebuild decoherence-by-history. The virtual answers are
machine primitives, and we define them **balanced**: `ans_b′` consumes
the outer question's bullets and routes to the selected continuation
in a number of transitions independent of `b′`, leaving no
`b′`-dependent tape or log content. The answer bit lives only in the
token's exit position — which is precisely what the *next* δ block
reads. This is design freedom the classical IAM never needed and the
quantum machine cannot live without.

### 7.4 HH, informally

`h (h 0̂)` (through the wrapper plumbing, which is branch-independent
since it precedes the inner fire): the outer gadget probes `h 0̂`; the
probe reaches the inner gadget, which probes `0̂` — deterministic,
single branch — and fires `H` on its arrivals; the two branches route
through balanced virtual answers to the outer gadget's virtual slots,
arriving with **equal spectators at equal time**; the outer block
gives `(|a₀⟩+|a₁⟩)/√2` from slot 1 and `(|a₀⟩−|a₁⟩)/√2` from slot 2 —
sum `|a₀⟩`, mass 1 on `0̂`. The cancellation happens exactly because
post-fire paths run through machine-primitive balanced routing rather
than real-term routing. **Unverified**: needs the step-indexed trace
against the full table.

A soundness spot-check that falls out: `h ((h 0̂) 0̂ 0̂)` — the inner
coin selects *different `0̂` occurrences*, whose selection paths carry
distinct live return addresses; the branches reach the outer gadget
with distinct spectators, do not merge, and the output mass on `0̂`
is 1/2 — the correct physics (H on a dephased bit), where a naive
merging machine would violate norm conservation. The machine's
refusal to merge distinct-history branches is not a bug; it is the
mechanism that makes the coherent cases meaningful.

### 7.5 Consistency without a store

A fired instance is re-interrogated only through backtracking, and a
backtracking re-entry carries the return-address logged position that
encodes the original slot — routing reads the outcome off the token
itself. No global store of fired outcomes exists; the outcome lives
exactly as long as the token's routing history needs it.

**Conjecture C1 (no fresh re-query).** No reachable run interrogates
the same gate instance (same exponential context) through a second
independent first-query. Distinct occurrences are distinct instances
(guardrail 12); within one instance, the classical λIAM never
re-launches a completed query. If C1 fails, a consistency mechanism
is needed and the design weakens materially.

### 7.6 The negative witness, mechanically

`λb. b I I` on a fired outcome: the branches select different `I`
occurrences; their live return addresses differ while the identity
behaviors run and survive into the halted transcript as distinct
garbage — the synchronized images stay orthogonal full
configurations, as guardrail 7 requires, *automatically*. The
decoherence direction (distinct residue ⇒ orthogonal forever) is
structural. The coherence direction — balanced injective code ends
with *equal* residue at the next fire — is exactly the H–NOT–H
obligation:

**Lemma obligation L2 (pop timing).** Characterize when selection
residue leaves the token before the next gate event. NOT′ =
`λb.λx.λy. b y x` should pop symmetrically; the selector
`λb. b 1̂ 0̂` routes through real boolean literals whose shapes are
unbalanced — the v1 prediction that the selector's coherence is a
measurable, not a given, returns with a concrete mechanism.

### 7.7 Timing

Interference requires equal token time (guardrail 4). Virtual answers
are step-balanced by definition (§7.3); interposed real code must be
step-balanced on its own — the clean-compilation common-`T`
requirement reappears as **path-length balance measured in token
steps**, derived from machine structure rather than stipulated. Same
shape as v1's derivation, honest mechanism this time.

### 7.8 Not yet designed

- **The readback controller** — the largest open component: full-NF
  readback internal to `U` (guardrail 9), iterating head queries
  reversibly under machine control, entering `RunDone` with the
  isometric `NF ⊗ garbage ⊗ control ⊗ tick` factorization (guardrail
  3), common-origin ticks. The λIAM answers weak-head queries; the
  strong-normalization loop is the untyped port's known weak point
  and the feasibility thread's central question.
- The `t` gadget (expected trivial: phase on arrivals, identity
  routing, own landing tag `J_t`).
- Error-sector adapters and their injectivity.
- The formal table itself, with the full pairwise range matrix.

## 8. The kernel gate, and the obligations register

The v2 formalization target — adopted from the feasibility review — is
a **three-program formal kernel**, deliberately smaller than a full
machine document: the eight λIAM rules; tagged gate-interrogation,
answer, return, error, readback, and tick rules; a proof that every
rule range is disjoint from every unrelated rule range; step-indexed
traces, with `(position, direction, log, tape, answer label)` reported
at every step, of

```text
h (h 0̂)            — HH: mass 1 on 0̂ by cancellation
h (NOT′ (h 0̂))     — the coherence bar
(λb. b I I) (h 0̂)  — the negative witness: no merge
```

and a column-Gram enumeration over the small reachable graph, showing
`NOT′` returns a boolean-independent spectator while the non-injective
map does not. If the kernel works, the route is genuinely promising;
if HH needs special-case stack erasure or H–NOT–H leaves distinct
log/tape states, the route has only relocated the v1 obstruction.

| Item | Status |
|---|---|
| L1 arrival-residue determinacy | stated; unproved — load-bearing |
| L2 pop timing / coherence return | stated; unproved |
| C1 no fresh re-query | conjectured |
| Probe-exit classification totality | obligation |
| Totalization (norm-one successors everywhere) | obligation (review) |
| Three-program kernel (table + traces + Gram) | the v2 gate; unstarted |
| Readback controller | undesigned — hardest open |
| `μ_p`/`Ω_qALC` on the token clock | pending readback design |
| Nonlinear reuse of a fired result (`λb.…b…b…`) | undesigned (review) |
| Bideterminism of §6 | verified (review, vs arXiv:2002.05649) |
