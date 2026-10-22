Lane "close46": prove the reader bound w(R) >= 46 — which makes the 162
optimal in the separated class — or build a reader with w <= 45, which is
a sub-162 self-interpreter of exactly 116 + w bits.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules), then:
  docs/classical/self-interpreter/class-bound.md          (the class, §1-4)
  data/self-interpreter/reasoning_162/floor/STATE46.md, STATE46-counts.md
  data/self-interpreter/reasoning_162/prove46/REPORT.md, COUNTS.md
      (947 of 1,098 count profiles left)
  data/self-interpreter/reasoning_162/refute46/REPORT.md
      (the constructive side; §3 has the leaf floor, the unary-arm floor 22,
       dispatcher accounting and the j/N obstruction)
  data/self-interpreter/reasoning_162/floor/role-pricing.md,
      shallow-readers.md, reader30.md
Lane directory: /Users/a9lim/Work/blam/tmp/round4/close46/ — write only there.

Round 3 attacked this by integer count profiles (L, V, X, f, depth, root
form); it removed 151 rows and left 947, and its own report says the
method is not connecting arbitrary sources to the serial form. Look for a
different, unifying technique. Candidates (your call; something else is
welcome):
 (a) a decomposition theorem: every minimum reader, after a transformation
     you prove does not increase w, factors into a dispatcher, a zero part
     and a unary part whose costs add; refute46's local bounds (an operand
     that is j on Z(r) and N on U_n costs >= 25 at depth <= 1; an arm A with
     A j = c U_(n-1) N costs >= 28, >= 22 without absorbing j) then finish it;
 (b) an origin/residual-tracing charge: label source nodes, follow them
     through the reductions on Z(r) and on U_n for large n, and charge each
     output role (head r applied to j; head c applied to r and N; the
     N-extractor's self-application; the j-absorber) to source structure,
     PROVING the disjointness you need — the factory H_c = λx. x (λq.c),
     with H_c F = I, H_c I = K c, H_c H_c = c, shows naive role disjointness
     is false;
 (c) a typing or intersection-type invariant forced by the two laws whose
     minimal inhabitant size can be bounded;
 (d) any argument that prices a sharing context as a whole.
Use Lean for every pinned finite or algebraic step (lean/Blc/SelfintClass.lean
has Reader, cost and depth; round-3 lane Lean in reasoning_162/floor and
prove46 can be copied into your directory). A failing step is valuable:
write down the counterexample shape, test it on n = 1..3 with rigid
c, j, r, N, and if it meets both laws splice it into the 162 (in place of
`list I V NEXT`, NEXT at the hole), battery and polish it.

Rules: theory first; finite checks only to close a pinned case, with a
stated completeness argument, at most two threads and two minutes each; no
term sweeps (a9's explicit preference). Write REPORT.md in your lane
directory: what is proved (handwritten vs kernel-checked), exactly what
remains, any reader or interpreter built.
