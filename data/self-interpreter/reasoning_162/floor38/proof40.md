# Global floor 40: exclusions and checking boundary

**Handwritten theorem with checked components:** every exact closed-source
self-interpreter has at least **40 BLC bits**. This combines the previous
global floor 39 with `literal40.md` and `inventory39.md`. The former
handles every literal lambda root at equality 39; the latter classifies
every application root. Neither completeness argument is a numeric Lean
theorem, and neither has received a separate review within this lane.

After the uniform structural exclusions, the complete classified ledger is

| Source class | Layouts | Checked finite predicates | Full Lean exclusions |
|---|---:|---:|---:|
| literal continuation root | 1,008 | 1,002 | 6 |
| application root, four live binders | 2,248 | 2,164 | 84 |
| application root, five live binders | 1,416 | 1,339 | 77 |
| total | **4,672** | **4,505** | **167** |

There is no residual term in any part. `size39-ledger.json` records the
part, stable ID, source wire, family, certificate kind and theorem for
every row. IDs are local to their part; for example `literal:180` and
`four:180` are different names.

## Positive finite facts and uniform exclusions

`Finite39Base.lean` defines the predicates used by the three generated
`Finite39*.lean` files. They certify actual beta replays, a smaller source
reduct, the nonlinear-chain obstruction, impossible leading lambdas or
head interface, or a positively normalized wrong identity payload.
Their handwritten implications are detailed in `proof39.md`; the size
threshold here is 39, and the identity invocation uses free rigid C,R
directly, rather than enclosing them in two lambdas. The target tag is
therefore `(0,1,2)`, with target `C ChurchFalse R`. No cap or missing
normal form is counted as a certificate.

There are 149 W/B proofs (147 directly on sources, two on checked identity
reducts) and nine exact identity-cycle proofs. These are full
`not IsSelfInterpreter` theorems, not just Boolean check results.
`WGrammar38.not_selfinterpreter` supplies the former; the new
`not_selfint_w_identity` handles reducts. The latter use a checked
positive-length identity-invocation head cycle and the existing proved
`SelfintFloor.cycle_diverges` theorem. A source's lack of a full normal
form alone is never substituted for this invocation argument.

In addition, `Shapes39.lean` proves two uniform literal-interface lemmas:
`lambda c.c P` is not an interpreter for every closed P, and an exact
contract for `lambda c.P c` transfers by direct beta reduction to P.
The latter supplies the smaller 33-bit contradiction in the one-component
literal case. These general lemmas are separate from the 4,672 rows.

## The nine initially unresolved layouts

Every row below now has a complete Lean exclusion. The collected theorem
is `Blc.Round3Floor38.Size39Residuals.initialResiduals_excluded` in
`Residuals39.lean`.

| Part:ID | Complete proof |
|---|---|
| literal:180 | A pair of atoms from A and iterated J remains active; trailing C arguments cannot exhaust the pair. |
| literal:276 | Four-step prefix; a 24-node core has a three-step pump adding two arguments. |
| four:0 | Nineteen checked beta steps expose rigid C with seven arguments; the contract requires two. |
| four:80 | Nine-step prefix; four payload steps give two lambdas followed by a rigid application, incompatible with Church false. |
| four:376 | One-step prefix; a 57-node core has a four-step pump adding two arguments. |
| four:399 | Eight-step prefix; a 33-node core has a three-step pump adding one argument. |
| four:1000 | Four-step prefix; a 73-node core has a six-step pump adding one argument. |
| five:312 | Five-step prefix; a 35-node core has a ten-step exact pump. |
| five:553 | Three-step prefix; a 48-node core has a six-step exact pump. |

`Pair39.lean` formalizes the first row's invariant. With

    A = lambda x.x (lambda y.x y C),
    J(X) = lambda y.X y C,

the identities are `A X -> X J(X)` and `J(X) Y -> X Y C`. A finite clock
for a pair gives a strictly smaller clock for another pair; the extra C
can be stripped using `count_app_left`. Strong induction rules out a
clock. The fixed prefix connects this invariant to the exact source.

For each pump, the first contraction is a checked weak-head step, and
the remaining beta contractions return the same core with its stated
extra arguments. `not_selfint_pump` proves the complete contradiction
using the weak-head clock, including the zero-extra-argument cases.
The fixed prefix and all cycle paths are replayed by the Lean kernel.

For `four:0`, `Shapes39.three_or_more_not_identity` projects a rigid
application's reductions three times; the target has only two arguments.
For `four:80`, the established payload projection and rigid-shape theorem
force an impossible reduction to Church false. The growing arguments
inside either landing do not need to normalize.

## Reproduction and verification

The three layout checks are `size39.py literal`, `size39.py four` and
`size39.py five`. Each ran in under 0.4 seconds, on one thread and under
a 105-second alarm. The targeted nine-case follow-up took 1.30 seconds.
`size39_sources.py`, `finite39.py` and `residual39.py` emit fixed Lean
clauses from those ledgers. They do not perform a general term sweep.

`audit39.py` checks all 4,672 wires against the literal generated Lean
definitions, verifies closure, size, live-binder counts, width and the
incomparable pair, checks the count triples, and proves the ledger sets
disjoint and exhaustive as a Python audit. It writes `size39-ledger.json`.
The completeness correspondence itself remains the handwritten argument.

The final `check_lean.py` run rebuilt all **25** lane modules in dependency
order in **63.17 seconds**, with two Lean threads and a 110-second total
deadline. `lean-validation.json` records every successful module.
`axiomaudit-final.log` shows only **propext and Quot.sound** for the new
collected theorem, the active-pair proof, the uniform literal lemmas and
the cycle/W-reduct helpers, as well as the previous collected theorems.
There are no new axioms, sorries, or `native_decide` proofs.

Thus the literal-interface and global bounds both reach 40. The precise
remaining formalization work is the global classification and the
implications from the 4,505 finite predicates to failure of the contract;
there is no remaining mathematical case in the stated inventory.
