Lane "shared" (wave 5): readers with no deletable dispatch site — the frontier.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 in full (current), then
tmp/round4/single/REPORT.md and NOTES.md (Theorem S, the residue, the
two-law probe), tmp/round4/zcore/REPORT.md §§2, 6 (sites, Lemma S, call
compatibility, the selector price, the witnesses R99 and the 93-bit
non-selector reader), and the needed-narrowing engine
tmp/round4/types/narrow.py / narrow2.py with both reviews
(tmp/round4/review_types/REVIEW.md, review_types_gemini/REVIEW.md: tabling
is sound for joint laws by the needed-occurrence argument, unsound for a
single law).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/shared/ — write only there.

State. Every β-normal reader has w ≥ 46, and no minimum reader below 46
has a syntactic dispatch site (Theorem S with the depth results). So a
minimum λ-rooted reader below 46 reads the stream's bit without any
unary-deletable site: (1) through a let-shared dispatcher with a call that
hands it something other than a bit — c, s, a tail, g itself, a small λ —
which reuses both arms (single: "the real frontier"); (2) through an
under-applied dispatch x A with |x| + |A| ≤ 9; or (3) by applying the stream
to itself (s (s K) and relatives).

Goal: close (1)–(3) for minimum readers below 46, or explicit priced
survivors with witnesses, or a reader with w ≤ 45 (splice into the 162 in
place of `list I V NEXT`, NEXT at the hole; battery; polish; report at
once). A good first step: the single lane's two-law probe on the skeleton
λs. (λg. _) (λy. y _ _) at w ≤ 45 found no reader but left 90 fuel
cut-offs uncertified — certify them (head cycles, closed unsolvable
subterms, the frozen engine `blam adjudicate`, or a hand proof) so that
skeleton is closed, then extend to the other shared-dispatcher skeletons
(more arguments, the let at the root, the dispatcher's call sites inside
handlers). Price non-selector calls by argument type, as zcore proposed.
If you use the narrowing engine on readers with redexes, check that the
needed-occurrence argument still justifies its tabling there, or run
untabled.

COMPUTE (hard, BRIEF5.md): no check over 100,000 terms or states, 2
minutes, 1 GB or 2 threads, validation runs included; never rerun a probe
just to see it again. A finite check only to close one pinned sub-case,
with a stated completeness argument and every cut-off certified.

OUTPUT DISCIPLINE: every response under ~10k output tokens, one idea per
turn; append progress to NOTES.md after every step, in several small
writes. Finish with REPORT.md in the BRIEF.md format (if the write is
refused, return the report as your final text). Mark every claim
handwritten, computer-checked or kernel-checked, with its hypotheses.
