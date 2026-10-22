# Excluding every size-38 layout

The complete inventory in `inventory38.md` has 1,206 terms. Exactly 1,143
have positive finite certificates. The remaining 63 now have complete
Lean theorems `not IsSelfInterpreter`, assembled as
`Blc.Round3Floor38.Size38.initialResiduals_excluded`. Thus the residual
set is empty, and the established floor 38 advances to **39**.

The numeric conclusion is handwritten with checked components. The global
classification is not formalized, and the 1,143 finite Lean checks are
proofs of executable certificate predicates, not an assembled theorem
connecting every predicate to `not IsSelfInterpreter`. Those implications
are specified below. This distinction also preserves the earlier floor's
handwritten dependencies.

## 1. Positive finite certificates

`Size38Finite.lean` kernel-checks every fixed certificate, using the
definitions in `Finite38Base.lean` and the exact sources in
`Size38Sources.lean`. The counts are:

| Positive fact | Count |
|---|---:|
| all nonlinear binders on one ancestor chain | 613 |
| wrong source head interface | 201 |
| at least three leading lambdas | 188 |
| wrong normal identity payload or remainder | 72 |
| wrong identity invocation head | 59 |
| source reduct smaller than 38 | 6 |
| positive-length exact identity head cycle | 4 |
| total | 1,143 |

Every path is an actual beta reduction checked by `replay`; its generic
soundness is `SelfintSharp.replay_sound`. Source reduction preserves the
exact interpreter contract, so a smaller closed reduct contradicts the
established floor 38. A reduct whose nonlinear binders form one ancestor
chain contradicts `SelfintNonlinearChain.selfInterpreter_not_chain`.
The executable `chain` predicate is the Boolean version of that theorem's
recursive `Chain` predicate.

Three leading lambdas survive application to the two public arguments,
whereas the identity contract requires a rigid continuation head. For a
closed source already in head-normal form, there must be exactly two
leading lambdas. Zero is impossible by closure; three or more have the
preceding obstruction. With one, the head is the continuation: after the
stream is appended, the arity is wrong unless there was exactly one
existing argument, in which case the required remainder is replaced by
the whole stream. Both contradict the identity-source contract with
independent rigid continuation and suffix. With two lambdas, a continuation
head must have exactly two arguments. A stream head is not excluded on
this basis and is passed to the identity probe.

The identity invocation is checked with exact quoted source `0010` and
independent rigid variables C,R, abstracted to close the testing term.
Its target is `C (lambda z.I) R`; `lambda z.I` is Church false. Head
variable, leading lambdas and spine arity of a head-normal term cannot
change under beta reductions of its arguments. A wrong head tag therefore
contradicts the contract. Once the tag is correct, a positively obtained
normal payload distinct from Church false, or a normal remainder distinct
from R, contradicts confluence and normal-form uniqueness. Unnormalized
payloads are never counted as finite exclusions. Finally, a positive
exact head cycle in the identity invocation contradicts its required
head termination. `checkCycle` verifies those deterministic head steps
and the nonzero period. The four source cycles in the initial ledger
were replayed on the identity invocation for this stronger certificate;
mere absence of a full normal form for E alone would not suffice.

The initial probe's fuel and growth caps account for the other 63 terms;
those caps are not evidence against the interpreter contract. Their
separate proofs follow.

## 2. A uniform W/B grammar excludes 57 residuals

This is an independent Lean soundness proof for a Tromp-inspired W/B
syntactic divergence grammar, not reliance on a Rust oracle verdict or a
formalization of every branch of that oracle. An environment m marks
variables that may be substituted by members of W or B. The grammar is

    W_m ::= marked variable | lambda x.B_(m,x marked)
    B_m ::= lambda x.B_(m,x unmarked)
          | B_m arbitrary-term
          | W_m (W_m or B_m).

The notation describes predicates, so the two alternatives can overlap.
`WGrammar38.lean` proves the insertion/shift and substitution lemmas by
structural induction. Substituting a W-or-B term for a marked variable
sends W to W-or-B and B to B. Substituting an arbitrary term for an
unmarked variable also preserves B. The latter case is essential for
the `B arbitrary-term` rule when the B function is an abstraction.

With no marked free variables, every B term has a deterministic head
step, including under leading lambdas, and the result is again B.
In the W-headed application case the head cannot be a variable, so its
marked lambda contracts soundly. In the B-headed case an unmarked lambda
contracts with any argument, or the function makes its inductive step.
Consequently no B term has a normal form, by the existing head-normalization
theorem.

Moreover, B remains B after arbitrary applications. If the source E is B,
so is its identity invocation `E C stream(I,R)`. That contradicts the
normal form supplied by `identity_has_normal_form`. This gives the full
theorem `WGrammar38.not_selfinterpreter`.

Membership for 57 of the 63 initial residual sources is kernel-checked
with `by decide`; each membership proof is connected directly to a full
`not IsSelfInterpreter` theorem. This includes the four terms that had
survived the earlier targeted macro/pump analyses, IDs 120,122,137,176.
No unresolved-cap result or engine classification is used in this proof.

## 3. The parametric pump for ID 723

Let

    N = lambda a b c.b b (a c),
    E = (lambda d.d d d) N,
    F = N C,
    T = F F,

where C is the rigid continuation. Direct contraction gives the universal
identity

    T V ->^3 T (C V).

The exact identity-source invocation of E reaches `T (N stream(I,R))`
after seven beta contractions. Lean checks that prefix and the open
three-step identity. Substitution for a fresh variable gives the displayed
identity for every V, rather than one sampled suffix. Its first step is
a weak-head step; the remaining two are beta reductions. The weak-head
clock must therefore strictly decrease on each pump if a normal form
exists, which is impossible by well-founded induction.

`Size38Pumps.e723_excluded` is the complete Lean exclusion. The same
module also records 35 other complete grammar/pump exclusions found
before the W/B theorem; those overlap the final 57 and are not counted
as additional layouts.

## 4. Five rigid payload obstructions

IDs **124,129,214,224,690** reach `C p r` on the identity invocation.
Their first payload has a checked head reduct incompatible with Church
false, even though arguments within that payload may continue reducing:

* 124,129,224: one lambda followed by a rigid neutral body. It cannot
  reduce to the two lambdas of Church false.
* 214,690: two lambdas followed by a rigid application. Its body cannot
  reduce to the bare variable that Church false requires.

`Payload38.lean` proves these shape obstructions, projection of a rigid
application's first payload, and the confluence step linking a checked
payload reduct to the interpreter's required target. `Size38Residuals.lean`
provides each fixed reduction trace and the complete five exclusions.
This does not require full normalization of the growing payload arguments.

## 5. Final coverage and axiom boundary

The exact partition is

    1,206 = 1,143 finite certificates + 57 W/B + 1 pump + 5 payloads.

Within the earlier prospective 1,014 it is

    1,014 = 951 finite certificates + the same 63 complete Lean exclusions.

`size38-ledger.json` records every ID, source wire, certificate kind and
Lean theorem name, including the 192 preliminarily removed layouts.
`Size38Sources.lean` independently proves closure and exact size for all
literal source definitions. `Size38Residuals.initialResiduals_excluded`
collects all 63 full exclusions. There is no residual term left.

The old `residuals_excluded` theorem for the thirteen size-37 terms also
now depends only on `propext` and `Quot.sound`. Its incidental
`Classical.choice` dependency came from `omega` closing impossible arity
branches of an existential goal in `rank_progress`; introducing `False`
with `exfalso` before those calls removes that dependency. The new W/B
theorem and 63-term collected theorem likewise use only `propext` and
`Quot.sound`. There is no `sorryAx`, `native_decide`, or new axiom.

`check_lean.py` rebuilds the local modules, including later follow-ups, in dependency order
with two Lean threads, under a 110-second total deadline, and records the
module timings and axiom output. The fixed-certificate generators import
the layout definitions but do not repeat the layout search. Canonical
source, data, and repository modules are untouched by this lane.
