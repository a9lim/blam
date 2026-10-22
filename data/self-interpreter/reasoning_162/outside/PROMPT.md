Lane "outside": a self-interpreter outside the class where 162 is (nearly)
proved optimal.

Read /Users/a9lim/Work/blam/tmp/round3/BRIEF.md (contract, size measure,
tools, compute rules). Lane directory:
/Users/a9lim/Work/blam/tmp/round3/outside/ — write files only there.

State of play. This round proved (two reviews, kernel-checked in
tmp/round3/lean138/Reader138.lean) that every interpreter of the form
  knot T with T =β h T, filled with H = λp c. R[Q/j],
where Q is a separate beta-normal NEXT with two-armed tag tests obeying the
canonical rigid laws (the 162's ABS/APP value builders, literally) and R is a
reader with free c, j obeying R (cons K r) = r j, R U_n(N) = c U_(n-1)(N) N,
costs at least 138, exactly 116 + cost(R) + 4·depth(j) for the canonical
pieces; the reader term is now >= 30 (handwritten, under review) and the 162's
reader shape is exhaustively optimal through 27-bit variable arms. So within
that class 162 is optimal or very nearly. a9 believes 162 is not optimal
overall. A sub-162 therefore must break at least one class assumption:

  (a) recursion not supplied by an opaque knot around the whole parser;
  (b) NEXT not separable from the reader (shares syntax or uses the stream);
  (c) value/environment protocol different from the canonical builders
      (raw-code variable values, cell `λb r. b a (r e)`, lift `λe. f e (g e)`);
  (d) reader laws only for the actual NEXT, not independent rigid ones;
  (e) not a CPS parser at all.

Already built and measured outside the class (do not redo; see
docs/classical/self-interpreter/interpreter.md section 6 and the reports in
tmp/round3/*/REPORT.md): reader-carried knots 192/199, reset bootstraps 192,
knotless two-head (>= 165 under a cut condition, kernel-checked), boxed
values 265, two-field generator values 276, Church syntax 297, mode argument
203, NEXT variable modes 177-193, dual operands 164/172, whole-prefix values
169/170, parse-twice c-headed forms, direct evaluation + skipper 293.

Your job: design from first principles. For each of (a)-(e), ask what the
cheapest conceivable mechanism is and what it would have to cost to beat 162,
before writing terms. Price designs on paper with |M| = 2L + 4A + 2 + X, build
only those priced below ~166, then battery and polish them. Unconventional is
the point; rigour about prices is the discipline.

IMPORTANT working rule: keep each of your responses well under ~15k tokens
(think in smaller pieces) and append progress to NOTES.md in your lane
directory after each idea, so nothing is lost if you are interrupted. A
sibling lane died by exceeding the output limit in one response.
