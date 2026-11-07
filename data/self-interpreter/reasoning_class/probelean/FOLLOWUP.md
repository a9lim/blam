Coordinator follow-up, same lane (tmp/round4/probelean/), same rules.

Your Probe.lean is now in use: the Claude escape lane built
tmp/round4/escape/Slots.lean on it (lemmaA_context_k, lemmaA_two_slots) and
used it to derive part of the separated class's laws from the contract.
Read tmp/round4/escape/REPORT.md §5 (and NOTES.md §§9–20 for details;
derive_review_codex.txt is the Codex review it folded in). Its derivations
are kernel-checked only at the Lemma-A core; the instance steps are
handwritten: from the hypotheses Sep (E = T[λp c. R[Q/j]], H closed, C
reaches every parse only through c), Z, C1, C2, RET, VAL to
 (a) the variable law's rest part for every unary length n, with c abstract
     and the actual NEXT;
 (b) the ABS law in the derived form kA x y →β c A_K[x,y] y;
 (c) the APP second-operand law k2[x] z w →β c A_2[x,z,w] w.
Goal: state the hypotheses as Lean definitions over the actual assembly
(you may reuse tmp/round4/widen/Widen.lean's `assemble`, FullReader and
RigidNext, and lean/Blc/SelfintClass.lean), and prove (a)–(c) from them,
importing or pasting Probe.lean and Slots.lean. Where a hypothesis as the
escape lane phrased it is not formalizable as stated, find the precise
version that is and say how it differs. If the every-n induction in (a) is
the hard part, do it first. Extend REPORT.md with a new section; record
progress in NOTES.md.
