Lane "hole": a reasoning proof of the reader bound through the unary core.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then class-bound.md §1–4, and these
round-4 results:
  tmp/round4/jn/REPORT.md (and NOTES.md for details) — the first-dispatch
     normal form, the core lemmas (unary core >= 20, unique
     s (λq.c) (s s j); zero core >= 12; L1 j/N operand >= 25; L2′ arm >= 22),
     the closed dispatcher families and the exact open list;
  tmp/round4/close46/REPORT.md §1 and §6 — kernel-checked: the factory /
     sharing exclusion, exact weighted beta balance, no erasing redex in a
     minimum reader, the linear-redex index tax (F−1)D >= 7+G, and the
     first-head classification (every reader is an s-spine, or has its first
     source head redex at the root (m <= 7) or directly under λs (m <= 6),
     with argument budgets).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/hole/ — write only there.

Problem: R with free c, j (one source j), R (cons K r) =β r j,
R U_n(N) =β c U_(n-1)(N) N for all n >= 1, w = cost + 4·depth(j). The 162's
reader has w = 46. Prove w >= 46 for every reader, or find one below.

jn closed every family it could reach by finite checks and concluded that
brute force is finished at this scale (about 2×10⁹ λ-rooted readers at
w <= 45). Do NOT extend the enumerations. Its proposed reasoning route:
a HOLE DECOMPOSITION. On unary inputs only part of the source is used; call
the source with every subterm the unary reductions never use replaced by a
priced-zero hole the "unary-needed core". Then
    cost(R) >= cost(unary-needed core) + cost(what the zero law adds),
and the target is a theorem of the form "every unary-needed core that can
be completed to a zero-correct reader costs >= 42 at depth 1" (with the
depth tax accounted), plus the matching statements at the other depths.
Make this precise: define "used on unary inputs" for arbitrary source
(redexes included — a residual/origin-tracking definition, sound for all n,
not only n = 1..3), prove the cost inequality, and then bound the core.
The core lemmas say the unary core alone is >= 20 with a unique minimum;
the question is what the zero law forces the core to contain beyond that
(the 162's core is its whole 42-bit source; the zero branch is free there
because s I and j are already in the core). The Δ example
(D(s) = s Δ I (s s) j: j on zero, N for n >= 2, N j at n = 1) shows n = 1
must be carried separately.

Small pinned checks with rd.py are fine (python3 -c "import rd;
print(rd.check(r'...', verbose=False))" tests n = 1..3 and prints w). Lean
for any pinned lemma (from lean/: LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean
lean -j2 FILE; no -o; each run under two minutes). Any reader with w <= 45:
splice into the 162 (in place of `list I V NEXT`, NEXT at the hole),
battery, polish, report immediately.

Keep each response under ~10k output tokens and append to NOTES.md after
every step. Finish with REPORT.md (or return the report as text if the
write is refused).
