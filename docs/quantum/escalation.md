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

Discovery and trust are split, mirroring the classical certificate
architecture (`certsearch` / `cert.rs`):

- **Discovery** is `bb::normal_form_spine`: the escalation engine with
  the syntactic oracle disabled (the oracle's no-nf verdict is not
  spine-attributable) and a spine flag threaded so a Diverge is tagged
  when its proof landed on the root's own head-reduction chain. Full
  strength — simplify, history, redloop — but its fires are
  *candidates*, never kills.
- **The trusted checker** is `src/skel.rs`: holes are root-free de
  Bruijn variables (distinct, never collapsed to ⊥), reduction is
  plain leftmost-outermost β — no simplify, no bot_free, no oracle —
  recurrence is exact whole-term equality on wire bits, and the
  checker aborts the moment a hole reaches operator position.
  Verdicts: `Loop` (exact recurrence of a hole-inert chain; the
  transfer theorem applies), `HoleFree` (rung 2), `NormalWithHoles`
  (a normal form whose holes are inert is a quantum Halt with empty
  store), `HoleDemanded`, `CapOut`. Skeleton halts prove nothing
  about the quantum run (δ-rules continue where the rigid form
  stopped); only `Loop` and `HoleFree`-with-classical-verdict
  transfer.

**Why the split is load-bearing.** The original design promoted
spine-tagged discovery fires directly, on a uniformity argument: along
a spine segment no placeholder is demanded, so one demanded-path step
should be a function of the bot_free shape alone, and a shape
recurrence should replay forever. That argument is false. simplify
distinguishes live placeholders from dead ⊥ — `simplify (D x) = x x`
via the Var fast path, while `simplify (D ⊥) = D ⊥` — so two states
with equal bot_free images can step to different shapes, and a shape
recurrence does not determine the next shape. (Counterexample on
record in the `qblc-divergence` thread; a 1,061-fire smoke test found
no false kill, but absence of counterexample is not soundness.) The
checker is immune by construction: what recurs is the literal term,
holes live and included.

Discovery preview at 4..26 was 108 candidate spine fires of 120
Unknowns; the trusted checker's full-frontier verdicts are the moving
counts in `STATUS.md`.

## Rung 2: erasure adjudication (implemented)

The archetype is the λ-tower diverger family `D (λx.λy. x x)`:
programs that consume and *discard* signature arguments, then diverge
(or halt) with no hole left. The checker's `HoleFree` verdict is this
rung: once the reduct contains no hole, the classical and quantum
machines run the *same closed term*, so classical fates transfer
wholesale, in both directions. The residual ladder in
`qcensus --skeleton-only` is oracle → KN at 65,536 β → bb at cap 2M.
This is the degenerate no-measurement case of the rung-5 calculus and
needs no store abstraction.

One field lesson: pure β does not respect encoding size — duplication
grows it — so ≤41-bit sources leave closed residuals of up to
thousands of bits, outside every enumerated census range. A
residual-Unknown is therefore a *new* hard classical term, compactly
generated, not a frontier member (even when its source program is
one). Provenance worth recording per residual-Unknown: source bits,
source size, residual size, residual SHA-256, source frontier
membership; the full residual strings need not be tracked.

## Rung 3: hole-parametric pattern recurrence (design ratified, not built)

Tier-1 `CapOut` survivors are dominated by growing loops — Y-style
towers whose state never exactly recurs — and raising exact-recurrence
caps converts only the slow-but-recurring tail. The ratified
instrument (`qblc-divergence` r3) extends the classical Ratchet
architecture rather than repairing the discovery engine:

- an explicit `Hole(id)` constructor in the certificate pattern
  language, never collapsed to ⊥ and distinct from closed `Meta(id)`
  (Meta closedness is what keeps shift/substitution trivial; if
  discovery ever needs hole-bearing metavariables, that is an explicit
  allowed-hole set with a depth discipline, not a silent weakening);
- replay is plain leftmost-outermost β, aborting if any hole is
  demanded;
- the certificate exhibits a nonempty recurrent segment with strict
  growth on the demanded recurrent context, checked *parametrically*:
  the segment must replay under every iterate `C^k`, with binder
  shifts and demanded-position preservation — a one-time embedding
  `t_j = C[t_i]` is insufficient.

**Target theorem.** If the checker accepts a certificate for
`t₀ = p H₁ … H₅` with distinct rigid holes, then along every finite
prefix of the reduction of `σ(t₀)` (σ the signature substitution) the
selected redex is a pure β-redex and no hole-derived primitive is
demanded; the β-reduction is infinite, so the qBLC execution has one
infinite branch, never forks, never touches the store, and has no
Halt leaf.

Prerequisite instrumentation: `CapOut` must record which cap fired
and the high-water state (`reason: Steps | Size`, steps taken,
current and maximum bits), so that a stratified sample can split the
population — size-bound monotone growers go to pattern discovery;
step-bound bounded-size terms justify another exact-cycle tier. A
blind full sweep at higher caps is sound but low-information per
CPU-hour.

## Canonical recording of skeleton kills

The kill set is far too large for the classical kills-tsv pattern and
the raw verdict stream is completion-order nondeterministic, so the
canonical artifact is a compact manifest plus a deterministic
regeneration protocol. The manifest records: checker and executable
commit; the frozen ordered signature; skeleton caps; the residual
oracle/KN/bb configuration; unique input-program count and
sorted-input digest; per-source-size counts for every verdict; Div
counts split by oracle and bb; exact killed, remaining-Unknown, and
Capacity masses; the lower and upper bracket fractions; the digest of
the *sorted* verdict stream (sort by program bits — raw completion
order is not canonical); the residual-Unknown provenance rows; and
the exact regeneration commands. The verdict stream itself is
regenerable in minutes and is not tracked. Program counts and Unknown
leaf counts are distinct quantities and both are recorded.

## Rung 4: survivor telemetry and geometric budget escalation (planned)

Dump rung-1/2 survivors with per-program contraction, transition, and
memory-shape telemetry; escalate budgets geometrically (2²⁷, 2²⁸, …) on
samples before committing the frontier. The all-survivors 2³⁰ rung is
off the table: ~1.7×10¹⁵ cap-equivalent transitions is days of compute,
not minutes. Exact-cycle detection (Brent on reference configurations
between measurements; equality must cover control, environment,
continuation, store, and reachable pool structure — not arena indices)
rides along on survivor reruns. This rung's population is the
hole-demanded residue — programs that genuinely engage the quantum
semantics.

## Rung 5: universal-safety certificates (design settled, not built)

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
