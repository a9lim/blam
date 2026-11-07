Adversarial verification request, high stakes: a claimed raise of the
unconditional lower bound on binary lambda calculus (BLC) self-interpreter
size from 37 to 38 bits. Find every error or gap; say clearly when you find
none. Write REVIEW.md in /Users/a9lim/Work/blam/tmp/round3/review38/ (your
only writable location); do not modify other files.

Background: docs/classical/self-interpreter/global-floor.md (the reviewed
37-bit proof, its inventory method), lean/Blc/SelfintFloor37.lean;
tmp/round3/BRIEF.md (contract and size measure).

The 38 argument is split across:
- tmp/round3/floor/literal-interface.md (every literal λc.B interpreter is
  >= 39; already reviewed correct twice in tmp/round3/review138/);
- tmp/round3/floor/floor37-progress.md, progress.json and the floor lane's
  REPORT.md section "Unconditional progress": the reduction of the size-37
  inventory to 676 layouts (652 + 24), of which 615 are refuted by finite
  scripts, 48 by displayed infinite invariants, 13 left over;
- tmp/round3/floor38/: Lean proofs that the 13 residual terms are not
  self-interpreters (Proofs, Checks, RankRealization, Protected461,
  Residuals .lean; build with `python3 tmp/round3/floor38/check_lean.py`,
  two threads, a few seconds), proof.md, and inventory-audit.md (the lane's
  own completeness audit).

Review, in order of importance:
(1) completeness: does every closed term of exactly 37 bits that could be a
    self-interpreter fall into the 676 layouts (and is the sub-37 range
    already excluded by the 37 proof)? Scrutinize every handwritten
    exclusion step that removes terms from the inventory (including the use
    of the 39-bit literal-interface bound to drop lambda-rooted terms).
(2) the 48 infinite invariants and the 615 finite exclusions (inspect the
    checker and its ledger; rerun only if it takes seconds);
(3) the 13 Lean proofs: do the formal statements say what is claimed
    (IsSelfInterpreter as defined in the repo; exact terms; sizes)?
For each: correct / flawed / unclear, the exact step and a counterexample
when flawed. Small symbolic checks fine (seconds, at most two threads); no
searches.
