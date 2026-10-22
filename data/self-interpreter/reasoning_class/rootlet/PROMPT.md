Lane "rootlet" (wave 5): root lets below 46, by profile bound + site theory + the handlerlet method.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 in full (current), then
tmp/round4/rootnf/REPORT.md (the kernel-checked profile bound and the
counted five-use grammar), tmp/round4/root/REPORT.md (root-let weight
formula, forced uses, pull lemma, closed sub-families, the hand-off bulk),
tmp/round4/zcore/REPORT.md (sites, Lemma A, T1/T2, Lemma H for hoisted
readers) and tmp/round4/handlerlet/REPORT.md (the method).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/rootlet/ — write only there.

Problem. Minimum readers (order: weight, λ count, depth) R = (λx. B) A C⃗
with w ≤ 45. Known: w ≥ 4k + 22 + 4d + tax₁ (kernel-checked), so k ≤ 5, and
k ≤ 4 when j is under a λ; when k + d = 5 there is exactly one c and tight
λ/index budgets. The raw five-use grammar has 570,716 trees — over the cap.
Goal: close the branch or reduce it to explicitly listed, priced survivors
(or a reader with w ≤ 45: splice into the 162 in place of `list I V NEXT`,
NEXT at the hole; battery; polish; report at once).

Cut the inventory semantically before enumerating: (a) zcore's site
theory — a reader below 46 dispatches through at most one site saving 8–15
bits (T1/T2; Lemma H covers hoisted (λa. λs. M) j); a closed s I anchor
anywhere forces 46 (Lemma A/A2); (b) the root lane's forced uses (the
stream's, j's binder's and the let's variables and c must all occur; a
needed non-head use of x) and its pull lemma; (c) exact contraction prices
with minimality per let (the handlerlet filter: Δ ≥ 0, ties need a λ in A);
(d) the normalization caveat in class-bound.md §3 (do not argue through the
normal form without handling non-normalizing readers and copied j). Then a
complete check per cell, each ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads,
with a completeness argument and every cut-off certified (Lean for
normalizer exceptions; Lean files ≤ 2 min, ≤ 2 GB). If a cell stays over
the cap, leave it open with its count and the reason.

Append to NOTES.md as you go; finish with REPORT.md in the BRIEF.md format.
