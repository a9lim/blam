Lane "rootcert" (wave 5): certify the 580 unresolved root-let sources, then the lower multiplicities.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (caps), then
docs/classical/self-interpreter/class-bound.md §3 (current; "minimum" is
defined at its top), then tmp/round4/rootlet/REPORT.md (all of it),
SURVIVORS.tsv (580 sources, exact prices), ARGUMENTS.tsv and
verification.json, and tmp/round4/rootnf/REPORT.md (the kernel-checked
profile bound w ≥ 4k + 22 + 4d + tax).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/rootcert/ — write only there.

Task 1 (the main one). The rootlet lane left 580 sources of weight ≤ 45 in
the tight root-let profiles (k + d = 5) as normalizer exceptions — not
readers, but not refuted. Refute each one: show that some instance of the
reader laws (zero, or a unary length) has no normal form, or has a wrong
one, by (a) a Lean proof of divergence or of a wrong head (reuse rootlet's
exception machinery and bodylet's Grow.lean growing-helper theorem,
tmp/round4/bodylet/Grow.lean, if a family fits), or (b) as interim,
computer-checked evidence, a DIVERGE verdict from the frozen engine
(`blam adjudicate --no-oracle` on the closed instance with the rigid
variables bound by λs, as tmp/round4/zerolam/REPORT.md describes; copy the
release binary to your directory with `rm -f` first, as AGENTS.md says).
Group the sources by pattern first (they have three λs and seven argument
forms in the five-use cell): most should fall to a few divergence
families. Also formalize rootlet's proposed source η-contraction rule
(its saving is kernel-checked; the law-preservation argument is
handwritten) — it would remove 346 of them by itself.
Task 2, if time remains: the lower-multiplicity root-let cells (k + d ≤ 4)
by the same method, using zcore's site theory and Theorem S
(class-bound.md §3) to cut them.

Caps (hard): ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check; Lean
files ≤ 2 min, ≤ 2 GB. Do not build cargo targets inside the lane
directory (use the repo's target/release/blam copied out). Keep JSON dumps
modest. Append to NOTES.md as you go; finish with REPORT.md in the BRIEF.md
format. Any source that survives every refutation attempt and passes the
laws at n = 1..8 is a candidate sub-162: splice into the 162 in place of
`list I V NEXT`, NEXT at the hole; battery; report at once.
