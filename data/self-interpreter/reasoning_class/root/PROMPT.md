Lane "root" (wave 5): application-rooted readers and depth-0 readers whose hole follows a shared top-level let.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3,
tmp/round4/depth02/REPORT.md (copy lemma, chain swap, the closed depth-0
families and why depth-0 shared lets were left open), tmp/round4/close46/
REPORT.md (first-head classification: a minimum reader is an s-spine, or
has its first source head redex at the root, multiplicity ≤ 7 below 46, or
directly under the stream λ, ≤ 6; a λ-free argument at the root must be j),
and tmp/round4/bridgeadv/REPORT.md (let-saving formula, two-productive-uses
lemma, why counting alone cannot bound sharing).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/root/ — write only there.

Problem. Two open families of class-bound.md §3:
 (A) application-rooted readers R = P Q⃗ (not λs-rooted) whose hole j sits
     under a λ that is not the stream binder;
 (B) depth-0 readers whose j follows a shared top-level let, e.g.
     R = (λx. B) A j with x used at least twice in B (the depth02 lane left
     about 2.5×10⁷ filtered terms here: too many to enumerate, so it needs
     an argument).
Goal: w ≥ 46 for a minimum reader in each family, or a reader with w ≤ 45
(splice into the 162 in place of `list I V NEXT`, NEXT at the hole;
battery; polish; report at once).
Route ideas: close46's root budgets bound the multiplicity of the root
redex; a shared top-level let must have two productive uses
(bridgeadv), and each use must play a role in one of the two laws, so the
let's argument A is a piece that both laws use — price which pieces can be
shared between the zero and the unary run with the core lemmas (unary
core ≥ 20, zero core ≥ 12, a j/N operand ≥ 25) and the exact formula
S = (k−1)|A| + (f_A − 1)M − 4 − 2k − T. State minimality explicitly
wherever you replace a reader by a lighter one.

COMPUTE (hard, from BRIEF5.md): no check over 100,000 terms, 2 minutes,
1 GB or 2 threads; a finite check only to close one pinned sub-case after
reasoning, with a stated completeness argument; never extend the depth02
enumerations. If a case needs more, write down why and leave it open.

OUTPUT DISCIPLINE: keep every response under ~10k output tokens, one idea
per turn; append progress to NOTES.md after every sub-case, in several
small writes. Finish with REPORT.md in the BRIEF.md format (if the write is
refused, return the report as your final text).
