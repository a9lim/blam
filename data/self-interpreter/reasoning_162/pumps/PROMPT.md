Lane "pumps": certify the last gap in "the 162's reader shape is optimal".

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md (contract, size, compute
rules). Lane directory: /Users/a9lim/Work/blam/tmp/round3/pumps/ — write
files only there.

The Claude proof lane (tmp/round3/proof/REPORT.md, PROOF.md, NOTES.md,
holecheck.rs, s1_27_pass1.txt, capped_nonnormal_unresolved.txt) enumerated
every variable arm V of at most 27 bits over the frame [list, cont, intL, x]
in the 162's reader shape `list I V NEXT` with the 162's NEXT and knot, and
ran each through a sound symbolic contract checker (rigid continuation
placeholders, lemmas L1-L6 in its report). Of 1,010,663 arms none passes;
999,554 are refuted; 11,109 exhaust the budgets. Of those, 6,692 are not
beta-normal (2,357 beta-reduce to refuted terms) and 4,417 beta-normal arms
remain: "pumps" whose head reduction feeds NEXT, the arm itself, I or a
continuation to the parser as its stream, with the stream argument nesting
one level deeper at every unfold. The lane believes every one diverges but
has no certificate. If they are all certified (plus the 172 that blew up and
the 4,163 non-normal ones reducing to beta-normal capped terms), then
"|V| >= 28 in the shape `list I V NEXT`" is a complete computer-assisted
theorem, closing the 162's own reader shape.

Goal: certify them. Classify the 4,417 by head-reduction pattern into a
small number of families, and for each family prove divergence (or a wrong
rigid head) by an invariant: a generalized same-stream re-entry lemma, a
macro grammar preserved by head reduction, or a pump `T ->+ C[T]` with the
needed substitution stability, in the style of
tmp/round3/floor38/proof.md and data/self-interpreter/reasoning_floor/
(the 37-floor's infinite invariants). Kernel-check the family lemmas in Lean
where the statement is fixed (the floor38 lane's Lean modules show how:
WeakHeadClock counts, pumps, rank arguments). Report each family, its
members, the invariant, and exactly what is checked how.

Computation: classification and certificate checks over this fixed list only
(no new enumeration); at most two threads; no run over two minutes.
CRITICAL: keep each of your responses under ~10k output tokens and append
progress to NOTES.md in your lane directory after each family; three sibling
lanes were lost by producing one response over the 64k output limit.
