# Wave 5 addendum to BRIEF.md (2026-10-22)

Read BRIEF.md first; this file updates it. Everything in BRIEF.md's
"How to work" and "Report" sections still holds.

## Where things stand

- No reader with `w ≤ 45` has been found; 162 stands. About thirty correct
  interpreters of 163–265 bits were built this round (interpreter.md §6).
- **Read `docs/classical/self-interpreter/class-bound.md` §2–§4 in full.**
  It is current (uncommitted edits on dev are the latest state): the class
  bound 146 is kernel-checked (`lean/Blc/SelfintReader30.lean`); §3 lists
  what is settled about `w ≥ 46` (by proof, by complete finite checks, by
  the depth-1 reduction) and what is open; §4 the widenings.
- Round-4 Lean now lives in `lean/Blc/` (`SelfintWiden`, `SelfintProbe*`,
  `SelfintValues*`, `SelfintKnotHeads`, `SelfintReader30`,
  `Selfint{Global,Spine,Tower}Barriers`, `SelfintChead`); the sharing
  exclusions are still in `tmp/round4/close46/` (ClosureBarrier.lean,
  StreamSpecializer.lean, SourceCost.lean, LambdaSink.lean, …).
- Lane reports: `tmp/round4/<lane>/REPORT.md`; the coordinator's running
  record of all of them is `tmp/round4/coord/SYNTHESIS.md` (read its last
  third).
- Reader-law checker: `tmp/round4/coord/rd.py`
  (`import rd; rd.check(r'\s. s I (\u. s (\q. c) (s s u)) j', nmax=8, verbose=False)`
  returns `(ok, (w, cost, depth, L, V, X, f, jcount))`). It samples
  `n = 1..nmax`; an all-n law needs a reduction argument.

## The depth-1 reduction after review (tmp/round4/review_hole/REVIEW.md)

The hole lane's dispensability machinery is sound: a position is
unary-dispensable iff no residual of it is touched or survives on the
normal-order run; cores are unique; `w = core + fillers + 4·depth`; the
index-shift lemma (moving a subterm out past `k` binders saves exactly `k`
bits per needed `s`/`c` leaf) is correct. What broke: the claim that j's
parent node `X` (context-free at depth 1) evaluates on a zero stream to
`r j` or `j`. Codex's witnesses, all correct readers:

    R59  = \s. ((\a t. t a) j) (s I (\u. s (\q.c) (s s u)))              w 59
    R84  = \s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)
                                                                          w 84
    R104 = \s. (\u. (\x. s (\b t. b (x s) x))
                      (s (\b t. b (\a q. t u) (c t)) (s s s))) j          w 104

In R84, `X = s (\b t. b (\a k. k a) (t t)) j` gives `\k. k j` on a zero
stream and `N` on every unary one; the context dispatches the bit a second
time. So the four-family exhaustion covers only parents rigid on zero, and
the 162-family result is a statement about *minimum* readers (it builds a
lighter reader elsewhere), not about every reader of the family.

## Compute caps (hard)

No check over 100,000 terms, 2 minutes, 1 GB or 2 threads. A finite check
is for closing one pinned sub-case after reasoning has narrowed it, with a
stated completeness argument; it is never the main argument. Several round-4
lanes drifted into multi-million-term "complete checks"; that is a failed
brief. If a case needs more than the cap, write down why and leave it open.

## Statements

State every hypothesis, including minimality (global minimum under the
order weight, then λ count, then depth) whenever an argument replaces a
reader by a lighter one. Mark each claim handwritten, computer-checked or
kernel-checked. A Lean statement is only as good as its hypotheses: say
exactly what the theorem quantifies over.
