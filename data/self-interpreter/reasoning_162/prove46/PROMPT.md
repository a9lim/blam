Lane "prove46": close the reader bound w(R) >= 46 (162-optimality in the class).

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md (contract, size, compute
rules), then the problem statement and state of the art:
  tmp/round3/floor/STATE46.md and STATE46-counts.md  (exact open families)
  tmp/round3/floor/role-pricing.md                   (serial form λs. s D E j
                                                     with <= 4 lambdas is >= 46)
  tmp/round3/floor/reader30.md, floor138.md           (the 30 and the class)
  tmp/round3/handoff/REPORT.md section 3.1            (exhaustive: with j and c
       opaque, the middle operand of s I A j through 30 bits is exactly the
       162's variable-arm family)
  tmp/round3/proof/REPORT.md                           (the Claude proof lane's
       shape analysis and lemmas L1-L6; S1/S2/S3 checks)
Kernel-checked infrastructure: tmp/round3/lean138/Reader138.lean (class,
Reader, cost, depth), floor/ReaderHoist.lean, floor/RoleAlgebra.lean,
floor/ShallowFacts.lean, floor/Depth2Cases.lean.
Lane directory: /Users/a9lim/Work/blam/tmp/round3/prove46/ — write only there.

You are a fresh, independent attempt; the lane that produced STATE46 has a
very long context and is paused. Goal: prove w >= 46 for every reader, or
build a reader with w <= 45 (it is then a sub-162 interpreter of exactly
116 + w bits: splice into the 162 in place of `list I V NEXT`, battery and
polish). Work family by family from STATE46-counts.md, but look first for a
unifying lemma: the open families are 3+ lambdas at depth 0/1 and some
depth-2 strips; the 162 has four lambdas each doing a distinct job (stream
binder, zero-branch selector, hole absorber, constant continuation).
role-pricing.md settles the serial form with literal abstractions; extend it
to non-literal operands (redexes, lets, shared callbacks), application-rooted
readers, and five or more lambdas.

Rules: theory first; finite checks only to close a pinned case, with a
stated completeness argument, at most two threads and two minutes; no term
sweeps (a9's explicit preference). Lean for any fixed lemma. Report what is
proved (handwritten vs kernel-checked), what remains, and any reader built.
