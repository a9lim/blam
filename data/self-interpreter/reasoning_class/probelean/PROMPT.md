Lane "probelean": kernel-check the divergent-probe technique.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first, then
tmp/round4/escape/REPORT.md §3 (Lemma A and its corollary) and
lemmaA_review_codex.txt (the adversarial review), and the Lean library's
term/reduction infrastructure: lean/Blc/ (start from the imports of
SelfintClass.lean, SelfintControl.lean, SelfintInert.lean,
SelfintWireCost.lean, SelfintRecursion.lean; grep for headSteps, Betas,
BetaJoin, NormalForm, Rigid).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/probelean/ — write only
there; do not edit lean/Blc/.

Lemma A: let κ be a term with FV(κ) ⊆ {C}, x, y, N fresh, v_W the canonical
162-interpreter value of the source λy.W (W = Ω), with
κ v_W N =β C X N. Then κ x y →β* C A y for some A. Its proof uses
solvability: unsolvability is preserved by substitution, a head-normal form
has a stable head variable and spine length, and Church–Rosser. Several
lanes are now using this divergent-probe technique to derive interface laws
from the contract. The Lean library has no solvability theory yet.

Build the minimum Lean infrastructure (head normal forms, solvability or a
usable surrogate such as "has no head normal form" with the needed closure
properties, head-variable stability under β-conversion) and prove Lemma A
and its two-argument corollary, without sorry, with axioms only propext /
Quot.sound / Classical.choice. Prefer a general statement (any κ, any
unsolvable-after-two-arguments probe value) over one tied to v_W, then
instantiate. If a full solvability theory is too large, find the weakest
statement that still proves Lemma A and say what is missing.

Rules: Lean files in your lane directory only; compile with
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j2 FILE
(no -o; it refuses files outside lean/); at most two threads, each run
under two minutes. Write REPORT.md with the theorem statements, the axiom
audit, and the build command.
