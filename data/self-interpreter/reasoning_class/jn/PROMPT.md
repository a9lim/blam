Lane "jn": the separated class's sharp obstruction, proved or broken.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then
docs/classical/self-interpreter/class-bound.md §1-4,
data/self-interpreter/reasoning_162/refute46/REPORT.md (all of it) and
NOTES.md, data/self-interpreter/reasoning_162/floor/STATE46.md, and skim
data/self-interpreter/reasoning_162/prove46/REPORT.md and
floor/role-pricing.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/jn/ — write only there.

The problem. A reader R has free names c, j (exactly one source j) with
    R (cons K r) =β r j,     R U_n(N) =β c U_(n-1)(N) N   (all n >= 1),
weight w(R) = cost(R) + 4·depth(j), j priced 0, frame [c, j]. The 162's
reader λs. s I (λu. s (λq.c) (s s u)) j has w = 46. w >= 46 for every
reader makes the 162 optimal in the class; any reader with w <= 45 is a
sub-162 interpreter of 116 + w bits. A Codex lane is attacking w >= 46
globally; you work independently from the obstruction side.

refute46 conjectured that w >= 46 follows from three facts, none proved:
 (L1) a term that is j under s := Z(r) and N under s := U_n(N) costs >= 25
      (at depth <= 1) — e.g. s K j (s s s) is 25;
 (L2) an arm A with A j =β c U_(n-1) N on U_n costs >= 28 when it must
      absorb j (the 162's λu. s (λq.c) (s s u)), >= 22 when it need not;
 (L3) dispatcher accounting: every reader splits into a dispatcher, a zero
      part and a unary part with additive costs, with the j-handling charged
      once.
Your job: state each precisely (frame, which names may occur, how j's depth
is charged, what "costs" means for non-normal source), prove it, and above
all, when a step fails, construct the counterexample, check it against both
laws on n = 1..3 with rigid c, j, r, N, and if it meets them splice it into
the 162 (in place of `list I V NEXT`, NEXT at the hole), battery and polish.
The productive history of this problem is exactly that: the 162 itself was
a reviewer's counterexample to a reader-optimality proof step. Be your own
adversary: for every lemma, spend real effort trying to break it before
proving it. (L3) is the dangerous one — sharing between roles (the factory
H_c = λx. x (λq.c) has H_c F = I, H_c I = K c, H_c H_c = c) is where a
cheaper reader would live.

Lean is welcome for any pinned lemma (lean/Blc/SelfintClass.lean has the
Reader definitions). Rules: reasoning first; small targeted checks only;
no sweeps; at most two threads; each run under two minutes. Keep each
response under ~10k output tokens and append to NOTES.md after every
lemma or candidate. Finish with REPORT.md.
