Lane "floor38": raise the unconditional global floor from 37 to 38 (or more).

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md (contract, size measure,
compute rules). Lane directory: /Users/a9lim/Work/blam/tmp/round3/floor38/ —
write files only there; do not edit existing modules or canonical data.

The unconditional floor is 37 (docs/classical/self-interpreter/global-floor.md,
two independent reviews, 144 clauses kernel-checked in
lean/Blc/SelfintFloor37.lean). This round's floor lane
(tmp/round3/floor/REPORT.md, "Unconditional progress", and
floor/floor37-progress.md, floor/progress.json, floor/literal-interface.md)
proved that every literal `λc.B` interpreter has at least 39 bits, and
reduced the remaining exact-size-37 inventory to 676 layouts: 615 refuted
finitely by its scripts, 48 by displayed infinite invariants, and 13 left
for symbolic adjudication (five engine divergers without extracted
certificates, eight engine UNKNOWNs; main families
`delta (lambda a.a J(a) a)` and `delta (lambda a.a (a J(a)))` with J built
from the six right-associated permutations of three variables, plus one
explicit final case).

Goal: prove that none of the 13 residual terms is a self-interpreter, by a
finite closed counterexample program (exact, rigid C and N, a distinct
normal form or a provable rigid-head mismatch) or by an infinite invariant
proved by hand, so that no size-37 interpreter exists. Then review the
inventory argument itself (that the 676 layouts are complete) as an
adversary would; if both hold, 38 is the new floor. If time remains, state
what the size-38 inventory looks like and whether the same method reaches it.

Computation: small, targeted head-reduction traces on specific terms and
programs only; at most 2 threads; no run longer than two minutes; no sweeps.
Lean for any case whose statement is fixed (kernel-checked reduction traces
via the existing SelfintSharp.replay machinery are welcome). Report each of
the 13 with its verdict and evidence, the completeness review, and exactly
what is handwritten, computer-checked or in Lean.
