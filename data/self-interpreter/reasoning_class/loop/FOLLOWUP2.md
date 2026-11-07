Coordinator follow-up, same lane and directory (tmp/round4/loop/), same rules (BRIEF5.md caps: ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check).

Excellent: the 164 family (≥ 48) and the hoisted 165 family (≥ 49) are now
in class-bound.md §3 with rigid shielding. Next, a uniform target that
would close a whole branch of the source-head classification:

  THEOREM TARGET (s-spines). Every reader whose body is literally an
  s-spine, R = λs. s T1 … Tk (any k ≥ 1, arbitrary operands T_i including
  source redexes and lets inside them, exactly one source j), has w ≥ 46.

Why this branch: Blc.SelfintSourceFront.reader_source_head (kernel-checked,
now in the library) says every reader is an s-spine, a root redex, or a
first body redex; depth ≥ 2 is closed (class-bound.md §3), so s-spines are
depth-1 readers; the 162 (λs. s I V j) and the 164 are s-spines; the
remaining branches are lets, which close46's source theory constrains
(multiplicity caps, argument budgets, needed extra uses).

Route: the first dispatch is literal here, s T1 T2 … = T1 b r T2 …, so
split by what T1 does with (b, r) — it is the handler. Your 48/49 family
bounds are the case T1 = λb. b A c; jn and d1open have closed T1 ∈ {I, K,
λb. b X Y with k = 2, 3, small λb. B} by finite checks (jn/REPORT.md,
d1open/NOTES.md — d1open is still running; read its notes, do not redo its
enumerations), and needbinder closed the whole-cell opener λs. s (λb t. B) j
for a minimum reader. What is missing is a uniform argument: for each
handler behavior, the two runs' supports (zero: what produces r j; unary:
what produces c U_(n−1) and N), their overlap, and its price, with your
shielding lemma and the core minima (unary core ≥ 20, zero core ≥ 12, j/N
operand ≥ 25). If the full theorem is out of reach, prove it under the
weakest extra hypothesis you can (e.g. "T1 is a literal λ", or "minimum
reader") and list exactly which handler behaviors remain.

Update NOTES.md as you go; add a new section to REPORT.md at the end.
