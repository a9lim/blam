Lane "expand" (wave 5): the missing theorem for nonlinear root lets — or why it cannot exist.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §§2–3 in full (current; the
definition of "minimum" at the top of §3; the Open paragraph), then
tmp/round4/rootlow/REPORT.md and tmp/round4/rootnl/REPORT.md (both end by
naming the same missing step), tmp/round4/root/REPORT.md (the hand-off;
"pre-stream contraction is never lighter"), tmp/round4/shared/REPORT.md (the
Lift identity), tmp/round4/adv6/REPORT.md (root-let designs and what they
pay) and tmp/round4/types/REPORT.md §§2–3 (role supports).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/expand/ — write only
there. Other lanes are certifying finite cells (rootcert2, rootnarrow); you
own the theory.

Situation. The only open case of the separated class below 46 is a minimum
reader R = (λx. B) A C⃗ (2–4 uses of x, j at depth ≤ 1) whose argument hands
control on before the stream arrives. Its pre-stream reduct is a λ-rooted
reader R′ with w(R′) = w(R) + e (e the net β expansion, after the
kernel-checked repair of discarded j copies at 4h − 2 each). But only
MINIMUM λ-rooted readers are excluded below 46, and R′ is not minimum (R is
lighter), so nothing transfers unless one has either (a) a bound e ≤ E with
a NO-MINIMALITY lower bound w(R′) ≥ 46 + E for the λ-rooted shapes R′ can
take, or (b) another route.

Goal: (1) State the missing step exactly — the weakest statement that would
close the case, with its quantifiers and hypotheses. (2) Try to prove it:
e.g. bound e by the source budget (a closed pre-stream computation of a
≤ 45-bit term that must then read a stream and produce r j / c U N — what
can it build that a direct λ-rooted reader cannot, and at what cost?); or
find a different route (pull the shared value under the stream binder at an
exact price, as the Lift identity does for stream-λ-headed bodies; a
semantic role-support argument on R itself rather than R′; minimality of R
applied to a cleverly chosen rewrite that stays below R). (3) Or refute it:
construct a root let whose hand-off expands a lot yet whose reader weight
is small, so no bound of type (a) exists, and say what that means for the
problem. Reason first; small targeted computations only (checks of specific
readers with tmp/round4/coord/rd.py), within BRIEF5.md's caps
(≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads). Lean welcome for pinned
lemmas. Append to NOTES.md; finish with REPORT.md in the BRIEF.md format,
including an exact statement of what remains open.
