Lane "proof": is the 162 optimal once its NEXT region and knot are fixed?

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/proof/ — write files only there.

Theorem target (make it precise yourself, as strong as you can prove):
fix the knot `(\x. x x) (\x. (\intL. \cont. \list. B) (x x))` and the
162's NEXT term (as a term with free cont, intL, placed wherever B puts it,
priced at its actual size there). Every B that makes the whole term a
self-interpreter has |B| >= |the 162's B|, i.e. the 162 is optimal in that
frame. A weaker but still useful target: the same with NEXT required to
occur exactly once, or with B's head being `list`.

The method that produced the 162: an attempted reader-optimality proof for
the 165 was refuted step by step in review, and one refutation was the 162's
reader. So: attempt the proof honestly; state every lemma precisely; then
attack each lemma yourself as an adversary would; when a step fails, build
the counterexample reader, splice it in, battery and polish it. Either
outcome is valuable: a theorem for the record, or a construction.

Read before starting, to avoid repeating known errors:
`data/self-interpreter/reasoning_floor/reader-proof/REPORT.md` and
`data/self-interpreter/reasoning_floor/verify/vreader*_codex.md` (one source
node can serve several output roles; an uncovered non-dispatch-cell case; a
wrong sub-bound refuted by a valid 59-bit reader; "Theorem S" refuted by the
162's reader), plus `golf162-claude/REPORT.md` (V >= 28 by a case analysis
with a checked base, the s I family's operand forcing) and `zoo/REPORT.md`.

Small exhaustive checks that close a proof case (a few thousand terms, under
two minutes) are fine; the 248,614-term V hole check mentioned in
golf162-claude is acceptable only if run single-threaded under two minutes.
Lean is welcome for any lemma whose statement is pinned down.
