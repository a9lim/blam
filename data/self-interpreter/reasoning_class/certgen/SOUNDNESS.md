# Regular closure/continuation certificate

## Statement and evidence boundary

For a finite lambda term with opaque holes, a successful certificate proves
that its weak-head computation never reaches a lambda with an empty stack,
or a rigid/opaque head. It therefore has no head normal form, and no filling
of the holes can give it a head normal form. For a narrowing source R we
certify the zero-law probe R Z. This requires no minimality, size, closedness,
or dispatcher-shape hypothesis. The source may contain arbitrary redexes.

The finite checker and its simulation to the concrete call-by-name Krivine
machine are kernel-checked in `lean/Blc/SelfintRegularCertificate.lean`.
`Regular.lean` retains the import path used by the archived `Case*.lean`
modules. `SelfintRegularSoundness.lean` proves the ordinary-lambda semantic
bridge and arbitrary scoped-hole corollary. The general source-level theorem
is complete; the archived individual `no_stop` theorems have not been
replayed as source-level applications of it. Such an application also checks
the source DAG and its exact correspondence to the decoded literal term.

## Domain

A closure shape is `(source node, environment of finite addresses)`. A value
address denotes a finite union of closure shapes. A continuation address
denotes a finite union of `(argument closure shape, remaining continuation)`
frames; address 0 denotes only the empty stack. Recursive addresses describe
regular sets of arbitrarily large finite closure environments and stacks.
The denotations are inductive: only actual finite concrete closures/stacks
belong. An unproductive cycle does not create fictitious concrete values.

A state is a base code element together with an environment and a continuation
language. Thus it retains the types of all pending arguments and their
minimum arity, rather than one common `S` and one maximum base arity. The
first argument ranges over its value address's regular set. K-like templates
are ordinary lambdas: erasing one argument reveals the stored continuation,
which can still provide enough arguments to the returned closure.

This is one checker/domain. Allocation by a lambda call string, application
site, argument node, or captured environment changes only untrusted invariant
discovery. The certificate has no allocation rule and no W5/SR/SF branch.
A bisimulation quotient can shrink the stores; its output is checked afresh,
so minimization need not be trusted either.

## Concrete machine and simulation [kernel-checked]

A concrete closure is a code node with a finite list of captured concrete
closures. The concrete stack is a finite list of concrete argument closures.

* Application pushes its argument closure and enters its function.
* Variable lookup enters the captured closure at that index.
* A lambda with a nonempty stack pops its first argument, prepends it to the
  environment, and enters the body.

A lambda with an empty stack, an opaque head, or an invalid variable index has
no transition. Code-table lookup is a function; no nondeterministic concrete
choice is introduced.

`RC`, `RE`, and `RK` relate concrete closures, environments and stacks to the
regular stores. `Good` checks the following obligations for every retained
abstract state:

1. For a variable, every closure in its value address has a retained
   successor with the same continuation.
2. For an application, a retained successor enters the function and a
   continuation address contains the exact pushed argument/rest frame.
3. For a lambda, its continuation is nonzero. Every possible first frame has
   a retained body successor whose new binding address contains that frame's
   argument and whose continuation is exactly the saved rest.
4. An opaque node is forbidden.

`progress` proves that any related concrete state makes a genuine machine
transition to another related retained state. It uses the particular frame
of the concrete stack, not an arbitrary preferred abstract frame. The concrete
transition is deterministic. Induction on a finite concrete execution proves
`invariant_no_stop`: every endpoint still has a successor. The initial empty
environment and empty stack are related to the explicit entry state.

`goodb_sound` and `check_sound` prove the executable finite checks imply
`Good`; successor IDs are hints whose contents and membership are checked.
`range_sound` permits bounded blocks of kernel computation. No exhausted
search, observed cycle, fairness assumption, or coinductive axiom is used.
The printed axiom inventory is only `propext`, `Quot.sound`.

## Translation to lambda head reduction [kernel-checked]

`SelfintRegularSoundness.Model` assigns a lambda term to each code node,
respecting its variable, lambda and application equations. Opaque nodes
have no equation. `CodeRank` makes the source graph well-founded;
`rankedCode` derives this from the executable `ordered` check, which requires
every child to follow its parent and lie inside the table. `decode` builds
a model for every opaque filling. Sharing in the source DAG is permitted.

A closure denotes capture-avoiding simultaneous substitution of its finite
environment into the source term. The machine stack denotes left-associated
application of its closures. `instN_lam` and `instN_var_lookup` account for
local binders and captured arguments explicitly.

`step_model` proves that application decomposition and variable lookup
preserve the denoted term and decrease the head closure's positive rank

```text
nodes(term_at_p) * (1 + sum(rank(c) for c in environment)).
```

A lambda/pop transition is exactly one ordinary weak-head beta contraction.
The stack need not contribute to the administrative rank: application
shrinks the head source subterm, and lookup selects a strictly smaller
captured closure. Nested induction on the deterministic weak-head clock and
this rank proves `invariant_no_clock`. Thus administrative-only loops cannot
be mistaken for lambda divergence.

`checked_source_unsolvable` combines the source-DAG check, finite certificate,
entry membership, and arbitrary filling to prove the repository's
`not Solvable` predicate directly. A parallel theorem excludes a beta normal
form. The general bridge has no handwritten semantic hypothesis remaining;
its printed axioms are only `propext` and `Quot.sound`.

`SelfintRegularExamples` applies the theorem to a small cyclic closure/stack
store for `H H`, where `H = lambda x.x x U` and `U` is arbitrary scoped code.
It separately rejects a cyclic *source* graph. Cycles in the abstract stores
are valid regular grammars of finite closures; cycles in source syntax are
not valid finite lambda terms.

## Holes [kernel-checked]

A filling is an arbitrary map from opaque node IDs to lambda terms. A term
may refer to every binder surrounding that node; it need not be closed.
Closure denotation performs the corresponding substitutions, so the proof
covers local capture without assuming that payloads are independent.

The accepted invariant never reaches an opaque head. All simulated steps
therefore use the structural model equations, which hold for every filling.
Fillings are uniform per opaque node ID, as source-DAG sharing requires;
distinct independent holes use distinct IDs. No normalization assumption is
made about a filling.

## Incompleteness

Finite addresses merge histories and lose relationships between a captured
parameter and the continuation with which it is used. A possible opaque
head or empty stack is a failed certificate, not a concrete halt verdict.
The tried allocations have such spurious paths for three supplied sources.
Those sources are excluded independently by `SelfintRootCutoffs.lean`; the
recorded certificate failures still concern only those allocations and
resource caps. They do not show that no regular invariant can express them.
