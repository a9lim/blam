Lane "next": the NEXT protocol, under the 162's new reader.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/next/ — write files only there.

Goal: a sub-162 interpreter by changing NEXT (header 18 + ABS 41 + APP 37 =
96 bits), or a proof that the families you study cannot pay.

Every exhaustive search of the NEXT region (slots, modules, joint holes) ran
in the 168's or 165's frame, where NEXT was let-bound above `\list` and was
reached as `next b2 r2` from a handler. In the 162 the frame changed: NEXT is
the reader's last operand, under `\list` (+4 index bits on its four
references to cont/intL), reached as `r NEXT = NEXT b2 r2` from the zero
arm, erased as skip junk on a variable, and `list` is in scope inside it but
unused. Find what the new frame allows that the old searches could not see.

Directions worth real thought: NEXT using `list` (at that point
`list = cons K (cons b2 r2)`, so `list (\q. X) = X r`, `list s`-diagonals,
`list K`, `list F`); changing what the zero arm hands NEXT (the cell r
undestructured, a different operand order, NEXT taking the tail before the
bit); the I-selection trick at the second tag (`r I` is `K r2` for ABS and
`I` for APP, so ABS keeps its tail and APP loses it — or the reverse with
another selector); merging the three `cont` calls (variable, ABS, APP) or
the two value builders `\args ...`; making ABS or APP use the variable arm V
or the reader's operands; reordering binders that the new reader now
permits. Known and measured (do not redo): select-first +1, K-repair +1,
optional second parse 177, shared-return NEXT 166, dispatch before the first
parse 170, all of interpreter.md section 6. For each family that dies, prove
the minimum it must pay.
