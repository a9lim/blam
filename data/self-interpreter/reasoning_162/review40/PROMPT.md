Adversarial verification request, high stakes: a claimed raise of the
unconditional lower bound on binary lambda calculus (BLC) self-interpreter
size from 39 to 40 bits. Find every error or gap; say clearly when you find
none. Write your review in /Users/a9lim/Work/blam/tmp/round3/review40/ (your
only writable location; REVIEW.md for Codex, REVIEW-claude.md for Claude);
do not modify other files.

Background (all reviewed correct twice): docs/classical/self-interpreter/global-floor.md
sections 1-8 (37, the literal-interface bound 39 in section 6, sizes 37 and
38); the 38/39 sources tmp/round3/floor/floor37-progress.md,
tmp/round3/floor38/inventory38.md, proof.md, proof39.md; reviews in
tmp/round3/review38/ and tmp/round3/review39/; tmp/round3/BRIEF.md.

The 40 argument (unreviewed): tmp/round3/floor38/literal40.md (the literal
interface `λc.B` at exactly 39 bits: two uniform cases proved in Lean plus
1,008 layouts), inventory39.md (application-rooted size 39: 3,664 layouts,
2,248 with four live binders and 1,416 with five), proof40.md, the REPORT.md
section on 40, size39-ledger.json, and the Lean modules (Pair39,
Sources39Literal/Four/Five, Shapes39, Finite39Base/Literal/Four/Five,
Residuals39 and the earlier ones; build all with
`python3 tmp/round3/floor38/check_lean.py`, two threads, about 60 s).

Review, in order of importance:
(1) completeness of both inventories, especially everything new at 39 that
    had no analogue at 38: the literal λc.B layouts at equality, five live
    binders, new capture patterns, vacuous wrappers; every handwritten
    pruning step;
(2) the 4,505 finite certificate predicates: do they imply non-interpreter
    status (inspect the predicates and their Lean statements)?
(3) the 167 Lean exclusions, including the two uniform literal-interface
    lemmas and the nine late residuals: do the statements say what is claimed?
For each: correct / flawed / unclear, the exact step and a counterexample
when flawed. Small symbolic checks fine (seconds, at most two threads); no
searches beyond re-instantiating the stated templates.
