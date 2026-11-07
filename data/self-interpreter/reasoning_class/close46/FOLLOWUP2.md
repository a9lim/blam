Coordinator follow-up, same lane and directory (tmp/round4/close46/), same
rules. Good: the first-head classification with multiplicity and argument
bounds is the right skeleton.

Next: the semantic step for the two redex cases. For a minimum reader whose
first source head redex (λx. B) A sits at the root (m <= 7) or directly under
λs (m <= 6), with the argument budgets you proved, show the reader fails or
is replaceable by a no-heavier one. Two routes worth weighing:
 (i) treat x as a fresh rigid callback with the semantic shape A forces
     (A is small: list or classify the A's the budget allows by their
     action on the probe algebra, not by enumerating source terms), and
     extend your Paired/ClosureBarrier algebra so that a body B over that
     callback is excluded at every unary length — the Delta lesson says to
     carry n = 1 separately;
 (ii) contract the redex and price the reduct against the families the jn
     lane has closed for every operand shape (its NOTES §5–11: selectors I
     and K, λb. b X Y for k = 2, 3, and general λ-dispatchers with
     |B|, |T| <= 21), using your exact cost-change formula
     (m−1)(wire(A)−3) + f_A(D+m) + f_C − 3d_A to say which closed budget the
     reduct must fall in. A depth02 lane (tmp/round4/depth02/) is working the
     depth-0/2/3/4 cases; leave those to it unless your argument covers them
     uniformly.
Record progress in NOTES.md; extend REPORT.md with a new section.
