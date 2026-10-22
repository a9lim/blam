Lane "bodyredex" (wave 5): readers whose stream-λ body is a redex.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3
in full (current; it records what every lane has settled), and the last
third of tmp/round4/coord/SYNTHESIS.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/bodyredex/ — write only there.

Problem. Readers R = λs. ((λx. B) A) C1 … Ck with j at depth 1 (the "first
body redex" branch of the kernel-checked source-head classification
Blc.SelfintSourceFront.reader_source_head). This is where a let under the
stream binder can share a value between the zero role and the unary role —
the gap every open case of w ≥ 46 now comes down to. Goal: no minimum
reader (order: weight, λ count, depth) with w ≤ 45 lies in this branch — or
a reader with w ≤ 45 (splice into the 162 in place of `list I V NEXT`, NEXT
at the hole; battery; polish; report at once).

What is already proved, now in the library (lean/Blc; namespace map in
tmp/round4/integrate2/REPORT.md): multiplicity of the first body redex ≤ 6
below 46 (SelfintSourceFront.body_head_multiplicity); no erasing redex;
linear redexes pay only when (F − 1)D ≥ 7 + G
(SelfintLocalCost.minimum_linear_source_charge); a λ-free body argument is
one of four literal terms (SelfintFlatMinimum.minimum_flat_four); moving a
let into its only operand never raises the weight, so sharing reaches two
operands (SelfintLetSink); x-headed bodies need one to five extra uses
(SelfintNeededHead.body_needed_sharing) and A then contains a λ
(SelfintSourceBody); nested lets display and exchange at exact prices
(SelfintNestedLets); one-helper sharing λs. ((λg. s (g P) (g s)) A) j has
w ≥ 46 for any A and any P over g, s (SelfintStreamSpecializer). Also: the
exact let-saving formula S = (k−1)|A| + (f_A − 1)M − 4 − 2k − T
(class-bound.md §3); every redex-free s-spine reader has w ≥ 46 (d1open);
the deletion lemma (d1open/REPORT.md).

Route ideas: split by the head of B (x-headed, s-headed, a bound variable
of B, c) and by where the shared value's uses sit relative to the two runs;
the s-headed case with A a closed or g/s-dependent helper is the one-helper
theorem's generalization (more operands, more uses); for each case use the
source budget with exact let and capture charges, and the core minima
(unary core ≥ 20, and the only cores through 22 are s (λq. c) (s s j),
s (λq. c) (s s s); zero core ≥ 12; a j/N operand ≥ 25). Lean welcome for
pinned lemmas (import the library modules; compile in your directory).

Reason first; a finite check only to close one pinned sub-case after
reasoning, within BRIEF5.md's caps (≤ 100,000 terms, ≤ 2 min, ≤ 1 GB,
≤ 2 threads), with a stated completeness argument. State minimality
wherever you replace a reader by a lighter one. Append to NOTES.md as you
go; finish with REPORT.md in the BRIEF.md format.
