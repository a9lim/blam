Lane "values": change what a value is.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/values/ — write files only there.

Two independent consults (Grok, Gemini) and the golf lanes converge on one
read: inside the 162's protocol every component is locally tight, and a
sub-162 "has to change what a value is, or what the zero arm applies r to,
jointly". A Codex lane is separately working on environments/cells; you are
a different lineage and should take your own route.

The value protocol today: a value is a function of the environment; a
variable's value is its own tail code r (zero cost, but V pays 7 bits for
`\q. cont` to strip the leading 1, and the cell pays 24); ABS's value is
`\args \arg. exp (cell arg args)`; APP's is `\args. exp args (exp2 args)`;
at the root C must receive exactly `λz. M`, so a closed value applied to a
rigid z must give M (values of open subterms are internal and only need to
work in the environments that actually reach them).

Questions to take seriously: values that are not functions of a single
environment (curried over something the root can tolerate, or taking the
environment through a selector); variable values computed by the reader's
own selections (`s I`, `s s`, `s F`, the whole stream, the stream applied to
NEXT or to cont); environments that are built by the parser rather than by
ABS; values that know their own constructor; a different division of labour
between the cell, the lift and the variable arm (the 162 spends 28 + 24 + 19
on them); exploiting that every program's last token is a variable (so the
rest the root sees always comes from a variable arm). For each idea, write
the complete term, derive its reductions by hand on a 0-tag and a variable
stream and on `λx.x`, `λx.λy.x`, `(λx.x)(λx.x)`, then battery and polish it.
For each family that dies, record the exact obstruction.
