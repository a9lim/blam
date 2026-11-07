Lane "adv6" (wave 5): constructive adversary on root lets — the last open branch.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §§2–3 in full (current), then
tmp/round4/adv5/REPORT.md (the previous adversary: near misses, identities),
tmp/round4/rootnf/REPORT.md, tmp/round4/rootlet/REPORT.md (and
SURVIVORS.tsv), tmp/round4/root/REPORT.md and tmp/round4/shared/REPORT.md
(the Lift identity).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/adv6/ — write only there.

State. Every β-normal reader has w ≥ 46, and no λ-rooted MINIMUM reader below
46 exists (both audited). So if any reader with w ≤ 45 exists, the minimum
one is a root let R = (λx. B) A C⃗: the let sits at the root, outside the
stream binder, and x has at most five uses (w ≥ 4k + 22 + 4d + tax). The
hoisted 165 `(λa s. s (λb. b A c) B) j` (w = 49) is the known example of the
shape. Two proof lanes (rootcert, rootlow) are closing it; you are their
adversary. Your job is to build a root-let reader with w ≤ 45 by design, or
to say precisely why every design you can find costs more.

Ideas to try and price: (1) the Lift identity — (λg. λs. B) H equals
λs. (λg. B~) H on every stream at an offset u_s(B) − u_g(B) + f_c(H) +
4·occ_j(H): a root let is cheaper than its lift exactly when the body uses
the let variable more than the stream; what λ-rooted readers of weight
46–50 have a lift offset ≤ −1? (2) root lets that are NOT stream-λ-headed:
the let argument runs before the stream arrives (the root lane's
"hand-off"); what can a closed pre-stream computation build cheaply that a
λ-rooted reader cannot? (3) j inside the let argument (hoisting j outward
saves its depth tax — the 165's trick): which near misses from adv5 become
readers once j is hoisted? For each design: write the identities by hand
(BRIEF.md's table), estimate its weight from parts, then check concrete
readers with coord/rd.py (rd.check(r'...', nmax=8, verbose=False)).
Report near misses with weights and what each pays for. A reader with
w ≤ 45: splice into the 162 (in place of `list I V NEXT`, NEXT at the hole),
battery, polish, report at once.

COMPUTE (hard): no check over 100,000 terms, 2 minutes, 1 GB or 2 threads;
hole fills of at most a few thousand terms, only after reasoning has
narrowed the hole. Designing by enumeration is a failed brief.
OUTPUT DISCIPLINE: every response under ~10k output tokens, one idea per
turn; append progress to NOTES.md after every design. Finish with REPORT.md
in the BRIEF.md format (if the write is refused, return it as your final
text).
