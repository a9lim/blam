Lane "nextfuse": fusion across the NEXT region. Your lane directory is
/Users/a9lim/Work/blam/tmp/overnight/nextfuse/ (write only there). Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md first; it is the shared ground truth.

The NEXT region is header 17 + ABS 40 + APP 35 = 92 bits, more than half of the
interpreter. The 168's module grammar found each module minimal *as an
opaque module*: the NEXT header, ABS, APP, the cell and the lift. The 165's
reader beat that kind of bound by fusing work across module boundaries:
computing once, before a dispatch, a value that is right for both arms, and
letting a Scott structure's own application supply an argument. Nobody has
found the analogous fusion inside NEXT.

Look at what the two arms share: both end in `cont (λargs. …) rest`; both use
`exp` (the first child's value) applied to an environment; APP's second parse
is `intL (λexp2. …)`; ABS's value is `λargs arg. exp (cell arg args)` and
APP's `λargs. exp args (exp2 args)`; the dispatch `bit1 ABS APP` sits under
the first parse's continuation. Ask: what could be computed once, above the
`bit1` dispatch, that is right for both arms? What could the stream, the tag
bit, or the rest supply by its own application? Can the dispatch move
(before the first parse, after the second, into a value)? The record
(interpreter.md §5, §6, nextfuse/ in reasoning_165) has proved several such
routes impossible (mode-free value builder, tag recovery from q P / q q,
selected-component repairs) and measured many more; read those first so you
attack what is left.

Goal: a complete interpreter ≤ 164 bits with a passing battery, or a clean
impossibility theorem for a delimited class of NEXT fusions, with proof.
Report as the brief says.
