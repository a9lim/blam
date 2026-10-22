Lane "adv5" (wave 5): constructive adversary — build a reader with w ≤ 45 from the mechanisms the proofs have not priced.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md
§2–§3 (what is closed: do not rebuild closed families) and
docs/classical/self-interpreter/interpreter.md §6 (designs already built:
do not re-propose them; if yours is close, say exactly what differs).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/adv5/ — write only there.

Your job is to break the conjecture w ≥ 46, by design. Every gain in this
problem's history came from a move the local-optimality arguments had
assumed away; the 162 itself came from refuting a step of a proof. The
proof lanes running now are working on exactly these open mechanisms, and
you are their adversary:
 1. zero-λ parents: j's parent X returns a λ on a zero stream that the
    context applies (R84 in BRIEF5.md does it at w = 84 by dispatching the
    bit twice). Can one dispatch serve both, e.g. X's zero value doubling as
    the context's handler?
 2. needed binders: a binder above the unary-output node carrying a value
    both laws use (cross-role sharing through a let or an opened cell part).
    The 164 shares c, N and its single j between roles; push that further.
 3. depth-0 readers whose j follows a shared top-level let; application-
    rooted readers; redex or stream-headed first operands; λb. b X Y with
    four or more operands.
For each mechanism: write down what the cheapest version must contain
(identities, by hand, using the table in BRIEF.md), estimate its weight
from the parts, and only then build and check concrete readers with
coord/rd.py. Report near misses with their weights and what each one pays
for. A reader with w ≤ 45: splice into the 162 (in place of
`list I V NEXT`, NEXT at the hole), battery, polish, report at once.

COMPUTE (hard, from BRIEF5.md): no check over 100,000 terms, 2 minutes,
1 GB or 2 threads; hole fills of at most a few thousand terms, only once
reasoning has narrowed the hole. Designing by enumeration is a failed brief.

OUTPUT DISCIPLINE: keep every response under ~10k output tokens, one idea
per turn; append progress to NOTES.md after every design, in several small
writes. Finish with REPORT.md in the BRIEF.md format (if the write is
refused, return the report as your final text).
