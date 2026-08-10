# qALC machine — token-transport design

**Status: active design; the §4 kernel gate is implemented as an
out-of-tree scratch kernel, registered current-only in `kernel.md`
and held in a fresh-context adversarial audit loop. No qALC code
lands until architecture §9's gates pass.** The qALC machine is
IAM-lineage token transport
(architecture §8): the invocation term is immutable and read-only, the
runtime basis is token configurations, and gate arguments reach δs by
routing, never by copying. The rationale: the Interaction Abstract
Machine (Danos–Regnier) is **bideterministic — natively reversible** —
so orthonormal columns can come from the dynamics instead of being
engineered onto them; there is no substitution, no closure
construction, no environment erasure; and the exponential context does
reversibly what content tags did irreversibly in the rejected
rewriting substrate. Quantum prior art: Hasuo–Hoshino (quantum GoI),
Dal Lago–Faggian–Valiron–Yoshimizu (multitoken machines) —
typed/linear settings; the untyped port is the open engineering, with
a standing feasibility grade of promising-with-hard-open-problems.
This document is current-only: guardrails (§1), the exact classical
substrate (§2), the design sketch (§3), and the kernel gate with the
obligations register (§4). History — the route choice, the ratified
amendment, the review record, the failed rewriting drafts — lives in
`../ledger/2026-08.md` and `machine.md`.

## 1. Guardrails

Any design is dead on arrival unless it respects:

1. **No basis-copying of unknown superpositions** —
   `CNOT(|+⟩|0⟩) = |Φ⁺⟩`, `(H⊗I)|Φ⁺⟩ ≠ |0⟩|+⟩` (`machine.md` §9.1).
   Values reach δs by *transport* or not at all; no machine rule
   copies an already-superposed runtime value.
2. **Global single-map injectivity on the reachable basis** — distinct
   sources need orthogonal images under every iterate, checked as a
   full pairwise matrix over all columns, δ, readback, error, and halt
   included.
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
   Amended (ratified 2026-08-09): a δ event may act through a
   certified **encoded fibre** `E_a|b,κ⟩ = |b, G_a(b,κ), F_a(b,κ), κ⟩`
   — coherent decoding of bit-correlated arrival/replay coordinates
   before `Q_q`, with per-boundary exhibition, source and landing
   disjointness, and an effectively computable certification whose
   rejection falls back to the conservative nontransparent transition;
   the original law is `E_a = identity`. Full text in architecture §7.
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
8. **Minimal-information residue, earned coherence** (fork A), in
   token vocabulary: live stacks are control, not garbage; residue is
   what a configuration carries beyond the canonical live token state;
   terminal garbage is the non-output state surviving at `RunDone`;
   minimality is predecessor-fibre-local.
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

## 2. The classical substrate, exact: λIAM

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
Initial states, parameterized by observation depth `k`:
`(t, ⟨·⟩, ε, •^k, ↓)` — the hook the readback controller iterates on.
Final states: `(λx.u, C, L, ε, ↓)` — the head abstraction of the
weak-head normal form. The λIAM implements Closed CbN: the run from
the depth-0 initial state terminates iff weak-head reduction
terminates on `t`.

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

**Bideterminism is structural** (verified against arXiv:2002.05649).
The step relation is a partial bijection: `flip(s′) → flip(s)` gives
the reverse machine, and the rules occur in inverse pairs (`•1`/`•3`,
`•2`/`•4`, `var`/`bt2`, `arg`/`bt1`). Forward, the applicable rule is
determined by direction, code shape, and tape top; backward, target
patterns are pairwise disjoint by the dual classification —
`↓`-targets split by position kind and tape top (function-position/•
= `•1`, function-position/l = `bt1`, λ-body = `•2`, argument-position
= `arg`), `↑`-targets likewise (application = `•3`, λ/• = `•4`, λ/l =
`var`, variable = `bt2`) — and each row is individually injective
(pure stack transport; nothing is erased, `•` has constant content).
Zero-garbage reversibility is a structural fact about the table.

Two boundary caveats. A partial bijection's linear extension is an
isometry only once *totalized on reachables* — every final or stuck
shape needs a norm-one successor (tick sectors, error adapters), or
norm leaks. And the **jumping variant (λJAM) is excluded**: its jump
rule drops the skipped source state, is plainly noninjective on the
raw state grammar, and retaining the skipped source as residue would
give back the history the jump avoids.

For qALC the walked term is the immutable invocation `p h t`; the
constants are two extra leaf kinds with no classical rules of their
own — every transition at a constant leaf belongs to the δ gadget
(§3) or to neutral readback. A rigid head's argument is *not* entered
by any classical rule (the standard machine stops at the head), so
gate interrogation is necessarily new machinery.

## 3. The δ-gadget design sketch — unverified

Everything in this section is hand-derived against §2 and **has not
been step-indexed against a full table**; it records the design
position for the kernel (§4), not established results.

### 3.1 Value as routing: the probe

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
position, no payload, nothing copied**. The two literal-boolean paths
are one step apart and leave different binder positions in the tape —
which is exactly why fired outcomes must never be routed through
literal-boolean shapes (§3.3). Non-boolean normal arguments classify
by other exit shapes (`λa.a` exits `l_a·•·μ_h·T`; a three-lambda
prefix strands `↓` on `μ_h`; …) and enter the species error sector,
retaining the transcript (guardrail 13). Totality of this
classification over all exit shapes is a proof obligation.

### 3.2 The δ block fires on arrival states

Let `arr_b` be the arrival state at virtual slot `b+1` for a given
spectator `κ` (tape rest `T`, log, gadget instance position). The δ
column is the unitary block **directly on arrivals** — no copy, no
uncompute step, so the no-cloning shape cannot arise:

```text
U |arr_b, κ⟩ = Σ_b′ (Q_q)_{b′b} |ans_b′, J_q(κ)⟩      Q_h = H, Q_t = diag(1, ω)
```

with `ans_b′` gate-tagged answer-routing states (the `J_q` landing
tags give cross-gate orthogonality). "Partial injection + unitary
blocks" is *not* automatically an isometry; the proof shape is:
`U†U = I` exactly when (1) the ordinary step is injective on ordinary
sources; (2) each reachable source matches exactly one rule; (3) each
`Q_q` is unitary; (4) `κ ↦ landing(q, b′, κ)` is injective;
(5) landing subspaces for distinct gate kinds are orthogonal;
(6) every δ landing is orthogonal to every ordinary successor;
(7) reachable finals have norm-one successors (ticks/errors —
totalization); (8) landings are valid reachable-basis states and the
reachable span is forward-invariant. One-step column orthonormality
then propagates to every iterate.

The global-injectivity risk is concentrated in one place: the block
absorbs the arrival's `b`-dependent tape prefix (`l_a·μ` vs
`•·l_b·μ`), so two *different* reachable arrivals at the same slot
with the same spectator would collide. Hence:

**Lemma obligation L1 (arrival-residue determinacy).** For every
reachable (gate instance, slot, spectator) triple, exactly one arrival
residue is reachable. Per classical branch this holds because the
probe run from a fixed entry is deterministic; across δ-branches it is
*arranged* by §3.3. This is the design's load-bearing lemma.

### 3.3 Balanced virtual answers

After firing, the gadget must behave as `b̂′` toward the outstanding
outer question. Real booleans route *asymmetrically* (the exit shapes
of §3.1 differ in depth and leave different logged positions) —
routing a fired outcome through real-boolean shapes would attach
`b′`-dependent residue and rebuild decoherence-by-history. The virtual
answers are machine primitives, and we define them **balanced**:
`ans_b′` consumes the outer question's bullets and routes to the
selected continuation in a number of transitions independent of `b′`,
leaving no `b′`-dependent tape or log content. The answer bit lives
only in the token's exit position — which is precisely what the *next*
δ block reads. This is design freedom the classical IAM never needed
and the quantum machine cannot live without.

### 3.4 HH, informally

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
against the full table. If the return produces `κ₀ ≠ κ₁`, the `|1̂⟩`
amplitudes do not cancel and the `1̂` mass is 1/2 — the probabilistic
degeneration, exactly.

A soundness spot-check that falls out: `h ((h 0̂) 0̂ 0̂)` — the inner
coin selects *different `0̂` occurrences*, whose selection paths carry
distinct live return addresses; the branches reach the outer gadget
with distinct spectators, do not merge, and the output mass on `0̂`
is 1/2 — the correct physics (H on a dephased bit), where a naive
merging machine would violate norm conservation. The machine's
refusal to merge distinct-history branches is not a bug; it is the
mechanism that makes the coherent cases meaningful.

### 3.5 Consistency without a store

A fired instance is re-interrogated only through backtracking, and a
backtracking re-entry carries the return-address logged position that
encodes the original slot — routing reads the outcome off the token
itself. No global store of fired outcomes exists; the outcome lives
exactly as long as the token's routing history needs it.

**C1 (no fresh re-query) is REFUTED — and the design survived it.**
The kernel (`kernel.md`) found that an output's variable can seek its
argument by backtracking *through* the boolean selection,
re-dereferencing to the gate leaf as a fresh-looking query (the
negative witness does it). The literal boolean answers re-entry by
`bt2`-replay on its selection ticket; the machine mirrors this with
a `recall` rule that reads `b′` off the `α` ticket and replays
without firing — consistency with no store, as this section hoped,
but through a rule, not a reachability argument. Re-entry
determinacy was then settled in two steps: v1.2's replay stack keeps
`b′` in a retained frame (no erasure), and v1.3 instance-indexes
tickets and frames by the invoking occurrence's logged position —
the λIAM name of a dynamic subterm copy, structurally present at the
log head on every gate-leaf entry — which also discharges ticket
ownership: a same-gate foreign-instance ticket is a typed error, and
a re-seek after the ticket is consumed replays off the instance's
own frame (`kernel.md` §10.2).

### 3.6 The negative witness, mechanically

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
unbalanced — the selector's coherence is a measurable, not a given.

### 3.7 Timing

Interference requires equal token time (guardrail 4). Virtual answers
are step-balanced by definition (§3.3); interposed real code must be
step-balanced on its own — the clean-compilation common-`T`
requirement reappears as **path-length balance measured in token
steps**, derived from machine structure rather than stipulated. There
is no computable uniform padding for arbitrary untyped code, so the
coherent fragment is a discipline, not a default — which is the
"coherence is earned" economy, now with a concrete currency.

v1.3 measured the currency's structure (`kernel.md` §10.4): slot
routing that survives to a boundary as tape *pattern* is time-free
(HH, H–NOT′–H sync exactly); routing *consumed* as transport steps
skews the branch clock by the transported bit, and the measured
offset of geometric selection is odd and invariant under every
even-cost program pad tried — the standing conjecture is that
step-encoded selection decoheres intrinsically, making the coherent
fragment exactly the pattern-encoded (index/wire) routing class.

### 3.8 Not yet designed

- **The readback controller** — the largest open component: full-NF
  readback internal to `U` (guardrail 9), iterating head queries
  reversibly under machine control (a depth-first output zipper over
  the depth-`k` initial states of §2), entering `RunDone` with the
  isometric `NF ⊗ garbage ⊗ control ⊗ tick` factorization (guardrail
  3), common-origin ticks. The λIAM answers weak-head queries; the
  strong-normalization loop is the untyped port's known weak point.
- Nonlinear reuse of a *fired* result (`λb. … b … b …`): sequential
  controlled reuse must be distinguished from forbidden coherent
  copying.
- The `t` gadget (expected trivial: phase on arrivals, identity
  routing, own landing tag `J_t`).
- Error-sector adapters and their injectivity.
- The formal table itself, with the full pairwise range matrix.

If bideterminism turns out to have gaps at the δ or readback
boundaries, the rewriting drafts' color discipline (rule-id producer
marking with join charging) remains available as a local fallback
tool.

## 4. The kernel gate, and the obligations register

The formalization target is a **three-program formal kernel**,
deliberately smaller than a full machine document: the eight λIAM
rules; tagged gate-interrogation, answer, return, error, readback,
and tick rules; a proof that every rule range is disjoint from every
unrelated rule range; step-indexed traces, with
`(position, direction, log, tape, answer label)` reported at every
step, of

```text
h (h 0̂)            — HH: mass 1 on 0̂ by cancellation
h (NOT′ (h 0̂))     — the coherence bar
(λb. b I I) (h 0̂)  — the negative witness: no merge
```

and a column-Gram enumeration over the small reachable graph, showing
`NOT′` returns a boolean-independent spectator while the non-injective
map does not. The bar was: if HH needs special-case stack erasure or
H–NOT–H leaves distinct log/tape states, the route has only relocated
the rewriting substrate's obstruction and the fork reopens. **The bar
is met and exceeded** — the scratch kernel earns HH's mass-1
cancellation through certified erasure and decode (no special cases),
runs H–NOT–H to its coherence ideal, keeps the negative witness
unmerged, and extends the Gram enumeration to a twenty-program suite
with a written-first physics table; the fork stays closed. The
verified state, claims, and audit history live in `kernel.md` (the
register alone carries the version).

| Item | Status |
|---|---|
| Kernel | **v1.22** (`kernel.md`, current-only): the hybrid pipeline — structural admission/isometry mandatory, exact-amplitude dynamic cleanliness deciding run success — with INSTANCE-DIRECTED certificates; the KD bundle names only keys with no surviving bit-carrying representation ANYWHERE in the target (Q frames, burials, T/log-riding tickets — CONFIRMED-SOUND by audits #6–#9: exhaustive storage enumeration, extended matrices, 24- and 33-combination crosses). `W` healed at {1̂: 1} (audits 3–11 confirmed, refire amplitudes verified zero per-step); phase-3 greedy rescue over the full candidate pool certifies `palpha` (guard-silent, marginal hand-confirmed); non-vacuous coverage at position and key level (unreachable entries and ghost popkeys refused); nineteen exact dict certificates + dupcall's canonical None; canonical = deterministic validation-adjudicated greedy, neither maximal nor minimal; ten-invariant WF (W0 = the FULL state language as of v1.22 — exact-int bits with bool refused, recursive lp productions whose occurrences resolve to Vars of the term, arrival-lp K(l) cargo, coordinates in language, VB phase in domain — plus W1-W9, with W4 closed by enumeration, CONFIRMED-SOUND by audit #13); the species guards typed at the leaf, binder, and transport arms (bit-identical on every covered output; kernel-arm history lives in the register's §11 rows — summaries of it were twice refuted by literal diff and are abolished); seventeen permanent regressions, all gating; all six instruments carry exit-code verdicts. **PASS re-claim gated on fresh audit #15** |

| α/γ transport totality | **restored** — the `replay` rule (fresh re-seek off the instance's frame, derived from the literal visit-3 trace); the whole eleven-program battery runs total |
| Transparency criterion | **discharged through the ratified encoded-fibre amendment** (architecture §7; `kernel.md` §5): the fire decodes conservatively by default and erases only at certified boundaries under the corrected fibre condition (retained `(slot, T, log)` determines erased `(l, RS)`); validity is the hybrid validation — structural admission/isometry plus exact-amplitude dynamic cleanliness plus non-vacuity, strictly beyond Gram (negative controls caught); certificates are canonical machine metadata via `discover_total` — terminating, conservative, total on every program (`h Ω` witness), and **self-validating**: every admitted map passes full semantic coverage, else None |
| Instance identity | **ratified and discharged, interleaving included** (`kernel.md` §4, §9): lp-at-log-head structural for signature-abstracted programs; equal-lps-same-copy backed by the `(g,i)`-aliasing regression, the `dup` witness, and the `frame-conflict` typed guard; the interleaved re-seek has semantics via the replay record — `Q`, `weave`, `hweave`, and `qq` all total, clean, and physical; the injectivity gap is dissolved into the registered alias-gap conditional (aliasing manifestations are typed or value-correct — `frame-conflict`, `alien-ticket`, `key-alias`, `refire`; W9 bounds live tickets; lp uniqueness stands as a completeness conjecture) |
| Time register | **the coloring AND the conservation law are theorems** (`kernel.md` §7.1–7.3; §7.1 restated at v1.17 to the exact mechanized form — Σw(KS) in the formula, conservative fire flips ordinarily, gauge orbit 4/512 with KD enumerated; §7.2/§7.3 audit-confirmed symbol-level, conservation incl. a 131k mid-run surfacing check): closed-form φ, uniform flip, certified-erasure defect `1 − w(erased lp)`; branch-offset formula verified; mark-free fire-free readback conserves `w ≡ slot` (proved: attribution ledger + coloring), so geometric selection of classical data decoheres intrinsically and every escape route is a named mechanism (interior-fire charge, VB pattern birth, mark capture) |
| L1 arrival-residue determinacy | kernel-verified at `fire`; general proof open |
| L2 pop timing / coherence return | confirmed for NOT′ (kernel); selector measured decoherent; mechanism understood via pattern-vs-step |
| `call`/`recall`/`replay` structural domain disjointness | guards structural in v1.3 (instance + rs checks, buried-frame typed); formal table presentation still owed |
| Probe-exit classification totality | open (kernel error rules are catch-alls) |
| Readback controller | undesigned; kernel's root classifier is its 1-bit case |
| `μ_p`/`Ω_qALC` on the token clock | pending readback design |
| Mandatory regressions | the twenty-program suite (twelve sectors, the audit witnesses, the interleaving stressors) — all total, Gram-clean, physics table passing; twelve permanent regressions gate the sweep's exit code; `q`-family certified runs halt frame-free with arrival telemetry 35/7/3 as the time-register record |
| Bideterminism of §2 | verified vs arXiv:2002.05649 |
