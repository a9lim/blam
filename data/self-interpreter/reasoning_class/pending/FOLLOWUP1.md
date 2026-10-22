Coordinator follow-up, same lane and directory (tmp/round4/pending/), same rules (caps; Lean files ≤ 2 min, ≤ 2 GB; no broad enumeration).

The literal-λ-headed closure is in class-bound.md §3. Next, the boundary you
named: root lets (λx. B) A C⃗ (nonlinear, j at depth ≤ 1, w ≤ 45, minimum)
whose body B is headed by x (x-headed) or by a nested redex, with or without
pending operands. You showed that replacing A by A C is invalid (the
weight-25 counterexample); what is needed is an invariant about the
arguments the shared calls x P⃗ receive. Ideas: (1) for x-headed B, every
call x P⃗ in head position runs A on literal arguments before the stream —
close46's SelfintNeededHead (in lean/Blc) says the non-head uses of x are
needed in a minimum, and simplify's specialization prices (tmp/round4/
simplify/REPORT.md) price specializing A to its call arguments; combine
them with your consumption price to get a strictly descending move, or the
exact profiles where none exists; (2) for nested-redex-headed B, close46's
SelfintNestedLets displays nested head redexes as adjacent lets at an exact
capture charge, which your prefix exchange then reorders — check whether
that reduces every such B to a literal-λ-headed or x-headed one at no
greater order. Kernel-check the prices and transports; close residual cells
under the cap by the handlerlet method; record exact over-cap residues. Add
a new section to REPORT.md; append to NOTES.md.
