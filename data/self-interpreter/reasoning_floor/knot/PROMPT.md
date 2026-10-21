Lane "knot": the cost of recursion and of deep references. Your lane directory
is /Users/a9lim/Work/blam/tmp/overnight/knot/ (write only there). Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md first; it is the shared ground truth.

Attributable to recursion in the 165: the knot block
`(\x. x x) (\x. (\intL. BODY) (x x))` is 22 bits, and the two references to
`intL` (0-based depths 2 and 3) cost 9 more: about 31 bits. The deep
references are the other tax: `cont` is used three times at 0-based depths 3,
2, 3 (8 index bits), `next` once at depth 4. A sub-165 needs
2L + 4A + X ≤ 162 (now 34 + 100 + 29 = 163): for example one application
fewer with at most 3 bits of λ/index added, or the same L and A with X ≤ 28.

Your angle: recursion and binder placement. Questions to attack:
(a) Can the second parse (APP) or the first parse (NEXT header) obtain the
parser from somewhere other than `intL` more cheaply — from the continuation,
the stream, `next`, or a value — so the `intL` let or one of its references
disappears? (b) The reader already self-applies the stream (`list list`), and
`R Z_t →* t t`, `H R →* next next cont` (interpreter.md §2): the 165 contains
the self-application a knot needs. Earlier constructions that used this cost
192–199 because of carriers; find the cheapest carrier, or prove a lower
bound on any carrier in a delimited class. (c) Binder order: is there a
rearrangement of λcont / the next let / λlist / the knot (with a matching
protocol tweak) that shortens the deep references by more than it costs?
The let structure of the 165's own core is already optimal (letopt), so a
win needs a protocol change, e.g. a different argument order somewhere.
(d) A lower bound: what is the least total recursion overhead (knot + all
references to the recursive parser) for an interpreter that recurses twice
(once per child of an application) through a fixed point? A clean theorem
here, even conditional, is valuable.

Report as the brief says; every complete interpreter needs a battery line.
