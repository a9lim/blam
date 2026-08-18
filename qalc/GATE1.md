# qALC Gate 1 proof record

Status: **CLOSED — Gate 1 PASS.** The authoritative battery passes on the
accepted machine. This record states the Gate-1 boundary; the stronger clean
compiler result is recorded separately in `GATE2.md`.

## 1. Concrete machine

For one immutable closed invocation term, the running basis is

```text
NFRun(
  Run(position, direction, log, tape, VB, RS, KS),
  Zipper(partial-NF, cursor, binder-marks, scope-controls)
)
```

`Run` is the epoch-bearing gate kernel. The zipper contains the
partially constructed canonical 1-indexed de Bruijn normal form. A source
binder is named by `(code position, current log)`, not position alone: one
immutable lambda may be revisited in multiple exponential contexts.

The controller adds:

```text
BA                                         composed λIAM marker
RB(depth, output-path, scope-code-path,
   pending-output-paths)                  scope delimiter and HEAD schedule
RBL(parent-function, output-path, child)  forward return address
```

The persistent composed carrier contains no paper bullet. Before dispatching
an accepted kernel row, `_kernel_token` maps top-level tape `BA` to the kernel's
plain bullet. The reachable grammar forbids `BA` in log, LP cargo, instance
keys, replay records, storage, and VB; those coordinates therefore agree
literally. Every running target is mapped back by `_composed_token`, and the
two adapters are inverses on that grammar. Thus every persistent b3 has one
source shape. `application_invariant.py` checks the grammar, adapter inverse,
b3 inverse, and cross-row targets on every covered state.

The controller rows are:

1. `VLAM` emits a source lambda only when the underlying λIAM would stop for
   lack of an argument. It records the exact dynamic binder identity and
   enters the body.
2. `HEAD` recognizes a returned bound head, emits its de Bruijn index and HNF
   spine, and arms one output hole per argument.
3. Ordinary b1/b2/b3/b4 use `BA`. HEAD stores the remaining output holes in
   preorder. ENTER is not selected from the marker alone: the schedule head
   must equal the zipper cursor and the leading BA count above the nearest RB
   must equal the schedule length. Extra BA markers are beta transport and
   take ordinary b3 first. The output address is scheduled, but the code
   argument is derived from the function position actually reached by the
   token; precomputing it is wrong for `(λz.z z) x`.
4. `ENTER` disarms the current hole, installs RB/RBL, retains the parent slot,
   and enters the immutable argument position. It never copies a value.
5. `RETURN` is forward-only. Once the child subtree is closed at its RB, it
   moves the exact prefix fibre to zipper control, consumes the retained BA,
   removes RB/RBL, and lands directly at the parent application.
6. Virtual booleans emit only Church binders not consumed by real arguments.
   At phase two, vvar emits an output variable iff the selected virtual binder
   was emitted; otherwise the ordinary route reaches the real argument.
7. A bare `h` or `t` is a neutral atom (`HEAD-GATE`). If a gate interrogation discovers an
   emitted rigid binder, `HEAD-NEUTRAL-GATE` removes the gamma/mu scaffold,
   emits the neutral gate spine, and launches the first argument. Its
   executable inverse is `neutral_probe_predecessor`.
8. Root closure is guarded by root position, upward direction, empty log and
   tail, no VB phase, a closed zipper, and matching delimiter depth. It enters
   `NFRunDone`; the next row enters tick zero. Halt and every typed error then
   advance on disjoint unilateral tick chains.

No readback row applies an adjoint or reverses a fired query. Child values
return only through forward token routing, recall, and replay.

## 2. Full-normal-form readback

The controller implements the standard leftmost-outermost recursion internally:

```text
head-normalize M to λ^k . x M1 ... Mj
emit λ^k . x; normalize M1, ..., Mj from left to right
```

VLAM and HEAD implement the first line; armed holes, the BA/RB balance test,
ENTER, and direct RETURN implement the second. Root closure requires every
created hole to be filled, so a divergent argument cannot masquerade as a
normal form. `λ.Ω` never enters the halt sector.

The independent reducer comparison covers every normalizing closed pure term
of tree size at most 11: 41,258 terms, zero output differences. A separate
column battery covers 2,621 pure terms through size 9, 64,042 reachable bases,
with exact unit norms and no nonzero shared-target inner products. The dynamic
binder regression

```text
(λz. z z) (λu. λv. u v)  ↦  λλ. 2 1
```

rejects a path-only binder key.

## 3. Orthonormal columns and reachable WF

Each admitted program is proved on its closed finite operational core: every
running/readback state and two terminal ticks. The infinite unilateral tail is
proved uniformly in `TerminalAdapters.lean`. Local row schemas explain the
construction; this is not silently upgraded to an ambient minimal-carrier
claim about unexported programs.

- Standard λIAM rows use the usual bideterminism argument.
- `ApplicationMarker.lean` gives a global left inverse for the only persistent
  b3 source shape and proves the BA/plain adapter bijection. No reachability
  classifier is assumed.
- `ReadbackController.lean` proves injection for VLAM, HEAD, neutralization,
  ENTER, and RETURN, plus the exact BA-prefix/armed-slot ENTER equation.
- `RecallEpoch.lean` proves recall injection: the target epoch distinguishes
  absent and present old-frame predecessors and retains both epochs exactly.
- `DeltaFibers.lean` proves the encoded H/T spectator conditions; H has its two
  exact orthonormal columns and T its `1,ω` diagonal columns.
- Root, semantic-error, halt-entry, and tick ranges are injective and disjoint;
  halt and error sectors are forward invariant.
- `FiniteMachine.lean` defines `stepDet` and one global executable `pred` on
  literal physical target ids. It proves the checked predecessor is a left
  inverse and hence deterministic injection. Its range check compares literal
  ids, with no classifier field on the target. `Gate1Assembly.lean` consumes
  that concrete reachable certificate and separately checks the readable
  local H/T matrices. Every generated sector constructs this assembly
  certificate directly rather than restating its component Booleans beside
  an unused wrapper.

`readback_certify.py` closes the actual composed graph, rather than the
kernel-only rho-root graph. For every running state its deep projection maps BA to the
kernel bullet, root RB to rho, and each nested RBL/RB pair to a balanced
gamma/mu scaffold—even inside LP cargo and instance keys—before applying the
audited W0--W9 checker. At certified boundaries it constructs the fibre map
from the same projected carrier and applies W7. Validation additionally
requires:

- encoded-fibre transparency and position/key nonvacuity;
- no reachable `pop-err`;
- no stuck column;
- no host-exception or invalid-kernel-target adapter row;
- every halted output is a closed syntactic normal form: a gate application is
  neutral only when its first argument is variable-headed; pure admissions
  must also equal the independent beta-normalizer's result;
- no recall or b3 target collision;
- no common deterministic target (H/H is the sole allowed shared range);
- exact unit column norms and zero pairwise Gram off-diagonals.

All twenty canonical sectors, two mixed delta/readback sectors, five
controller stress sectors, and three neutral-gate sectors pass with zero WF,
W7, range, pop, stuck, norm, or Gram violations. The mixed H and T terms each
fire a gate inside an argument entered by readback and then RETURN to finish
the enclosing normal form. The neutral sectors make both `HEAD-GATE` and
`HEAD-NEUTRAL-GATE` live under the full validator and Lean exporter. The
generated `QalcReadbackGram_p_*.lean` files contain the closed 7,507-state,
7,417-column carriers. Each of the 30 files recomputes the global predecessor,
literal range separation, and exact `Z[ω]/√2^k` Gram. This is the proof for
the finite admitted carrier; it is not presented as an ambient theorem for an
unexported program.

The application/controller exhaustive checks cover all 30 sectors and all
41,258 normalizing pure terms through size 11: 1,187,953 reachable states,
38,823 reconstructed b3 predecessors, 56,356 ENTER rows, 56,373 RETURN rows,
no plain-marker escape, no W10/W11 violation, and no disallowed common
deterministic target.

A finite reachable carrier need not contain both counterfactual source
columns of every structural H pair: a single reachable H source is a complete
column of that carrier. `DeltaFibers.lean` and `Gate1Assembly.hColumns` prove
the uniform two-column local H block; the exported exact Gram checks the
columns actually reachable in each closed sector.

## 4. Exact local predecessor fibres

`PredecessorFiber.lean` distinguishes the forced lower bound from exactness.
`FibreExact` requires both maps and both round trips between a logical
predecessor fibre and the concrete residue coordinate.

Concrete instances are:

- recall: exactly `(ticket epoch, optional old-frame epoch)`;
- exact RETURN fallback: exactly the independent prefix;
- pure RETURN: the output determines one BA per leading lambda; the completed
  output path is the exact remaining fibre coordinate, and an executable
  four-source collision fixture shows that stripping it is unsound;
- virtual boolean RETURN/root: output determines the bit and carrier shape;
  residue retains only gate, instance, and epoch;
- neutral-gate compression: target determines gate, output cursor, child
  address, delimiter, and arity; residue is exactly dynamic binder identity
  plus erased logged LP argument;
- root closure: guarded control is a singleton subtype; carrier, frames,
  storage, binder state, and prior scope controls are the exact remaining
  predecessor coordinates;
- semantic error: reason is logical output and the frozen offending source is
  its exact fibre coordinate.

Python provides executable left inverses for root closure, RETURN, and
HEAD-NEUTRAL-GATE, and `reachable_gram` checks every occurrence. The virtual
binder compression is used only in canonical output-preorder; noncanonical
binder tuples take the exact uncompressed fallback and have an adversarial
inverse fixture.

## 5. Terminal sectors and semantic objects

`TerminalAdapters.lean` proves entry and tick injection, disjoint entry/tick
ranges, no terminal fixed point, fixed output/garbage/control along a tick
chain, and forward invariance of halt and error sectors.

`semantics.py` defines the exact sparse linear extension `U`, finite monotone
halt mass `μ_p(τ)`, output partial trace `ρ_p(τ)`, dyadic program weights,
finite directed approximants of `M`, and `Ω_qALC` on a term-determined static
`Sector`. Fresh closure/validation selects the minimal certified carrier when
available. A validated no-erasure certificate may itself be `None`; a cap,
divergence, malformed candidate, or validation exception instead selects the
specified conservative representation, never an unchecked `None`.

In a conservative sector each landing appends the complete prior live state.
The executable predecessor pops it and rechecks the actual underlying edge,
so different source columns are orthogonal; the two H outcomes from one source
append the same coordinate and retain their local coherence.
`ConservativeFallback.lean` restricts residue values to the subtype of states
with a real edge to the fixed landing and proves that actual-predecessor
subtype exactly equivalent to the logical predecessor fibre. This fallback
may suppress later re-merging—as the contract permits for rejected
certificates—but keeps `U`, `μ_p`, `ρ_p`, `M`, and `Ω_qALC` defined for every
finite closed program sector.

`nf_step` is also totalized at the host boundary. Any malformed metadata,
host recursion failure, or unchecked basis that raises inside the physical
row computation lands in one deterministic typed error carrying the complete
offending source and exception class. Thus distinct failures cannot merge.
The semantic battery forces this adapter with a malformed basis and replays
its actual conservative predecessor; process-control exceptions remain
outside the mathematical transition surface.

The semantic battery checks all twenty programs at every transition: total
mass one, monotone halt mass, and termination in 2,361 aggregate transitions.
For every reached terminal basis state it additionally executes the next row
and requires the kind, output, and garbage blocks to remain fixed while only
the tick advances. The lone-H density matrix retains all four coherent
half entries; the classical selector has only the two diagonal half entries.
Exact T and HTH fixtures check amplitudes, not merely probabilities.

## 6. Verification record

`gate1_check.py` is the authoritative rerunnable runtime command. Its durable
log is `out_gate1_runtime.txt`; the final line is:

```text
QALC GATE1 RUNTIME BATTERY: PASS
```

The run includes Python compilation, the complete kernel/checker
battery, typechecking and conservation instruments, RRI and instance-identity
checks, exact Dw H/T arithmetic, full readback and composed-certificate
batteries, the 1.19M-state marker/range sweep, and semantic objects. It neither
generates nor compiles Lean.

`gate1_lean_check.py` is the separate explicit proof-surface command. Run it
only when the handwritten/generated Lean surface or its Python exporters move.
It performs two-pass byte-identical regeneration with a source-set digest,
compiles all composed machine files and core Lean theorems, and runs the
concrete Lean RRI replay of all seventeen typed canonical sectors. The prior
combined battery record remains in `out_gate1_final.txt` as historical proof
evidence; Lean is intentionally absent from the runtime gate and CI.

The claim boundary remains explicit:

- the stronger ambient all-program RRI lifecycle theorem remains open, but is
  not required for a finite admitted sector because complete-carrier RRI is a
  mandatory certificate condition and is concretely replayed;
- generated machine proofs own the predecessor/range/Gram facts conditional
  on their exported complete row list; Python closure owns completeness and
  injective physical-state enumeration of that finite list;
- the 30 large generated Boolean checks use Lean `native_decide`, so their
  evaluation trusts the compiled evaluator / `ofReduceBool` bridge rather
  than transparent kernel reduction. The checker definitions, theorem
  statements, local H/T tables, controller/fibre theorems, and the concrete
  seventeen-sector RRI replay are kernel checked with `decide +kernel` or
  ordinary proofs;
- the Rust implementation is independent evidence over byte-pinned transition
  and carrier fixtures, not a premise of the Python/Lean proof.

## 7. Current proof surface

- `readback.py`, `readback_checks.py`: concrete full-NF machine and independent
  semantic/Gram/inverse batteries.
- `readback_certify.py`: composed certificate, WF/W7, pop-error, range, and
  Gram validation; total canonical selector.
- `application_invariant.py`, `ApplicationMarker.lean`: one-marker adapter,
  global b3 inverse, and exhaustive range census.
- `PredecessorFiber.lean`, `RecallEpoch.lean`, `ReadbackController.lean`,
  `RootClosure.lean`, `TerminalAdapters.lean`: exact local fibres and terminal
  theorems.
- `ConservativeFallback.lean`: total rejected-sector representation, global
  predecessor, source-range separation, and exact fallback fibre.
- `DeltaFibers.lean`, `Gate1Assembly.lean`, `FiniteMachine.lean`,
  `FiniteGram.lean`: delta blocks, concrete predecessor/range assembly, and
  exact Gram arithmetic.
- `QalcReadbackGram_p_*.lean`: 30 closed composed finite operational cores.
- `semantics.py`: `U`, `μ_p`, `ρ_p`, `M`, and `Ω_qALC` approximants.
