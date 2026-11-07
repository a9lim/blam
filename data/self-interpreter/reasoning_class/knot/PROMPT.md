Lane "knot": recursion that is not an opaque knot.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then interpreter.md §2 (the reader
identities, including R Z →* next next), §4 (the knot: Blc/SelfintKnot.lean,
Blc/SelfintRecursion.lean), §6 recursion rows and the reader-diagonal and
reset-bootstrap rows of "Variants of the 165", §7 open item 3, and
class-bound.md §5. Also data/self-interpreter/reasoning_162/recursion/REPORT.md
and adversary/REPORT.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/knot/ — write only there.

In the 162 the recursion costs the 20-bit knot (λx. x x)(λx. h (x x)),
the intL binder, and two recursive references at zero-based depths 3 and 4
(26 + d1 + d2 = 33 in the Lean accounting). The parser also contains a
second self-application, the skip s s, which iterates over unary codes for
free. Open directions the record names but has not closed:
 - the reader's diagonal: R Z_t →* t t for the 165's reader, so the parser
   already contains the self-application a knot needs; built with a separate
   carrier it costs 192 / 199; making NEXT's zero arm serve as the knot's
   generator while keeping its Boolean cases is unsolved;
 - fusing the knot's x x with the skip's s s (a shared Δ let costs 11, 176);
 - knotless recursion: Blc/SelfintRecursion.lean proves >= 165 only under
   the first-child identity cut, and that cut is not forced (a 312-bit
   parent-replay witness exists);
 - recursion driven by the input stream itself (a self-passed context
   activated by the stream measured 191).
Find a recursion scheme that costs less than the 162's, or prove that a
precisely stated family of schemes cannot. Price every design on paper
before writing a term (bits saved, bits paid). A design that survives
gets a .lam file, battery and polish.

Rules: reasoning first; small targeted checks only; no sweeps; at most two
threads; each run under two minutes. Keep each response under ~10k output
tokens and append to NOTES.md after every design. Finish with REPORT.md.
