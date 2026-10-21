Lane "env": a cheaper value/environment protocol. Your lane directory is
/Users/a9lim/Work/blam/tmp/overnight/env/ (write only there). Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md first; it is the shared ground truth.

The 165 spends ABS 40 (of which the cell `\zx \zy. zx arg (zy args)` is 24),
APP 35 (of which the lift `\args. exp args (exp2 args)` is 19), and VAR about
5 bits (just `cont` in the handler): VAR is nearly free because a variable's
value is its own remaining unary code `r`, and the environment cell performs
the lookup when applied as `r e = e b' r'' = b' arg (r'' args)`. Together
ABS + APP + VAR ≈ 80 bits, with 11 of the 29 index bits inside them.

Goal: a value/environment protocol whose total interpreter is ≤ 164 bits —
either with the knot, reader and NEXT header unchanged and ABS+APP+VAR ≤ 79,
or with coordinated changes elsewhere whose exact sum is ≤ 164. Or, if you
become convinced none exists in a class you can delimit, a proof of that.

Directions not yet exhausted (the record in interpreter.md §5–§6 lists what
was): (1) The input stream already contains Scott pairs `cons b r = λf. f b r`
for free; inside ABS the stream at hand is the code of the body. Can any
environment, closure or value structure be borrowed from cells the stream
supplies, instead of built? (2) The cell `zx arg (zy args)` and the lift
`exp args (exp2 args)` share the skeleton `a b (c d)`; a let costs ~32, but a
protocol where one is obtained from the other by *application* (not a let)
was not tried. (3) Values as functions of the environment is a choice: the
contract only fixes the root value `λz. M`. Any internal representation is
allowed if the root's is β-equal to `λz.M`, but §5's exclusions (cell/APP
alias, η-collapse, canonical closed values) constrain it — read them. (4)
Argument orders: λargs/λarg, zx/zy, and the bit convention interact; the index
sum is where small wins hide (X = 29; cont alone costs 8).

Every constructed interpreter must be checked with the battery. Report as the
brief says.
