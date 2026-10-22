Coordinator follow-up, same lane and directory (tmp/round4/close46/), same
rules. Good result: the whole-context exclusion and the Delta boundary are
exactly the kind of formal statement the record lacked.

Continue toward w >= 46 by building the missing source-cost bridge.
Suggested shape (change it if you see better):

 (1) Minimum-counterexample normalization. Take a counterexample of minimum
     weight, then fewest source lambdas. Follow its weak-head reduction on a
     symbolic stream with the exact beta size balance
     (lean/Blc/SelfintWireCost.lean, linear_beta_delta) and the round-3
     contraction-plus-hoisting identity (prove46/REPORT.md §2). Show every
     head redex it must contract is either linear, hence removable at a
     weight cost you can bound, or nonlinear with an argument whose size is
     bounded explicitly by the budget (a let pays its binder, application,
     argument and every use, so with w <= 45 the shared argument is small).
     The target statement: a minimum reader is an s-spine λs. s A1..Ak, up
     to a bounded, explicitly listed family of let-shared arguments, or a
     hoisted depth-0 form of one.
 (2) The s-spine case by dispatch inventory. A Claude lane (jn) is working
     the same problem from the obstruction side; its working notes are
     tmp/round4/jn/NOTES.md (read-only; its claims there are its own and
     not yet reviewed). Its §4–8 close the I- and K-dispatched depth-1
     s-spines for all operand shapes using two computer-checked minimal-arm
     lemmas (an absorbing unary arm >= 28, a non-absorbing one >= 22 with
     unique solution s (λq.c) (s s s)), and enumerate how the first bit can
     reach head position at depth 1. Your paired algebra is the natural tool
     for the shared-argument families that inventory leaves open, and for
     auditing its handwritten steps.
 (3) Keep the Delta lesson: track the short unary instance n = 1 alongside
     eventual behaviour, and price the zero-side K and the unary-side
     closure together.

Any finite check stays pinned, with a completeness argument, two threads,
under two minutes. Extend REPORT.md with a new section; record progress in
NOTES.md as you go (Codex capacity errors have been cutting turns short).
