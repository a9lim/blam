Lane "rootcert2" (wave 5): certify rootnl's 658 unresolved root-let sources.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 (current), then
tmp/round4/rootnl/REPORT.md, SURVIVORS.tsv (658 sources, exact prices),
ARGUMENTS.tsv (93 helper groups) and its Lean modules (the self-feeding
theorem with arbitrary payloads, strict-context divergence transport), and
how the precedent lane did the same job: tmp/round4/rootcert/REPORT.md and
tmp/round4/combs2/REPORT.md (one divergence family per group of sources,
kernel-checked; `unsolvable_of_advance`).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/rootcert2/ — write only there.

Task: refute every one of the 658 sources — show that some instance of the
reader laws (zero, or a unary length) has no normal form or a wrong one —
by Lean proofs, grouping by helper and pattern first (93 helpers; most
should fall to a few divergence families or to rootnl's self-feeding and
strict-context theorems). Interim evidence where Lean resists: the frozen
engine's DIVERGE verdict on the closed instance (`blam adjudicate
--no-oracle`, rigid variables bound by λs; copy target/release/blam out
with `rm -f` first), clearly labelled as engine evidence. Any source that
survives every attempt and passes the laws at n = 1..8 is a candidate
sub-162: splice into the 162 in place of `list I V NEXT`, NEXT at the hole;
battery; report at once.
Caps (hard): ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check; Lean
files ≤ 2 min, ≤ 2 GB; no cargo builds in the lane directory; modest JSON
(do not keep .olean beyond what the build needs). Append to NOTES.md;
finish with REPORT.md in the BRIEF.md format plus a source-to-proof
manifest.
