Lane "simplify" (wave 5): a source-level simplification theorem for root-let hand-offs.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §§2–3 in full (current; the
definition of "minimum"; the Open paragraph), then
tmp/round4/expand/REPORT.md (the exact statement of the missing step, the
expanding readers Church(m) G H I j, and why G → I saves 11 bits), and the
root-let lane reports tmp/round4/rootnl/REPORT.md, rootlow/REPORT.md,
root/REPORT.md, shared/REPORT.md (Lift identity), adv6/REPORT.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/simplify/ — write only there.

Target (from expand): the only open case below 46 is a minimum reader
R = (λx. B) A C⃗ — nonlinear, 2–4 uses of x, j at depth ≤ 1 — whose let
argument hands control on before the stream arrives. Pre-stream expansion
is unbounded in the source weight (expand's witnesses), but every witness is
non-minimal: some source rewrite that keeps both laws and one hole is
lighter. The missing theorem is a source-level simplification: for every
such R, a rewrite R* with both laws for every n, one source j, and
(w, λ count, depth)(R*) < (w, λ count, depth)(R) — or R* in a shape already
excluded for minimum readers at no greater order. Equivalently: a hand-off
never pays in a minimum reader.

Approach ideas (yours to replace): (1) classify what a closed pre-stream
computation of a ≤ 45-bit source can deliver to the stream binder — the
first weak-head λ of R C⃗ is λs. M′; what does M′ need from the
pre-stream part, and can a direct source for that need be written at no
greater cost? (2) "partial evaluation" of the let argument: specialize A to
the uses B makes of x (each use applies x to known arguments before the
stream arrives), priced exactly with the contraction/hoist formulas and the
Lift identity; (3) treat the self-application families (λx. x x …) A
separately — the root lane's and rootnl's self-feeding divergence theorems
kill most; what survives must stop, and a stopping self-application of a
small term has a short fixed shape. Prove what you can, kernel-check pinned
lemmas in Lean, and give the exact remaining statement. Small targeted
checks only (tmp/round4/coord/rd.py), within BRIEF5.md's caps (≤ 100,000
terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads). Append to NOTES.md; finish with
REPORT.md in the BRIEF.md format.
