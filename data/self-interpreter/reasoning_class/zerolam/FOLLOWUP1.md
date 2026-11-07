Coordinator follow-up, same lane and directory (tmp/round4/zerolam/), same rules (BRIEF5.md caps: ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check).

Good narrowing: literal j-lets, closed transports and source-disjoint
redispatch are out; the residue is Y j with Y application-rooted and
containing s or c (simplest: s K j). A route that may avoid the
source-sharing inequality, for you to check or refute:

  At depth 1 the path from the stream λ's body down to j consists only of
  application nodes (any other λ above j would raise the depth). So every
  ancestor X_1 = parent, X_2, …, X_k = body of j is context-free (free
  variables among s, c, j), and X_k[Z(r)] =β r j is rigid. Hence there is a
  LOWEST ancestor X* whose zero value is rigid (r j, j, or another rigid
  form) rather than a λ consumed by its context. Anchor the hole lane's
  argument at X* instead of at j's parent.

For s K j: X_2 = s K j A gives j on zero and A[U] on unary, so with
A = s s s it is a j/N operand, which the round already prices at ≥ 25 by a
complete check over all operands (including ones with internal zero-λ
parents: jn/REPORT.md). Questions:
 (1) Which steps of the four-family argument (hole/NOTES.md §§10–11, as
     reviewed in review_hole/REVIEW.md) use only X's two semantic values,
     its context-freeness and the finite operand minima, and so transfer to
     an ancestor anchor? Which use that X is j's immediate parent?
 (2) With the anchor at X*, do the zero-λ parents fall into the four
     families (or into families already priced), with X*'s cost bounded
     below by the operand minima? If so, state the resulting theorem
     exactly, with its minimality hypothesis.
 (3) Where the transfer fails, give the exact obstruction and a witness
     reader, as the review did for the parent anchor.
Reason first; a pinned finite check only under the caps with a
completeness argument. Update NOTES.md as you go; add a new section to
REPORT.md at the end.
