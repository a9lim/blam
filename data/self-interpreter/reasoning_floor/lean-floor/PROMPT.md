Lane "lean-floor": raise the kernel-checked unconditional floor. Lane
directory: /Users/a9lim/Work/blam/tmp/overnight/lean-floor/.

Read /Users/a9lim/Work/blam/tmp/overnight/BRIEF.md (shared ground truth), then
docs/classical/self-interpreter/structural-bounds.md and capture-width.md, and
the Lean modules lean/Blc/SelfintLowerBound.lean (the 18-bit theorem
`selfintSizeBound_eighteen`), SelfintProof.lean (`SelfintSizeBound`,
`IsSelfInterpreter`), SelfintNonlinearChain.lean (two nonlinear binders in
incomparable branches), SelfintCapture.lean (a live capturing abstraction),
SelfintWireCost.lean (exact beta wire costs), SelfintProjections.lean.

State: Lean proves `SelfintSizeBound 18`. The handwritten floor is 34 globally
(46 for a literal λc s.B interface); it combines the kernel-checked
incomparable pair with Statman's published width obstruction (some subterm has
three distinct free variables), a counting argument (L ≥ 4, V ≥ 6, X ≥ 3 → 33)
and a handwritten exclusion of the 33 equality case.

Goal: prove `SelfintSizeBound N` in Lean for the largest N you can.
Milestones: (1) combine the existing kernel-checked facts (incomparable
nonlinear pair, live capture witness, closedness, the size identity
|t| = 2L + 4V − 2 + X) with new counting lemmas — this alone should beat 18
substantially; work out on paper what it gives before formalizing.
(2) Formalize the width obstruction (or a weaker statement sufficient for the
count) to reach 33, then the equality exclusion for 34. (3) Anything beyond
34 that you can prove by reasoning.

Mechanics. Put new Lean files in lean/Blc/ named `OvernightFloor*.lean`
(new untracked files only — do NOT edit any existing file) and build them
with lake from lean/ (e.g. `lake build Blc.OvernightFloor`, or `lake env lean
Blc/OvernightFloor.lean`). Other lanes may run lake at the same time; if a
build is locked or slow, wait and retry rather than killing anything. Keep
each build under ~10 minutes. Audit final theorems with `#print axioms`
(target: propext, Quot.sound, Classical.choice at most). No `sorry` in
anything you report as proved; mark clearly what is still open. Write a
REPORT.md in your lane directory: theorem names, statements, axioms,
build commands and times, and what remains between your N and 34.
