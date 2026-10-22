Lane "certgen" (wave 5): one general divergence certificate for self-application dispatchers.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md and BRIEF5.md (caps), then
tmp/round4/rootnarrow/REPORT.md and FILTERS.md (its certificate variants W5,
SR, SF′, SF2 and where each stops), tmp/round4/shared/REPORT.md §§2–3
(Lemma SF, the Y-family), tmp/round4/combs/Combs.lean and
tmp/round4/combs2/Rootlet3.lean (`unsolvable_of_advance`: a family each of
whose members head-steps to another member has no head normal form),
tmp/round4/rootcert2/REPORT.md (its kernel-checked flow/arity checker) and
tmp/round4/shared/cert.py (C1/C2).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/certgen/ — write only there.

Problem. Narrowing searches in this project leave fuel cut-offs that are
almost always self-application dispatchers Δ(λz. z A⃗) with open holes
whose head reduction loops while holes stay unforced. Each new template
shape has so far needed a new handwritten variant (W5, SR, SF′, SF2), and
rootnarrow left 36 cut-offs no variant certifies (lists:
tmp/round4/rootnarrow/work/h2_2.final_left, h2_5.final_left,
pre_h63re.txt, and the one in h3_1.json): mostly Δ-dispatchers with K-like
templates (λd. z) or two-argument templates, where a bare fresh head comes
back with too few arguments.

Goal: one general, sound certificate — an abstract interpretation of head
states over a finite shape domain ("a base element applied to at least a
arguments, the first in S", K-like templates allowed, holes as opaque
constants that are never forced) — with a soundness proof (handwritten,
and kernel-checked in Lean if you can: a Lean checker for the abstract
domain, proved sound against head reduction, would let every future
cut-off be certified by computation), an implementation, and a run on the
36 listed cut-offs (each certified, or reported with why the domain cannot
express it). Validate on the variants' already-certified cases (they should
all pass) and on a few terms that DO have a head normal form (they must
not pass). Caps: ≤ 100,000 states, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per run;
Lean files ≤ 2 min, ≤ 2 GB. Append to NOTES.md; finish with REPORT.md in
the BRIEF.md format.
