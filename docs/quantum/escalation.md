# Divergence adjudication for the operator-census Unknown frontier

The operator census runs one `quantum::machine` pass per program at fixed
budgets, with Unknown as the only outcome for anything unresolved. This
document is the design of the adjudication ladder above that pass: what each
rung proves, what its soundness rests on, and which rungs exist. Moving counts
live in `../STATUS.md`; the canonical record is
`../../data/quantum/skeleton_manifest.txt`.

| rung | what it proves | state |
|---|---|---|
| 1. classical skeleton | infinite hole-inert reduction, or a hole-inert normal form | implemented |
| 2. erasure adjudication | classical verdicts on hole-free residuals | implemented |
| 3. hole-parametric pattern recurrence | growing hole-inert loops | designed, not built |
| 4. survivor telemetry and budget escalation | resource-limited survivors | planned |
| 5. universal-safety certificates | no-Halt safety of quantum-engaging programs | designed, not built |

## The frontier's character

The Unknown population is dominated by classical divergence, not by budget
starvation: most Unknowns are programs whose control never terminates and
whose primitives are never, or only finitely, consulted. Raising the β or the
transition budget 16× resolves none of the 120 Unknown programs through 26
bits, which are led by Ω applied to the signature and its λ-wraps. Budget
escalation attacks the wrong axis.

## Rung 1: classical-skeleton kills

Replace the signature with one free rigid variable per slot and adjudicate
`p x₁ … x₅` classically.

**Transfer theorem.** If the pure-β head reduction of `p x⃗`, with distinct
rigid placeholders, is infinite and never exposes a placeholder at the head,
then substituting the primitive constants yields the identical infinite head
chain: no primitive is ever demanded, no measurement forks, and no branch can
Halt at any budget. The program contributes exactly zero to Ω_success, and its
mass leaves the bracket's unknown term. Likewise a normal form whose holes are
all inert is a quantum Halt with empty store at full mass. A demanded hole
yields no claim.

Discovery and trust are split, mirroring the classical certificate layer:

- **Discovery** is `classical::escalation::normal_form_spine`: the escalation
  engine with the syntactic oracle disabled (the oracle's no-nf verdict is not
  spine-attributable), so a Diverge is tagged when its proof landed on the
  root's own head-reduction chain. Its `EngineCfg` arrives as an argument.
  Its fires, with full simplify, history, and redloop, are *candidates*, never
  kills. It drives the skeleton column of
  `blam q census --terms-file FILE --skeleton CAP`, which builds its skeleton
  from `quantum::sig` so the column and the checker cannot drift into
  adjudicating different terms.
- **The trusted checker** is `src/quantum/certificate.rs`. Holes are root-free
  de Bruijn variables (distinct, never collapsed to ⊥); reduction is plain
  leftmost-outermost β, with no simplify, no bottom-freeness, and no oracle;
  recurrence is exact whole-term equality on wire bits; and the checker aborts
  the moment a hole reaches operator position. Verdicts: `Loop` (exact
  recurrence of a hole-inert chain), `HoleFree` (rung 2), `NormalWithHoles`
  (a hole-inert normal form), `HoleDemanded`, and `CapOut`. A classical halt
  of the rigid-placeholder skeleton proves nothing about the quantum run,
  where δ-rules continue where the rigid form stopped; only `Loop`,
  `NormalWithHoles`, and `HoleFree` with a classical verdict transfer.
  `adjudicate` returns `Result<SkelVerdict, OpenProgram>`: an open input is a
  typed error, never a silent reinterpretation of its free variables as holes.

**Why discovery fires are not kills.** A shape recurrence on discovery's
bottom-free images does not determine the next shape: simplify distinguishes
live placeholders from dead ⊥, so `simplify (D x) = x x` via the variable fast
path while `simplify (D ⊥) = D ⊥`, and two states with equal bottom-free
images can step differently. The checker is immune by construction, because
what recurs is the literal term with its holes live.

## Rung 2: erasure adjudication

The archetype is the λ-tower diverger family `D (λx.λy. x x)`: programs that
consume and discard signature arguments, then diverge or halt with no hole
left. Once the reduct contains no hole, the classical and quantum machines run
the same closed term, so classical fates transfer wholesale in both
directions. The residual ladder (oracle → KN at 65,536 β → escalation engine
at cap 2M, `TransferCaps::default`) lives in
`quantum::certificate::adjudicate_with_transfer`, beside the theorem that
licenses it. `blam q skeleton FILE` is the driver: one streamed
`<bits> skel2=<verdict>` line per program, with `--sig LIST` changing only the
slot count, for alternate-universe frontiers. This is the degenerate
no-measurement case of rung 5 and needs no store abstraction.

Pure β does not respect encoding size, because duplication grows it, so
sources of at most 41 bits leave closed residuals of up to 11,978 bits,
outside every enumerated census range. A residual-unknown is therefore a new
hard classical term, compactly generated, not a census frontier member, even
when its source program is one.

## Canonical recording of skeleton kills

The kill set is too large for a kills-tsv ledger, and the raw verdict stream
is completion-order nondeterministic, so the canonical artifact is a compact
manifest plus a deterministic regeneration protocol. `tools/skel_manifest.py`
builds it from the frontier terms file (`q census --dump-unknowns`), the
`q skeleton` verdict stream over it, and the `--residuals` side file. It
records:

- the checker's commit, the frozen ordered signature, the skeleton caps, and
  the residual ladder configuration;
- the unique input-program count and the sorted-input digest;
- per-source-size counts for every verdict, with Div split by oracle and
  escalation;
- exact killed, remaining-Unknown, and Capacity leaf masses, and the lower
  and upper bracket fractions;
- the digest of the verdict stream sorted by program bits (raw completion
  order is not canonical); and
- one provenance row per residual-unknown: source bits, source size, residual
  size, residual SHA-256 over its ASCII wire string, and classical-frontier
  membership of the source.

The verdict stream regenerates in minutes and is not tracked. Program counts
and leaf masses are distinct quantities; the Unknown *leaf count* lives in the
census table.

## Rung 3: hole-parametric pattern recurrence

Tier-1 `CapOut` survivors are dominated by growing loops, Y-style towers whose
state never exactly recurs, and raising exact-recurrence caps converts only
the slow-but-recurring tail. The instrument extends the classical Ratchet
architecture rather than the discovery engine:

- an explicit `Hole(id)` constructor in the certificate pattern language,
  never collapsed to ⊥ and distinct from closed `Meta(id)`. Meta closedness is
  what keeps shift and substitution trivial; if discovery ever needs
  hole-bearing metavariables, that is an explicit allowed-hole set with a
  depth discipline, not a silent weakening;
- replay is plain leftmost-outermost β, aborting if any hole is demanded;
- the certificate exhibits a nonempty recurrent segment with strict growth on
  the demanded recurrent context, checked *parametrically*: the segment must
  replay under every iterate `C^k`, with binder shifts and demanded-position
  preservation. A one-time embedding `t_j = C[t_i]` is insufficient.

**Target theorem.** If the checker accepts a certificate for
`t₀ = p H₁ … H₅` with distinct rigid holes, then along every finite prefix of
the reduction of `σ(t₀)` (σ the signature substitution) the selected redex is
a pure β-redex and no hole-derived primitive is demanded; the β-reduction is
infinite, so the qBLC execution has one infinite branch, never forks, never
touches the store, and has no Halt leaf.

**Telemetry.** `CapOut` is
`{ reason: CapReason::{Steps, Size}, steps, high_water_bits }`: which cap
fired, the reduction steps before the abort, and the largest term size in BLC
bits anywhere along the chain. `blam q skeleton` prints an additive stderr
line

```text
capout split: steps-bound N  size-bound M
```

leaving the stdout verdict stream unchanged, and `--capout-telemetry FILE`
writes one bits-sorted line per capout program
(`<bits> reason=<steps|size> steps=N hw=M`). `tools/capout_strata.py`
stratifies that file by source size. Size-bound monotone growers are this
rung's population; step-bound bounded-size terms would justify another
exact-cycle tier instead. The measured split (`../STATUS.md`) points at this
rung.

## Rung 4: survivor telemetry and geometric budget escalation

Dump rung-1/2 survivors with per-program contraction, transition, and
memory-shape telemetry, and escalate budgets geometrically (2²⁷, 2²⁸, …) on
samples before committing the frontier. An all-survivors rung at 2³⁰ is off
the table: the 803,947 survivors would need about 8.6×10¹⁴ cap-equivalent
transitions. Exact-cycle detection rides along on survivor reruns: Brent on
reference configurations between measurements, with equality covering
control, environment, continuation, store, and reachable pool structure, not
arena indices. This rung's population is the hole-demanded residue, the
programs that genuinely engage the quantum semantics.

## Rung 5: universal-safety certificates

- The proof system is E∞: cap-free evaluation, unlimited fresh qubits and
  branches, semantic Err retained. Budget and capacity outcomes are excluded
  from proof logic entirely; Capacity never discharges an obligation.
- The trusted target is **no-Halt safety**: for every complete
  measurement-outcome stream, cap-free evaluation reaches semantic Err or is
  infinite, never Normal. Err is an allowed terminal (it contributes zero to
  Ω_success), which is what lets the certificate ignore amplitudes: both
  meas outcomes are followed regardless of weight.
- The store cannot be ignored wholesale: epochs, retirement, and freshness
  steer Halt versus Err. The sound abstraction is total-valid
  over-approximation: every well-shaped handle operation is permitted as if
  valid, meas always has both boolean successors, and invalid operations
  disappear into Err. Every non-Err concrete path is simulated by an abstract
  path; the simulation theorem is an explicit proof obligation.
- Measurement is a reducer-level fork at the meas redex, never a
  substitutable oracle marker (call-by-name would duplicate an unresolved
  marker and re-resolve it incoherently). Epoch failure is not a third
  outcome: successors are {Err} or {true, false}, and Err discharges
  immediately.
- Metavariables must be shape-refined (a species-blind Meta demanded by a
  primitive is an abort, not a wildcard), the classical lifting condition
  must check the evaluation-context commuting square (a trailing argument can
  saturate an undersaturated primitive), and fresh allocation needs invariants
  equivariant under renaming and monotone under fresh-world extension.
