Lane "escape": a sub-162 interpreter that breaks the separated class's
reader laws in a way the actual interpreter can afford.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md first (contract, tools,
compute rules, OUTPUT DISCIPLINE), then class-bound.md (all),
interpreter.md §2 and §6 (the ~190 variants already built — do not
re-propose them), and data/self-interpreter/reasoning_162/refute46/REPORT.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/escape/ — write only there.

The class demands rigid reader laws: R Z(r) = r j for an arbitrary j and
R U_n(N) = c U_(n-1)(N) N for an arbitrary c. The real interpreter needs
much less:
 - closed programs never start with a variable, so the variable arm only
   ever runs under NEXT's two internal continuations
   k1 = λexp. bit1 (cont (Abs exp)) (intL (λexp2. cont (App exp exp2)))
   and k2 = λexp2. cont (App exp exp2), never under the root C;
 - the zero arm only ever feeds the actual NEXT;
 - the remainder after a variable flows on to a parse or to a return.
refute46 found that the 28-bit reader λs. s (λb. b (s s) c) j (w = 32)
meets the zero law and returns c r j — c applied to the value and NEXT
instead of the rest — on variables: 14 bits below the 162's 46 before any
repair. Questions to settle: can the internal continuations, the values,
or NEXT itself absorb a wrong or delayed remainder for fewer than 14 bits
in total, given that the root C must still receive the true N? Can the
variable arm return something cheaper than c U_(n-1) N that k1/k2 turn into
the right thing? Can the zero arm hand NEXT something other than (b2, r2)
that NEXT exploits? Can the reader rely on c being a λ (k1, k2) rather than
rigid? Each such design breaks one class hypothesis; price it on paper
(name the bits saved and the bits paid, exactly) before writing a term.

A design that survives pricing gets a .lam file, battery and polish.
Proving that a family of such escapes costs >= 162 is also a result: say
exactly which family. Rules: reasoning first; small targeted checks only;
no sweeps; at most two threads; each run under two minutes. Keep each
response under ~10k output tokens and append to NOTES.md after every
design. Finish with REPORT.md.
