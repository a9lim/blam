Lane "adversary": break the 162's local-optimality claims by construction.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md first (shared ground truth,
tools, compute rules, report format). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/adversary/ — write files only there.

The 165 and the 162 were both found the same way: someone stated a local
optimality claim, and an adversary noticed that its hypotheses excluded a
construction (the 165 crossed the 168's opaque-module boundary; the 162 was
the counterexample a Codex reviewer built against "Theorem S" of a
reader-optimality proof). Your job is to be that adversary against every
claim that currently stands between the 162 and a 161.

Collect the standing claims. At least these, with their exact hypotheses:
interpreter.md section 3 (the s-I family: more than two operands reach C;
the second operand must be NEXT; V >= 28 by a case analysis with a checked
base), section 4 (VAR/ABS/APP/cell/lift/handler unique minima in the 168
frame; the module grammar's four clauses), section 5 (reader >= 43 under
independent rigid laws; zero arm >= 14; lift >= 19; cell >= 24 and lift >=
19 under weak laws; neutral skip operands dominated; one handler for both
tag bits impossible; the mode-free value builder impossibility; the
cell/APP alias impossibility; reader and handler knots stay C-headed; the
uniform-decoder impossibility), protocol-obstructions.md, the golf162 and
golf162-claude reports (operand forcing, the trailing-operand principle,
"NEXT cannot supply a bare continuation", "thunked rests cannot be forced
for free", "nothing inside NEXT can use list cheaply"), and Grok's identity
in tmp/round3/grok/reply.md (no one-application unthunked N). Also the
Lean bounds just proved in tmp/round3/recursion/REPORT.md.

For each claim, identify the hypothesis doing the work (rigid neighbours,
independent laws, a fixed frame, normality, a fixed protocol, opaque
modules, a fixed skip, behaviour only on genuine streams...). Then try to
build a complete interpreter that violates exactly that hypothesis and pays
for it with fewer bits elsewhere. Rank the claims by how much a violation
could plausibly save, and spend your effort on the top few. Every
construction gets a battery line and a polished size; every dead end gets
the exact reason (an identity, or a closed counterexample program).
