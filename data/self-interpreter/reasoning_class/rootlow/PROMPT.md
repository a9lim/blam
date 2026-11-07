Lane "rootlow" (wave 5): root lets with k + d ≤ 4, via a bridge to the excluded λ-rooted readers.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 (current; "minimum" is
defined at its top; every λ-rooted minimum reader below 46 is now
excluded), then tmp/round4/rootnf/REPORT.md, tmp/round4/rootlet/REPORT.md
and tmp/round4/root/REPORT.md. A separate lane ("rootcert",
tmp/round4/rootcert/) is certifying rootlet's 580 sources in the k + d = 5
profiles — do not duplicate it; you take k + d ≤ 4.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/rootlow/ — write only there.

Problem. Minimum readers (weight, λ count, depth) R = (λx. B) A C⃗ with
w ≤ 45, k uses of x, j at depth d, k + d ≤ 4 (the profile bound
w ≥ 4k + 22 + 4d + tax holds). Goal: exclude them, or explicit priced
survivors, or a reader with w ≤ 45 (splice into the 162 in place of
`list I V NEXT`, NEXT at the hole; battery; polish; report at once).

The bridge (check it, then use it): every λ-rooted minimum reader below 46
is excluded, so any law-preserving, one-hole-preserving rewrite of a root
let into a λ-rooted reader that does not raise the order (weight, λ count,
depth) excludes it by minimality. For example (λx. λs. M) A with A free of
s rewrites to λs. (λx. M) A′ (A′ the shifted A); the weight changes by
exactly f_A + occ_s(M) − occ_x(M), plus 4 if j is in A (its depth rises);
λ count is unchanged. Derive the exact general bridge (pending arguments
C⃗, hand-offs where B is not literally λs-headed, the root lane's pull
lemma), kernel-check its price, and then handle what the bridge cannot
reach — the cases where every rewrite raises the order — with the
handlerlet method (exact price, minimality, complete check per cell, every
normalizer exception refuted in Lean). Caps (hard): ≤ 100,000 terms,
≤ 2 min, ≤ 1 GB, ≤ 2 threads per check; Lean files ≤ 2 min, ≤ 2 GB; no cargo
builds in the lane directory; modest JSON. Append to NOTES.md as you go;
finish with REPORT.md in the BRIEF.md format.
