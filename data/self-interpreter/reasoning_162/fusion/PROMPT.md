Lane "fusion": the next cross-module move.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/fusion/ — write files only there.

Goal: a sub-162 interpreter by a move that crosses module boundaries, the
kind that produced the 165 and the 162: work several branches need,
computed once where it is right for all of them; a Scott structure's own
application supplying an argument; an operand one branch uses and another
erases; a term that serves two roles because the inputs that reach it in
each role differ.

Look at the 162 as one term rather than as reader + NEXT + ABS + APP.
Seams worth real thought: the variable arm and APP and ABS all end by calling
cont on a fresh value; `list (\q. cont)` hands cont a tail exactly as a
cell lookup hands a value; the cell `zx arg (zy args)` and the lift
`exp args (exp2 args)` share the skeleton `a b (c d)`; the cell reads code
bits as selectors exactly as the reader does with `list I`; `I` appears once
and could be any term acting as identity on the two inputs it meets; the
knot's `x x` and the skip's `list list` are both self-applications; NEXT is
erased on variables and could carry anything the zero arm can tolerate.
Track each idea to a complete term, battery it, polish it, and if it dies,
say exactly why (an identity or a counterexample program).
