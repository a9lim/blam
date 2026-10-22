Coordinator follow-up, same lane and directory (tmp/round4/loop/), same rules (BRIEF5.md caps: ≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads per check).

Strong result: Rslow kills exact pumping, and "the skip is input-generated"
is the right reframing — I have recorded both in class-bound.md §3. Please
now attempt the theorem your §4 names, the small-source causal separation
result, as precisely as you can make it:

  In a minimum reader (order: weight, λ count, depth) with w ≤ 45, trace
  (a) the source origin of the skip's initiating cause (what plays `s s`),
  (b) the origin of the retained value U_(n−1) handed to c, and (c) the
  origin of the j that survives the zero run, through contracted-node
  ancestry. Prove that either the three supports are pairwise disjoint up
  to a bounded, priced overlap — giving a serial certificate whose cost is
  at least 46 — or the overlap is one of a short list of shared
  configurations, each priced separately.

The readers your §4 table lists are the test set; the 164
(λs. s (λb. b F c) (s I (s s) j), c in one operand and the routing in the
other), R84 (shared x, captured t) and the hoisted 165 are the cases a
proof must survive. Use whatever is already proved: the close46 Lean is now
in the library (lean/Blc/SelfintSourceCost, SelfintLocalCost,
SelfintNeededHead, SelfintNestedLets, …; namespace map in
tmp/round4/integrate2/REPORT.md), and the reviewed dispensability
machinery (BRIEF5.md). If the general theorem is out of reach, prove it for
the largest family you can state exactly (for example: readers whose first
dispatch is the stream applied to literal operands, or readers with one
shared let), and say exactly what blocks the rest.

Update NOTES.md as you go; add a new section to REPORT.md at the end.
