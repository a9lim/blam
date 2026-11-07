Lane "depth02": the reader bound w >= 46 at hole depths 0, 2, 3, 4.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then class-bound.md §1–4,
data/self-interpreter/reasoning_162/floor/STATE46.md and STATE46-counts.md,
prove46/REPORT.md §2 (the contraction-plus-hoisting identity),
refute46/REPORT.md, and the working notes of the sibling lane jn
(tmp/round4/jn/NOTES.md — read-only, its claims are its own and unreviewed).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/depth02/ — write only there.

Problem (as in the brief): R with free c, j (one source j),
R (cons K r) =β r j, R U_n(N) =β c U_(n-1)(N) N for all n >= 1,
w = cost + 4·depth(j). The 162's reader has w = 46 at depth 1. The jn lane
is closing depth-1 readers whose body is an s-spine, by an inventory of how
the first bit reaches head position (selectors I, K closed for all operand
shapes so far). You own the other depths:

 - depth >= 3: hoisting is exact, w(H(R)) = w(R) + 6 + f − 3d, and
   H(R) →β R. So a reader hoisted from a depth-d' reader beats its source
   only when d' >= 3; conversely every depth-3/4 reader of weight <= 45
   hoists to a depth-0 one of no greater weight, and depth >= 5 already has
   w >= 46. Turn this into exact budgets: a sub-46 reader at depth 3 or 4
   has cost <= 33 or <= 29, with j deep inside two or three binders below
   λs (the 165's reader is the archetype: cost 38 at depth 4, hoisted 49).
   Close these families.
 - depth 0: every reader whose j is outside all lambdas. Hoisted forms
   (λa. R'[a]) j reduce to the depth-d' case above; classify what else a
   depth-0 reader can be (j as an argument of a top-level application, so
   the head must be a λ-headed or redex-headed term with c free), and
   close it, or find the reader.
 - depth 2: STATE46's "additional strip" rows (f <= 3; six (f, w) pairs);
   the j sits under exactly one binder below λs (inside a handler λb. ...,
   an absorber, or a let).
For every family, reason first: what shape must the term have, where must
j sit for the zero law to deliver r j, which binder erases it on unary
inputs, what does that cost. Small pinned checks with rd.py are fine
(python3 -c "import rd; print(rd.check(r'...', verbose=False))" from the
lane directory tests n = 1..3 and prints w); a finite check that closes one
pinned family completely is fine if it runs under two minutes and you state
why it is complete. No broad enumeration. Any reader with w <= 45 that
passes: splice into the 162 (in place of `list I V NEXT`, NEXT at the
hole), battery, polish, report immediately.

Keep each response under ~10k output tokens and append to NOTES.md after
every family. Finish with REPORT.md (or REPORT2.md / your returned text if
the harness refuses the write).
