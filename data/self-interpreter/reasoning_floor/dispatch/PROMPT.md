Lane "dispatch": decoding the tag tree differently. Your lane directory is
/Users/a9lim/Work/blam/tmp/overnight/dispatch/ (write only there). Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md first; it is the shared ground truth.

The code tree has three tags: 00 (λ), 01 (application), 1ⁿ0 (variable). The
165 decodes the first bit in the reader, by applying the stream to a handler
(`s H S = H b r S`), and the second bit in NEXT (`r next = next b2 r2`, then
`bit1 ABS APP` after the first child is parsed). The variable index is never
decoded: the value is the unary code itself, and the environment cell walks
it.

Your angle: change WHERE and HOW bits are decoded, using the stream algebra
(interpreter.md §2 and reasoning_165/algebra, reader, fresh): two cells
cross-apply as `cons b r (cons d t) = b d t r`; unary codes satisfy
`U_{i+1}(N) U_{j+1}(M) = U_j(M) U_i(N)`; `s (λx. x x)` is a conditional
predecessor; `s (s K)` switches arity between constructor and variable;
`R (K (K X)) = X`. Questions: Can the second tag bit be consumed by a stream
application that also does other work (e.g. supplies NEXT's arguments, or the
first parse's stream)? Can the variable case and the APP case share a
decoding step (both start ...1)? Is there a reader whose skip `S` or handler
does part of NEXT's job? Can the environment walk use the same decoder as the
tag dispatch? The record measured "read both tag bits before dispatch" (193)
and the failed arity switch (167); go beyond those.

Goal: a complete interpreter ≤ 164 bits with a passing battery, or a clean
impossibility theorem for a delimited class, with proof. Report as the brief
says.
