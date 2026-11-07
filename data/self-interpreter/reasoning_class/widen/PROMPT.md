Lane "widen": make the conditional optimality theorem less conditional.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules), then docs/classical/self-interpreter/class-bound.md (all of
it), lean/Blc/SelfintClass.lean, and the round-3 sources it cites:
data/self-interpreter/reasoning_floor/next-proof-codex/ (the nine-form NEXT
classification), data/self-interpreter/reasoning_162/{floor/floor138.md,
values/, env/, recursion/, adversary/}.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/widen/ — write only there.

The separated class assumes (H1) an opaque fixed-point knot; (H2) NEXT
beta-normal, in frame [c,p], using its tag binder only as the head of
two-argument spines; (H3) the canonical constructors
Abs(f) = λe a. f (λb r. b a (r e)), App(f,g) = λe. f e (g e) and raw-tail
variable values U_(n-1)(N); (H4) rigid reader laws. Choose the hypotheses
whose removal is most likely to go through and prove the class bound
(|E| >= 116 + w(R), or a stated weaker inequality) without them. My
expected payoff order:
 (1) H2: arbitrary NEXT source in frame [c,p] — redexes, lets, tag binder
     anywhere — satisfying the canonical rigid branch laws still costs >= 92
     with at least four free c/p leaves (the depth tax depends on the leaf
     count, so prove both). Watch for affine contractions that increase
     wire size (Blc/SelfintWireCost.lean has the exact beta balance).
 (2) H3: arbitrary value representations. Generalize the class so the
     reader returns c V_n N on unary input for some family V_n, and NEXT
     builds values with arbitrary constructors, the triple (V, Abs', App')
     meeting the contract. Prove a bound over all representations, or find
     the representation that beats 116 + 46 (then build it, battery and
     polish). Round-3 partials: raw-tail values with root transparency force
     the value modules to >= 28 + 34 + 19 = 81 (handwritten); whole-prefix
     cells λu r. r H need >= 27.
 (3) H1: recursion other than an opaque knot. Blc/SelfintRecursion.lean
     gives >= 165 under the first-child identity cut, which is not forced
     (reasoning_162/adversary/ has a 312-bit parent-replay witness).
Remember the +17 embedding (class-bound.md §5): a NEXT that sees the
stream binder can embed any interpreter, so a widening that lets NEXT see s
is the global problem; widen in directions that keep some separation, and
say precisely which.

Rules: theory first; Lean for every pinned lemma (new files in your lane
directory only); finite checks only to close a pinned case, with a stated
completeness argument, at most two threads and two minutes each; no term
sweeps. Write REPORT.md in your lane directory: each widened theorem with
its exact hypotheses and status (handwritten / kernel-checked), what failed
and why, any interpreter built.
