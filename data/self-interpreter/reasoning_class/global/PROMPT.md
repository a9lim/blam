Lane "global": a lower-bound technique that scales.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules), then docs/classical/self-interpreter/global-floor.md,
structural-bounds.md, capture-width.md, head-decomposition.md, remainder.md,
protocol-obstructions.md, and interpreter.md §5 "What holds for every
interpreter" and §7's last bullet.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/global/ — write only there.

The unconditional floor is 40 bits, by handwritten layout classifications
whose inventories grow exponentially (676 / 1,206 / 4,672 at 37 / 38 / 39).
That method cannot approach 162. The record's own diagnosis (interpreter.md
§7): a quantitative theorem must account for connections, live captures and
quotation-origin restrictions without adding costs of computations that
share. Your job is a technique whose cost grows linearly in the target, not
exponentially. Directions worth weighing (or something better):
 - semantic obligations forced by divergent and generic probes (the escape
   lane just proved, with the value v_W of λy.W where W = Ω, that a
   continuation with only C free must forward its second argument verbatim:
   tmp/round4/escape/REPORT.md §3 and lemmaA_review_codex.txt); how many
   independent such obligations can be forced on any interpreter, and does
   each force disjoint source structure?
 - a reduction from arbitrary interpreters to a structured class with
   bounded overhead (the opposite direction of the +17 embedding of
   class-bound.md §5);
 - lower bounds for the projections E (λv r. v) and E (λv r. r) that use
   their full contracts, with |E| >= Pmin - 8 transfers;
 - counting arguments over the head-reduction trace on a family of probe
   programs (e.g. the quotation of λⁿ.I, or of deep application spines),
   in the spirit of the weak-head growth theorem in remainder.md.
Deliverable: either a new unconditional floor above 40 with a proof whose
method visibly scales, or a precise account of why each candidate method
cannot exceed some explicit value. Lean for pinned lemmas (lane directory
only). Rules: theory first; finite checks only to close a pinned case,
with a stated completeness argument, at most two threads and two minutes
each; no layout or term sweeps. Write REPORT.md in your lane directory.
