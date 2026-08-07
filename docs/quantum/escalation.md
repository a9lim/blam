# Divergence adjudication for the operator-census Unknown frontier

The operator census is a single-rung engine: one qvm run per program at
fixed budgets, with Unknown as the only outcome for anything unresolved.
This document is the durable design for the escalation ladder above that
rung: what is proven, what is measured, and what each rung's soundness
rests on. Moving counts live in `STATUS.md`.

## The frontier's character

The Unknown population is dominated by classical divergence, not by
budget starvation. At sizes 4..26 the Unknown set is led by Ω sig and
its λ-wraps; a 16× transition-budget raise resolves none of 120, and the
prior 16× β raise resolved none of the full 4..41 population. Budget
escalation attacks the wrong axis: most Unknowns are programs whose
control never terminates and whose primitives are never (or only
finitely) consulted.

## Rung 1: classical-skeleton kills (implemented)

Replace the signature with one free rigid variable per slot and
adjudicate `p x₁ … x₅` classically.

**Transfer theorem.** If the pure-β head reduction of `p x⃗`, with
distinct rigid placeholders, is infinite and never exposes a placeholder
at the head, then substituting the primitive constants yields the
identical infinite head chain: no primitive is ever demanded, no
measurement forks, and no branch can Halt at any budget. The program
contributes exactly zero to Ω_success; its mass leaves the bracket's
unknown term.

The adjudicator is `bb::normal_form_spine`: the escalation engine with
the syntactic oracle disabled (the oracle's no-nf verdict is not
spine-attributable and fires first on exactly the Ω-shapes the history
proves on-spine) and the spine flag threaded so a Diverge is tagged when
its proof landed on the root's own head-reduction chain. Only
`skel=nowhnf` transfers. Off-spine skeleton divergence proves classical
no-nf of the skeleton but sits in argument positions where a measurement
outcome could still erase it; skeleton halts prove nothing about the
quantum run (δ-rules continue where the rigid form stopped).

**Soundness of spine tagging under substitution** (ratification with
Codex in flight; the argument, for the record): every key recorded along
a spine chain is recorded at a β-state, so its bot_free image is an App
with a Lam function slot. A later rigid-case function-part match is
structurally impossible on the spine (neutral function slots are ⊥ or
App), so spine-tagged fires are exactly β-case whole-key recurrences
plus redloop. Redloop's certificate is a closed self-application —
placeholder-free, substitution-independent. For the β-case: key equality
is shape equality (shape = bot_free image); along a spine segment no
placeholder is ever demanded (a placeholder at the head ends head
reduction, contradicting the segment's continuation); given no slot is
demanded, one demanded-path step is a function of the shape alone, so a
shape recurrence replays forever, slot-inert, under every closed
instantiation of the placeholders — including the primitives, whose
δ-rules are demand-gated.

Measured at 4..26 (120 Unknown programs): 108 skel=nowhnf, 12
off-spine, zero skeleton halts or unknowns.

## Rung 2: erasure adjudication (planned)

The 4..26 off-spine residue is λ-tower divergers of the
`D (λx.λy. x x)` family: they consume and *discard* every signature
argument, then diverge under a binder with no placeholder left. Planned
adjudicator: step `p x⃗` through demanded-path pure-β reductions until
the term contains no placeholder — from that point the classical and
quantum machines run the *same term*, so classical fates (oracle
included) transfer wholesale — aborting at the first placeholder
demand. This is the degenerate no-measurement case of the rung-4
calculus and needs no store abstraction.

## Rung 3: survivor telemetry and geometric budget escalation (planned)

Dump rung-1/2 survivors with per-program contraction, transition, and
memory-shape telemetry; escalate budgets geometrically (2²⁷, 2²⁸, …) on
samples before committing the frontier. The all-survivors 2³⁰ rung is
off the table: ~1.7×10¹⁵ cap-equivalent transitions is days of compute,
not minutes. Exact-cycle detection (Brent on reference configurations
between measurements; equality must cover control, environment,
continuation, store, and reachable pool structure — not arena indices)
rides along on survivor reruns.

## Rung 4: universal-safety certificates (design settled, not built)

The general calculus, from the ratification thread (`qblc-divergence`):

- The proof system is E∞ — cap-free evaluation, unlimited fresh qubits
  and branches, semantic Err retained. Budget and capacity outcomes are
  excluded from proof logic entirely; Capacity never discharges an
  obligation.
- The trusted target is **no-Halt safety**: for every complete
  measurement-outcome stream, cap-free evaluation reaches semantic Err
  or is infinite, never Normal. Err is an allowed terminal (it also
  contributes zero to Ω_success), which is what lets the certificate
  ignore amplitudes: both meas outcomes are followed regardless of
  weight.
- The store cannot be ignored wholesale — epochs, retirement, and
  freshness steer Halt-vs-Err. The sound abstraction is total-valid
  over-approximation: every well-shaped handle operation is permitted
  as if valid, meas always has both boolean successors, and invalid
  operations disappear into Err. Every non-Err concrete path is
  simulated by an abstract path; the simulation theorem is an explicit
  proof obligation.
- Measurement is a reducer-level fork at the meas redex, never a
  substitutable Oracle marker (call-by-name would duplicate an
  unresolved marker and re-resolve it incoherently). Epoch failure is
  not a third outcome: successors are {Err} or {true, false}, and Err
  discharges immediately.
- Metavariables must be shape-refined (a species-blind Meta demanded by
  a primitive is an abort, not a wildcard), the classical lifting
  condition must check the evaluation-context commuting square (a
  trailing argument can saturate an undersaturated primitive), and
  fresh allocation needs invariants equivariant under renaming and
  monotone under fresh-world extension.
