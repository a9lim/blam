Lane "zerolam" (wave 5): price depth-1 readers whose hole's parent is a λ on a zero stream.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (same
directory; it updates BRIEF.md and holds the hard compute caps), then
docs/classical/self-interpreter/class-bound.md §3, tmp/round4/hole/NOTES.md
§§8–12 (the dispensability machinery and the anchor reduction) and
tmp/round4/review_hole/REVIEW.md (what broke and the witnesses).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/zerolam/ — write only there.

Problem. R = λs. C[X] with j at depth 1 (only the stream λ above it), X the
application node that is j's parent. X is context-free (free variables among
s, c, j). The anchor reduction covers readers whose X evaluates to a rigid
value on a zero stream. Your case: X[Z(r)] has a λ head-normal form that
the context C applies (R84 in BRIEF5.md: X gives \k. k j on zero and N on
unary; the context dispatches the bit again; w = 84). R59 is the
transport form ((\a t. t a) j) applied to the 162's own pieces (w = 59).

Goal: prove that every such reader has w ≥ 46 — or, if that is false or too
strong, that a *minimum* reader (order: weight, λ count, depth) never has a
zero-λ parent — or construct a reader with w ≤ 45 (splice into the 162 in
place of `list I V NEXT`, NEXT at the hole; battery; polish; report at once).

Suggested route (yours to replace): split by what X's zero value carries.
(i) It contains j and is applied by C to a term built from s: then C must
itself read the bit (X's zero value cannot know it is on a zero stream
unless X dispatched), so the reader dispatches twice; price two dispatches
with the first-dispatch normal form (jn/REPORT.md) and the core lemmas
(unary core ≥ 20, zero core ≥ 12, a j/N operand ≥ 25). (ii) X's zero value
is a j-transport combinator (R59's shape): show it can be contracted or
hoisted at a computable price into a rigid-parent reader of no greater
weight, with the exact let-saving formula of class-bound.md §3 and the
index-shift lemma. (iii) Whatever is left. Each case should end in an
inequality on w with the hypotheses stated.

Reason first; a finite check only to close one pinned sub-case, within the
caps in BRIEF5.md (≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads), with a
stated completeness argument. Lean is welcome for pinned lemmas (compile in
your directory, see BRIEF.md). Append progress to NOTES.md as you go; finish
with REPORT.md in the BRIEF.md format.
