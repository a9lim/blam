Lane "jerase" (wave 5): classify where the unary run disposes of j.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3
in full (current: it records every lane's settled result, the near misses,
and what is open), then tmp/round4/adv5/REPORT.md and
tmp/round4/d1open/REPORT.md (both end by proposing the lemma below).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/jerase/ — write only there.
A Claude lane ("zcore", tmp/round4/zcore/) attacks a related statement from
d1open's deletion lemma; read its NOTES.md if it exists, and do not
duplicate it — yours is the independent Codex take.

The lemma to prove, refute or repair. A reader keeps its single j alive on
the zero run (R Z(r) = r j) and must lose it on every unary run
(R U_n(N) = c U_(n−1) N). The near misses show the whole difficulty is
there: λs. s I (s (λq. c) (s s s)) j (40 bits) gives c r N j on unary, and
the 162 pays 6 bits for its absorber λu to drop that j. Two lanes propose:
on the unary run, j's residual is discarded by exactly one of
 (i) a binder whose body ignores it — an absorber above the unary core's
     s/c leaves (the 162's λu; ≥ 6 bits over the core);
 (ii) a unary bit F applied to it (s K j X and relatives; ≥ 53 once r is
     supplied, per adv5);
 (iii) the end of the s s skip (U_0 U_0 = K N …), which forces j into an
     operand that is N on unary (the 164's routing; 18 + 12).
Goal: state the classification exactly — over all readers, redexes and lets
included, using the reviewed dispensability machinery (BRIEF5.md: a
position is unary-dispensable iff no residual of it is touched or
survives) to say what "discarded by" means — prove that it is exhaustive,
and price each mechanism as a lower bound on w, with sharing between the
mechanism and the rest of the reader charged correctly (the union
accounting of class-bound.md §3). If the three cases are not exhaustive,
the fourth mechanism is a construction: build and price it. If each
mechanism's price is ≥ 46 for the reader as a whole, that is the theorem;
say exactly which hypotheses (minimality, depth) it needs.

Tools in the library: lean/Blc/SelfintSourceCost, SelfintLocalCost,
SelfintNeededHead, SelfintNestedLets, SelfintClosureBarrier (namespace map
in tmp/round4/integrate2/REPORT.md); the loop lane's rigid-shielding lemma
(tmp/round4/loop/Shield.lean). Reason first; a finite check only to close
one pinned sub-case, within BRIEF5.md's caps (≤ 100,000 terms, ≤ 2 min,
≤ 1 GB, ≤ 2 threads), with a stated completeness argument. Append to
NOTES.md as you go; finish with REPORT.md in the BRIEF.md format.
