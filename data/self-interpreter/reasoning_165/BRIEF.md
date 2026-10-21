# Last push: a sub-165 BLC self-interpreter, by reasoning

Repo: /Users/a9lim/Work/blam. READ FIRST: docs/classical/self-interpreter/interpreter.md — the current record
of the 165-bit self-interpreter: its anatomy, why its reader works, everything already searched around it and
around Palmer's 168 (let structure, βη/contextual components, every reader slot, joint searches, ~100 protocol
variants), and the exclusions proved at every size. Do not re-propose anything it lists.

Contract (fixed): <λM> = 00<M>, <M N> = 01<M><N>, <var n> = 1^n 0 (n >= 1). Streams cons b r = λf. f b r,
bit '0' = λx.λy.x, bit '1' = λx.λy.y. A self-interpreter is a closed E with E C (<M> ++ N) =β C (λz. M) N for
every closed M (C, N rigid), including M without a normal form. Size: var n costs n+1 bits, λ and app 2 bits.

The 165 (data/self-interpreter/machines/int165.lam; L 17, A 25, X 29):
  (\x. x x) (\x. (\intL. \cont.
     (\next. \list. list (\bit0. bit0 (\unused \r. r next) cont) (list list list))
     (\bit1. intL (\exp. bit1 (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
                               (intL (\exp2. cont (\args. exp args (exp2 args)))))))
   (x x))
It beat the 168 by two moves the old module bound had assumed away: HOIST work several branches need to a point
where one expression is right for all of them (the whole-stream skip), and let a Scott structure's OWN APPLICATION
supply an argument (the stream hands list1 to cont, deleting VAR's return application). A sub-165 most likely
needs another move of that kind, found by thinking, not by enumeration.

HOW TO WORK — this matters: reason first. Derive identities by hand, write proofs, design constructions on paper,
then check them. Light, highly targeted computation only: battery runs on candidates you designed
(python3 tools/self-interpreter/battery.py FILE.lam — lets written as explicit redexes, compiled without optimizer,
so the printed size is exactly the term as written; ~2 s), normalizing specific terms, or a hole search over at
most a few thousand fills when reasoning has already narrowed it. NO long or blunt searches: no exhaustive sweeps,
no run longer than about two minutes, at most 2 threads. The machine is shared.

Write files only under your own directory (given below); never modify the repo. Report: every complete
interpreter you built (bits, battery line, one-line idea); every new exact identity with its proof; any
impossibility or lower-bound argument with its proof; and your honest read of where a sub-165 could hide.
A sub-165 claim needs a file and a passing battery line. Overclaiming is a failure; so is giving up without
having tried the real problem.
