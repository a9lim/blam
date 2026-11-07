Adversarial verification request, high stakes. You are a fresh reviewer;
nothing here is your work. Repo /Users/a9lim/Work/blam (read-only for you
except tmp/round4/review_hole/, where you may write scratch files and your
reply). Do not run broad enumerations: at most 100,000 terms per check, two
minutes, two threads.

Context: the separated class of BLC self-interpreters
(docs/classical/self-interpreter/class-bound.md §1–2) costs exactly
116 + w(R) for a reader R, w = cost + 4·depth(j); the 162 is optimal in the
class iff every reader has w >= 46. A reader has free c, j (one source j),
R (cons K r) =β r j and R U_n(N) =β c U_(n-1)(N) N for all n >= 1
(cons b r = λf. f b r, K = λx y. x, F = λx y. y, U_n(N) = 1^n 0 ++ N).

A Claude lane ("hole") claims two results, both handwritten with small
computer checks, not yet reviewed:
 - Theorem 10.1 (tmp/round4/hole/REPORT.md §3, NOTES.md §§5–10): every
   λ-rooted reader with j at depth 1 and w <= 45 lies in one of four
   families R1–R4, via the transfer lemma (dispensable positions along the
   normal-order run), anchoring at j's parent X, a persistence argument and
   a rigid-hole argument, plus checks of operands and wrappers through 25
   bits;
 - Theorem 11.4 (NOTES.md §11): every R1 reader satisfying the index-shift
   hypothesis has w >= 46, equality only via the 162's wrapper, via the
   index-shift lemma 11.1 and the checks arms.py / r1wrap.py.
Your job: try hard to break them. In particular check (1) the transfer
lemma and the definition of "touched" — is joint dispensability really
immediate, and are need sets ancestor-closed for terms with redexes?
(2) the persistence step: that X's hnf persists on zero and, on unary, that
X is erased untouched or keeps a rigid or λ value; (3) the rigid-hole
argument and its cost identity w = 2 + |C'| + |X| + 4; (4) the completeness
of each finite check (do the generators really cover every term shape in
the stated budget, is the cost model the class's, are fuel caps certified);
(5) lemma 11.1's accounting (k bits per needed s/c leaf, nothing lost on
replaced occurrences); (6) whether R1–R4 really exhaust the cases. For each,
verdict correct / gap / wrong, with a concrete counterexample term where
wrong (check counterexamples with tmp/round4/coord/rd.py:
python3 -c "import sys; sys.path.insert(0,'tmp/round4/coord'); import rd;
print(rd.check(r'...', verbose=False))"). A reader with w <= 45 that passes
is a sub-162 interpreter: report it first. Write your verdict to
tmp/round4/review_hole/REVIEW.md as well as in your reply.
