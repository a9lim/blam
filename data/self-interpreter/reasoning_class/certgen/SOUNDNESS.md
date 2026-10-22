# Regular closure/continuation certificate

## Statement and evidence boundary

For a finite lambda term with opaque holes, a successful certificate proves
that its weak-head computation never reaches a lambda with an empty stack,
or a rigid/opaque head. It therefore has no head normal form, and no filling
of the holes can give it a head normal form. For a narrowing source R we
certify the zero-law probe R Z. This requires no minimality, size, closedness,
or dispatcher-shape hypothesis. The source may contain arbitrary redexes.

The finite checker and its simulation to the concrete, ordinary call-by-name
Krivine closure machine are **kernel-checked** in `Regular.lean`. Individual
code-table instances are replayed in `Case*.lean`. The equivalence between
this closure machine and the repository's de Bruijn `headStep` / `Solvable`,
and the arbitrary scoped-hole-filling corollary, are **handwritten below**.
The exported `no_stop` theorems do not claim that this last bridge is in Lean.

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

## Translation to lambda head reduction [handwritten]

The source graph is a finite DAG: every lambda/application child has strictly
larger index than its parent. `compile_term` constructs such a graph from the
literal syntax; the portable Python checker validates this property. A node
and its environment denote the usual capture-avoiding simultaneous
substitution into that source subterm, with local lambda binders retained.
The machine stack denotes left-associated application of its closures in
order. These definitions use finite closures, so denotation is well-founded.

Application decomposition and variable lookup preserve the denoted term.
A lambda/pop transition denotes exactly one weak-head beta contraction:
substituting a closure for the leading binder is precisely prepending that
closure to the environment. Capture avoidance follows by the standard index
shift under each retained binder. Therefore every finite machine execution
projects to a sequence of weak-head beta steps, omitting administrative moves.

There cannot be an infinite suffix containing only administrative moves.
Give a closure at source node p with environment e the positive integer rank
`source_tree_size(p) * (1 + sum(rank(c) for c in e))` (shared source DAGs may
be unfolded for this rank). Application-to-function decreases source size
and preserves e. Variable lookup selects one member of e, whose rank is
strictly below the displayed product. These are all administrative moves.
Consequently an infinite machine run contains infinitely many beta steps.
A finite weak-head normalizing term cannot have such a run, since weak-head
reduction is deterministic. A term with a head normal form first reaches a
weak-head normal form; hence the certified term has no head normal form.

This argument also explains why a cyclic code table alone is insufficient:
it could loop administratively. The source-DAG check is essential to the
handwritten bridge even though `no_stop` itself is valid for any code table.

## Holes [handwritten]

Each source hole occurrence is initially an opaque code node. A narrowing
hole can be filled with a term depending on its lexically surrounding binders;
it need not be a globally closed replacement. Before that hole becomes the
current closure, substitution only moves/copies its suspended closure and
captured environment. Every head beta step outside a hole therefore lifts
to every scoped filling, with the same captured arguments.

An accepted invariant forbids *every* opaque current code node. Thus the
infinite head computation never needs any hole. The same infinite sequence
lifts to every filling. This is stronger than treating holes as arbitrary
fixed normal forms, and does not require identifying distinct holes.

## Incompleteness

Finite addresses merge histories and lose relationships between a captured
parameter and the continuation with which it is used. A possible opaque
head or empty stack is a failed certificate, not a concrete halt verdict.
The three unresolved supplied sources have such spurious paths in the tried
assignments. No claim is made that no finite regular invariant could express
them; the recorded failures concern these allocations and resource caps.
