Lane "recursion": the knot and the recursive calls.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/recursion/ — write files only there.

Goal: a sub-162 interpreter by changing how recursion is supplied, or a
proof that the families you study cannot pay.

The 162 pays 22 bits for `(\x. x x) (\x. (\intL. BODY) (x x))` and its two
recursive references `intL` sit at 0-based depths 3 and 4 inside NEXT (5 and
6 bits). Lean's knot bound (`Blc/SelfintKnot.lean`) gives 26 + d1 + d2 = 33
for an opaque body with that shape, attained. So a gain here must change the
shape: fewer syntactic recursive references, recursion supplied by
something already in the body, or references at shallower depth.

Directions worth real thought: one syntactic call site parsing both APP
children (the first value carried into a re-entry, e.g. NEXT or the reader
re-entered with a changed continuation; APP's second parse is
`intL k2 rest = rest I V_k2 NEXT_k2`, so the stream application itself is
the reader); recursion supplied by the stream (the reader's diagonals:
`s s = K r` on a 0-tag, the constant-stream instruction
`P c (K (K t)) = t NEXT_c`, `P c I = c`); the generator `x` (in scope
everywhere, unused) doing a second job; the knot's `x x` and the skip's
`list list` sharing work; the parser `P c s = s I V NEXT` called on
non-streams as a control primitive. Known and measured (do not redo):
reader-carried knots 192/199, reset bootstraps 192, self-passing next 182,
recursion inside the bit handler 196/206, both recursive heads replaced with
the knot removed (221,930,567 pairs, no survivor), a cell holding F as knot
199. For each family that dies, prove the minimum it must pay.
