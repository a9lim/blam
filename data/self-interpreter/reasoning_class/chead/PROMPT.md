Lane "chead": continuation-headed interpreters below 162?

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then docs/classical/self-interpreter/
head-decomposition.md, remainder.md, interpreter.md §5 "Head shape", and
tmp/round4/global/REPORT.md §1 (value projection |E K| = |E| + 9, remainder
|E F| = |E| + 8; restricted-domain ceilings).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/chead/ — write only there.

Every interpreter's principal head normal form is λc s. c A B or
λc s. s A1..Ak (proved). Every interpreter the record has measured near 162
is s-headed, and the separated class (class-bound.md) is s-headed by
construction: a c-headed interpreter is outside every conditional bound we
have. In the c-headed case A and B are separate value and remainder
projections independent of c (the record proves a literal c-headed
interpreter has four nonlinear binders in its payloads, a 55-bit wire floor,
73 with payload pricing). The obvious construction, parsing twice,
λc s. c (P K' s) (P F' s) around an s-headed parser P, costs |P| + ~20.

Questions: (1) can a c-headed source share its two projections more cleverly
than two calls of one parser, e.g. a single recursive pass whose value part
is lazily the value and whose rest part is lazily the remainder; (2) what is
the cheapest c-headed interpreter you can build, priced on paper first, then
battery and polish; (3) can you prove that every c-headed interpreter costs
at least as much as some s-headed one (a conversion with no overhead, or with
an overhead you can bound), which would remove the s-headed shape from the
list of class hypotheses; (4) note that the hnf is a property of a reduct,
not of the source: a source can be s-headed in its hnf yet look different —
state precisely which notion of "c-headed" your results cover.

Rules: reasoning first; small targeted checks only; no sweeps; at most two
threads, each run under two minutes. Keep each response under ~10k output
tokens; append to NOTES.md after every design or lemma. Finish with REPORT.md
(or return the report as text if the write is refused).
