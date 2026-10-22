Lane "d1open": close jn's remaining depth-1 reader families by reasoning.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then tmp/round4/jn/REPORT.md and NOTES.md
(the first-dispatch normal form, the core lemmas, the closed families and
its tools: dbn.py, lcheck.py, cores.py, fam_*.py — read-only; copy what you
need into your directory), and tmp/round4/close46/REPORT.md §6 (kernel-checked
first-head classification and source budgets).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/d1open/ — write only there.

Problem: R with free c, j (one source j), R (cons K r) =β r j,
R U_n(N) =β c U_(n-1)(N) N for all n >= 1, w = cost + 4·depth(j). The 162's
reader has w = 46 at depth 1. jn closed, at depth 1, every s-spine reader
with first operand I, K, λb. b X Y (k = 2, 3) and general λb. B with
|B|, |T| <= 21 or |B| <= 9, and every λ-rooted reader whose body is <= 25
bits. Its OPEN depth-1 list, which you own:
 (a) a large λ-dispatcher, λs. s (λb. B) T with |B| = 22..31 and |T| <= 9
     (the natural case is T = j: all logic inside the dispatcher);
 (b) s-headed or redex first operands, λs. s (s P ..) .. and λs. s ((λx.M) A) ..;
 (c) λb. b X Y with k >= 4 trailing operands;
 (d) depth-1 readers whose λs body is a redex (close46 bounds its
     multiplicity <= 6 and gives argument budgets).
jn found that brute force is finished at this scale (one run reached
5.7 GB). Do NOT extend its enumerations. Reason instead: for (a), with T
tiny, B[K] r T must be r j and B[F] r T must be c r N, so B is itself a
two-argument handler over a known small T — use the handler-bound arguments
(docs/classical/self-interpreter/handler-bound.md, cheap-tail-bound.md) and
the core lemmas to price it; for (b), what can s P supply as a dispatcher
(jn's doubler identity s (λx. s P) = P b r r) and what does it cost; for
(c), extra trailing operands must be consumed on both branches — price the
consumption; for (d), use close46's budgets plus the core lemmas. A finite
check that closes one pinned sub-case completely is fine if it runs under
two minutes and well under 1 GB, with a stated completeness argument.
Any reader with w <= 45: splice into the 162 (in place of `list I V NEXT`,
NEXT at the hole), battery, polish, report immediately.

Keep each response under ~10k output tokens; append to NOTES.md after every
sub-case. Finish with REPORT.md (or return the report as text if the write
is refused).
