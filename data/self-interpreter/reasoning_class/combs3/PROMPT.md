Small, well-defined proof task (lambda calculus, BLC self-interpreter project). Repo /Users/a9lim/Work/blam; write only under tmp/round4/combs3/; modify no tracked file; do not commit. Caps: no Python run over 2 minutes or 1 GB; each Lean file ≤ 2 minutes, ≤ 2 GB.

Context: tmp/round4/BRIEF.md (reader laws: R Z(r) =β r j, Z(r) = λf. f K r, K = λx y. x). tmp/round4/rootcert2/ENGINE_ONLY.tsv lists five root-let sources the rootcert2 lane could refute only by the frozen engine's DIVERGE verdict on the zero probe; all share the helper H = λx y. x (y (y x)), with c and j rigid free variables:
  474: (λx. x x (x x)) H j c
  492: (λx. x (x x) x) H j c
  493: (λx. x (x x) x) H c j
  506: (λx. x x x x) H j c
  507: (λx. x x x x) H c j
Prove in Lean, kernel-checked, that each one's zero-law instance does not reach r j — ideally that it has no head normal form, via a head-reduction invariant (a family each of whose members head-steps to another member). Precedents and reusable code: tmp/round4/combs/Combs.lean (`unsolvable_of_advance`), tmp/round4/combs2/Rootlet3.lean (a counter family for three similar root-let sources; same `Blc.SelfintClass.Reader` and `Blc.SelfintProbe.Solvable` conventions), tmp/round4/rootcert2/*.lean (its reject theorems, to match the statement form), and the head reducer tmp/round4/combs/lam.py for mechanical checks. Find the invariant by hand from a short trace first. Compile from /Users/a9lim/Work/blam/lean with LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean plus the directories you import from. Report the theorem names, the invariant(s), axioms, compile times; if one resists, say so honestly with the observed growth. Save the report as tmp/round4/combs3/REPORT.md.
