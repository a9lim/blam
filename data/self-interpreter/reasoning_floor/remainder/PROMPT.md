Lane "remainder": the exact remainder extractor as a stepping stone to a global
lower bound. Your lane directory is
/Users/a9lim/Work/blam/tmp/overnight/remainder/ (write only there). Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md first, then
docs/classical/self-interpreter/remainder.md, structural-bounds.md and
capture-width.md, and lean/Blc/SelfintRemainder.lean, SelfintZero.lean.

Observation. If E is a self-interpreter then E (λv r. r) is an exact
remainder extractor on closed sources: R (⌜M⌝ ++ N) =β N for every closed M
and rigid N. It costs |E| + 8 bits. Hence

    |E| ≥ Rmin − 8,   Rmin = least size of a closed-source exact remainder extractor.

The best known extractor is Codex's 70-bit rem70
(`data/self-interpreter/machines/rem70.lam`,
`\s.(\d.s d d) (\b\r.r (b (\t\u\d.t u (u d d) d d) r))`), which handles open
sources too. The current unconditional floor for interpreters is 34 bits
(handwritten), 18 (Lean). A proof that Rmin ≥ 50 would already lift the
interpreter floor to 42; Rmin ≥ 60 would give 52.

Your job, in order:
1. Understand rem70 completely; then try hard, by reasoning, to golf it — a
   smaller remainder extractor (closed-source suffices for the transfer, but
   say which contract yours meets). Its true minimum is the ceiling of this
   method, so knowing it matters. Check every candidate with a small exact
   test: write a short script that, for every closed program up to ~16 bits
   plus some deep-index and divergent sources (Ω, λ.Ω), normalizes
   R (⌜M⌝ ++ N) with rigid N via target/release/blam or
   tools/self-interpreter/lc.py and compares with N (seconds, not minutes).
2. Prove the strongest lower bound on Rmin you can, rigorously and by
   reasoning (no enumeration of candidate terms). Known necessities to price:
   two nonlinear binders (SelfintZero, Lean), incomparable branches,
   residual-origin code growth on long sources (remainder.md), unary skipping
   (the stream must be self-applied or a fixed point used), the three-way tag
   dispatch, and the fact that an application node needs two sequential
   recursive skips. Combine without double counting; test each claimed
   invariant against rem70, against E(λv r. r) for the 165, and against
   near-miss non-extractors before relying on it.
3. Report what the transfer gives for interpreters, exactly.

Light computation only (no run over ~2 minutes, at most 2 threads; no
enumeration of extractor candidates). Lean welcome for pinned lemmas (keep
files in your lane dir; do not edit existing modules). Report as the brief says.
