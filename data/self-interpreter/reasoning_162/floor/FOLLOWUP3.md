Follow-up from the coordinator, same lane, same rules (files only in
tmp/round3/floor/; at most 2 threads; no run over two minutes; no
term sweeps — a9 explicitly prefers theory over brute force).

Good progress (two-lambda readers >= 50; depth-1/0 three-lambda reductions).
Two requests:

1. Write tmp/round3/floor/STATE46.md: a compact, self-contained statement of
   exactly what is proved toward cost(R) + 4·depth(j) >= 46, what is open
   (each open family with its count rows), and the proof techniques in use,
   so a fresh lane or reviewer can pick it up without your context.
2. Then attack the heart of the remaining cases: the 162's own reader has
   four lambdas (λs, I's λa, V's λu and λq) at depth 1. Find a structural
   lemma that prices lambdas by ROLE rather than by count — e.g. every
   reader needs a selector consumed by the stream on the zero branch (the
   162's I), a binder absorbing or using the hole operand on the variable
   branch (λu), and a constant-continuation wrapper or tail binder delivering
   r to c (λq) — with a charge for each role that survives sharing. If such
   a role lemma holds, it may close depth 1 and depth 0 together; if it
   fails, its counterexample is a reader worth building.

Append results to REPORT.md as a new section.
